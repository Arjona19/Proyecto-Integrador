<%@ Page Title="" Language="C#" MasterPageFile="~/GUI/Back-end/Sit.Master" AutoEventWireup="true" CodeBehind="HomeOrg.aspx.cs" Inherits="Proyect_Web.WebForm1" %>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
    
</asp:Content>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <script src="../../SweetAlert/sweetalert.min.js"></script>
    <link href="../../Menu/font-awesome.min.css" rel="stylesheet" />
      <link href="../../SweetAlert/sweetalert.css" rel="stylesheet" />
   
    <div class="container-fluid">
        <div class="col-md-11"></div>
        <div class="col-md-1">
           
                
                <asp:Button ID="CerrarSesion" CssClass="btn btn-primary fa fa-power-off" runat="server" Text="Cerrar Sesión" OnClick="CerrarSession" />
                
            
        </div>
    </div>
    
    
    <style>
.fileContainer {
    overflow: hidden;
    position: relative; 
     width: 121px;
    margin-left: 1px;
    padding-left: 23px;
}

.fileContainer [type=file] {
    cursor: inherit;
    display: block;
    font-size: 999px;
    filter: alpha(opacity=0);
    min-height: 100%;
    min-width: 100%;
    opacity: 0;
    position: absolute;
    right: 0;
    text-align: right;
    top: 0;
  
}
                                .auto-style1 {
             padding: 0 5px 6px;
             position: relative;
             width: 102%;
             float: left;
             clear: both;
             margin-top: 5px;
             left: -2px;
             top: 4px;
             height: 1501px;
         }
                                .auto-style3 {
             left: 0px;
             top: 0px;
         }
                                </style>
    <div class="row mt wow fadeInRight">
          		<div class="col-lg-8">
          			<div class="form-panel">
                  	  <h4 class="mb"><i class="fa fa-angle-right"></i>Perfil</h4>
                          <div class="col-md-8">
                              <div class="form-group">
                            <asp:TextBox  ID="txtNombreUsuario" placeholder="Nombre(s)" runat="server" CssClass="form-control round-form"></asp:TextBox>
                                
                              
                          </div>
                              <div class="form-group">
                              <label class="sr-only" for="exampleInputEmail2">Email address</label>
                              <asp:TextBox ID="txtSitioWeb" class="form-control round-form" placeholder="Sitio Web" runat="server"></asp:TextBox>
                                  
                          </div>
                              <div class="form-group">
                                  <asp:TextBox ID="txtCorreo" placeholder="Correo electronico" CssClass="form-control round-form" runat="server"></asp:TextBox>  
                          </div>
                             <div class="form-group">
                        
                                 <asp:TextBox ID="txt2Correo" runat="server" CssClass="form-control round-form" placeholder="Segundo correo (opcional)"></asp:TextBox>
                            
                          </div>
                              <div class="form-group">
                                  <asp:TextBox ID="txt3Correo" runat="server" CssClass="form-control round-form" placeholder="Tercer correo (opcional)"></asp:TextBox>
                           
                            
                          </div>
                              <div class="form-group">
                                  <asp:TextBox ID="txtTelefono" runat="server" CssClass="form-control round-form" placeholder="Telefono"></asp:TextBox>
                           
                            
                          </div>
                             
                        
                       
                          
                     
                          </div>
                          
                             
                      <form class="form-inline" role="form">
                          <div class="col-md-4">
                                <div class="form-group">
                                    
                                <asp:Image ID="Image1" Cssclass="img-circle"   style="width: 128px; height: 147px" runat="server" />
                              
                                    <br />
                                    <br />
                                    <label class="fileContainer btn btn-success">Seleccionar .. 
                                <asp:FileUpload ID="fupfoto" runat="server" CssClass="inputfile" Width="100px" style="right: 0; top: 0" />
                              </label>
                                    <script>
                                   var inputs = document.querySelectorAll('.inputfile');
                                   Array.prototype.forEach.call(inputs, function (input) {
                                       var label = input.nextElementSibling,
                                           labelVal = label.innerHTML;

                                       input.addEventListener('change', function (e) {
                                           var fileName = '';
                                           if (this.files && this.files.length > 1)
                                               fileName = (this.getAttribute('data-multiple-caption') || '').replace('{count}', this.files.length);
                                           else
                                               fileName = e.target.value.split('\\').pop();

                                           if (fileName)
                                               label.querySelector('span').innerHTML = fileName;
                                           else
                                               label.innerHTML = labelVal;
                                       });
                                   });

                               </script>
                               
                   </div>
                              
                          
