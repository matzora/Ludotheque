using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DataAccess
{
    class DatabaseUsers
    {
        public static void ADMIN_USER(out string username, out string password)
        {
            username = "admin";
            password = "admin";
        }

        public static void LOWRIGHTS_USER(out string username, out string password)
        {
            username = "lowRight";
            password = "lowRight";
        }

        public static void VIEWER_USER(out string username, out string password)
        {
            username = "viewer";
            password = "viewer";
        }
    }
}
