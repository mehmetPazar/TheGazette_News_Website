using NLog;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication6
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        SQL veri = new SQL();
        Logger logger = LogManager.GetCurrentClassLogger();
        protected void Page_Load(object sender, EventArgs e)
        {
            logger.Info("Başladı!");
            string a = Request.QueryString["title"];

            Top5Haber.DataSource = veri.Listele();
            Top5Haber.DataBind();
            DataList.DataSource = veri.Arama2(a);
            DataList.DataBind();
            logger.Info("Haberler görüntülendi!");
        }
    }
}