jQuery(document).ready(function ($) {
    var submitButton = document.getElementById('submitidbtn');
    var ajaxFunctionforprocess = function (fromdata, action) {
        $.ajax({
            url: my_ajax_object.ajaxurl,
            type: "POST",
            data: {
                action: action,
                data: fromdata,
                security: my_ajax_object.form_security,

            },
            success: function (response) {
                $('div .msg').html(response);
            },
            error: function (response) {
               alert(response);

            }

        });
       
    }
    submitButton.addEventListener('click',function(event){
        event.preventDefault();
         var fromdata={
             'name':document.getElementById('username').value,
             'email':document.getElementById('useremail').value,
             'option':document.getElementById('useroption').value,
             'content':document.getElementById('usertextarea').value

         };
         ajaxFunctionforprocess(fromdata,'My_ajax_action_function');

    });

});