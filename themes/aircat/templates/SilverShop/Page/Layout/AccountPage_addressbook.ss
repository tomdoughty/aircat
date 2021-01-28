<div class="width-container u-margin-top-8">
  <div class="grid-row">
    <div class="grid-column-two-thirds">
      <h1>$Title</h1>
      $Content
      
      <h2>
        <%t SilverShop\Page\AccountPage_AddressBook.Title 'Default Addresses' %>
      </h2>
      <% if $CurrentMember.AddressBook %>
        <ul class="list list--border">
          <% loop $CurrentMember.AddressBook %>
            <li class="u-padding-top-5 u-padding-bottom-3">
              <p><% include SilverShop\Model\Address %></p>
              <p>
                <% if $ID == $CurrentMember.DefaultShippingAddressID %>
                  <strong><%t SilverShop\Page\AccountPage_AddressBook.DefaultShippingAddress 'Default Shipping Address' %></strong></br>
                <% end_if %>
                <% if $ID == $CurrentMember.DefaultBillingAddressID %>
                  <strong><%t SilverShop\Page\AccountPage_AddressBook.DefaultBillingAddress 'Default Billing Address' %></strong></br>
                <% end_if %>
                <% if $ID != $CurrentMember.DefaultShippingAddressID %>
                  <a title="<%t SilverShop\Page\AccountPage_AddressBook.MakeDefaultShippingTitle 'Make this my default shipping address' %>"
                    href="$Top.Link('setdefaultshipping')/{$ID}" class="btn">
                    <%t SilverShop\Page\AccountPage_AddressBook.MakeDefaultShipping 'Make Default Shipping' %>
                  </a></br>
                <% end_if %>
                <% if $ID != $CurrentMember.DefaultBillingAddressID %>
                  <a title="<%t SilverShop\Page\AccountPage_AddressBook.MakeDefaultBillingTitle 'Make this my default billing address' %>"
                      href="$Top.Link('setdefaultbilling')/{$ID}" class="btn">
                      <%t SilverShop\Page\AccountPage_AddressBook.MakeDefaultBilling 'Make Default Billing' %>
                  </a></br>
                <% end_if %>
              </p>
              <p>
                <a href="$Top.Link('deleteaddress')/{$ID}"
                    class="remove-address"
                    title="<%t SilverShop\Page\AccountPage_AddressBook.DeleteAddress 'Delete this address' %>">
                    Delete this address
                </a>
              </p>
            </li>
          <% end_loop %>
        </ul>
      <% else %>
        <p>
          <%t SilverShop\Page\AccountPage_AddressBook.NoAddress 'No addresses found.' %>
        </p>
      <% end_if %>
      <h2><%t SilverShop\Page\AccountPage_AddressBook.CreateNewTitle 'Create New Address' %></h2>
      $CreateAddressForm
    </div>
    <div class="grid-column-one-third">
      <% include SilverShop\Includes\AccountNavigation %>
    </div>
  </div>
</div>
