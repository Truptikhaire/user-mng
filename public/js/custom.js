// get state according to selected country id
if ($("#country_id").val() != '' && $("#country_id").val() != undefined) {
    var id = $("#country_id").val();
    
    getState(id);
}

$("#country_id").change(function () {
    var id = $("#country_id").val();
    getState(id);
    $('#register').valid()
});

// console.log();
// get state according to selected country id

if ($("#state_id").val() != '' && $("#state_id").val() != undefined) {
    var id = $("#state_id").val();
    getCity(id);
    $('#register').valid()
}

// get city according to state id
$("#state_id").change(function () {
    var endpoint = base_url + '/common/getCityById';
    var id = $(this).val();
    getCity(id);
    $('#register').valid()
});

$("#gstate_id").change(function () {
    var id = $(this).val();
    getGeneratorCity(id);
});


function getState(id) {
    var endpoint = base_url + '/common/getStateById';
    var selected_state = $("#selected_state").val();
    var selectedOldState = $('#oldState').val();
    var token = jQuery("input[name='_token']").val();
    $('#state_id').html('<option value="">Select State</option>');
    $.ajax({
        url: endpoint,
        method: 'POST',
        data: {
            '_token': token,
            'id': id,
        },
        dataType: "json",
        success: function (data) {
            var len = (data).length;
            for (var i = 0; i < len; i++) {
                var selected = '';
                if((selected_state == "" || selected_state == undefined) && data[i].state_id == 3959) {
                    selected = ' selected '; 
                }

                if ((selected_state == data[i].state_id) || (selectedOldState == data[i].state_id)) { 
                    selected = ' selected '; 
                }
                
                $('#state_id').append('<option value="' + data[i].state_id + '"' + selected + '>' + data[i].name + '</option>');
            }
            if ($("#state_id").val() != '') {
                $("#state_id").trigger('change');
            }
        }
    })
}

function getCity(id) {
    var endpoint = base_url + '/common/getCityById';
    var selected_city = $("#selected_city").val();
    var selectedOldCity = $('#oldCity').val();
    var token = jQuery("input[name='_token']").val();
    $('#city_id').html('<option value="">Select City</option>');
    $.ajax({
        url: endpoint,
        method: 'POST',
        data: {
            '_token': token,
            'id': id,
        },
        dataType: "json",
        success: function (data) {
           
            var len = (data).length;
            // if(len > 0) {
            //     $('#gcity_id').prop('disabled',false);
            // }else{
            //     $('#gcity_id').prop('disabled',true);
            // }
            for (var i = 0; i < len; i++) {
                if ((selected_city == data[i].city_id) || (selectedOldCity == data[i].city_id)) { 
                    var selected = ' selected '; 
                } 
                else { var selected = ' '; }
                $('#city_id').append('<option value="' + data[i].city_id + '"' + selected + '>' + data[i].name + '</option>');
            }
        }
    })
}

function getGeneratorState(id) {
    var endpoint = base_url + '/common/getStateById';
    // var selected_state = $("#selected_state").val();
    var selectedOldState = $('#oldGState').val();
    var token = jQuery("input[name='_token']").val();
    $('#gstate_id').html('<option value="">Select State</option>');
    $.ajax({
        url: endpoint,
        method: 'POST',
        data: {
            '_token': token,
            'id': id,
        },
        dataType: "json",
        success: function (data) {
            var len = (data).length;
            for (var i = 0; i < len; i++) {
                var selected = '';
                if(data[i].state_id == 3959) {
                    selected = ' selected '; 
                }

                if (selectedOldState == data[i].state_id) { 
                    selected = ' selected '; 
                }
                
                $('#gstate_id').append('<option value="' + data[i].state_id + '"' + selected + '>' + data[i].name + '</option>');
            }
            if ($("#gstate_id").val() != '') {
                $("#gstate_id").trigger('change');
            }
        }
    })
}

function getGeneratorCity(id){
    var endpoint = base_url + '/common/getCityById';
    var selectedOldCity = $('#oldGCity').val();
    var token = jQuery("input[name='_token']").val();
    $('#gcity_id').html('<option value="">Select City</option>');
    $.ajax({
        url: endpoint,
        method: 'POST',
        data: {
            '_token': token,
            'id': id,
        },
        dataType: "json",
        success: function (data) {
            var gCityId = null;
            var addresscheckbox = $('#sameAsAbove');
            if (addresscheckbox.is(':checked') && addresscheckbox.val() === "on") {
                gCityId = $('#city_id').val();
            }
            var len = (data).length;
            for (var i = 0; i < len; i++) {
                

                if ((selectedOldCity == data[i].city_id) || (gCityId == data[i].city_id)) { 
                    var selected = 'selected'; 
                } 
                else { var selected = ' '; }
                $('#gcity_id').append('<option value="' + data[i].city_id + '"' + selected + '>' + data[i].name + '</option>');
            }
        }
    })
}