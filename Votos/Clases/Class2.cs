using SpreadsheetLight;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Votos.Clases
{
    public class Class2
    {
        public void RegistrarHoraFecha(string rutaArchivo, string nombreHoja)
        {


            SLDocument libro = new SLDocument(rutaArchivo);
            libro.SelectWorksheet(nombreHoja);


        }
    }
}