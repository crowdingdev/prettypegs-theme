<div id="psblog" class="row">
    <div class="col-sm-9 col-xs-12">

        {if isset($notfound) && $notfound == true}
        <p class="warning">{l s='The page was not found' mod='psblog'}</p>
        {else}

        {capture name=path}

        {if isset($post_category) && $post_category->id != 1}
        <a title="{l s='All posts' mod='psblog'}" href="{$listLink}">{$blog_title}</a>
        {if isset($parent_category)}
        <span class="navigation-pipe">{$navigationPipe}</span><a href="{$parent_category_link}">{$parent_category->name}</a>
        {/if}
        <span class="navigation-pipe">{$navigationPipe}</span>{$post_category->name}
        {else}
        {$blog_title}
        {/if}
        {/capture}

        {if isset($post_category) && $post_category->id != 1}

        <div id="category_info">

            <h2 class="bt_left">{l s='Posts in category' mod='psblog'} "{$post_category->name}"</h2>

            {if $blog_conf.rss_active}
            <p class="bt_right"><a href="{$posts_rss_url}" title="RSS"><img src="{$modules_dir}psblog/img/rss.png" alt="RSS" /></a></p>
            {/if}

            <div class="clear"></div>

            <div class="rte">{$post_category->description}</div>

            {if isset($subcategories) && $subcategories|@count > 0}
            <p>
                <span class="bold">{l s='Subcategories :' mod='psblog'}</span> &nbsp;
                {foreach from=$subcategories item=subcat name=subcatlist}
                <a href="{$subcat.link}" title="{$subcat.name}">{$subcat.name}</a>{if !$smarty.foreach.subcatlist.last}, {/if}
                {/foreach}
            </p>
            {/if}

        </div>

        {else}
        <h2 class="bt_left">{l s='Prettypegs blog' mod='psblog'}</h2  >

            {if $blog_conf.rss_active}
            <p class="bt_right"><a href="{$posts_rss_url}" title="RSS"><img src="{$modules_dir}psblog/img/rss.png" alt="RSS" /></a></p>
            {/if}

            <div class="clear"></div>

            {/if}

            <div class="clear"></div>

            {if isset($search_query)}
            {if isset($post_list) && $post_list|@count > 0}
            <h3>{l s='Results for' mod='psblog'} "{$search_query}"</h3>
            {/if}
            {/if}

            <div id="post_list">

                {if isset($post_list) && $post_list && $post_list|@count > 0}
                <ul class="row">
                    {foreach from=$post_list item=post name=publications}
                    <li {if $smarty.foreach.publications.last} class="last_item col-xs-12 col-sm-9" {elseif $smarty.foreach.publications.first} class="first_item col-xs-12 col-sm-9" {else} class="col-xs-12 col-sm-9"{/if}>
                        {if $post.default_img}
                        <div class="img_default">
                            <a href="{$post.link}" title="{$post.title}">
                                <img src="{$posts_img_path}list/{$post.default_img_name}" width="{$blog_conf.img_list_width}" alt="{$post.title}" />
                            </a>
                        </div>
                        {/if}
                        <div class="{if $post.default_img} detail_left {else} detail_large {/if}">
                            <h3><a href="{$post.link}" title="{$post.title}">{$post.title}</a></h3>
                            <p>
                                {if $blog_conf.list_display_date}<span>{dateFormat date=$post.date_on|escape:'html':'UTF-8' full=0}</span>{/if}
                                {if $blog_conf.comment_active && $post.allow_comments && $post.nb_comments > 0}
                                <span> - <a href="{$post.link}#postcomments" >{$post.nb_comments} {if $post.nb_comments > 1}{l s='comments' mod='psblog'}{else}{l s='comment' mod='psblog'}{/if}</a></span>
                                {/if}
                            </p>

                            <div class="excerpt">{$post.excerpt}</div>
                            <p>
                                {if $blog_conf.category_active && isset($post.categories) && $post.categories|@count > 0}
                                <span>{l s='Posted on' mod='psblog'}
                                    {foreach from=$post.categories item=post_category name=post_category_list}
                                    <a href="{$post_category.link}" title="{$post_category.name}">{$post_category.name}</a>{if !$smarty.foreach.post_category_list.last},{/if}
                                    {/foreach}
                                </span>
                                {/if}
                            </p>
                        </div>
                        <div class="clear"></div>
                    </li>
                    {/foreach}
                </ul>

                {if isset($paginationLink)}
                {if isset($back) && $back}<a class="bt_right" href="{$paginationLink}{$curr_page+1}">{l s='Previous articles' mod='psblog'} &raquo;</a>&nbsp;&nbsp;&nbsp;{/if}
                {if isset($next) && $next}<a class="bt_left" href="{$paginationLink}{$curr_page-1}">&laquo; {l s='Newest Articles' mod='psblog'}</a>{/if}
                {/if}

                <div class="clear"></div>

                {else}
                {if isset($search_query)}
                <p class="warning">{l s='No results for' mod='psblog'} "{$search_query}"</p>
                {elseif isset($post_category)}
                <p class="warning">{l s='There is no posts in this category' mod='psblog'}</p>
                {else}
                <p class="warning">{l s='There is no posts' mod='psblog'}</p>
                {/if}
                {/if}

            </div>

            {/if}

        </div>


        <div class="col-sm-3 col-xs-12">

                <h4>STORE</h4>
            <div class="row navigation-wrapper">
                <div class="col-xs-12">
                   <a href="all-pegs">
                      <span class="pp-link pp-see-all-pegs">see all pegs</span> 
                  </a>
              </div>
              <div class="col-xs-12">
               <a href="campaigns"> 
                <span class="pp-link pp-campaigns">campaigns</span> 
            </a>
        </div>
        <div class="col-xs-12"> 
            <a href="/inspiration">
               <span class="pp-link pp-inspiration">inspiration</span>
           </a>
       </div>
   </div>

            <div class="contact-blogger">
                <h4>CONTACT ME FOR MORE INFO</h4>
                <img style="float:left;vertical-align:middle;margin-right:10px;" src="http://www.prettypegs.com/img/jana.jpg"><div style="float:left">Jana Cagin<br><span class="archivelink"><a href="mailto: jana@prettypegs.com">jana@prettypegs.com</a></span></div><div class="clear"></div><br>

            </div>


</div>

</div>