<%@ Page Title="" Language="C#" MasterPageFile="~/GUI/Back-end/Sit.Master" AutoEventWireup="true" CodeBehind="Eventos.aspx.cs" Inherits="Proyect_Web.GUI.Back_end.Eventos" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container-fluid">
        <div class="col-md-11"></div>
        <div class="col-md-1">
           
                
                <asp:Button ID="Button4" CssClass="btn btn-primary fa fa-power-off" runat="server" Text="Cerrar Sesión" OnClick="CerrarSession" />
                
            
        </div>
    </div>
    <script src="https://code.jquery.com/jquery-3.2.1.js"></script>
    <link href="../../ClockPicker/standalone.css" rel="stylesheet" />
    <script src="../../ClockPicker/clockpicker.js"></script>
    <link href="../../ClockPicker/clockpicker.css" rel="stylesheet" />
    <link href="../../FlatPicker/flatpickr.min.css" rel="stylesheet" />
    <script src="../../FlatPicker/flatpickr.min.js"></script>
    <link href="../../Select/bootstrap-multiselect.css" rel="stylesheet" />
    <script src="../../Select/bootstrap-multiselect.js"></script>
      <script src="../../MapPicker/locationpicker.jquery.js"></script>
    <script type="text/javascript" src='https://maps.google.com/maps/api/js?sensor=false&libraries=places&key=AIzaSyA6WF_JXzcarRVCNQR3y8MQ4mJ1AquUfzc'></script>

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
    <div class="col-lg-12">
          			<div class="form-panel">
                  	  <h4 class="mb"><i class="fa fa-angle-right"></i>Agregar Eventos</h4>
                          <div class="col-md-6">
                              <div class="col-lg-2">
                                  <asp:TextBox ID="txtIDEvento" CssClass="form-control round-form" placeholder="ID" Enabled="false" runat="server"></asp:TextBox>
                              </div>
                              <div class="form-group">
                            <asp:TextBox  ID="txtNombreEvento" placeholder="Nombre del evento" runat="server" CssClass="form-control round-form"></asp:TextBox>
                                
                              
                          </div>
                              <div class="form-group">
                              <label class="sr-only" for="exampleInputEmail2">Descripcion del evento</label>
                                <textarea id="txtDescripcion" class="form-control" placeholder="Descripcion del evento" runat="server" cols="20" rows="2"></textarea>
                              
                                  
                          </div>
                              <div class="form-group">
                                 <div class="input-group clockpicker " data-autoclose="true">
                                <span class="input-group-addon">
                                <span class="glyphicon glyphicon-time"></span>
                                </span>
                                <input type="text" id="HoraInicio" runat="server" class="form-control" value="" placeholder="Hora inicio"/>
                                </div>  
                          </div>
                             <div class="form-group">
                        
                                <div class="input-group clockpicker " data-autoclose="true">
                                <span class="input-group-addon">
                                <span class="glyphicon glyphicon-time"></span>
                                </span>
                                <input type="text" id="HoraFin" runat="server" class="form-control" value="" placeholder="Hora Fin"/>
                                </div>  
                            
                          </div>
                                
                              <div class="form-group">
                                  <label >Precio</label>
                                  
                                  <input type="number"  runat="server" class="form-control" min="0" max="100000" id="Precio" />
                              </div>
                              <label class="fileContainer btn btn-twitter">Seleccionar...
                                <asp:FileUpload ID="fupfoto" runat="server" CssClass="inputfile " Width="100px" style="right: 0; top: 0" /> 
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
                              <div class="clearfix"></div>
                              <div class="form-group">
                                    
                                <asp:Image ID="Image1" Cssclass="img-thumbnail"   style="width: 400px; height: 200px" runat="server" />
                              
                                    <br />
                                    <br />
                                    
                               
                   </div>
                                  <asp:Button ID="Button1" Cssclass="btn btn-theme" runat="server" Text="Agregar Evento" AutoPostBack="True" OnClick="Button1_Click" />
                                  <asp:Button ID="Button2" CssClass="btn btn-warning" runat="server" Text="Modificar" AutoPostBack="True" OnClick="Button2_Click"  />
                                  <asp:Button ID="Button3" CssClass="btn btn-danger" runat="server" Text="Eliminar" AutoPostBack="True" OnClick="Button3_Click" />
                             </div>
<div class="col-md-6">
                    <div class="form-group">
                                  <input class="flatpickr form-control" id="FechaInicio" runat="server" data-date-format="d-m-Y" placeholder="Fecha inicio del Evento">
                           
                            
                          </div>
                              <div class="form-group">
                                 <input class="flatpickr form-control" id="FechaFin" runat="server" data-date-format="d-m-Y" placeholder="Fecha fin del Evento">

                            
                          </div>
                             <div class="form-group">
                               
                        <label for="exampleFormControlSelect1">Categoria</label>
                       <asp:DropDownList ID="Categoria" CssClass="form-control" runat="server" AutoPostBack="True">
                           <asp:ListItem Value="1">Danza</asp:ListItem>
                           <asp:ListItem Value="2">Teatro</asp:ListItem>
                           <asp:ListItem Value="3">Musica</asp:ListItem>
                                 </asp:DropDownList>
                       
                   
                       
  </div>
                              <div class="form-group">
                                   <label for="exampleFormControlSelect1">Ubicación</label>
                                   <asp:DropDownList ID="dblUbicacion" CssClass="form-control" runat="server"></asp:DropDownList>
                              </div>
                              <div class="form-group">
                                  <button type="button" data-toggle="modal" data-target="#ModalMap" class="btn btn-default">
                                    <span class="glyphicon glyphicon-map-marker"></span> <span id="ubicacion">Seleccionar Ubicación:</span>
                                    </button>
                              </div>             
                                
                              
                          
