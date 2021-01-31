<?php

namespace {

    use SilverStripe\CMS\Model\SiteTree;

    class Page extends SiteTree
    {
        private static $db = [];

        private static $has_one = [];

        public function RemoveProtocol($str) 
        {
          return preg_replace("(^https?:)", "", $str );
        }
    }
}
