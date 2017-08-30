﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SwetAlert.aspx.cs" Inherits="Proyect_Web.SwetAlert" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <script src="SweetAlert/sweetalert.min.js"></script>
    <link href="SweetAlert/sweetalert.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <input type="button" value="Prueba Alert" onclick="PruebaAlert()" />
            <script>
                function PruebaAlert() {
                   swal("Todo bien", "Contenido del mensaje","success")
                }
            </script>
        </div>
    </form>
</body>
</html>