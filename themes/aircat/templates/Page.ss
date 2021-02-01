<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="$MetaDescription()">
  <link rel="canonical" href="$AbsoluteLink">

  <title>$Title() - $SiteConfig.Title</title>

  <link rel="preconnect" href="https://cdn.norgren.com/" crossorigin />
  
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
  <link rel="preload" as="style" href="https://fonts.googleapis.com/css2?family=Rubik:wght@300;600&display=swap" />
  <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Rubik:wght@300;600&display=swap" media="print" onload="this.media='all'" />
  <noscript>
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Rubik:wght@300;600&display=swap" />
  </noscript>

  <link rel="stylesheet" type="text/css" href="/public/css/main.css" />

  <link rel="shortcut icon" href="/images/favicons/favicon.ico" type="image/x-icon">
  
  <meta property="og:url" content="$AbsoluteLink">
  <meta property="og:site_name" content="$SiteConfig.Title">
  <meta property="og:title" content="$MetaTitle()"/>
  <meta property="og:description" content="$MetaDescription()">
  <meta property="og:type" content="website">
  <meta property="og:locale" content="en_GB">
  <meta property="og:image" content="$ShareImage.AbsoluteURL">

  <script src="/public/javascript/main.js" defer></script>
</head>
<body>
  <% include Header %>
  <main class="main-wrapper $ClassName" id="maincontent">
    $Layout
  </main>
  <% include Footer %>
</body>
</html>
