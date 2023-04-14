using DocumentFormat.OpenXml.Wordprocessing;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Votos
{
    public partial class inicio : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnLog(object sender, EventArgs e)
        {
            var cedula = TxtLogIn.Text;
      
            var Redirect = new Clases.Class3();
            Redirect.ValidarUsuario("D:\\DatosVtc\\Votante.xlsx", "Hoja1", cedula);

           







        }
    }
}