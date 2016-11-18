using System;
using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(RequestFormApp.Startup))]
namespace RequestFormApp
{
    public partial class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            ConfigureAuth(app);
        }
    }
}
