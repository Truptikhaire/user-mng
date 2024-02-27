$(document).ready(function () {
    $('#register').on('submit', function(){
        console.log($('#register').valid());

    })
    $(function () {
        var jqForm = $('#register');
        jqForm.validate({
            rules: {
                'first_name': {
                    maxlength: 50,
                    required: true,
                },
                'last_name': {
                    maxlength: 50,
                    required: true,
                },
                'email': {
                    required: true,
                    maxlength: 50,
                },
                'password': {
                    minlength: 8,
                    maxlength: 16,
                    required: true,
                },
                'password-confirm': {
                    minlength: 8,
                    maxlength: 16,
                    required: true,
                }
            },
            messages: {
            },
            errorElement: 'span',
            errorPlacement: function (error, element) {
                element.closest('.form-group').append(error);
            },
            submitHandler: function (form) {
                form.submit();
            }
        });
    })
});