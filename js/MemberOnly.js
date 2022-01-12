

let carts = document.querySelectorAll('.add-cart');
const parentElement = document.querySelectorAll('.cart');

let menuBtn = document.querySelector('#menu-btn');
let navbar = document.querySelector('.header .navbar');

menuBtn.onclick = () =>{
   menuBtn.classList.toggle('fa-times');
   navbar.classList.toggle('active');
   searchBtn.classList.remove('fa-times');
   searchForm.classList.remove('active');
}

window.onscroll = () =>{
   searchBtn.classList.remove('fa-times');
   searchForm.classList.remove('active');
   menuBtn.classList.remove('fa-times');
   navbar.classList.remove('active');
}

function validateform(){  
   var name=document.delform.name.value;  
   var phone=document.delform.phone.value;  
   var x=document.delform.email.value;  
var atposition=x.indexOf("@");  
var dotposition=x.lastIndexOf(".");  
     
if (name==null || name==""){  
   alert("Name can't be blank");  
   return false;  
 }else if(phone.length<7){  
   alert("Phone # must be at least 7 numeric long.");  
   return false;  
   }  
if (atposition<2 || dotposition<atposition+2 || dotposition+2>=x.length){  
   alert("Please enter a valid e-mail address E.g: hello@gmail.com");  
   return false;  
   } 
  
     if (isNaN(phone)){    
      alert("Phone # must be numeric values only");
      return false;
    }else{  
      return true;       
      }
     
   }


function clearClick(){
   localStorage.clear();
   productsInCart = 0;
   const parentElement = document.querySelectorAll('.cart');
}

let products = [
  {
      name: "PS 5",
      tag: "ps5",
      price: 78000,
      inCart: 0
   },
   {
      name: "PS 4pro ",
      tag: "ps4pro",
      price: 48000,
      inCart: 0
   },
   {
      name: "PS 4slim",
      tag: "ps4slim",
      price: 42000,
      inCart: 0
   },
   {
      name: "Xbox Series x",
      tag: "xboxseriesx",
      price: 48000,
      inCart: 0
    },
    {
        name: "Xbox Series s",
        tag: "xboxseriess",
        price: 43000,
        inCart: 0
    },
   {
      name: "Xbox 1",
      tag: "xbox1",
      price: 38000,
      inCart: 0
   },
   {
      name: "Xbox 360",
      tag: "xbox360",
      price: 30000,
      inCart: 0
   },
   {
      name: "Nintendo Switch",
      tag: "nintendoswitch",
      price: 28000,
      inCart: 0
   },
   {
      name: "L.B Gaming PC",
      tag: "lbgamingpc",
      price: 45000,
      inCart: 0
   },
   {
      name: "M.B Gaming PC",
      tag: "mbgamingpc",
      price: 70000,
      inCart: 0
   },
   {
      name: "Top Gaming PC",
      tag: "topgamingpc",
      price: 135000,
      inCart: 0
   }
];


for(let i=0; i < carts.length; i++){
   carts[i].addEventListener('click',() => {
      cartNumbers(products[i]);
      totalCost(products[i])
   })
}

function onLoadCartNumbers(){
   let productNumbers = localStorage.getItem('cartNumbers');

   if(productNumbers) {
      document.querySelector('.cart span').textContent = productNumbers;
   }
}

function cartNumbers(product, action) {
   let productNumbers = localStorage.getItem('cartNumbers');
   productNumbers = parseInt(productNumbers);

   if(action == "decrease") {
      localStorage.setItem('cartNumbers', productNumbers - 1);
      document.querySelector('.cart span').textContent = productNumbers -1;
   }else if(productNumbers){
      localStorage.setItem('cartNumbers', productNumbers + 1);
      document.querySelector('.cart span').textContent = productNumbers + 1;
   } else {
      localStorage.setItem('cartNumbers', 1);
      document.querySelector('.cart span').textContent = 1;
   }
   setItems(product);
}

function setItems(product) {
   let cartItems = localStorage.getItem('productsInCart');
   cartItems = JSON.parse(cartItems);

   if(cartItems != null) {
      if(cartItems[product.tag] == undefined) {
         cartItems = {...cartItems, [product.tag]: product
         }
      }
      cartItems[product.tag].inCart += 1;
   } else {
         product.inCart = 1;
      cartItems = {[product.tag]: product
    }
   }
   
localStorage.setItem("productsInCart",JSON.stringify(cartItems));
}

