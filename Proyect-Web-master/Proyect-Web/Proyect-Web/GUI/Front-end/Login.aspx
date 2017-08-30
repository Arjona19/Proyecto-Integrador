<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Proyect_Web.Login" %>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="Dashboard">
    <meta name="keyword" content="Dashboard, Bootstrap, Admin, Template, Theme, Responsive, Fluid, Retina">

    <title>DASHGUM - Bootstrap Admin Template</title>

    <!-- Bootstrap core CSS -->
      
    <link href="../../assets/css/bootstrap.css" rel="stylesheet">
    <!--external css-->
    <link href="../../assets/font-awesome/css/font-awesome.css" rel="stylesheet" />
        <link href="../../assets/css/animate.min.css" rel="stylesheet" />
    <!-- Custom styles for this template -->
    <link href="../../assets/css/style.css" rel="stylesheet">
    <link href="../../assets/css/style-responsive.css" rel="stylesheet">

    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
  </head>
   
  <body>
     
      <!-- **********************************************************************************************************************************************************
      MAIN CONTENT
      *********************************************************************************************************************************************************** -->
  <form id="form1" class="wow bounceIn" runat="server">
    <div>
      <div id="login-page">
	  	<div class="container">
            <div class="form-login " >
		        <h2 class="form-login-heading">Iniciar Sesión</h2>   
                              
              <asp:Login ID="Login1" runat="server" OnAuthenticate="Button1_Click">
                  <LayoutTemplate>
                    <div class="login-wrap wow bounceInDown"> 

                       <asp:RequiredFieldValidator ID="UserNameRequired" runat="server" ControlToValidate="UserName" ErrorMessage="El nombre de usuario es obligatorio." ToolTip="El nombre de usuario es obligatorio." ValidationGroup="Login1">*</asp:RequiredFieldValidator>
                    <asp:TextBox ID="UserName" class="form-control wow bounce" placeholder="Usuario" runat="server"></asp:TextBox>
		          
		            <br>  
                        <asp:TextBox ID="Password" class="form-control" runat="server" placeholder="Contraseña" TextMode="Password"></asp:TextBox>
                     <asp:RequiredFieldValidator ID="PasswordRequired" runat="server" ControlToValidate="Password" ErrorMessage="La contraseña es obligatoria." ToolTip="La contraseña es obligatoria." ValidationGroup="Login1">*</asp:RequiredFieldValidator>
		           
                         <asp:Literal ID="FailureText" runat="server" EnableViewState="False"></asp:Literal>
		            <label class="checkbox">
                        <asp:CheckBox ID="RememberMe" runat="server" Text="Recordármelo la próxima vez." />
		                <span class="pull-right">
		                    <a data-toggle="modal" href="login.html#myModal"> No recuerdo mi contraseña</a>
		
		                </span>
		            </label>
                       
                        <asp:Button ID="Button1" Cssclass="btn btn-facebook" runat="server" CommandName="Login" Text="Inicio de sesión" ValidationGroup="Login1"  />
		           
		            <hr>
		            
		            <div class="login-social-link centered">
		            <p>or you can sign in via your social network</p>
		                <button class="btn btn-facebook" type="submit"><i class="fa fa-facebook"></i> Facebook</button>
		                <button class="btn btn-twitter" type="submit"><i class="fa fa-twitter"></i> Twitter</button>
		            </div>
		            <div class="registration">
		                Don't have an account yet?<br/>
		                <a class="" href="#">
		                    Create an account
		                </a>
		            </div>
		
		        </div>
                  </LayoutTemplate>
              </asp:Login>
		 
		      
		         
		
		           
		         <!-- Modal -->
                   <div aria-hidden="true" aria-labelledby="myModalLabel" role="dialog" tabindex="-1" id="myModal" class="modal fade">
		              <div class="modal-dialog">
		                  <div class="modal-content">
		                      <div class="modal-header">
		                          <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
		                          <h4 class="modal-title">Se te olvido la contraseña?</h4>
		                      </div>
		                      <div class="modal-body">
		                          <p>Ingresa tu Correo para poder consultarla</p>
		                          
                                  <asp:TextBox type="text" ID="txtEmail" name="email" placeholder="Correo" CssClass="form-control placeholder-no-fix" runat="server"></asp:TextBox>
		                      </div>
		                      <div class="modal-footer">
		                          <button data-dismiss="modal" class="btn btn-default" type="button">Cancel</button>
                                  <asp:Button ID="Button2"  Cssclass="btn btn-theme" runat="server" Text="Consultar" OnClick="Button2_Click" />
		                      </div>
		                  </div>
		              </div>
		          </div>
		          <!-- modal -->
		
		      </div>	  	
	  	
	  	</div>
	  </div>
      
    </div>
    </form>
	

    <!-- js placed at the end of the document so the pages load faster -->
    <script src="../../assets/js/jquery.js"></script>
    <script src="../../assets/js/bootstrap.min.js"></script>

    <!--BACKSTRETCH-->
    <!-- You can use an image of whatever size. This script will stretch to fit in any screen size.-->
    <script type="text/javascript" src="../../assets/js/jquery.backstretch.min.js"></script>
      
      <script>
          new WOW().init();
         
    
         
          
          </script>
    <script>
        $.backstretch("../../assets/img/28-1.jpg", {speed: 500});
    </script>
      <link href="Preloader.css" rel="stylesheet" />

  </body>
</html>

