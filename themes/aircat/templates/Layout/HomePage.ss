<div class="hero hero--image hero--image-description">
  <div class="width-container hero__overlay">
    <h1>$Title</h1>
    $Content
  </div>
</div>

<div class="width-container">
  <h2 class="u-margin-bottom-5">Categories</h2>
  <div class="grid-row card-group u-margin-bottom-0">
    <% loop $TopLevelCategories %>
      <div class="grid-column-one-third card-group__item">
        <div class="card card--clickable">
          <div class="card__content">
            <h3 class="card__heading heading-s"><a href="$Link">$Title</a></h3>
          </div>
        </div>
      </div>
    <% end_loop %>
  <div>
</div>
