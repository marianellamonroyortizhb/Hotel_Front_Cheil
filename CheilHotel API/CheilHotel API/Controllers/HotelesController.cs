using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using CheilHotelAPI.Data;
using CheilHotelAPI.Modelo;

namespace CheilHotelAPI.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class HotelesController : ControllerBase
    {
        private readonly CheilHotelAPIContext _context;

        public HotelesController(CheilHotelAPIContext context)
        {
            _context = context;
        }

        // GET: api/Hoteles
        [HttpGet]
        public IEnumerable<Hoteles> GetHoteles()
        {
            return _context.Hoteles;
        }

        // GET: api/Hoteles/5
        [HttpGet("{id}")]
        public async Task<IActionResult> GetHoteles([FromRoute] int id)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }

            var hoteles = await _context.Hoteles.FindAsync(id);

            if (hoteles == null)
            {
                return NotFound();
            }

            return Ok(hoteles);
        }

        // PUT: api/Hoteles/5
        [HttpPut("{id}")]
        public async Task<IActionResult> PutHoteles([FromRoute] int id, [FromBody] Hoteles hoteles)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }

            if (id != hoteles.id)
            {
                return BadRequest();
            }

            _context.Entry(hoteles).State = EntityState.Modified;

            try
            {
                await _context.SaveChangesAsync();
            }
            catch (DbUpdateConcurrencyException)
            {
                if (!HotelesExists(id))
                {
                    return NotFound();
                }
                else
                {
                    throw;
                }
            }

            return NoContent();
        }

        // POST: api/Hoteles
        [HttpPost]
        public async Task<IActionResult> PostHoteles([FromBody] Hoteles hoteles)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }

            _context.Hoteles.Add(hoteles);
            await _context.SaveChangesAsync();

            return CreatedAtAction("GetHoteles", new { id = hoteles.id }, hoteles);
        }

        // DELETE: api/Hoteles/5
        [HttpDelete("{id}")]
        public async Task<IActionResult> DeleteHoteles([FromRoute] int id)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }

            var hoteles = await _context.Hoteles.FindAsync(id);
            if (hoteles == null)
            {
                return NotFound();
            }

            _context.Hoteles.Remove(hoteles);
            await _context.SaveChangesAsync();

            return Ok(hoteles);
        }

        private bool HotelesExists(int id)
        {
            return _context.Hoteles.Any(e => e.id == id);
        }
    }
}