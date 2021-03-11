using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.EntityFrameworkCore;
using CheilHotelAPI.Modelo;

namespace CheilHotelAPI.Data
{
    public class CheilHotelAPIContext : DbContext
    {
        public CheilHotelAPIContext (DbContextOptions<CheilHotelAPIContext> options)
            : base(options)
        {
        }

        public DbSet<CheilHotelAPI.Modelo.Hoteles> Hoteles { get; set; }
    }
}
