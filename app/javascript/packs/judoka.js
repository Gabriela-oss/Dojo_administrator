document.addEventListener('DOMContentLoaded', function (){
  $('#judoka_categories').click(function(){
    var categoryId = $(this)[0].options[$(this)[0].options.selectedIndex].value
    
    $.ajax({

      type: 'get', 
      url: 'judokas/sign_up',
      data: {category_id: categoryId},
      dataType: 'json',
      success: function(data){
        alert (categoryId)
      }

    })

  })
})