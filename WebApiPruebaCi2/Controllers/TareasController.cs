using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Claims;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Authentication.JwtBearer;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using WebApiPruebaCi2.Models;


namespace WebApiPruebaCi2.Controllers
{
    [Route("api/[controller]")]
    //[ApiController]
    //[Authorize(AuthenticationSchemes = JwtBearerDefaults.AuthenticationScheme)]
    public class TareasController : ControllerBase
    {
        private Models.ApplicationDbContext db = new Models.ApplicationDbContext();
        private readonly ApplicationDbContext context;
        private readonly UserManager<ApplicationUser> _userManager;
        
        // GET api/Tareas
        /// <summary>
        /// Este Metodo reotrna todas las tareas, que actulamente existen en Base de datos.
        /// </summary>
        /// <returns></returns>
        [HttpGet]
        public ActionResult Get()
        {
            List<Tareas> ListaTareas = (from d in db.Tareas select d).ToList();

            return Ok(ListaTareas);
        }

        // GET api/Tareas/5
        /// <summary>
        /// Este metodo retorna las tareas, especificando su id
        /// </summary>
        /// <param name="id"></param>
        /// <returns></returns>
        [HttpGet("{id}")]
        public ActionResult Get(string id)
        {
            var oTareas = (from d in db.Tareas
                           where d.IdUser == id
                           select d).ToList();

            if (oTareas == null)
            {
                return NotFound();
            }

            return Ok(oTareas);
        }

        // GET /api/Tareas/consultar?BuscarEstado=a&EstadoTarea=b&order=c
        /// <summary>
        /// Este Metodo Consulta las Tareas, que esten terminadas o pendientes,
        /// Se puede ordenar ya sea asc o desc, por fecha de vencimiento. 
        /// </summary>
        /// <param name="BuscarPorEstado"></param>
        /// <param name="EstadoTarea"></param>
        /// <param name="order"></param>
        /// <returns></returns>
        [HttpGet("consultar")]

        public ActionResult Get(bool BuscarPorEstado, bool EstadoTarea, string order)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }

            List<Models.Tareas> oTareas = new List<Models.Tareas>();

            //si busca por estado 
            if (BuscarPorEstado)
            {
                if (EstadoTarea)
                {
                    //Busco las tareas terminadas
                    if (order.Equals("desc"))
                    {
                        oTareas = (from d in db.Tareas
                                   where d.EstadoTarea == true 
                                   select d).OrderByDescending(x => x.FechaVenc).ToList();
                    }
                    else
                    {
                        oTareas = (from d in db.Tareas
                                   where d.EstadoTarea == true 
                                   select d).OrderBy(x => x.FechaVenc).ToList();
                    }
                }
                else
                {
                    //Busco las tareas pendientes
                    if (order.Equals("desc"))
                    {
                        oTareas = (from d in db.Tareas
                                   where d.EstadoTarea == false
                                   select d).OrderByDescending(x => x.FechaVenc).ToList();
                    }
                    else
                    {
                        oTareas = (from d in db.Tareas
                                   where d.EstadoTarea == false 
                                   select d).OrderBy(x => x.FechaVenc).ToList();
                    }
                }
            }
            else
            {
                //Busco todas las tareas
                if (order == "desc")
                {
                    oTareas = (from d in db.Tareas select d).OrderByDescending(x => x.FechaVenc).ToList();
                }
                else
                {
                    oTareas = (from d in db.Tareas select d).OrderBy(x => x.FechaVenc).ToList();
                }
            }

