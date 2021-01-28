<div class="related-nav">
  <h2 class="related-nav__heading">
    <%t SilverShop\Page\AccountPage.Title 'My Account' %>
  </h2>
  <nav role="navigation" class="related-nav__nav-section">
    <ul class="list">
      <li>
        <a href="{$Link}"><%t SilverShop\Page\AccountPage.PastOrders 'Past Orders' %></a>
      </li>
      <li>
        <a href="{$Link('editprofile')}"><%t SilverShop\Page\AccountPage.EditProfile 'Edit Profile' %></a>
      </li>
      <li>
        <a href="{$Link('addressbook')}"><%t SilverShop\Page\AccountPage.AddressBook 'Address Book' %></a>
      </li>
      <li>
        <a href="Security/logout"><%t SilverShop\Page\AccountPage.LogOut 'Log Out' %></a>
      </li>
    </ul>
  </nav>

  <h2 class="related-nav__heading">
    Your details
  </h2>
  <% with $CurrentMember %>
    <dl class="summary-list">
      <div class="summary-list__row">
        <dt class="summary-list__key">
          <%t SilverShop\Page\AccountPage.MemberName 'Name' %>
        </dt>
        <dd class="summary-list__value">
          $Name
        </dd>
      </div>

      <div class="summary-list__row">
        <dt class="summary-list__key">
          <%t SilverShop\Page\AccountPage.MemberEmail 'Email' %>
        </dt>
        <dd class="summary-list__value">
          $Email
        </dd>
      </div>

      <div class="summary-list__row">
        <dt class="summary-list__key">
          <%t SilverShop\Page\AccountPage.MemberSince 'Member Since' %>
        </dt>
        <dd class="summary-list__value">
          $Created.Format(D MMMM YYYY)
        </dd>
      </div>

      <div class="summary-list__row">
        <dt class="summary-list__key">
          <%t SilverShop\Page\AccountPage.NumberOfOrders 'Number of orders' %>
        </dt>
        <dd class="summary-list__value">
          <% if $PastOrders %>{$PastOrders.Count}<% else %>0<% end_if %>
        </dd>
      </div>
    </dl>
  <% end_with %>
</div>
