<form $AttributesHTML>

  <% if $Message %>
    <% if $MessageType == "error" %>
      <div class="error-summary" aria-labelledby="error-summary-title" role="alert" tabindex="-1">
        <h2 class="error-summary__title" id="error-summary-title">
          There is a problem
        </h2>
        <div class="error-summary__body">
          <p>$Message</p>
          <ul class="list error-summary__list">
            <% loop $Fields %>
              <% if $Message %>
                <li><a href="#$ID">$Message</a></li>
              <% end_if %>
            <% end_loop %>
          </ul>
        </div>
      </div>
    <% else %>
      <div class="inset-text">
        <span class="u-visually-hidden">Information: </span>
        <p>$Message</p>
      </div>
    <% end_if %>
  <% end_if %>

  <% if $Legend %><legend>$Legend</legend><% end_if %>
  
  <% loop $Fields %>
    $FieldHolder
  <% end_loop %>

  <% loop $Actions %>
    $Field
  <% end_loop %>

</form>
