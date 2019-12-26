using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace WebApiPruebaCi2.Models.Requets
{
    public class TareasRequest
    {
        public decimal IdTarea { get; set; }
        public DateTime FechaCre { get; set; }
        public string Descripcion { get; set; }
        public bool EstadoTarea { get; set; }
        public DateTime FechaVenc { get; set; }
        public bool BuscarEstado { get; set; }

    }
}
