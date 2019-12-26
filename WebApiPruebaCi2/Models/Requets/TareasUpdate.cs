using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;

namespace WebApiPruebaCi2.Models.Requets
{
    public class TareasUpdate
    {
        [Required]
        public decimal IdTarea { get; set; }
        public DateTime FechaCre { get; set; }
        [Required]
        public string Descripcion { get; set; }
        [Required]
        public bool EstadoTarea { get; set; }
        [Required]
        public DateTime FechaVenc { get; set; }
        //public string IdUser { get; set; }
        //public bool BuscarEstado { get; set; }
    }
}
