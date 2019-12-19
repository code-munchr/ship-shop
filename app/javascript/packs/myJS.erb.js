$( document ).ready(function() {
   


    $(document).on('click', 'a.add_to_cart_link', function() 
    {    console.log(this);
         console.log($('meta[name="csrf-token"]').attr('content'));
        var id = $(this).attr("data-item_id")
        console.log(id)
        $.ajax({
            method: "POST",
            headers: {'X-CSRF-Token': $('meta[name="csrf-token"]').attr('content')},
             url: 'shopping_experience/add_to_cart',
             data: { item_id: id },
             
        })

    
    });
           
    
});
    
          
       
        
            


        

       
   
    
   
    
    
    