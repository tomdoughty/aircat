<div $AttributesHTML>
  <% loop $Options %>
    <div class="radios__item $Class">
      <input id="$ID" class="radios__input" name="$Name" type="radio" value="$Value"<% if $isChecked %> checked<% end_if %><% if $isDisabled %> disabled<% end_if %> <% if $Up.Required %>required<% end_if %> />
      <label class="label radios__label" for="$ID">$Title</label>
    </div>
  <% end_loop %>
</div>