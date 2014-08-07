prettypegs-theme
================
A prestashop theme for prettypegs webshop

This theme is originated/forked from prestashop bootstrap-theme that comes with version 1.6 of prestashop.


##Changes
We have resorted to a method of changing as little as possible from the original theme as to use most of it's functionalities and to save time.

Here we're listing all (mostly) changes to *.tpl *.js and *.php files that are in any way altered from the original theme.

**Products.tpl**
Some structural changes in the html and som removal om unwanted functionalities. Shipping information are placed in this file.

**ajax-cart.js**
Added function that changes the cart when empty or not.

**Product-list.tpl**
Html structural change. and removed pagination etc.

**order-opc.tpl**
The One-Page-Checkout template and the templates that it includes has been modified. Added klarna checkout. Removed registering and autheification functionalities so that only guest checkout are left. And extracted the Klarna and paypal choice buttons/divs into order-checkout-options.tpl

**order-checkout-options.tpl**
Contains Klarna and Paypal buttons that are displayed under the shopping cart on checkout page. The klarna link are made to work with the Klarna checkout module by prestaworks v2.38.
```
<a href="{$link->getModuleLink('klarnacheckout', 'checkout_klarna')}" rel="nofollow"
id="button_order_cart" class="btn btn-default button button-medium exclusive"
title="{l s='Check out' mod='klarnacheckout'}">
<span>{l s='Continue' mod='klarnacheckout'} >></span>
</a>
```

**order-opc-new-account**
This file contains the form for guest checkout. Some fields has been removed (birtday, gender). And some other changes has been made to shipping step and payment.

**order-opc.js**
Changed so that it show only the guest checkout for users.

**product.js**
Changed so the price are updated on every attribute and quantity change for a product on product page. 

**shopping-cart.tpl**
Some hook (HOOK_SHOPPING_CART_EXTRA) has been removed. The span inside the h1 that showed number of articles has been removed.


================
##Modules
Here we list all the modules that are essential/integrated with/for the theme.

####Klarna Checkout v2.38 - by Prestaworks AB
**Desc:** Adds a cart block with klarna checkout links. **Category:** Payments and Gateways

================
####Blog Prestashop Pro Module v2.4 - by Community
**Desc:** Used for blogging  **Category:** Front Office Features
**Url:** http://addons.prestashop.com/en/content-management/2500-blog-prestashop-pro.html
**Overides:** list.tpl, view.tpl, psblog.css/scss, blockposts.tpl are overidden by this theme. 

================
####PayPal v3.7.1 - by PrestaShop -  Official
**Desc:** Accepts payments by credit cards (CB, Visa, MasterCard, Amex, Aurore, Cofinoga, 4 stars) with PayPal. **Category:** Payments and Gateways

================
####Theme configurator v1.1.0 - by PrestaShop
**Desc:** Configure the main elements of your theme. **Category:** Front Office Features


================
####blockcategories  - by PrestaShop
**Desc:** Part of this module has been overridden by this theme. Its used in the footer to display categories. 


##Typography
Here we list all the fonts that are essential for this theme. 

####AwesomeFonts 
Used for icons. 
**Url:** http://fortawesome.github.io/Font-Awesome/
**Updated:** 2014-07-01 

####Gotham
Embedded as webfonts in global.scss.
**weights:** medium, bold and normal. 



####.htaccess


[07/08/14 16:51:18] Magnus Olsen: XMLHttpRequest cannot load https://www.prettypegs.com/?controller=cart&ajax=true&token=49da0ce240ab7e9299ad7055f3c938f3&_=1407423055253. No 'Access-Control-Allow-Origin' header is present on the requested resource. Origin 'http://www.prettypegs.com' is therefore not allowed access.


[07/08/14 16:52:16] Magnus Olsen: # with AJAX withCredentials=false (cookies NOT sent)
Header always set Access-Control-Allow-Origin "*"                   
Header always set Access-Control-Allow-Methods "POST, GET, PUT, OPTIONS, PATCH, DELETE" 
Header always set Access-Control-Allow-Headers "X-Accept-Charset,X-Accept,Content-Type,Auth-Token,X-Auth-Token"
RewriteEngine On                  
RewriteCond %{REQUEST_METHOD} OPTIONS 
RewriteRule ^(.*)$ $1 [R=200,L,E=HTTP_ORIGIN:%{HTTP:ORIGIN}]]

# with AJAX withCredentials=true (cookies sent, SSL allowed...)
SetEnvIfNoCase ORIGIN (.*) ORIGIN=$1
Header always set Access-Control-Allow-Methods "POST, GET, PUT, OPTIONS, PATCH, DELETE" 
Header always set Access-Control-Allow-Origin "%{ORIGIN}e"
Header always set Access-Control-Allow-Credentials "true"
Header always set Access-Control-Allow-Headers "X-Accept-Charset,X-Accept,Content-Type,Auth-Token,X-Auth-Token"
RewriteEngine On
RewriteCond %{REQUEST_METHOD} OPTIONS
RewriteRule ^(.*)$ $1 [R=200,L,E=HTTP_ORIGIN:%{HTTP:ORIGIN}]

