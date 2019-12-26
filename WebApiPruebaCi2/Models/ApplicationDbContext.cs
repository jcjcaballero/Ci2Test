using Microsoft.AspNetCore.Identity.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using WebApiPruebaCi2.Models;

namespace WebApiPruebaCi2.Models
{
    public class ApplicationDbContext: IdentityDbContext<ApplicationUser>
    {
        public ApplicationDbContext() { }

        public ApplicationDbContext(DbContextOptions<ApplicationDbContext> options)
            :base(options)
        {

        }

        public virtual DbSet<Tareas> Tareas { get; set; }

        protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
        {
            if (!optionsBuilder.IsConfigured)
            {
#warning To protect potentially sensitive information in your connection string, you should move it out of source code. See http://go.microsoft.com/fwlink/?LinkId=723263 for guidance on storing connection strings.
                optionsBuilder.UseSqlServer("Server=(localdb)\\servidorjcj;Database=DB_PRUEBA_CI2;Trusted_Connection=True;");
            }
        }

        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            modelBuilder.Entity<Tareas>(entity =>
            {
                entity.HasKey(e => e.IdTarea);

                entity.ToTable("TAREAS");

                entity.Property(e => e.IdTarea)
                    .HasColumnName("id_tarea")
                    .HasColumnType("numeric(18, 0)")
                    .ValueGeneratedOnAdd();

                entity.Property(e => e.Descripcion)
                    .HasColumnName("descripcion")
                    .HasMaxLength(100)
                    .IsUnicode(false);

                entity.Property(e => e.EstadoTarea).HasColumnName("estado_tarea");

                entity.Property(e => e.FechaCre)
                    .HasColumnName("fecha_cre")
                    .HasColumnType("datetime");

                entity.Property(e => e.FechaVenc)
                    .HasColumnName("fecha_venc")
                    .HasColumnType("datetime");

                entity.Property(e => e.IdUser)
                    .HasColumnName("id_user")
                    .HasColumnType("nvarchar(900)");
            });

           

            base.OnModelCreating(modelBuilder);
        }


    }
}
