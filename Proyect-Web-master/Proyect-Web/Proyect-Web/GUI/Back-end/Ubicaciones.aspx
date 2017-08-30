<%@ Page Title="" Language="C#" MasterPageFile="~/GUI/Back-end/Sit.Master" AutoEventWireup="true" CodeBehind="Ubicaciones.aspx.cs" Inherits="Proyect_Web.GUI.Back_end.Ubicaciones" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <script src="../../MapPicker/locationpicker.jquery.js"></script>

    <script type="text/javascript" src='https://maps.google.com/maps/api/js?sensor=false&libraries=places&key=AIzaSyA6WF_JXzcarRVCNQR3y8MQ4mJ1AquUfzc'></script>
    <link rel="stylesheet" href="https://netdna.bootstrapcdn.com/bootstrap/3.0.3/css/bootstrap.min.css"/>
   <script src="https://code.jquery.com/jquery-3.2.1.js"></script>
<script src="https://netdna.bootstrapcdn.com/bootstrap/3.0.3/js/bootstrap.min.js"></script>
    <div class="container">
        <div class="row">
            <div class="col-md-4">
                <asp:Label ID="Label1" runat="server" Text="Label">Ubicaciones</asp:Label>
                <asp:HiddenField ID="txtID" runat="server" />
                <asp:TextBox ID="txtUbicaciones" CssClass="form-control" runat="server"></asp:TextBox>

                <div class="form-group">
                    <div id="ModalMapPreview" style="width:100%; height:300%"></div> 
                </div>
                <div class="form-group">
                    <asp:Label ID="Label2" runat="server" Text="Label">Lat:</asp:Label>
                    <asp:TextBox ID="txtLat" Text="" CssClass="form-control" runat="server"></asp:TextBox>
                    <asp:Label ID="Label3" runat="server" Text="Label">Long:</asp:Label>
                    <asp:TextBox ID="txtLong" CssClass="form-control" runat="server"></asp:TextBox>
                </div>
            </div>
            <div class="form-group">
                <asp:Button ID="btnAgregar" CssClass="btn btn-success" runat="server" UseSubmitBehavior="false" Text="Agregar" />
                 <asp:Button ID="btnModificar" CssClass="btn btn-warning" runat="server" UseSubmitBehavior="false" Text="Modificar" />
                 <asp:Button ID="btnEliminar" CssClass="btn btn-danger" runat="server" UseSubmitBehavior="false" Text="Eliminar" />
                 <asp:Button ID="btnLimpiar" CssClass="btn btn-default" runat="server" UseSubmitBehavior="false" Text="Limpiar" />
            </div>
            <div class="col-md-8">

            </div>

        </div>
    </div>
    <script>
        $('#ModalMapPreview').locationpicker({
            radius: 0,
            

            location: {
                latitude: 20.938297181414647,
                longitude: -89.61501516379462
            },
            inputBinding: {
                latitudeInput: $('#<%=txtLat.ClientID%>'),
                longitudeInput: $('#<%=txtLong.ClientID%>'),
                locationNameInput: $('#<%=txtUbicaciones.ClientID %>')
            },
            enableAutocomplete: true,
        });
        </script>
        

</asp:Content>
