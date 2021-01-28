<?php

use SilverStripe\ORM\DataExtension;
use SilverStripe\Forms\FieldList;
use SilverStripe\Forms\TextField;

class ProductExtension extends DataExtension
{
  private static $db = [
    'ImageUrl' => 'Text'
  ];

  public function updateCMSFields(FieldList $fields)
  {
    $fields->addFieldsToTab('Root.Main', TextField::create('ImageUrl', 'External image URL'));
  }
}
