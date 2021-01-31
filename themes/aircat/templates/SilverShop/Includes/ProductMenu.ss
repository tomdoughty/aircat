<% if $Children() %>
  <h3 class="related-nav__sub-heading">
      $Title
  </h3>
  <nav class="related-nav__nav-section">
    <ul class="list">
      <li class="related-nav__item">
        <a href="$Link" class="$LinkingMode related-nav__link">
          All
        </a>
      </li>
      <% loop $Children() %>
        <li class="related-nav__item">
          <a href="$Link" class="$LinkingMode related-nav__link">
            $MenuTitle.XML
          </a>
        </li>
      <% end_loop %>
    </ul>
  </nav>
<% end_if %>

<% loop $Ancestors() %>
  <h3 class="related-nav__sub-heading">
    $Title
  </h3>
  <nav class="related-nav__nav-section">
    <ul class="list">
      <% loop $Children() %>
        <li class="related-nav__item">
          <a href="$Link" class="$LinkingMode related-nav__link">
            $MenuTitle.XML
          </a>
        </li>
      <% end_loop %>
    </ul>
  </nav>
<% end_loop %>
