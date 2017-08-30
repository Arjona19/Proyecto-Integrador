<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registro.aspx.cs" Inherits="Proyect_Web.Registro" %>

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
    <link href="assets/css/bootstrap.css" rel="stylesheet">
    <!--external css-->
    <link href="assets/font-awesome/css/font-awesome.css" rel="stylesheet" />
        <link href="assets/css/animate.min.css" rel="stylesheet" />
    <!-- Custom styles for this template -->
    <link href="assets/css/style.css" rel="stylesheet">
    <link href="assets/css/style-responsive.css" rel="stylesheet">

    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
      <style type="text/css">
          .auto-style1 {
              width: 393px;
          }
      </style>
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
		        <h2 class="form-login-heading">Registrate</h2>                     
              <div class="login-wrap">
                  <asp:TextBox ID="txtNombre" Cssclass="form-control round-form" placeholder="Nombre de usuario" runat="server"></asp:TextBox>
                  <asp:RequiredFieldValidator id="RequiredFieldValidator1" runat="server"
                     ControlToValidate="txtNombre"
                     ErrorMessage="El nombre es requerido"
                    ForeColor="Red">
                    </asp:RequiredFieldValidator>

		             <br>
                   <asp:TextBox ID="txtCorreo" Cssclass="form-control round-form" placeholder="Correo electronico" runat="server"></asp:TextBox>
                  <asp:RequiredFieldValidator id="RequiredFieldValidator2" runat="server"
                     ControlToValidate="txtCorreo"
                     ErrorMessage="El correo es requerido"
                    ForeColor="Red">
                    </asp:RequiredFieldValidator>
                  <br>
                   <asp:TextBox ID="txtSitioWeb" Cssclass="form-control round-form" placeholder="Sitio Web" runat="server"></asp:TextBox>
                  <asp:RequiredFieldValidator id="RequiredFieldValidator3" runat="server"
                     ControlToValidate="txtSitioWeb"
                     ErrorMessage="El sitio es requerido"
                    ForeColor="Red">
                    </asp:RequiredFieldValidator>
                  <br>
                   <asp:TextBox ID="txtTelefono" Cssclass="form-control round-form" placeholder="Telefono"  runat="server" TextMode="Phone"></asp:TextBox>
                  <asp:RequiredFieldValidator id="RequiredFieldValidator4" runat="server"
                     ControlToValidate="txtTelefono"
                     
                        Type="Double"
                     ErrorMessage="El telefono es requerido"
                    ForeColor="Red">
                    </asp:RequiredFieldValidator>
                  <br>
                    <div class="form-group">
                             <asp:TextBox  ID="txtUsuario" placeholder="Usuario" runat="server" CssClass="form-control round-form"></asp:TextBox>
                           <asp:RequiredFieldValidator id="RequiredFieldValidator5" runat="server"
                     ControlToValidate="txtUsuario"
                     ErrorMessage="El Usauario es requerido"
                    ForeColor="Red">
                    </asp:RequiredFieldValidator>
                          </div>
                          <div class="form-group">
                           <asp:TextBox  ID="txtContraseña" type="password" placeholder="Contraseña" runat="server" CssClass="form-control round-form"></asp:TextBox>
                              <asp:RequiredFieldValidator id="RequiredFieldValidator6" runat="server"
                     ControlToValidate="txtContraseña"
                     ErrorMessage="La contraseña es requerida"
                    ForeColor="Red">
                    </asp:RequiredFieldValidator>
                          </div>
		            <label class="checkbox">
		                <span class="pull-right">
		                    <a > Forgot Password?</a>
		
		                </span>
		            </label>
		           <asp:Button ID="btnRegistrar" runat="server" Text="Registrar" class="btn btn-theme btn-block" type="submit" OnClick="btnRegistrar_Click" /><i class="fa fa-user"></i>
		            <hr>
		            
		            
		            
		
		        </div>
    
		         <!-- Modal -->
                   <div aria-hidden="true" aria-labelledby="myModalLabel" role="dialog" tabindex="-1" id="myModal" class="modal fade">
		              <div class="modal-dialog">
		                  <div class="modal-content">
		                      <div class="modal-header">
		                          <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
		                          <h4 class="modal-title">Forgot Password ?</h4>
		                      </div>
		                      <div class="modal-body">
		                          <p>Registro exitoso!</p>
		                          
		
		                      </div>
		                      <div class="modal-footer">
		                          <button data-dismiss="modal" class="btn btn-default" type="button">OK</button>
		                          
		                      </div>
		                  </div>
		              </div>
		          </div>
		          <!-- modal -->
		
		      </div>	  	
	  	
              
	  	</div>
	  </div>
        <table style="width: 100%;">
            <tr>
                <td class="auto-style1">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">&nbsp;</td>
                <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="regresar" runat="server" CssClass="btn btn-success btn-lg" Text="Volver" />
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </div>
    </form>
	

    <!-- js placed at the end of the document so the pages load faster -->
    <script src="assets/js/jquery.js"></script>
    <script src="assets/js/bootstrap.min.js"></script>

    <!--BACKSTRETCH-->
    <!-- You can use an image of whatever size. This script will stretch to fit in any screen size.-->
    <script type="text/javascript" src="assets/js/jquery.backstretch.min.js"></script>
      
      <script>
          new WOW().init();
         
    
         
          
          </script>
    <script>
        $.backstretch("assets/img/login-bg.jpg", {speed: 500});
    </script>
      <link href="Preloader.css" rel="stylesheet" />

  </body>
</html>