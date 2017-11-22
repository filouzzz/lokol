function preview_comment()
{
 $("#preview_div_comment").html($("#text_comment").val());
}

function preview_title()
{
 $("#preview_div_title").html($("#text_title").val());
}

function preview_description()
{
 $("#preview_div_description").html($("#text_description").val());
}

function preview_url()
{
 $("#preview_div_url").html($("#text_url").val());
}

function preview_image(event)
{
  var reader = new FileReader();
  reader.onload = function()
  {
    var output = document.getElementById('output_image');
    output.src = reader.result;
  }
  reader.readAsDataURL(event.target.files[0]);
}
