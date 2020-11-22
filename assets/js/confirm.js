var rootPath = $("#rootPath").val();

function trim(a)
{

    return a.replace(/^\s+|\s+$/, '');
}


function edit_event_management(id)
{
    swal({
        title: $("#text_are_you_sure").html(),
        text: $("#text_you_want_edit_event").html(),
        type: "warning",
        showCancelButton: true,
        confirmButtonColor: "#DD6B55",
        confirmButtonText: $("#text_yes_edit_it").html(),
        cancelButtonText: $("#text_no_cancel_please").html(),
        closeOnConfirm: false,
        closeOnCancel: false
    },
    function (isConfirm) {
        if (isConfirm) {
            document.location.href = rootPath + "admin/events/event_management/edit/"+id; 
        } else {
            swal($("#text_cancelled").html(),$("#text_news_safe").html(), "error");
        }
    });
}

function delete_event_management(id)
{
    swal({
        title: $("#text_are_you_sure").html(),
        text: $("#text_you_want_delete_event").html(),
        type: "warning",
        showCancelButton: true,
        confirmButtonColor: "#DD6B55",
        confirmButtonText: $("#text_yes_edit_it").html(),
        cancelButtonText: $("#text_no_cancel_please").html(),
        closeOnConfirm: false,
        closeOnCancel: false
    },
    function (isConfirm) {
        if (isConfirm) {
            document.location.href = rootPath + "admin/events/event_management/delete/"+id ; 
        } else {
            swal($("#text_cancelled").html(),$("#text_news_safe").html(), "error");
        }
    });
}


function delete_gallery_image(id)
{
    swal({
        title: $("#text_are_you_sure").html(),
        text: $("#text_you_want_delete_event").html(),
        type: "warning",
        showCancelButton: true,
        confirmButtonColor: "#DD6B55",
        confirmButtonText: $("#text_yes_edit_it").html(),
        cancelButtonText: $("#text_no_cancel_please").html(),
        closeOnConfirm: false,
        closeOnCancel: false
    },
    function (isConfirm) {
        if (isConfirm) {
            document.location.href = rootPath + "admin/events/view-gallery/delete/"+id ; 
        } else {
            swal($("#text_cancelled").html(),$("#text_news_safe").html(), "error");
        }
    });
}

function inactivate_efile(id)
{
    swal({
        title: $("#text_are_you_sure").html(),
        text: $("#text_yes_delete_it").html(),
        type: "warning",
        showCancelButton: true,
        confirmButtonColor: "#DD6B55",
        confirmButtonText: $("#text_yes_delete_it").html(),
        cancelButtonText: $("#text_no_cancel_please").html(),
        closeOnConfirm: false,
        closeOnCancel: false
    },
    function (isConfirm) {
        if (isConfirm) {
            var check_user_available =  rootPath + "admin/settings/delete_student";
            
            $.post(check_user_available, {efile_id: id}, function(data)
            {


             swal({
                title: $("#text_deleted").html(), 
                text: $("#text_deleted").html(), 
                type: "success"
            },function() {
             document.location.href = rootPath + "admin/details/view-student";
         });
         });


            
        } else {
            swal($("#text_cancelled").html(),$("#text_rank_safe").html(), "error");
        }
    });

}



function inactivate_news(id)
{

    swal({
        title: $("#text_are_you_sure").html(),
        text: $("#text_you_will_not_recover").html(),
        type: "warning",
        showCancelButton: true,
        confirmButtonColor: "#DD6B55",
        confirmButtonText: $("#text_yes_delete_it").html(),
        cancelButtonText: $("#text_no_cancel_please").html(),
        closeOnConfirm: false,
        closeOnCancel: false
    },
    function (isConfirm) {
        if (isConfirm) {
            var check_user_available =  rootPath + "admin/settings/delete_news";
            
            $.post(check_user_available, {news_id: id}, function(data)
            {


             swal({
                title: $("#text_deleted").html(), 
                text: $("#text_news_deleted").html(), 
                type: "success"
            },function() {
             document.location.href = rootPath + "admin/settings/news-management";
         });
         });


            
        } else {
            swal($("#text_cancelled").html(),$("#text_news_safe").html(), "error");
        }
    });

}



function edit_news(id)
{

    swal({
        title: $("#text_are_you_sure").html(),
        text: $("#text_you_want_edit_news").html(),
        type: "warning",
        showCancelButton: true,
        confirmButtonColor: "#DD6B55",
        confirmButtonText: $("#text_yes_edit_it").html(),
        cancelButtonText: $("#text_no_cancel_please").html(),
        closeOnConfirm: false,
        closeOnCancel: false
    },
    function (isConfirm) {
        if (isConfirm) {
            document.location.href = rootPath + "admin/settings/news-management/"+id; 
        } else {
            swal($("#text_cancelled").html(),$("#text_news_safe").html(), "error");
        }
    });

}





function inactivate_time_table(id)
{

    swal({
        title: $("#text_are_you_sure").html(),
        text: $("#text_you_will_not_recover").html(),
        type: "warning",
        showCancelButton: true,
        confirmButtonColor: "#DD6B55",
        confirmButtonText: $("#text_yes_delete_it").html(),
        cancelButtonText: $("#text_no_cancel_please").html(),
        closeOnConfirm: false,
        closeOnCancel: false
    },
    function (isConfirm) {
        if (isConfirm) {
            var check_user_available =  rootPath + "admin/settings/delete_time_table";
            
            $.post(check_user_available, {time_id: id}, function(data)
            {


             swal({
                title: $("#text_deleted").html(), 
                text: $("#text_news_deleted").html(), 
                type: "success"
            },function() {
             document.location.href = rootPath + "admin/settings/time-table";
         });
         });


            
        } else {
            swal($("#text_cancelled").html(),$("#text_news_safe").html(), "error");
        }
    });

}

