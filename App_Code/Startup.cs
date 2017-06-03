using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(_349_Project1.Startup))]
namespace _349_Project1
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
