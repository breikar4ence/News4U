using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(News4U.Startup))]
namespace News4U
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
