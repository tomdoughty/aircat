<% if $UseButtonTag %>
	<button class="button" $AttributesHTML>
		<% if $ButtonContent %>$ButtonContent<% else %><span>$Title.XML</span><% end_if %>
	</button>
<% else %>
	<input class="button" $AttributesHTML />
<% end_if %>