            return Ok(oTareas);
        }



        // GET /api/Tareas/consultar?BuscarEstado=a&EstadoTarea=b&order=c&id
        /// <summary>
        /// Este Metodo Consulta las Tareas, que esten terminadas o pendientes,
        /// Se puede ordenar ya sea asc o desc, por fecha de vencimiento. de un usuario especifico.
        /// </summary>
        /// <param name="BuscarPorEstado"></param>
        /// <param name="EstadoTarea"></param>
        /// <param name="order"></param>
        /// <param name="id"></param>
        /// <returns></returns>
        [HttpGet("consultarOrderUsuario")]

        public ActionResult Get(bool BuscarPorEstado, bool EstadoTarea, string order, string id)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }

            List<Models.Tareas> oTareas = new List<Models.Tareas>();

            //si busca por estado 
            if (BuscarPorEstado)
            {
                if (EstadoTarea)
                {
                    //Busco las tareas terminadas
                    if (order.Equals("desc"))
                    {
                        oTareas = (from d in db.Tareas
                                   where d.EstadoTarea == true && d.IdUser == id
                                   select d).OrderByDescending(x => x.FechaVenc).ToList();
                    }
                    else
                    {
                        oTareas = (from d in db.Tareas
                                   where d.EstadoTarea == true && d.IdUser == id
                                   select d).OrderBy(x => x.FechaVenc).ToList();
                    }
                }
                else
                {
                    //Busco las tareas pendientes
                    if (order.Equals("desc"))
                    {
                        oTareas = (from d in db.Tareas
                                   where d.EstadoTarea == false && d.IdUser == id
                                   select d).OrderByDescending(x => x.FechaVenc).ToList();
                    }
                    else
                    {
                        oTareas = (from d in db.Tareas
                                   where d.EstadoTarea == false && d.IdUser == id
                                   select d).OrderBy(x => x.FechaVenc).ToList();
                    }
                }
            }
            else
            {
                //Busco todas las tareas
                if (order == "desc")
                {
                    oTareas = (from d in db.Tareas select d).OrderByDescending(x => x.FechaVenc).ToList();
                }
                else
                {
                    oTareas = (from d in db.Tareas select d).OrderBy(x => x.FechaVenc).ToList();
                }
            }

            return Ok(oTareas);
        }


        /// <summary>
        /// Metodo para crear una tarea.
        /// </summary>
        /// <param name="model"></param>
        /// <returns></returns>
        [HttpPost("crear")]
        public IActionResult Create([FromBody] Models.Requets.TareasRequest model)
        {

            string id_usuario = User.FindFirst(ClaimTypes.NameIdentifier).Value;

            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }

            Tareas oTareas = new Tareas()
            {
                FechaCre = model.FechaCre,
                Descripcion = model.Descripcion,
                EstadoTarea = model.EstadoTarea,
                FechaVenc = model.FechaVenc,
                IdUser = id_usuario,
            };

          
            db.Tareas.Add(oTareas);
            db.SaveChanges();

            return new CreatedAtRouteResult("Tarea", oTareas);
        }

        /// <summary>
        /// Este Metodo sirve para actulizar una tarea.
        /// </summary>
        /// <param name="model"></param>
        /// <param name="id"></param>
        /// <returns></returns>
        [HttpPut("actualizar")]
        public IActionResult Put([FromBody] Models.Requets.TareasUpdate model, decimal id)
        {
            string id_usuario = User.FindFirst(ClaimTypes.NameIdentifier).Value;

            if (model.IdTarea != id)
            {
                return BadRequest("El id del parametro es diferente id del json enviado.");
            }

            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }

            //se valida que el usuario autenticado sea el que creo la tarea
            List<Tareas> BuscarTareas = (from d in db.Tareas
                                         where d.IdTarea == id
                                         select d).ToList();

            if (BuscarTareas == null || BuscarTareas.Count == 0)
            {
                return BadRequest("No se pudo encontrar la tarea para actualizar.");
            }

            if (BuscarTareas[0].IdUser != id_usuario)
            {
                return BadRequest("Usuario no autorizado para actualizar esta tarea.");
            }
        
            BuscarTareas[0].FechaCre = model.FechaCre;
            BuscarTareas[0].Descripcion = model.Descripcion;
            BuscarTareas[0].EstadoTarea = model.EstadoTarea;
            BuscarTareas[0].FechaVenc = model.FechaVenc;
           

            db.Tareas.Update(BuscarTareas[0]);
            db.SaveChanges();
            return new CreatedAtRouteResult("Tarea", BuscarTareas[0]);
        }

        /// <summary>
        /// Este Metodo sirve para borrar una tarea.
        /// </summary>
        /// <param name="id"></param>
        /// <returns></returns>
        [HttpDelete("borrar")]
        public IActionResult Delete(decimal id)
        {
            string id_usuario = User.FindFirst(ClaimTypes.NameIdentifier).Value;

            List<Tareas> oTareas = (from d in db.Tareas
                           where d.IdTarea == id
                           select d).ToList();

            if (oTareas == null || oTareas.Count == 0)
            {
                return BadRequest("No se pudo encontrar la tarea para borrar.");
            }

            //se valida que el usuario autenticado sea el que creo la tarea
            if (oTareas[0].IdUser != id_usuario)
            {
                return BadRequest("Usuario no autorizado para borrar esta tarea.");
            }

            db.Tareas.Remove(oTareas[0]);
            db.SaveChanges();
            return Ok(oTareas[0]);
        }

    }
}