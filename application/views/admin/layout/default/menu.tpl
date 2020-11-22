<ul class='main-navigation-menu'>
    {assign var=sub_menu_count value=0}
    {foreach from=$SIDE_MENU item=v key=k}
        {$sub_menu_count=count($v.sub_menus)}
        {if $v.menu_id != '24'}
        <li {if {$v.is_selected} } class='active open' {/if}>           
            <a href= '{$v.menu_link}'>                     
                <i class='fa {$v.icon}' ></i>
                <span class='title'>
                    {strtoupper($v.text)}
                </span>
                {if $sub_menu_count}
                    <i class='icon-arrow'></i>
                {/if}
                <span class='selected'></span>
            </a>
            {if $sub_menu_count}
                <ul class='sub-menu'>
                    {foreach from=$v.sub_menus item=i}
                        <li {if {$i.is_selected} } class='active' {/if}>
                            <a href='{$i.menu_link}'>
                                <i class='fa {$i.icon}' ></i>
                                <span class='title'>
                                    {strtoupper($i.text)}
                                </span>
                            </a>
                        </li>
                    {/foreach}
                </ul>
            {/if}
        </li>
        {/if}
    {/foreach}
</ul>