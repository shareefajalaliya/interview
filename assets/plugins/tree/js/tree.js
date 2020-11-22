
function generateTree(user_id, user_type, tree_type)
{
    var rootPath = $("#rootPath").val();
    $loadingDiv = $(".loading-div").parent();;

    $.ajax({
        type: "POST",
        url: rootPath+user_type+'/network/view_network',
        data: {
            user_id: user_id, tree: tree_type
        },
        beforeSend: function(){            
            $(".loading-div").show().ajaxStart(function() {
                $(this).show();
            })
        },

        success: function(data) {
            $('#tree').html(data);
            $('.tree').tree_structure({
                'align_option': 'center'
            });
            /* 
            * Make focus to root node in the  frame
            */
            var windowWidth = $(".tree-window").width();
            var treeWidth = $('#tree').get(0).scrollWidth;
            var d = $('#tree');
            d.scrollLeft((treeWidth-windowWidth)/2);
        },
        complete: function(){
            $(".loading-div").hide();
        } 
    });
}

(function($) {
    $.fn.tree_structure = function(options) {
        var defaults = { 
            'align_option': 'center'
        };

        return this.each(function() {
            if (options)
                $.extend(defaults, options);
            
            var align_option = defaults['align_option'];
            var vertical_line_text = '<span class="vertical"></span>';
            var horizontal_line_text = '<span class="horizontal"></span>';
            var highlight_text = '<span class="highlight" title="Click for highlight my Tree"><i class="fa fa-camera-retro fa-2x dark-red-color"></i></span>';
            var class_name = $(this).attr('class');
            var event_name = 'pageload'; 

            if (align_option != 'center')
                $('.' + class_name + ' li').css({ 'text-align': align_option });
            
            $('.' + class_name + ' li.thide').each(function() {
                $(this).children('ul').hide();
            });

            function prepend_data(target) {
                target.prepend(vertical_line_text + horizontal_line_text).children('div');
                if (target.children('ul').length != 0)
                   target.hasClass('thide') ? target.children('div').prepend('<b class="thide tshow"></b>') : target.children('div').prepend('<b class="thide"></b>');
                   // target.hasClass('thide') ? target.children('div').prepend('<b class="thide tshow"></b>') : target.children('div').prepend('<b class="thide"><span><i class="fa  fa-angle-double-up fa-2x dark-red-color"></i><span></b>');
                   target.children('div').prepend(highlight_text);
               }

               function draw_line(target) {
                var tree_offset_left = $('.' + class_name + '').offset().left;
                tree_offset_left = parseInt(tree_offset_left, 10);
                var child_width = target.children('div').outerWidth(true) / 2;
                var child_left = target.children('div').offset().left;
                if (target.parents('li').offset() != null)
                    var parent_child_height = target.parents('li').offset().top;
                vertical_height = (target.offset().top - parent_child_height) - target.parents('li').children('div').outerHeight(true) / 2;
                target.children('span.vertical').css({ 'height': vertical_height, 'margin-top': -vertical_height, 'margin-left': child_width, 'left': child_left - tree_offset_left });
                if (target.parents('li').offset() == null) {
                    var width = 0;
                } else {
                    var parents_width = target.parents('li').children('div').offset().left + (target.parents('li').children('div').width() / 2);
                    var current_width = child_left + (target.children('div').width() / 2);
                    var width = parents_width - current_width;
                }
                var horizontal_left_margin = width < 0 ? -Math.abs(width) + child_width : child_width;
                target.children('span.horizontal').css({ 'width': Math.abs(width), 'margin-top': -vertical_height, 'margin-left': horizontal_left_margin, 'left': child_left - tree_offset_left });
            }

            function call_structure() {
                $('.' + class_name + ' li').each(function() {
                    if (event_name == 'pageload')
                        prepend_data($(this));
                    draw_line($(this));
                });
            }
            call_structure();
            event_name = 'others';
            $(window).resize(function() {
                call_structure();
            });
            $(document).on("click", '.' + class_name + ' b.thide', function() {
                $(this).toggleClass('tshow');
                $(this).closest('li').toggleClass('thide').children('ul').toggle();
                call_structure();
            });
            $(document).on("mouseenter mouseleave", '.' + class_name + ' li > div', function(event) {
                if (event.type == 'mouseenter' || event.type == 'mouseover') {
                    $('.' + class_name + ' li > div.current').removeClass('current');
                    $('.' + class_name + ' li > div.children').removeClass('children');
                    $('.' + class_name + ' li > div.parent').removeClass('parent');
                    $(this).addClass('current');
                    $(this).closest('li').children('ul').children('li').children('div').addClass('children');
                    $(this).closest('li').closest('ul').closest('li').children('div').addClass('parent');
                    $(this).children('span.highlight').show();
                } else {
                    $(this).children('span.highlight').hide();
                }
            });
            $(document).on("click", '.' + class_name + ' span.highlight', function() {
                $('.' + class_name + ' li.highlight').removeClass('highlight');
                $('.' + class_name + ' li > div.parent').removeClass('parent');
                $('.' + class_name + ' li > div.children').removeClass('children');
                $(this).closest('li').addClass('highlight');
                $('.highlight li > div').addClass('children');
                var _this = $(this).closest('li').closest('ul').closest('li');
                find_parent(_this);
            });
            $(document).on("click", '.' + class_name + ' span.highlight', function() {
                $('.' + class_name + ' li > div').not(".parent, .current, .children").closest('li').addClass('tnone');
                $('.' + class_name + ' li div b.thide.tshow').closest('div').closest('li').children('ul').addClass('tshow');
                $('.' + class_name + ' li div b.thide').addClass('tnone');
                if ($('.back_btn').length == 0) {
                    $('#tree').prepend('<i class="back_btn fa fa-hand-o-left fa-3x dark-red-color" title="Go Back"></i>');
                }
                call_structure();
                $('.back_btn').click(function() {
                    $('.' + class_name + ' ul.tshow').removeClass('tshow');
                    $('.' + class_name + ' li.tnone').removeClass('tnone');
                    $('.' + class_name + ' li div b.thide').removeClass('tnone');
                    $(this).remove();
                    call_structure();
                });
            });

            function find_parent(_this) {
                if (_this.length > 0) {
                    _this.children('div').addClass('parent');
                    _this = _this.closest('li').closest('ul').closest('li');
                    return find_parent(_this);
                }
            }


        });
};
})(jQuery);

function treeRegistration(user_name,father_id,position)
{
    var rootPath = $("#rootPath").val();
    location.href = rootPath + 'register/index/'+ user_name +'/'+father_id +'/'+position;
}