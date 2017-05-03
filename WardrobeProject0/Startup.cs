using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(WardrobeProject0.Startup))]
namespace WardrobeProject0
{
    public partial class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            ConfigureAuth(app);
        }
    }
}
