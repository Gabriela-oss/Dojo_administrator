document.addEventListener('DOMContentLoaded', function (){
  $('#judoka_categories').change(function(){
    var categoryId = $(this)[0].options[$(this)[0].options.selectedIndex].value
    
    if(categoryId == ""){
      $('#levels').empty() 
    } else {
      $.ajax({
        type: 'get', 
        url: '/categories',
        data: {category_id: categoryId},
        dataType: 'json',
        success: function(data){
          var select = `<select name="judoka[level_id]" id="judoka_levels">
          <option value="">Selecciona un nivel</option>`
  
          data.forEach(function(level){
            select = select + `<option value="${level.id}">${level.name}</option>`
          })
          
          select = select + '</select>'
  
          $('#levels').html(select)
        }
      })
    }
  })
})
