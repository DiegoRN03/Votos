<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Papeleta.aspx.cs" Inherits="Votos.Papeleta" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <link href="bootstrap/css/bootstrap.css" rel="stylesheet" />
    <link href="css/stylePapeleta.css" rel="stylesheet" />
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
</head>
<body>
    <form id="form1" runat="server">
        <section>
            <div class="encabezado">
                <h2>Colegio Técnico Profesional de Educación Comercial y Servicios</h2>
                <h1>ELECCIONES ESTUDIANTILES 2023</h1>
            </div>
            <!--Empieza la papeleta-->
            <div class="container">
                   <div id="popup" style="display: none; position: fixed; top: 0; left: 0; width: 100%; height: 100%; background-color: rgba(0,0,0,0.5); z-index: 1000;">
                <div style="position: absolute; top: 50%; left: 50%; transform: translate(-50%, -50%); background-color: white; width: 300px; height: 200px; border-radius: 10px; padding: 20px;">
                    <h1>Verificacion de voto</h1>
                    <p>El voto será emitido en 10 segundos
                    </p>
                    <h1 id="delay"></h1>
                   
                    <asp:Button ID ="Button3" runat="server" Text="Cancelar" OnClick="CancelarVoto_Click" />
                </div>
            </div>
                <div class="card-wrapper">
                    <div class="card">
                        <img src="img/bandera1.jpg" alt="card background" class="card-img" />
                        <img src="img/per1.jpg" alt="profile image" class="profile-img" />
                        <h1 class="NamePartido1" runat="server">Partido Global Ciudadano</h1>
                        <p class="president">Amelia Castillo Contreras</p>
                        <ul type="disc" style="list-style-type: disc;" class="team">
                            <li>Vicepresidencia:</li>
                            <li>Secretaría:</li>
                            <li>Tesorería:</li>
                            <li>Fiscalía:</li>
                            <li>Vocal1:</li>
                            <li>Vocal2:</li>
                        </ul>
                            <asp:Button ID="btnV1" OnClick="btnV1_Click" runat="server" Text="Felipe" UseSubmitBehavior="false" class="btn btn-secondary btn-lg" OnClientClick="showPopup(); setTimeout('__doPostBack(\'btnV1\',\'\')', 10000); return true;"/>
                        <br />
                    </div>

                    <div class="card">
                        <img src="img/bandera2.jpg" class="card-img"/>
                        <img src="img/per2.jpg" alt="profile image" class="profile-img" />
                        <h1 class="NamePartido2">Partido Global Ciudadano</h1>
                        <p class="president">Amelia Castillo Contreras</p>
                        <ul type="disc" style="list-style-type: disc;" class="team">
                            <li>Vicepresidencia:</li>
                            <li>Secretaría:</li>
                            <li>Tesorería:</li>
                            <li>Fiscalía:</li>
                            <li>Vocal1:</li>
                            <li>Vocal2:</li>
                        </ul>
                       <div class="btnVoto">
                           <asp:Button ID="btnV2" OnClick="btnV2_Click" runat="server" Text="Button" UseSubmitBehavior="false" class="btn btn-secondary btn-lg" OnClientClick="showPopup(); setTimeout('__doPostBack(\'btnV2\',\'\')', 10000); return false;"/>
                        </div>
                        <br />
                    </div>

                    <div class="card">
                        <img src="img/bandera1.jpg" alt="card background" class="card-img" />
                        <img src="img/per3.jpg" alt="profile image" class="profile-img" />
                        <h1 >Partido Global Ciudadano</h1>
                        <p class="president">Amelia Castillo Contreras</p>
                        <ul type="disc" style="list-style-type: disc;" class="team">
                            <li>Vicepresidencia:</li>
                            <li>Secretaría:</li>
                            <li>Tesorería:</li>
                            <li>Fiscalía:</li>
                            <li>Vocal1:</li>
                            <li>Vocal2:</li>
                        </ul>
                        <div class="btnVoto">
                            <asp:Button ID="btnV3" runat="server" OnClick="btnV3_Click" Text="Button"  UseSubmitBehavior="false" class="btn btn-secondary btn-lg" OnClientClick="showPopup(); setTimeout('__doPostBack(\'btnV3\',\'\')', 10000); return false;"/>
                        </div>
                        <br />
                    </div>

                    <div class="card">
                        <img src="img/bandera2.jpg" alt="card background" class="card-img" />
                        <img src="img/per4.jpg" alt="profile image" class="profile-img" />
                        <h1>Partido Global Ciudadano</h1>
                        <p class="president">Amelia Castillo Contreras</p>
                        <ul type="disc" style="list-style-type: disc;" class="team">
                            <li>Vicepresidencia:</li>
                            <li>Secretaría:</li>
                            <li>Tesorería:</li>
                            <li>Fiscalía:</li>
                            <li>Vocal1:</li>
                            <li>Vocal2:</li>
                        </ul>
                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                         <div class="btnVoto">
                         <asp:Button ID="btnV4" OnClick="btnV4_Click"  runat="server" Text="Button" UseSubmitBehavior="false" class="btn btn-secondary btn-lg" OnClientClick="showPopup(); setTimeout('__doPostBack(\'btnV4\',\'\')', 10000); return false;"/>
              







                        </div>
                        <br />
                    </div>

                </div>
            </div>
            <!--Finaliza la papeleta-->

        </section>
                

    </form>
        <script>

            function showPopup(e) {
                var popup = document.getElementById("popup");
                popup.style.display = "block";

                var delay = 10;
                var interval = setInterval(function () {

                    document.getElementById("delay").innerHTML = delay;

                    if (delay === 0) {

                        clearInterval(interval);

                    }

                    delay--;

                }, 1000);
               

            }

           
           
        </script>
</body>
</html>
