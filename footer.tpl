{*
	* 2007-2014 PrestaShop
	*
	* NOTICE OF LICENSE
	*
	* This source file is subject to the Academic Free License (AFL 3.0)
	* that is bundled with this package in the file LICENSE.txt.
	* It is also available through the world-wide-web at this URL:
	* http://opensource.org/licenses/afl-3.0.php
	* If you did not receive a copy of the license and are unable to
	* obtain it through the world-wide-web, please send an email
	* to license@prestashop.com so we can send you a copy immediately.
	*
	* DISCLAIMER
	*
	* Do not edit or add to this file if you wish to upgrade PrestaShop to newer
	* versions in the future. If you wish to customize PrestaShop for your
	* needs please refer to http://www.prestashop.com for more information.
	*
	*  @author PrestaShop SA <contact@prestashop.com>
	*  @copyright  2007-2014 PrestaShop SA
	*  @license    http://opensource.org/licenses/afl-3.0.php  Academic Free License (AFL 3.0)
	*  International Registered Trademark & Property of PrestaShop SA
	*}
	{if !$content_only}

</div><!-- #center_column -->
{if isset($right_column_size) && !empty($right_column_size)}
<div id="right_column" class="col-xs-12 col-sm-{$right_column_size|intval} column">{$HOOK_RIGHT_COLUMN}</div>
{/if}
</div><!-- .row -->
</div><!-- #columns -->
</div><!-- .columns-container -->

<!-- Moved from index.tpl -->

<div class="pre-footer-container">
	<div class="container">

		{if $page_name == 'index' }

		<div class="clearfix">
			<div class="row navigation-wrapper">

				<div class="col-xs-4">
					<a href="#">
						<span class="pp-link pp-see-all-pegs"></span>
					</a>
				</div>

				<div class="col-xs-4">
					<a href="#">
						<span class="pp-link pp-campaigns"></span>
					</a>
				</div>

				<div class="col-xs-4">
					<a href="#">
						<span class="pp-link pp-inspiration"></span>
					</a>
				</div>
			</div>

		</div>
		{/if}

		<div class="row pp-social-wrapper">
			<div class="pp-social-container">
				<div class="col-sm-12">

					<div class="col-sm-3">
						<a href="#">
							<span class="pp-social pp-instagram"></span>
						</a>
					</div>

					<div class="col-sm-3">
						<a href="#">
							<span class="pp-social pp-pinterest"></span>
						</a>
					</div>

					<div class="col-sm-3">
						<a href="#">
							<span class="pp-social pp-facebook"></span>
						</a>
					</div>

					<div class="col-sm-3 ">
						<a href="#">
							<span class="pp-social pp-blog"></span>
						</a>
					</div>

				</div>
			</div>
		</div>

		{if isset($HOOK_FOOTER) && $HOOK_FOOTER|trim}
		<div class="clearfix">
			{$HOOK_FOOTER}
		</div>
		{/if}

	</div>
</div>

<!-- END Moved from index.tpl -->
<!-- Footer -->
<div class="footer-container">
	<footer id="footer" class="container">
		<div class="row"> <!-- { $HOOK_FOOTER } -->
			<div class="col-xs-4 pp-shipping-options">
				<a href="#"> <h3 class="pp-footer-header pp-shipping-header">FREE SHIPPING<br> WORLD WIDE</h3> </a>

				<div class="col-xs-8">
					<span class="pp-delivery-company pp-dhl"></span>
				</div>
			</div>

			<div class="col-xs-4 pp-payment-options">
				<a href="#">
					<h3 class="pp-footer-header pp-payment-options-header">PAYMENT OPTIONS</h3>
				</a>
					<div class="col-xs-6">
						<span class="pp-payment-option pp-paypal"></span>
					</div>
					<div class="col-xs-6">
						<span class="pp-payment-option pp-klarna"></span>
					</div>
					<div class="col-xs-6">
						<span class="pp-payment-option pp-visa"></span>
					</div>
					<div class="col-xs-6">
						<span class="pp-payment-option pp-mastercard"></span>
					</div>
						<div class="col-xs-6">
						<span class="pp-payment-option pp-discover-card"></span>
					</div>
					<div class="col-xs-6">
						<span class="pp-payment-option pp-american-express"></span>
					</div>
			</div>

			<div class="col-xs-4 pp-contact">
				<a href="#"> <h3 class="pp-footer-header pp-contact-header">CONTACT US</h3> </a>
			</div>

		</div>
	</footer>
</div><!-- #footer -->
</div><!-- #page -->
{/if}
{include file="$tpl_dir./global.tpl"}
</body>
</html>

