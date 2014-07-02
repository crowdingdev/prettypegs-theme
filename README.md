prettypegs-theme
================
A prestashop theme for prettypegs webshop

This theme is originated/forked from prestashop bootstrap-theme that comes with version 1.6 of prestashop.


##Changes
We have resorted to a method of changing as little as possible from the original theme as to use most of it's functionalities and to save time.

Here we're listing all (mostly) changes to *.tpl *.js and *.php files that are in any way altered from the original theme. 

**Products.tpl**
Some structural changes in the html and som removal om unwanted functionalities.

**ajax-cart.js**
Added function that changes the cart when empty or not.

**Product-list.tpl**
Html structural change. and removed pagination etc.

**order-opc.tpl**
The One-Page-Checkout template and the templates that it includes has been modified. Added klarna checkout. Removed registering and autheification functionalities so that only guest checkout are left.

================
##Modules
Here we list all the modules that are essential/integrated with/for the theme.

####Klarna Checkout v2.38 - by Prestaworks AB
**Desc:** Adds a cart block with klarna checkout links. **Category:** Payments and Gateways

================
####PayPal v3.7.1 - by PrestaShop -  Official
**Desc:** Accepts payments by credit cards (CB, Visa, MasterCard, Amex, Aurore, Cofinoga, 4 stars) with PayPal. **Category:** Payments and Gateways

================
####Theme configurator v1.1.0 - by PrestaShop
**Desc:** Configure the main elements of your theme. **Category:** Front Office Features

