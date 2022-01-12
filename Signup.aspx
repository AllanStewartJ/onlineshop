<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Signup.aspx.cs" Inherits="WebDev_CW.Signup" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Everything Gaming</title>

     <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css"/>
     <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/aos/2.3.4/aos.css"/>
    <link rel="stylesheet" href="css/special.css"/>
     <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-sweetalert/1.0.1/sweetalert.js" type="text/javascript"></script>
    <link href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-sweetalert/1.0.1/sweetalert.css" rel="stylesheet" />
    <style type="text/css">
        .auto-style1 {
            font-size: medium;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">

         <section class="del" id="del">
            <div class="heading">
                <img src="images/title-img.png" alt="">
                <h3>Sign Up</h3>
             </div>
        
         </section>
        <div>
             <asp:Panel ID="Panel1" runat="server" BackColor="Black" ForeColor="Gray" Height="398px"><center>
                 <span class="auto-style1">Sign Up Page<br />
                 <br />
                 First Name: </span>
                 <asp:TextBox ID="FirstNTB" runat="server" BackColor="Gray" CssClass="auto-style1"></asp:TextBox>
                 &nbsp;<span class="auto-style1"><br />
                 <br />
                 Last Name: </span>
                 <asp:TextBox ID="LastNTB" runat="server" BackColor="Gray" CssClass="auto-style1"></asp:TextBox>
                 &nbsp;<span class="auto-style1"><br />
                 <br />
                 Username: </span>
                 <asp:TextBox ID="UsernameTB" runat="server" BackColor="Gray" CssClass="auto-style1"></asp:TextBox>
                 &nbsp;<span class="auto-style1"><br />
                 <br />
                 Email: </span>
                 <asp:TextBox ID="EmailTB" runat="server" BackColor="Gray" CssClass="auto-style1" TextMode="Email"></asp:TextBox>
                 &nbsp;<span class="auto-style1"><br />
                 <br />
                 Telephone #: </span>
                 <asp:TextBox ID="TPTB" runat="server" BackColor="Gray" CssClass="auto-style1" TextMode="Phone"></asp:TextBox>
                 &nbsp;<span class="auto-style1"><br />
                 <br />
                 Create Password: </span>
                 <asp:TextBox ID="PasswordTB" runat="server" BackColor="Gray" CssClass="auto-style1" TextMode="Password"></asp:TextBox>
                 &nbsp;<span class="auto-style1"><br />
                 <br />
                 Confirm Password: </span>
                 <asp:TextBox ID="PasswordTB2" runat="server" BackColor="Gray" CssClass="auto-style1" TextMode="Password"></asp:TextBox>
                 &nbsp;<br class="auto-style1" />
                 <br />
                 <asp:Button ID="CancelBtn" runat="server" BackColor="Gray" CssClass="auto-style1" OnClick="CancelBtn_Click" Text="Cancel" Width="108px" />
&nbsp;<asp:Button ID="SignupBtn" runat="server" Text="Sign Up" Width="117px" BackColor="Gray" OnClick="SignupBtn_Click" OnClientClick="clearClick();" CssClass="auto-style1" />
                </center>
            </asp:Panel>
        </div>
         <div>
        <section class="footer">
     
        <div class="links">
           <a href="Main.aspx" class="btn">home</a>
           <a href="Main.aspx" class="btn">menu</a>
           <a href="Main.aspx" class="btn">about</a>
           <a href="Main.aspx"" class="btn">reviews</a>
           <a href="Main.aspx" class="btn">contact</a>
           <a href="Cart.aspx" class="btn">cart</a>
        </div>
        
        <p class="credit"> created by <span>Group II</span> | all rights reserved! </p>
     
     </section>
        </div>
    </form>
     <script src="js/index.js"></script>
     <script type="module" src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"></script>
      <script nomodule src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.js"></script> 
</body>
</html>
