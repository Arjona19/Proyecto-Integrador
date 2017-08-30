<%@ Page Title="" Language="C#" MasterPageFile="~/Index.Master" AutoEventWireup="true" CodeBehind="Registro.aspx.cs" Inherits="Proyect_Web.GUI.Front_end.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <section id="contact">
      <div class="container">
          <br />
        <h2 class="text-center">Registrarme</h2>
        <hr class="star-primary">
        <div class="row">
          <div class="col-lg-8 mx-auto">
            <!-- To configure the contact form email address, go to mail/contact_me.php and update the email address in the PHP file on line 19. -->
            <!-- The form should work on most web servers, but if the form is not working you may need to configure your web server differently. -->
            <form name="sentMessage" id="contactForm" novalidate>
              <div class="control-group">
                <div class="form-group floating-label-form-group controls">
                  <label>Nombre</label>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtNombre" ErrorMessage="Ingrese el nombre">*</asp:RequiredFieldValidator>
                    <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="txtNombre" ErrorMessage="Solo letras" MaximumValue="Z" MinimumValue="A">*</asp:RangeValidator>
                    <asp:TextBox ID="txtNombre" CssClass="form-control" runat="server" placeholder="Nombres/Compania"  data-validation-required-message="Please enter your name."></asp:TextBox>
                 
                  <p class="help-block text-danger">&nbsp;</p>
                </div>
              </div>
              <div class="control-group">
                <div class="form-group floating-label-form-group controls">
                  <label style="left: 0px; top: 2em">Correo</label>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtCorreo" ErrorMessage="Ingrese el correo">*</asp:RequiredFieldValidator>
                    <asp:TextBox ID="txtCorreo" Cssclass="form-control" placeholder="Correo"  data-validation-required-message="Please enter your email address." runat="server" style="left: 0px; top: 0px"></asp:TextBox>
                
                  <p class="help-block text-danger"></p>
                </div>
              </div>
              <div class="control-group">
                <div class="form-group floating-label-form-group controls">
                  <label>Telefono</label><asp:RangeValidator ID="RangeValidator3" runat="server" ControlToValidate="txtTelefono1" ErrorMessage="Solo Numeros" MaximumValue="9999999999" MinimumValue="0">*</asp:RangeValidator>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtTelefono1" ErrorMessage="Ingrese el correo">*</asp:RequiredFieldValidator>
                    <asp:TextBox ID="txtTelefono1" type="tel" Cssclass="form-control" placeholder="Telefono"  data-validation-required-message="Please enter your phone number." runat="server" style="left: 0px; top: 0px"></asp:TextBox>
                  
                  <p class="help-block text-danger"></p>
                </div>
              </div>
              <div class="control-group">
                <div class="form-group floating-label-form-group controls">
                  <label>Segundo Telefono(opcional)</label>
                    <asp:TextBox Cssclass="form-control" placeholder="Segundo Telefono(opcional)"  data-validation-required-message="Please enter a message." ID="txtTelefono" runat="server"></asp:TextBox>
               
                  <p class="help-block text-danger"></p>
                </div>
              </div>
                <div class="control-group">
                <div class="form-group floating-label-form-group controls">
                  <label>Sitio Web(opcional)</label>
                    <asp:TextBox Cssclass="form-control" placeholder="Sitio Web(opcional)"  data-validation-required-message="Please enter a message." ID="txtSitio" runat="server"></asp:TextBox>
               
                  <p class="help-block text-danger"></p>
                </div>
              </div>
                <div class="form-group floating-label-form-group controls">
                  <label>Nombre de Usuario</label>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtUsuario" ErrorMessage="Ingrese el Usuario">*</asp:RequiredFieldValidator>
                    <asp:TextBox ID="txtUsuario" CssClass="form-control" runat="server" placeholder="Nombre de Usuario"  data-validation-required-message="Please enter your name."></asp:TextBox>
                 
                  <p class="help-block text-danger"></p>
                </div>
                <div class="form-group floating-label-form-group controls">
                  <label>Contraseña</label>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtContraseña" ErrorMessage="Ingrese la contrseña">*</asp:RequiredFieldValidator>
                    <asp:TextBox ID="txtContraseña" CssClass="form-control" runat="server" placeholder="Contraseña"  data-validation-required-message="Please enter your name."></asp:TextBox>
                 
                  <p class="help-block text-danger"></p>
                </div>
              <br>
              <div id="success"></div>
              <div class="form-group">
                <asp:Button ID="btnEnviar" type="submit" Cssclass="btn btn-success btn-lg" runat="server" Text="Enviar" OnClick="btnEnviar_Click" />
                
              </div>
            </form>
          </div>
        </div>
      </div>
    </section>

</asp:Content>
