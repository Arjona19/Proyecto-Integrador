<%@ Page Title="" Language="C#" MasterPageFile="~/Index.Master" AutoEventWireup="true" CodeBehind="EventosF.aspx.cs" Inherits="Proyect_Web.GUI.Front_end.EventosF" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

     <style>
         body{background-color:#dadada;}
         .Contenido{
             margin:16px;
             top:5px;
             left:5px;
             right:5px;
             bottom:5px;
             background:#fff;
             overflow:hidden;
             -moz-box-shadow: 1px 1px 2px rgba(0,0,0,0.2);
             -webkit-box-shadow: 1px 1px 2px rgba(0,0,0,0.2);
             box-shadow: 1px 1px 2px rgba(0,0,0,0.2);
             padding-top: 19px;
             border: 1px solid #ddd;
             margin-left:auto;
             margin-right:auto;
         }
         .Imagenes{height:180px;}
         .Nombre{ 
             font-family: 'Coustard', sans-serif;
             text-transform: uppercase;
             color: #000;
             margin-bottom: 20px;
             font-size: 12px;
             text-align: center;
             text-shadow: 0px 1px 1px #e4ebe9;
         }
         .centro{
             margin-left:auto;
             margin-right:auto;
         }
         
     </style>
    <div class="content-fluid">
        <div class="centro">
            <asp:DataList ID="DataList1" CssClass="centro" runat="server" RepeatColumns="3">
                <ItemTemplate>
                    <div class="Contenido" style="text-align:center;">

             <asp:Image ID="Image1" Cssclass="Imagenes img-thumbnail" runat="server" Height="200px" ImageUrl='<%# "../../Img"+Eval("FotoEvento") %>' Width="181px" />
             <br />
             <br />
                        
             <h4><asp:Label ID="Label1" Cssclass="Nombre" runat="server" Text='<%#Eval("Nombre") %>'></asp:Label></h4>
             <br />
             <br />

             
             </div>
                </ItemTemplate>
            </asp:DataList>
    <div class="clearfix"></div>
         </div> 

    </div>
     
</asp:Content>



   


