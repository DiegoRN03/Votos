using System;
using System.Collections.Generic;
using System.ComponentModel.Design.Serialization;
using System.Linq;
using System.Web;
using DocumentFormat.OpenXml.Wordprocessing;
using SpreadsheetLight;

namespace Votos.Clases
{
    public class Class3
    {
       
        //Crear funcion que valide si el usuario existe en el excel recibiendo como parametro el id ingresado por un textbox
        public void ValidarUsuario(string rutaArchivo, string nombreHoja, string id)
        {

                int fila = 2; // Iniciar en la fila donde se encuentra el primer ID
                HttpContext.Current.Session["Identificacion"] = id;

                SLDocument libro = new SLDocument(rutaArchivo);
                libro.SelectWorksheet(nombreHoja);

                while (!string.IsNullOrEmpty(libro.GetCellValueAsString(fila, 6)))
                {
                    string dato_base = libro.GetCellValueAsString(fila, 6);
                    if (id == dato_base)
                    {
                        HttpContext.Current.Response.Redirect("Papeleta.aspx");
                    }
                    else
                    {
                        fila++;
                    }
                }
            }


        }
    }
       
    

     
            


      