<br />
                         
                             </div>
                           <div class="clearfix"></div>
                          </div>
        </div>
    <div class="col-md-12">
                      <div class="content-panel">
                          <h4 class="mb"><i class="fa fa-angle-right"></i>Eventos Registrados</h4>
                         <asp:GridView ID="GridView1"  Cssclass="table table-striped table-advance table-hover" runat="server" AutoGenerateColumns="False" OnSelectedIndexChanged="Seleccionar">
                             <Columns>
                                 <asp:ButtonField ButtonType="Button" CommandName="Select" HeaderText="Elije" ShowHeader="True" Text="Seleccionar">
                                 <ControlStyle CssClass="btn btn-success btn-xs" />
                                 <ItemStyle CssClass="fa fa-check" />
                                 </asp:ButtonField>
                                 <asp:ImageField DataImageUrlField="FotoEvento" DataImageUrlFormatString="~/Img/{0}" HeaderText="Foto ">
                                     <ControlStyle CssClass="img-thumbnail" Height="100px" Width="200px" />
                                 </asp:ImageField>
                                 <asp:BoundField DataField="IDEvento" HeaderText="ID" SortExpression="IDEvento" />
                                 <asp:BoundField DataField="Nombre" HeaderText="Nombre del Evento" SortExpression="Nombre" />
                                 <asp:BoundField DataField="Descripcion" HeaderText="Descrpcion" SortExpression="Descripcion" />
                                 <asp:BoundField DataField="CostoEntrada" HeaderText="Costo" SortExpression="CostoEntrada" />
                                 <asp:BoundField DataField="HoraInicio" HeaderText="Hora de Inicio" SortExpression="HoraInicio" />
                                 <asp:BoundField DataField="HoraFin" HeaderText="Hora de Finalizacion" SortExpression="HoraFin" />
                                 <asp:BoundField DataField="Fecha Inicio" HeaderText="Fecha de Inicio" SortExpression="FechaInicio" />
                                 <asp:BoundField DataField="Fecha Fin" HeaderText="Fecha de Finalizacion" SortExpression="FechaFin" />
                                 <asp:BoundField DataField="IDClasificacion" HeaderText="Categoria" SortExpression="IDClasificacion" />
                                 <asp:BoundField DataField="IDUbicacion" HeaderText="Ubicación" SortExpression="IDUbicacion" />
                                 <asp:BoundField DataField="FotoEvento" HeaderText="Nombre de la Imagen" SortExpression="FotoEvento" />
                             </Columns>
                          </asp:GridView>
                      </div><!-- /content-panel -->
                  </div>
                              <div class="modal fade" id="ModalMap" tabindex="-1" role="dialog" >
 <style>.pac-container { z-index: 99999; }</style>
<div class="modal-dialog" role="document">
<div class="modal-content">
<div class="modal-body">
<div class="form-horizontal">
<div class="form-group">
<label class="col-sm-2 control-label">Ubicación:</label>
<div class="col-sm-9">
    <asp:TextBox ID="ModalMapaddress" CssClass="form-control"  runat="server"></asp:TextBox>

</div>
<div class="col-sm-1">
<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
</div>
</div>
<div id="ModalMapPreview" style="width: 100%; height: 400px;"></div>
<div class="clearfix">&nbsp;</div>
<div class="m-t-small">
<label class="p-r-small col-sm-1 control-label">Lat.:</label>
<div class="col-sm-3">
<input type="text" class="form-control" id="ModalMap-lat" />
</div>
<label class="p-r-small col-sm-2 control-label">Long.:</label>
 
<div class="col-sm-3">
<input type="text" class="form-control" id="ModalMap-lon" />
</div>
<div class="col-sm-3">
<button type="button" class="btn btn-primary btn-block" data-dismiss="modal" >Aceptar</button>
</div>
 
</div>
<div class="clearfix"></div>

</div>
</div>
</div>
</div>
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
    <script>
                               $('.clockpicker').clockpicker();
                               $(".flatpickr").flatpickr();
                               
    </script>
    
<script>
    $('#ModalMapPreview').locationpicker({
        radius: 0,
        

        location: {
            latitude: 20.938297181414647,
            longitude: -89.61501516379462
        },
        inputBinding: {
            latitudeInput: $('#ModalMap-lat'),
            longitudeInput: $('#ModalMap-lon'),
            locationNameInput: $('#<%=ModalMapaddress.ClientID %>')
        },
        enableAutocomplete: true,
        onchanged: function (currentLocation, radius, isMarkerDropped) {
            $('#ubicacion').html($('#ModalMap-address').val());
        }
    });
    $('#ModalMap').on('shown.bs.modal', function () {
        $('#ModalMapPreview').locationpicker('autosize');
    });
</script>
    

    <script src="../../file.js"></script>
    <link href="../../file.css" rel="stylesheet" />
   
</asp:Content>
