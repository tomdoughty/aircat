<?php

use SilverStripe\Core\Extension;
use SilverShop\Page\ProductCategory;
use SilverStripe\Core\Convert;

class SetParentExtension extends Extension
{
  // find product group parent (ie Cateogry)
  public function setParent(&$obj, $val, $record)
  {
    $title = strtolower(Convert::raw2sql($val));

    // Array of categories from $val of "Products>First Category>Second Category" etc
    $categories = explode('>', $val);
    // Always start categories from a top level page usually Products
    $parentId = 0;

    foreach ($categories as $category) {
      // Check if category already exists
      $existingCategoryPage = ProductCategory::get()->where([
        'LOWER("Title") = ?' => strtolower(Convert::raw2sql($category)),
        'ParentID' => $parentId
      ])->first();

      // If category doesn't exist create it
      if (!$existingCategoryPage) {
        $pg = ProductCategory::create();
        $pg->Title = $category;
        $pg->ParentID = $parentId;
        // Set $parentId to new catgegory ID so we can check if any subcategories exist correctly
        $parentId = $pg->write();
        $pg->writeToStage('Stage');
        $pg->publishSingle();
      } else {
        // Set $parentId to existing category ID so can check if any subcategories exist correctly
        $parentId = $existingCategoryPage->ID;
      }
    }

    // Create product and set parentId to last category
    if ($title) {
      $obj->ParentID = $parentId;
      $obj->write();
      $obj->writeToStage('Stage');
      $obj->publishSingle();
    }
  }
}
