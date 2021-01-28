<div id="$HolderID" class="form-group field<% if $extraClass %> $extraClass<% end_if %>">
  <fieldset class="fieldset">
    <legend class="fieldset__legend">
      $Title
    </legend>
    <div class="radios">
      $Field
    </div>
  </fieldset>
	<% if $Message %><span class="message $MessageType">$Message</span><% end_if %>
	<% if $Description %><span class="description">$Description</span><% end_if %>
</div>
