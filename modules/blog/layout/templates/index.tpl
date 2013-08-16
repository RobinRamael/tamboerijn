{*
	variables that are available:
	- {$items}: contains an array with all posts, each element contains data about the post
*}

{option:!items}
	<p>{$msgBlogNoItems}</p>
{/option:!items}
{option:items}
{iteration:items}
<article class="blogItem{option:items.last} last{/option:items.last}">
	<header>
		<h1><a href="{$items.full_url}" title="{$items.title}">{$items.title}</a></h1>
		<span class="meta">
			<span>
				{* Date *}
				<time datetime="{$items.publish_on|date:'c':{$LANGUAGE}}">
					<span class="day">{$items.publish_on|date:'d':{$LANGUAGE}}</span>
					<span class="month">{$items.publish_on|date:'M':{$LANGUAGE}}</span>
					<span class="year">{$items.publish_on|date:'Y':{$LANGUAGE}}</span>
				</time>
			</span>
			<span class="comments">
				{* Comments *}
				{option:!items.comments}(<a href="{$items.full_url}#{$actComment}" class="nocomments" title="{$msgBlogNoComments|ucfirst}">{$msgBlogNoComments|ucfirst}</a>){/option:!items.comments}
				{option:items.comments}(<a href="{$items.full_url}#{$actComments}" title="{$msgBlogComments|ucfirst}">{$items.comments_count} comment</a>){/option:items.comments}
			</span>
		</span>
	</header>
	<div class="content">
		{option:items.image}<p><img src="{$FRONTEND_FILES_URL}/blog/images/source/{$items.image}" alt="{$items.title}" /></p>{/option:items.image}
		{option:!items.introduction}{$items.text}{/option:!items.introduction}
		{option:items.introduction}{$items.introduction}{/option:items.introduction}
	</div>
</article>
{/iteration:items}
{include:core/layout/templates/pagination.tpl}
{/option:items}
