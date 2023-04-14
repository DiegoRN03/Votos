using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using DocumentFormat.OpenXml.Spreadsheet;
using SpreadsheetLight;
using DocumentFormat.OpenXml.Spreadsheet;
using SpreadsheetLight;


namespace Votos.Clases
{

    public class RegistroExcel
    {
        public void RegistrarHoraFecha(string rutaArchivo, string nombreHoja, int voto)
        {
            string Hora = DateTime.Now.ToString("hh:mm:ss");
            string Fecha = DateTime.Now.ToLongDateString();
            int contador1 = 0;
            int contador2 = 0;
            int contador3 = 0;
            int contador4 = 0;
            int resultado = voto;
         

            



            SLDocument libro = new SLDocument(rutaArchivo);
            libro.SelectWorksheet(nombreHoja);
            int fila = 2; // posicion de fecha y hora
            while (!String.IsNullOrEmpty(libro.GetCellValueAsString(fila, 1)))
            {
                fila++; // Obtener la última fila con datos
            }

                   
                     

            int fila2 = 2;
            while (!String.IsNullOrEmpty(libro.GetCellValueAsString(fila2, 1)))
            {
                int valor = libro.GetCellValueAsInt32(fila2, 3);
                if (valor == 1)
                {
                    contador1++;
                }
                else if (valor == 2)
                {
                    contador2++;
                }
                else if (valor == 3)
                {
                    contador3++;
                } else if (valor == 4)
                {
                    contador4++;
                }
             
                fila2++;
            }
            libro.SetCellValue(2, 5, "Votos para el partido 1");
            libro.SetCellValue(3, 5, "Votos para el partido 2");
            libro.SetCellValue(4, 5, "Votos para el partido 3");
            libro.SetCellValue(5, 5, "Votos para el partido 4");

            libro.SetCellValue(fila, 2, resultado);
            libro.SetCellValue(fila, 1, Hora);
            libro.SetCellValue(fila, 2, Fecha);
            libro.SetCellValue(fila, 3, resultado);


            libro.SetCellValue(2, 5, contador1);
            libro.SetCellValue(3, 5, contador2);
            libro.SetCellValue(4, 5, contador3);
            libro.SetCellValue(5,5, contador4);
            

            


            libro.Save();



        }
    }


}
