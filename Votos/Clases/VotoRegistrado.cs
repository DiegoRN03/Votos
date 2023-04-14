using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI.WebControls;

namespace Votos.Clases
{
    public class ButtonValue
    {

     
        public int ButtonValueS(string id)
        {
            //Sacar el ultimo digito y asignarselo a la variable
            string valor = id;
            int longitud = valor.Length;
            string ultimoDigito = valor.Substring(longitud - 1, 1);
            valor = ultimoDigito;
            int voto = Convert.ToInt32(valor);

            return voto;
        }
      

        //public string ButtonValueS(string id)
        //{
        //    Sacar el ultimo digito y asignarselo a la variable
           


        //    string valor = id;

        //    return valor;
        //}

    

    }
}