using System;
using Aspose.Html;
using Aspose.Html.Saving;
using Aspose.Html.Converters;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services.Description;
using System.Web.UI;
using System.Web.UI.WebControls;
using static System.Net.Mime.MediaTypeNames;
using Aspose.Html.Dom;
using SpreadsheetLight;

namespace Votos
{
    public partial class Papeleta : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e) { 

           if (Session["Identificacion"] != null)
            {
                string usuarioLogeado =  Session["Identificacion"].ToString();
                lblBienvenida.Text = usuarioLogeado;
            }
            else
            {
             
            }
      
        }

        
        protected void empezar(object sender, EventArgs e) { }

        protected void CancelarVoto_Click(object sender, EventArgs e)
        {
            TextBox1.Text = "Voto cancelado";
        }

        protected void btnV4_Click(object sender, EventArgs e)
        {
            var Clase = new Clases.ButtonValue();
            int valor = Clase.ButtonValueS(btnV4.ID);

            var RegistroVoto = new Clases.RegistroExcel();
            RegistroVoto.RegistrarHoraFecha("D:\\DatosVtc\\Votante.xlsx", "Hoja1", valor);
            Response.Redirect("inicio.aspx");
        }

        protected void btnV2_Click(object sender, EventArgs e)
        {
      
            var Clase = new Clases.ButtonValue();
            int valor = Clase.ButtonValueS(btnV2.ID);

            var RegistroVoto = new Clases.RegistroExcel();
            RegistroVoto.RegistrarHoraFecha("D:\\DatosVtc\\Votante.xlsx", "Hoja1", valor);
        }

        protected void btnV3_Click(object sender, EventArgs e)
        {


            var Clase = new Clases.ButtonValue();
            int valor = Clase.ButtonValueS(btnV3.ID);


            var RegistroVoto = new Clases.RegistroExcel();
            RegistroVoto.RegistrarHoraFecha("D:\\DatosVtc\\Votante.xlsx", "Hoja1", valor);
        }

        protected void btnV1_Click(object sender, EventArgs e)
        {

            var Clase = new Clases.ButtonValue();
            int valor = Clase.ButtonValueS(btnV1.ID);


            var RegistroVoto = new Clases.RegistroExcel();
            RegistroVoto.RegistrarHoraFecha("D:\\DatosVtc\\Votante.xlsx", "Hoja1", valor);
        }
    }
}
