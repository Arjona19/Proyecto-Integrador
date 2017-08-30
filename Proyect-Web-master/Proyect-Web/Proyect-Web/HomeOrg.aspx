<%@ Page Title="" Language="C#" MasterPageFile="~/Sit.Master" AutoEventWireup="true" CodeBehind="HomeOrg.aspx.cs" Inherits="Proyect_Web.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
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
                          
                             <div class="col-md-4">
                                <div class="form-group">
                              <img id="image" class="img-circle" src="assets/img/friends/fr-05.jpg" style="width: 128px; height: 147px">
                                    <br />
                                    <br />
                                    <label class="fileContainer btn btn-success">Seleccionar .. 
                                <asp:FileUpload ID="file" runat="server" CssClass="inputfile" Width="100px" style="right: 0; top: 0" />
                              </label>
                               <%-- <asp:FileUpload ID="FileUpload1" Cssclass="custom-file-input" runat="server" />--%>
                              
                          </div>

                             </div>
                      <form class="form-inline" role="form">
                          
                          
                          <button class="btn btn-theme" type="submit"> Modificar</button>
                      </form>
          			</div><!-- /form-panel -->
          		</div><!-- /col-lg-12 -->
        <div class="col-lg-4 col-md-4 col-sm-4 mb wow fadeInUp">
							<div class="content-panel pn">
								<div id="profile-02">
									<div class="user">
										<img width="80" class="img-circle" src="assets/img/friends/fr-06.jpg">
										<h4>DJ SHERMAN</h4>
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
                      <form class="form-inline" role="form">
                          <div class="form-group">
                             <asp:TextBox  ID="txtUsuario" placeholder="Usuario" runat="server" CssClass="form-control round-form"></asp:TextBox>
                           
                          </div>
                          <div class="form-group">
                           <asp:TextBox  ID="txtPass" type="password" placeholder="Contraseña" runat="server" CssClass="form-control round-form"></asp:TextBox>
                              
                          </div>
                          <button class="btn btn-theme" type="submit">Actualizar</button>
                      </form>
          			</div><!-- /form-panel -->
          		</div><!-- /col-lg-12 -->
          	</div>


    





    <script src="file.js"></script>
    <link href="file.css" rel="stylesheet" />
</asp:Content>
