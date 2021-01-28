<a class="skip-link" href="#maincontent">Skip to main content</a>

<header class="header" role="banner">
  <div class="width-container header__container">
    <div class="header__logo">
      <a class="header__link" href="$BaseHref" aria-label="$SiteConfig.Title $SiteConfig.Tagline homepage">
        <img src="/public/images/logo.png" class="logo" alt="Aircat logo" />
      </a>
    </div>

    <div class="header__content" id="content-header">
      <div class="header__menu">
        <button class="header__menu-toggle" id="toggle-menu" aria-controls="header-navigation" aria-label="Open menu">Menu</button>
      </div>

      <div class="header__search">
        <button class="header__search-toggle" id="toggle-search" aria-controls="search" aria-label="Open search">
          <svg class="icon icon__search" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" aria-hidden="true" focusable="false">
            <path d="M19.71 18.29l-4.11-4.1a7 7 0 1 0-1.41 1.41l4.1 4.11a1 1 0 0 0 1.42 0 1 1 0 0 0 0-1.42zM5 10a5 5 0 1 1 5 5 5 5 0 0 1-5-5z"></path>
          </svg>
          <span class="u-visually-hidden">Search</span>
        </button>
        <div class="header__search-wrap" id="wrap-search">
          <form class="header__search-form" id="search" action="/search" method="get" role="search">
            <label class="u-visually-hidden" for="search-field">Search the $SiteConfig.Title website</label>
            <div class="autocomplete-container" id="autocomplete-container"></div>
            <input class="search__input" id="search-field" name="Query" type="search" placeholder="Search" autocomplete="off">
            <button class="search__submit" type="submit">
              <svg class="icon icon__search" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" aria-hidden="true" focusable="false">
                <path d="M19.71 18.29l-4.11-4.1a7 7 0 1 0-1.41 1.41l4.1 4.11a1 1 0 0 0 1.42 0 1 1 0 0 0 0-1.42zM5 10a5 5 0 1 1 5 5 5 5 0 0 1-5-5z"></path>
              </svg>
              <span class="u-visually-hidden">Search</span>
            </button>
            <button class="search__close" id="close-search">
              <svg class="icon icon__close" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" aria-hidden="true" focusable="false">
                <path d="M13.41 12l5.3-5.29a1 1 0 1 0-1.42-1.42L12 10.59l-5.29-5.3a1 1 0 0 0-1.42 1.42l5.3 5.29-5.3 5.29a1 1 0 0 0 0 1.42 1 1 0 0 0 1.42 0l5.29-5.3 5.29 5.3a1 1 0 0 0 1.42 0 1 1 0 0 0 0-1.42z"></path>
              </svg>
              <span class="u-visually-hidden">Close search</span>
            </button>
          </form>
        </div>
      </div>

      <div class="header__login">
        <% with $Cart %>
          <a href="$Top.CartLink">Cart<% if $Items %> ({$Items.Count})<% end_if %><a>
        <% end_with %>
        <% if $CurrentMember %>
          <a href="/account">My account</a>
          <a href="/Security/logout">Log Out</a>
        <% else %>
          <a href="/Security/login">Log In</a>
        <% end_if %>
      </div>

    </div>
  </div>

  <nav class="header__navigation" id="header-navigation" role="navigation" aria-label="Primary navigation" aria-labelledby="label-navigation">
    <div class="width-container">
      <p class="header__navigation-title"><span id="label-navigation">Menu</span>
        <button class="header__navigation-close" id="close-menu">
          <svg class="icon icon__close" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" aria-hidden="true" focusable="false">
            <path d="M13.41 12l5.3-5.29a1 1 0 1 0-1.42-1.42L12 10.59l-5.29-5.3a1 1 0 0 0-1.42 1.42l5.3 5.29-5.3 5.29a1 1 0 0 0 0 1.42 1 1 0 0 0 1.42 0l5.29-5.3 5.29 5.3a1 1 0 0 0 1.42 0 1 1 0 0 0 0-1.42z"></path>
          </svg>
          <span class="u-visually-hidden">Close menu</span>
        </button>
      </p>
      <% include Navigation %>
    </div>
  </nav>

</header>
