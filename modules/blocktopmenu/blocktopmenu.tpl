<style>
.sf-menu ul:before {
  content: "{l s='Pegs for:' mod='blocktopmenu'}";
}
</style>

{if $MENU != ''}
<!-- Menu -->
<div class="">

	<div id="block_top_menu" class="sf-contener">
		<div class="cat-title">{l s="Menu" mod="blocktopmenu"}</div>

		<ul class="sf-menu clearfix menu-content">

			{$MENU}

			{if $MENU_SEARCH}
			<li class="sf-search noBack" style="float:right">

				<form id="searchbox" action="{$link->getPageLink('search')|escape:'html':'UTF-8'}" method="get">
					<p>
						<input type="hidden" name="controller" value="search" />
						<input type="hidden" value="position" name="orderby"/>
						<input type="hidden" value="desc" name="orderway"/>
						<input type="text" name="search_query" value="{if isset($smarty.get.search_query)}{$smarty.get.search_query|escape:'html':'UTF-8'}{/if}" />
					</p>
				</form>
			</li>
			{/if}
		</ul>
	</div>
</div>
<!--/ Menu -->
{/if}




<script type="text/javascript">
$(function(){

var el = $('ul.sf-menu').find('ul.submenu-container').first();
var liElPegs = $('ul.sf-menu').find("li .sf-with-ul")
var href = liElPegs.attr('href');
liElPegs.attr('href','#');
el.append('<li><a href="'+href+'">' + "{l s='See all pegs' mod='blocktopmenu'}" +'</a></li>');

});
</script>