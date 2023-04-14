<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="inicio.aspx.cs" Inherits="Votos.inicio" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <link href="bootstrap/css/bootstrap.css" rel="stylesheet" />
    <link href="css/styleInicio.css" rel="stylesheet" />
</head>
<body>
    <section class="h-100 gradient-form" style="background-color: #eee;">
        <div class="container py-5 h-100">
            <div class="row d-flex justify-content-center align-items-center h-100">
                <div class="col-xl-10">
                    <div class="card rounded-3 text-black">
                        <div class="row g-0">
                            <div class="col-lg-6">
                                <div class="card-body p-md-5 mx-md-4">
                                    
                                    <div class="text-center">
                                        <img src="img/circularSinTextoTEE.png"
                                            style="width: 185px;" alt="logo">
                                        <h4 class="mt-1 mb-5 pb-1">Proceso Electoral 2023</h4>
                                    </div>
                                    <form id="form1" runat="server">
                                       
                                        <p>Por favor digite su número de identificación</p>

                                        <div class="form-outline mb-4">
                                            <asp:TextBox runat="server" ID="TxtLogIn" />
                                        </div>

                                        <div class="text-center pt-1 mb-5 pb-1">
                                            <asp:Button OnClick="BtnLog" ID="btnIngresar"  runat="server"  Text="Ingresar" class="btn btn-primary btn-lg"/>
                                        </div>
                                    </form>
                                </div>
                            </div>
                            <div class="col-lg-6 d-flex align-items-center gradient-custom-2">
                                <div class="text-white px-3 py-4 p-md-5 mx-md-4">
                                    <h4 class="mb-4">Objetivo del Tribunal Electoral Estudiantil</h4>
                                    <p class="small mb-0">
                                        Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
                    tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud
                    exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.
                                    </p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
</body>
</html>
