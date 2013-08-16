{include:core/layout/templates/head.tpl}

<body>

<div class="wrapper" id="contentHolder">
	<div id="content" class="row clearfix">


    {option:positionLeft}
    <div class="left_col">


      <div class="nav" id="navhook">
        <a href="/"><h5>omfloerst</h5></a>

        {$var|getnavigation:'page':1:1:1}

      </div>

      <div id="fblike">
        <iframe
           src="//www.facebook.com/plugins/like.php?href=http%3A%2F%2Fwww.facebook.com%2Fomfloerst&amp;width=130&amp;height=80&amp;colorscheme=light&amp;layout=standard&amp;action=like&amp;show_faces=false&amp;send=false"
           scrolling="no"
           frameborder="0"
           style="border:none; overflow:hidden; width:230px; height:80px;"
           allowTransparency="true">
        </iframe>
      </div>


		</div>

      {/option:positionLeft}

    <div class="mainwrapper">
      <div class="header">

			  <a href="/"><h1>omfloerst</h1></a>
			  een dichterscollectief, of hoe noem je dat.

		  </div>

		{* Main *}

		{option:positionMain}
		<section class="main_col">
			{iteration:positionMain}
			{option:!positionMain.blockIsHTML}
				{$positionMain.blockContent}
			{/option:!positionMain.blockIsHTML}
			{option:positionMain.blockIsHTML}
				{$positionMain.blockContent}
			{/option:positionMain.blockIsHTML}
			{/iteration:positionMain}
		</section>
		{/option:positionMain}

	  </div>


    {option:positionBottom}

    <div class="footer">
	    <span class="small">

	    </span>
    </div>


    {/option:positionBottom}


  </div>
</div>

{* General Javascript *}
{iteration:jsFiles}
<script src="{$jsFiles.file}"></script>
{/iteration:jsFiles}
<script src="{$THEME_URL}/core/layout/js/scripts.js"></script>
</body>
</html>
