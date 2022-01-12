<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Main.aspx.cs" Inherits="WebDev_CW.Main" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    
    <title>Everything Gaming</title>

     <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css"/>
     <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/aos/2.3.4/aos.css"/>
     <link rel="stylesheet" href="css/index.css"/>
</head>
<body>
    <form id="form1" runat="server">

        <!---Header/Nav Section---->
        <header class="header">
        <div id="menu-btn" class="fas fa-bars icons"></div>
        <nav class="navbar">
           <a href="#home">home</a>
           <a href="#console">consoles</a>
           <a href="#about">about</a>
           <a href="#reviews">reviews</a>
             <span class="space"></span>
           <a href="#contact">contact</a>
           <a href="Signup.aspx">sign up</a>
           <a href="Login.aspx">login</a>          
        </nav>
     <a class="cart" href="Cart.aspx"><ion-icon name="cart-outline"></ion-icon><span>0</span></a>
     </header>

        <!---Home Section---->
     <section class="home" id="home">
        <div class="content">
           <img  src="images/About.jpg" alt=""/>
           <h3>So good you'll go crazy</h3>
           <p>Our Mission at Everything Gaming is "Through our imagination, talent and technology, everyday we ‘play to win’ – we drive to succeed as we efficiently manage and grow our business – to realize the full potential of responsible gaming by providing the most entertaining and best performing gaming console in the world".</p>
    
        </div>    
     </section>

      <!---Service Section---->
     <section class="service">    
        <div class="box">
           <i class="fas fa-hamburger"></i>
           <h3>best quality at lowest price</h3>
           <p>Show us a cheaper console and we'll adjust.</p>
        </div>
        <div class="box">
           <i class="fas fa-shipping-fast"></i>
           <h3>free delivery</h3>
           <p>Best and fastest free delivery in the game.</p>
        </div>
        <div class="box">
           <i class="fas fa-headset"></i>
           <h3>24/7 support</h3>
           <p>Always here for whatever you need.</p>
        </div>    
     </section>

        <!---Menu Section---->
     <section class="console" id="console">    
        <div class="heading">
           <img src="images/title-img.png" alt="">
           <h3>our consoles</h3>
        </div>   
        <div class="box-container">  
            
           <div class="box">
              <img src="images/ps5.jpeg" alt=""/>
              <div class="content">
                 <div class="stars">
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star-half-alt"></i>
                 </div>
                 <h3>PS 5</h3>
                 <div class="price">$80,000</div>
              <input type="submit" value="Add to Cart" class="add-cart">
              </div>
           </div>
     
           <div class="box">
              <img src="images/ps4pro.jpeg" alt=""/>
              <div class="content">
                 <div class="stars">
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star-half-alt"></i>
                 </div>
                 <h3>PS 4 pro</h3>
                 <div class="price">$50,000</div>
                 <input type="submit" value="Add to Cart" class="add-cart">
              </div>
           </div>
     
           <div class="box">
              <img src="images/ps4slim.jpeg" alt=""/>
              <div class="content">
                 <div class="stars">
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star-half-alt"></i>
                 </div>
                 <h3>PS 4 slim</h3>
                 <div class="price">$44,000</div>
                 <input type="submit" value="Add to Cart" class="add-cart">
              </div>
           </div>

           <div class="box">
            <img src="images/xboxseriesx.jpeg" alt=""/>
            <div class="content">
               <div class="stars">
                  <i class="fas fa-star"></i>
                  <i class="fas fa-star"></i>
                  <i class="fas fa-star"></i>
                  <i class="fas fa-star"></i>
                  <i class="fas fa-star-half-alt"></i>
               </div>
               <h3>Xbox Series X</h3>
               <div class="price">$50,000</div>
              <input type="submit" value="Add to Cart" class="add-cart">
            </div>
         </div>

             <div class="box">
              <img src="images/xboxseriess.jpeg" alt=""/>
              <div class="content">
                 <div class="stars">
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star-half-alt"></i>
                 </div>
                 <h3>Xbox Series S</h3>
                 <div class="price">$45,000</div>
                <input type="submit" value="Add to Cart" class="add-cart">
              </div>
           </div>
     
           <div class="box">
              <img src="images/xbox1.jpeg" alt=""/>
              <div class="content">
                 <div class="stars">
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star-half-alt"></i>
                 </div>
                 <h3>Xbox 1</h3>
                 <div class="price">$40,000</div>
                <input type="submit" value="Add to Cart" class="add-cart">
              </div>
           </div>

           <div class="box">
            <img src="images/xbox360.jpeg" alt=""/>
            <div class="content">
               <div class="stars">
                  <i class="fas fa-star"></i>
                  <i class="fas fa-star"></i>
                  <i class="fas fa-star"></i>
                  <i class="fas fa-star"></i>
                  <i class="fas fa-star-half-alt"></i>
               </div>
               <h3>Xbox 360</h3>
               <div class="price">$30,000</div>
              <input type="submit" value="Add to Cart" class="add-cart">
            </div>
         </div>

         <div class="box">
            <img src="images/nintendoswitch.jpeg" alt=""/>
            <div class="content">
               <div class="stars">
                  <i class="fas fa-star"></i>
                  <i class="fas fa-star"></i>
                  <i class="fas fa-star"></i>
                  <i class="fas fa-star"></i>
                  <i class="fas fa-star-half-alt"></i>
               </div>
               <h3>Nintendo Switch</h3>
               <div class="price">$30,000</div>
               <a href="#" class="add-cart">add to cart</a>
            </div>
         </div>

         <div class="box">
            <img src="images/lbgamingpc.jpeg" alt=""/>
            <div class="content">
               <div class="stars">
                  <i class="fas fa-star"></i>
                  <i class="fas fa-star"></i>
                  <i class="fas fa-star"></i>
                  <i class="fas fa-star"></i>
                  <i class="fas fa-star-half-alt"></i>
               </div>
               <h3>L.B Gaming PC</h3>
               <div class="price">$50,000</div>
               <input type="submit" value="Add to Cart" class="add-cart">
            </div>
         </div>

         <div class="box">
            <img src="images/mbgamingpc.jpeg" alt=""/>
            <div class="content">
               <div class="stars">
                  <i class="fas fa-star"></i>
                  <i class="fas fa-star"></i>
                  <i class="fas fa-star"></i>
                  <i class="fas fa-star"></i>
                  <i class="fas fa-star-half-alt"></i>
               </div>
               <h3>M.B Gaming PC</h3>
               <div class="price">$75,000</div>
            <input type="submit" value="Add to Cart" class="add-cart">
            </div>
         </div>

         <div class="box">
            <img src="images/topgamingpc.jpeg" alt=""/>
            <div class="content">
               <div class="stars">
                  <i class="fas fa-star"></i>
                  <i class="fas fa-star"></i>
                  <i class="fas fa-star"></i>
                  <i class="fas fa-star"></i>
                  <i class="fas fa-star-half-alt"></i>
               </div>
               <h3>Top Gaming PC</h3>
               <div class="price">$140,000</div>
             <input type="submit" value="Add to Cart" class="add-cart">
            </div>
         </div>       
        </div>   
     </section>
     
     <!---About Section---->
     <section class="about" id="about">
        <div class="image">
           <img src="images/About.jpg" alt=""/>
        </div>
     
        <div class="content">
           <h3 class="title">Step into fast food heaven</h3>
           <div class="icons">
              <h3> <i class="fas fa-check"></i> Best Price </h3>
              <h3> <i class="fas fa-check"></i> Best Service </h3>
              <h3> <i class="fas fa-check"></i> Fresh Ingredient </h3>
              <h3> <i class="fas fa-check"></i> Natural Cheese </h3>
              <h3> <i class="fas fa-check"></i> Best Natural Juice </h3>
              <h3> <i class="fas fa-check"></i> Freshly Piled Potato </h3>
              <h3> <i class="fas fa-check"></i> Fresh Fruits </h3>
              <h3> <i class="fas fa-check"></i> Freshly Baked Cookies </h3>
           </div>         
        </div>     
     </section>

     <!---Review Section---->
     <section class="reviews" id="reviews">    
        <div class="heading">
           <img src="images/title-img.png" alt=""/>
           <h3>testimonial</h3>
        </div>
     
        <div class="box-container">
            
            <div class="box">
              <img src="images/customer3.jpeg" alt=""/>
              <h3>Stepanie S</h3>
              <p>This place has the best prices, I Highly recommend visiting there!</p>
              <div class="stars">
                 <i class="fas fa-star"></i>
                 <i class="fas fa-star"></i>
                 <i class="fas fa-star"></i>
                 <i class="fas fa-star"></i>
                 <i class="fas fa-star-half-alt"></i>
              </div>
           </div>
     
           <div class="box">
              <img src="images/customer1.jpeg" alt=""/>
              <h3>Kevin P</h3>
              <p>Only place in town with extended warranties to anything</p>
              <div class="stars">
                 <i class="fas fa-star"></i>
                 <i class="fas fa-star"></i>
                 <i class="fas fa-star"></i>
                 <i class="fas fa-star"></i>
                 <i class="fas fa-star-half-alt"></i>
              </div>
           </div>
     
           <div class="box">
              <img src="images/customer2.jpeg" alt=""/>
              <h3>Kayla H</h3>
              <p>Best customer service I have ever experiences</p>
              <div class="stars">
                 <i class="fas fa-star"></i>
                 <i class="fas fa-star"></i>
                 <i class="fas fa-star"></i>
                 <i class="fas fa-star"></i>
                 <i class="fas fa-star-half-alt"></i>
              </div>
           </div>    
        </div>    
     </section>

    <!---Contact Section---->
     <section class="contact" id="contact">    
        <div class="heading">
           <img src="images/title-img.png" alt=""/>
           <h3>contact us</h3>
        </div>    
        <div class="row">     
           <iframe X-FRAME-OPTIONS: ALLOW-FROM  class="https://www.google.com/maps/embed?pb=client=opera&hs=Dyg&sxsrf=AOaemvINu8F76azDm3EvetSbjTKx4LKhBw:1640959309541&q=map+location+for+eldemire+drive+in+montego+bay+jamaica&spell=1&sa=X&ved=2ahUKEwjsrvHlmY71AhU6SjABHVxhDZEQBSgAegQIARAv&biw=1326&bih=696&dpr=1#" allowfullscreen="" loading="lazy"></iframe>     
           <div class="form">
              <div class="icons-container">
                  
                 <div class="icons">
                    <i class="fas fa-map"></i>
                    <h3>address :</h3>
                    <p>Alice eldermire Drive</p>
                    <p>Montego Bay</p>
                 </div>
     
                 <div class="icons">
                    <i class="fas fa-envelope"></i>
                    <h3>email :</h3>
                    <p>fatjoeresturant@yahoo.com</p>
                 </div>
     
                 <div class="icons">
                    <i class="fas fa-phone"></i>
                    <h3>phone :</h3>
                    <p>876-477-3009</p>
                    <p>876-200-1009</p>
                 </div>
                 
              </div>    
              <form action="">
                 <input  type="text" placeholder="full name" class="box">
                 <input type="email" placeholder="email" class="box">
                 <input  type="number" placeholder="phone" class="box">
                 <textarea  name="" placeholder="message" class="box" id="" cols="30" rows="10"></textarea>
                 <input  type="submit" value="send message" class="btn">
              </form>    
           </div>   
        </div>   
     </section>
     
    <!---Footer Section---->
     <section class="footer">
     
        <div class="links">
           <a href="#home" class="btn">home</a>
           <a href="#menu" class="btn">menu</a>
           <a href="#about" class="btn">about</a>
           <a href="#reviews" class="btn">reviews</a>
           <a href="#contact" class="btn">contact</a>
        </div>
     
        <p class="credit"> created by <span>Group II</span> | all rights reserved! </p>
     
     </section>
     <script type="module" src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"></script>
      <script nomodule src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.js"></script> 

     <script src="js/index.js"></script>

     <script src="https://cdnjs.cloudflare.com/ajax/libs/aos/2.3.4/aos.js"></script>
     
     <script>

         AOS.init({
             duration: 800,
         });

     </script>

    </form>
</body>
</html>
