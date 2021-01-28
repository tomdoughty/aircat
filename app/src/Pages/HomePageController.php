<?php

use SilverShop\Page\ProductCategory;

class HomePageController extends PageController
{
  protected function init()
  {
    parent::init();
  }

  public function TopLevelCategories()
  {
      return ProductCategory::get()->filter([
        'URLSegment' => 'products'
      ])->First()->Children();
  }
}
