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
	*
	*  @author Linus Karlsson
	*
	*}



	{if isset($htmlitems) && $htmlitems}
	<div id="pp-home-category-wrapper htmlcontent_{$hook|escape:'htmlall':'UTF-8'}">


<h3 class="home-header">{l s='PEGS' mod='themeconfigurator'} {l s='FOR' mod='themeconfigurator'}:</h3>
	<ul class="htmlcontent-home  pp-home-categories clearfix row">

		{foreach name=items from=$htmlitems item=hItem}


		<li class="child-{$smarty.foreach.items.iteration|escape:'htmlall':'UTF-8'} ">
			<div class="pp-home-category">

				<a href="{$hItem.url|escape:'htmlall':'UTF-8'}">

		




					<div class="pp-category-image" style=" {if isset($hItem.image) && $hItem.image}background: url({$link->getMediaLink("`$module_dir`img/`$hItem.image`")});{/if} 	{if $hItem.image_w}background-position-x:{$hItem.image_w|intval}px;{else}background-position: center right;{/if}">
						

						<h4 class="pp-category-name">{$hItem.title|escape:'htmlall':'UTF-8'}</h4>

					</div>
				</div>

			</a>

		</li>
		{/foreach}


	</ul>


</div>

{/if}
