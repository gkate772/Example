using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(AuctionSites.Startup))]
namespace AuctionSites
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
