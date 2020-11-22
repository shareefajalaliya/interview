{if $box && $flashdata}
    {if $type }
        {assign var="message_class" value="alert alert-block alert-success fade in"}
    {else}
        {assign var="message_class" value="alert alert-block alert-danger fade in"}
    {/if}

    <div class="{$message_class}">
		<button data-dismiss="alert" class="close" type="button">
			×
		</button>
		<p>                         
	            {$flashdata}
		</p>
	</div>
{/if}


