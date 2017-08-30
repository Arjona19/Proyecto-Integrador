<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PruebaCarrusel.aspx.cs" Inherits="Proyect_Web.PruebaCarrusel" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link href="dist/css/slider-pro.min.css" rel="stylesheet" />
    <script src="dist/js/jquery.sliderPro.min.js"></script>
    <script src="dist/js/jquery-1.11.0.min.js"></script>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div class="slider-pro" id="my-slider">
<div class="sp-slides">
<!-- Slide 1 -->
<div class="sp-slide">
    <img class="sp-image" src="Img/curso.jpg" />

</div>
 
<!-- Slide 2 -->
<div class="sp-slide">
<p>Lorem ipsum dolor sit amet</p>
    <img class="sp-image" src="Img/fr-05.jpg" />
</div>
 
<!-- Slide 3 -->
<div class="sp-slide">
<h3 class="sp-layer">Lorem ipsum dolor sit amet</h3>
<p class="sp-layer">consectetur adipisicing elit</p>
    <img class="sp-image" src="Img/subirfoto.jpg" />
</div>
</div>
</div>
        </div>
    </form>
 <script type="text/javascript">
jQuery( document ).ready(function( $ ) {
$( '#my-slider' ).sliderPro();
});
</script>
</body>
</html>
