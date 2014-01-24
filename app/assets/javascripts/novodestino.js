
function AddImagem(img){
 var oEditor = CKEDITOR.instances.destino_full_text;
 var html = '<img src="' + img + '">';
 var newElement = CKEDITOR.dom.element.createFromHtml( html, oEditor.document );
 oEditor.insertElement( newElement );
}

$('.image_upload').bind('fileuploadprogress', function(e, data) { 
  console.log(Math.round((data.loaded * 100.0) / data.total));
});
$('.image_upload').bind('cloudinarydone', function(e, data) {   
 console.log(data.result.public_id);
 AddImagem(data.result.url);
 console.log(data.result.public_id + "." + data.result.format);

 return true;
});

function AddCapa(img){
  console.log('Adicionar capa com url:' + img);
  $('.site-destino').css('background', 'url("'+ img + '")');
}

$('.capa_upload').bind('fileuploadprogress', function(e, data) { 
  console.log(Math.round((data.loaded * 100.0) / data.total));
});
$('.capa_upload').bind('cloudinarydone', function(e, data) {   
 AddCapa($.cloudinary.image(data.result.public_id, {format: data.result.format, width: 1980, height: 300, crop: 'fill', x: 0, y: 900 })[0].src);
 console.log(data.result.public_id + "." + data.result.format);
 return true;
});
$('.up_upload').fileupload({
  autoUpload: false,
  add: function (e, data) {
    $.each(data.files, function (index, file) {
      var img = '<img src="' + URL.createObjectURL(file) + '" width="350px height="219px" /> </div>'
      var newFileDiv = $("<div class='uploadBox' id='fileDiv_" + file.name + "'><div class='leftEle'><a href='#' id='link_" + index + "' class='removeFile'>Remove</a></div><div class='midEle'>" + img + "</div></div>");
      $('#uploadFilesBox').append(newFileDiv);

      newFileDiv.find('a').on('click', { filename: file.name, files: data.files }, function (event) {                        
        event.preventDefault();
        var uploadFilesBox = $("#uploadFilesBox");
        var remDiv = $(document.getElementById("fileDiv_" + event.data.filename));
        remDiv.remove();                        
                        data.files.length = 0;    //zero out the files array                                     
                      });

      data.context = newFileDiv;
    });
    $("#up_btn").on('click', function () {
      if (data.files.length > 0) {     //only submit if we have something to upload
        data.submit();
      }   
      
    });
  }
});


$('.up_upload').bind('fileuploadprogress', function(e, data) { 
  console.log(Math.round((data.loaded * 100.0) / data.total));
  //console.log(data);
}).bind('fileuploaddone', function(e, data) {  
   var remDiv = $(document.getElementById("fileDiv_" + data.files[0].name)); 
   remDiv.remove();
   console.log(data.files[0].name)
   data.files.length = 0;
	 return true;
});

// $('.up_upload')
// 	.bind('fileuploadadd', function (e, data) {
// 		$('.preview').append('<img src="' + URL.createObjectURL(data.files[0]) + '" width="350px height="219px" />');
// 		console.log(data)
// 	});