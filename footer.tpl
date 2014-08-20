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
					<a href="/39-pegs">
						<span class="pp-link pp-see-all-pegs">{l s='see all pegs'}</span>
					</a>
				</div>

				<div class="col-xs-4">
					<a href="/campaigns">
						<span class="pp-link pp-campaigns">{l s='campaigns'}</span>
					</a>
				</div>

				<div class="col-xs-4">
					<a href="/inspiration">
						<span class="pp-link pp-inspiration">{l s='inspiration'}</span>
					</a>
				</div>
			</div>

		</div>
		{/if}

		<div class="row pp-social-wrapper">
			<div class="pp-social-container">
				<div class="col-sm-10 col-sm-offset-1">

					<div class="col-sm-3">
						<a href="http://instagram.com/prettypegs" target="blank">
							<span class="pp-social pp-instagram"></span>
						</a>
					</div>

					<div class="col-sm-3">
						<a href="http://se.pinterest.com/prettypegs2012/" target="blank">
							<span class="pp-social pp-pinterest"></span>
						</a>
					</div>

					<div class="col-sm-3">
						<a href="https://www.facebook.com/Prettypegs" target="blank">
							<span class="pp-social pp-facebook"></span>
						</a>
					</div>

					<div class="col-sm-3 ">
						<a href="/blog">
							<span class="pp-social pp-blog"></span>
						</a>
					</div>

				</div>
			</div>
		</div>
	

	</div>

</div>
<div class="pre-footer-banner-container">
	<div class="container">
		<div class="row shipping-banner"><h5>WE SHIP WORLD WIDE</h5></div>

	</div>

</div>

<!-- END Moved from index.tpl -->
<!-- Footer -->
<div class="footer-container">
	<footer id="footer" class="container">

		<div class="row"> <!-- { $HOOK_FOOTER } -->


		{if isset($HOOK_FOOTER) && $HOOK_FOOTER|trim}
		<div class="clearfix">
			{$HOOK_FOOTER}
		</div>
		{/if}
</div>

<div class="row"><!--Partners logos row-->
	<div class="col-xs-12 partner">

	
</div>
	</div>

	</footer>
</div><!-- #footer -->


</div><!-- #page -->
{/if}
{include file="$tpl_dir./global.tpl"}
</body>
</html>

