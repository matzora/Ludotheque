using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(Ludotheque.Startup))]
namespace Ludotheque
{
    public partial class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            ConfigureAuth(app);
        }
    }
}
