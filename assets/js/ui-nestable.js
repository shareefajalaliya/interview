var UINestable = function () {
	"use strict";
    //function to initiate jquery.nestable
    var updateOutput = function (e) {
        var list = e.length ? e : $(e.target),
        output = list.data('output');

        var url = $("#rootPath").val()+"admin/menu/updateMenuOrder";

        $.post(url, 
            {jsonData: window.JSON.stringify(list.nestable('serialize'))},
            function(response){
            });
        if (window.JSON) {
            output.val(window.JSON.stringify(list.nestable('serialize')));
        }
    };
    var runNestable = function () {
        $('#nestable3').nestable({
            group: 1
        }).on('change', updateOutput);
        // output initial serialised data
        updateOutput($('#nestable3').data('output', $('#nestable-output')));
    };
    return {
        //main function to initiate template pages
        init: function () {
            runNestable();
        }
    };
}();