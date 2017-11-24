function preview_user()
{
 $("#preview_div_user").html($("#text_user").val());
 $("#preview_div_user_twitter").html($("#text_user").val());
 $("#preview_div_user_twitter2").html($("#text_user").val());
}

function preview_title()
{
 $("#preview_div_title").html($("#text_title").val());
}

function preview_description()
{
 $("#preview_div_description").html($("#text_description").val());
 $("#preview_div_description_twitter").html($("#text_description").val());
}

function preview_url()
{
 $("#preview_div_url").html($("#text_url").val());
 $("#preview_div_url_twitter").html($("#text_url").val());
}

function preview_image(event)
{
  var reader = new FileReader();
  reader.onload = function()
  {
    var output = document.getElementById('output_image');
    output.src = reader.result;
    var output = document.getElementById('output_image_twitter');
    output.src = reader.result;
  }
  reader.readAsDataURL(event.target.files[0]);
}
