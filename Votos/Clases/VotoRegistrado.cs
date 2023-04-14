using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI.WebControls;

namespace Votos.Clases
{
    public class ButtonValue
    {

        //Crear funcion que guarde el valor de cualquier boton que se presiona mediante el id del boton y guarde el ultimo digito en una variable 

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