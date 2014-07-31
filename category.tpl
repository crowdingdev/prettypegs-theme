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
{include file="$tpl_dir./errors.tpl"}
{if isset($category)}
	{if $category->id AND $category->active}
    	{if $scenes || $category->description || $category->id_image}
			<div class="content_scene_cat">
            	 {if $scenes}
                 	<div class="content_scene">
                        <!-- Scenes -->
                        {include file="$tpl_dir./scenes.tpl" scenes=$scenes}
                        {if $category->description}
                            <div class="cat_desc rte">
                            {if Tools::strlen($category->description) > 350}
                                <div id="category_description_short">{$description_short}</div>
                                <div id="category_description_full" class="unvisible">{$category->description}</div>
                                <a href="{$link->getCategoryLink($category->id_category, $category.link_rewrite)|escape:'html':'UTF-8'}" class="lnk_more">{l s='More'}</a>
                            {else}
                                <div>{$category->description}</div>
                            {/if}
                            </div>
                        {/if}
                        </div>

                  {/if}
            </div>
		{/if}

		<h1 class="page-heading{if (isset($subcategories) && !$products) || (isset($subcategories) && $products) || !isset($subcategories) && $products} product-listing{/if}"><span class="cat-name">{$category->name|escape:'html':'UTF-8'}{if isset($categoryNameComplement)}&nbsp;{$categoryNameComplement|escape:'html':'UTF-8'}{/if}</span></h1>
		{if isset($subcategories)}
		<!-- Subcategories -->
		<div id="subcategories">

			<ul class="clearfix">
			{foreach from=$subcategories item=subcategory}
				<li>
					<a class="subcategory-name" href="{$link->getCategoryLink($subcategory.id_category, $subcategory.link_rewrite)|escape:'html':'UTF-8'}">{$subcategory.name|truncate:25:'...'|escape:'html':'UTF-8'|truncate:350}</a>
					{if $subcategory.description}
					{/if}
				</li>
			{/foreach}
			</ul>
		</div>
		{/if}
		{if $products}
			<div class="content_sortPagiBar clearfix">
        
                <div class="top-pagination-content clearfix">
                	{include file="./product-compare.tpl"}
					{include file="$tpl_dir./pagination.tpl"}
                </div>
			</div>

            <!-- RENDER PRODUCTS -->
			{include file="./product-list.tpl" products=$products}
            <!-- END! RENDER PRODUCTS -->


		
		{/if}
	{elseif $category->id}
		<p class="alert alert-warning">{l s='This category is currently unavailable.'}</p>
	{/if}
{/if}