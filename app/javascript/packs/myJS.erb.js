// var stripe = Stripe('pk_test_trtKTfzHcBU3Wwh3HmWSYcol003V3nb4wF');
// var elements = stripe.elements();


// var style = {
//     base: {
//       // Add your base input styles here. For example:
//       fontSize: '16px',
//       color: "#32325d",
//     }
//   };
  
//   // Create an instance of the card Element.
//   var card = elements.create('card', {style: style});


//card.mount('#card-element');
//   });
  

//   document.addEventListener("DOMContentLoaded", function(event) { 
//     //do work

//     var form = document.getElementById('payment-form');
//   console.log("form founf")
//   form.addEventListener('submit', function(event) 
//   {
//     event.preventDefault();
//     console.log("form clicked")
  
//     stripe.createToken(card).then(function(result) {
//       if (result.error) {
//         // Inform the customer that there was an error.
//         var errorElement = document.getElementById('card-errors');
//         errorElement.textContent = result.error.message;      
//         console.log("error in creation")
//       } else {
//         // Send the token to your server.
//         stripeTokenHandler(result.token);
//         console.log(" token created")
//       }
//     });
//   });


//   function stripeTokenHandler(token) {
//     // Insert the token ID into the form so it gets submitted to the server
//     var form = document.getElementById('payment-form');
//     var hiddenInput = document.createElement('input');
//     hiddenInput.setAttribute('type', 'hidden');
//     hiddenInput.setAttribute('name', 'stripeToken');
//     hiddenInput.setAttribute('value', token.id);
//     form.appendChild(hiddenInput);
  
//     // Submit the form
//     console.log("token sent")
//     form.submit();
//   }

//   function stripeCheckout(e)
// {
    
//     console.log("buy clicked");
//     console.log(e);
// }
    
          
       
        
  
  // Add an instance of the card Element into the `card-element` <div>.
  document.addEventListener("DOMContentLoaded", function(event) { 
    //do work
  });

//    
            

$( document ).ready(function() 
{
   


    $(document).on('click', 'span.ti-bag', function() 
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


   
 
 
  


        

       
   
    
   
    
    
    