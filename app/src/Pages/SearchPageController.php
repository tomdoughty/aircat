<?php

use SilverStripe\CMS\Model\SiteTree;
use SilverStripe\Core\Convert;
use SilverStripe\ORM\ArrayList;
use SilverStripe\ORM\PaginatedList;

class SearchPageController extends PageController
{
  private $results;
  private $query;

  protected function init()
  {
    parent::init();

    $this->query = $this->request->getVar('Query');

    $results = ArrayList::create();

    $searchFields = implode(",", ['Title', 'MenuTitle', 'Content']);

    $pages = SiteTree::get()
      ->where(sprintf(
        "MATCH (%s) AGAINST ('%s*' IN BOOLEAN MODE) AND " .
          "ShowInSearch IS TRUE AND ClassName NOT IN ('RedirectorPage', 'VirtualPage')",
        $searchFields,
        Convert::raw2sql($this->query)
      ))
      ->sort(sprintf(
        "Title LIKE '%%%s%%' DESC, MATCH (%s) AGAINST ('%s*') DESC",
        Convert::raw2sql($this->query),
        $searchFields,
        Convert::raw2sql($this->query)
      ))->limit(30);


    foreach ($pages as $page) {
      $results->push($page);
    }

    $this->results = $results->sort(['TitleRelevance DESC', 'Relevance DESC'])->limit(30);
  }

  public function Query()
  {
    return $this->query;
  }

  public function Results()
  {
    return PaginatedList::create(
      $this->results,
      $this->getRequest()
    )->setPageLength(10);
  }

  // public function json()
  // {

  //   $suggestions = [];

  //   foreach ($this->results as $page) {
  //     $suggestion = [];
  //     $suggestion['Title'] = $page->Title;
  //     $suggestion['Link'] = $page->Link;

  //     array_push($suggestions, $suggestion);
  //   }

  //   $this->response->addHeader('Content-Type', 'application/json');
  //   return json_encode($suggestions);
  // }
}