function totalCost(product){
   let cartCost = localStorage.getItem('totalCost');
   

   if(cartCost != null) {
      cartCost = parseInt(cartCost);
            localStorage.setItem("totalCost", cartCost + product.price);
   } else {
      localStorage.setItem("totalCost", product.price);
   }

   
}



function displayCart() {
   let cartItems = localStorage.getItem("productsInCart");
   cartItems = JSON.parse(cartItems);
   let productContainer = document.querySelector
   (".products");
   
  // console.log(cartItems);
   if( cartItems && productContainer  ) {
      productContainer.innerHTML = '';
      Object.values(cartItems).map(item => {
         productContainer.innerHTML += `
         <div class="product">
            
           <img src="./images/${item.tag}.jpeg">>
            <span>${item.name}</span><span></span>
         
         </div>
         <span></span><div class="price-title">
         <span>$${item.price}<span>
         </div><span></span>

         <div class="quantity">
         
         <span>[${item.inCart}]</span>
         
         </div>

         <div class="total">
            $${item.inCart * item.price}
         </div>
         `;
      });
      let cartCost = localStorage.getItem('totalCost');
      productContainer.innerHTML += `
         <div class="basketTotalContainer">
            <h4 class="basketTotalTitle">
            Basket Total
            </h4>
            <h4 class="basketTotal">
               $${cartCost}
            </h4>
      `;
   }	
   deleteButtons();
   manageQuantity();
	}


   function deleteButtons() {
      let deleteButtons = document.querySelectorAll('.product ion-icon');
      let productName;
      let productNumbers = localStorage.getItem('cartNumbers');
      let cartItems = localStorage.getItem('productsInCart');
      cartItems = JSON.parse(cartItems);
      let cartCost = localStorage.getItem('totalCost');

   for(let i=0; i < deleteButtons.length; i++) {
      deleteButtons[i].addEventListener('click', () => {
         productName = deleteButtons[i].parentElement.textContent.trim().toLowerCase().remove
         localStorage.setItem('cartNumbers', productNumbers - cartItems[productName].inCart);
         localStorage.setItem('totalCost', cartCost - (cartItems[productName].price * cartItems));
         delete cartItems[productName];
         localStorage.setItem('productsInCart', JSON.stringify(cartItems));
      });
   }
   }
   function manageQuantity() {
      let decreaseButtons = document.querySelectorAll('.decrease');
      let increaseButtons = document.querySelectorAll('.increase');
      let cartItems = localStorage.getItem('productsInCart');
      let currentQuantity = 0;
      let currentProduct = "";
      cartItems = JSON.parse(cartItems);
   
      for(let i=0; i < decreaseButtons.length; i++) {
         decreaseButtons[i].addEventListener('click', () => { 
            currentQuantity = decreaseButtons[i].parentElement.querySelector('span').textContent;
            currentProduct = decreaseButtons[i].parentElement.previousElementSibling.previousElementSibling;
   
            if(cartItems[currentProduct].inCart > 1) {
               cartItems[currentProduct].inCart -= 1;
               cartNumbers(cartItems[currentProduct], "decrease");
               totalCost(cartItems[currentProduct], "decrease");
               localStorage.setItem('productsInCart', JSON.stringify(cartItems));
               displayCart();
            }
         });
   }
   
         for(let i=0; i < increaseButtons.length; i++) {
            increaseButtons[i].addEventListener('click', () => { 
               currentQuantity = increaseButtons[i].parentElement.querySelector('span').textContent;
               currentProduct = increaseButtons[i].parentElement.previousElementSibling.previousElementSibling;
   
               
                  cartItems[currentProduct].inCart += 1;
                  cartNumbers(cartItems[currentProduct], "increase");
                  totalCost(cartItems[currentProduct], "increase");
                  localStorage.setItem('productsInCart', JSON.stringify(cartItems));
                  displayCart();
               })
            }
   
}

onLoadCartNumbers();
displayCart();