<br />
                          <br />
                          <br />
                             </div>
                         
                          <label class="fileContainer btn btn-success">Actualizar
                               <input id="boton" runat="server" Cssclass="btn btn-theme" type="button" onclick="PruebaAlert();" />
                              </label>
                          
                          <asp:Button ID="btnModificar" runat="server" Text="Modificar" class="btn btn-theme" type="submit" OnClick="btnModificar_Click "/>
                           <script>
                               function PruebaAlert() {swal("Datos Actulizados", "", "success")
                               }
                                 </script>
                            <asp:Button ID="Button2" runat="server" Text="Limpiar" class="btn btn-theme" type="submit" OnClick="Limpiar" />
                      </form> 
                         
          			</div><!-- /form-panel -->
          		</div><!-- /col-lg-12 -->
        <div class="col-lg-4 col-md-4 col-sm-4 mb wow fadeInUp">
							<div class="content-panel pn">
								<div id="profile-02">
									<div class="user">
                                     <asp:Image ID="Perfil1" width="80" CssClass="img-circle" runat="server" />

										
										<h4><asp:Label ID="LblNombre" runat="server" Text="Label"></asp:Label></h4>
                                        <div class="col-md-3">
                                            <h4>Sitio Web:</h4>
                                            <h4>Correo:</h4>
                                            <h4>Correo 2:</h4>
                                            <h4>Telefono:</h4>
                                            <h4>Usuario:</h4>
                                            <h4>Contraseña:</h4>
                                        </div>
                                        <div class="col-md-9">
                                            <h4><asp:Label ID="LblSitio" runat="server" Text="Label"></asp:Label></h4>
                                            <br />
                                            <h4><asp:Label ID="LblCorreo" runat="server" Text="Label"></asp:Label></h4>
                                            <h4><asp:Label ID="LblCorreo2" runat="server" Text="Label"></asp:Label></h4>
                                            <br />
                                            <br />
                                            
                                            <h4><asp:Label ID="LblTel" runat="server" Text="Label"></asp:Label></h4>
                                            <h4><asp:Label ID="LblUs" runat="server" Text="Label"></asp:Label></h4>
                                            <h4><asp:Label ID="LblContr" runat="server" Text="Label"></asp:Label></h4>
                                        </div>
                                        <br />
                                        <br />
                                        <br />
                                        <br />
                                        <br />
                                        <br />
                                        <br />
                                        <br />
                                        <br />
                                        <br />
                                        <br />
                                        <br />
                                        <br />
                                        <br />
									</div>
								</div>
								<div class="pr2-social centered">
									<a href="#"><i class="fa fa-twitter"></i></a>
									<a href="#"><i class="fa fa-facebook"></i></a>
									<a href="#"><i class="fa fa-dribbble"></i></a>
                                
								</div>
                                
							</div><!-- --/panel ---->
       
						</div>
          	</div>
    <div class="row mt wow fadeInRight">
          		<div class="col-lg-8">
          			<div class="form-panel">
                  	  <h4 class="mb"><i class="fa fa-angle-right"></i> Actualiza tu sesión</h4>
                        <div class="form-group">
                             
                           <asp:TextBox ID="TextBox1" placeholder="Usuario" runat="server" CssClass="form-control round-form"></asp:TextBox>
                          </div>
                          <div class="form-group">

                             <asp:TextBox ID="TextBox2" type="password" placeholder="Contraseña" CssClass="form-control round-form" runat="server"></asp:TextBox> 
                          </div>
                          <br />
                          <asp:Button ID="Button1" runat="server" CssClass="btn btn-theme" Text="Actualizar" OnClick="Button1_Click"/>
          			</div><!-- /form-panel -->
          		</div><!-- /col-lg-12 -->
          	</div>

    <script>

                               function readURL(input) {
                                   if (input.files && input.files[0]) {
                                       var reader = new FileReader();

                                       reader.onload = function (e) {
                                           // IMagen destino 
                                           $('#<%=Image1.ClientID%>').attr('src', e.target.result);
                }

                reader.readAsDataURL(input.files[0]);
                                   }
                               }

                               // FileUpload Imagen
                               $("#<%=fupfoto.ClientID%>").change(function () {
            readURL(this);
        });

    </script>
    



    <script src="../../file.js"></script>
    <link href="../../file.css" rel="stylesheet" />
   

</asp:Content>
