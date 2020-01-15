using NLog;
using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication6
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        SQL veri = new SQL();
        Logger logger = LogManager.GetCurrentClassLogger();
        protected void Page_Load(object sender, EventArgs e)
        {
            logger.Info("Başladı!");
            string a= Request.QueryString["category"];
            Repeater1.DataSource = veri.Listele7(a);
            Repeater1.DataBind();

            //Repeater2.DataSource = veri.Listele7();
            //Repeater2.DataBind();
            Top5Haber.DataSource = veri.Listele();
            Top5Haber.DataBind();
            logger.Info("Haberler görüntülendi!");


        }
    }
}