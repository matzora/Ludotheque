#region Références
using BusinessObject;
using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
#endregion

namespace DataAccess
{
    public class EntityDbContext
		: DbContext
    {
		#region Variables
		#endregion

		#region Propriétés
		public DbSet<Game> Games { get; set; }
		public DbSet<Lend> Lends { get; set; }
		public DbSet<Site> Sites { get; set; }
		public DbSet<User> Users { get; set; }
		#endregion

		#region Constructeurs
		public EntityDbContext(string connectionString)
			: base(connectionString)
		{
			Database.SetInitializer(new NullDatabaseInitializer<EntityDbContext>());
		}
		#endregion

		#region Méthodes

		#endregion
	}
}
