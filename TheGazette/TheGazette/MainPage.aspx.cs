using NLog;
using System;
using System.Collections;
using System.Collections.Generic;
using System.Drawing;
using System.Drawing.Imaging;
using System.IO;
using System.Linq;
using System.Net;
using System.Text.RegularExpressions;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml;

namespace WebApplication6
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        Logger logger = LogManager.GetCurrentClassLogger();
        Item haber = new Item();
        SQL veri = new SQL();
        WebClient webClient = new WebClient();
        
        protected void Page_Load(object sender, EventArgs e)
        {
            logger.Info("Başladı");
            if (!IsPostBack)
            {
                try
                {
                    XmlDocument xmlDoc = new XmlDocument();
                    xmlDoc.Load("http://ajans.dha.com.tr/dha_public_rss.php");
                    string imageUrl ;

                    foreach (XmlNode node in xmlDoc.GetElementsByTagName("item"))
                    {
                        
                        if (node["image"] != null)
                        {
                            imageUrl = "";
                            haber.Title = node["title"].InnerText.ToString();
                            haber.Description = node["description"].InnerText.ToString()+ "<br />";
                            haber.Category = node["category"].InnerText.ToString();
                            haber.Author = node["author"].InnerText.ToString();
                            haber.PubDate = Convert.ToDateTime(node["pubDate"].InnerText.ToString());
                        
                           imageUrl = node["image"].FirstChild.InnerText.ToString();

                           haber.ImageUrl = imageUrl;
                        
                       
                                // içi boş haberler için bazen boş olabiliyorlar
                            if (ParseHTML(haber.Description).Length >= 7 && haber.ImageUrl != "")
                            {
                                if (veri.Arama(haber) == 0)//aynı haberlerin tekrardan kayıt edilmemesi için
                                {
                                    veri.Ekle(haber);
                                    logger.Info("Veritabanına haber eklen!");
                                }
                                else if (veri.Arama(haber) != 0)
                                {
                                    veri.Guncelle(haber);
                                    logger.Info("Veritabanındaki haber güncellendi!");
                                }
                            }
                        }
                    }
                    logger.Info("Haberler RSS'den alındı.");
                    Top5Haber.DataSource = veri.Listele();
                    Top5Haber.DataBind();
                    Repeater1.DataSource = veri.Listele1();
                    Repeater1.DataBind();
                    Repeater2.DataSource = veri.Listele2();
                    Repeater2.DataBind();
                    Repeater3.DataSource = veri.Listele3();
                    Repeater3.DataBind();
                    Repeater4.DataSource = veri.Listele4();
                    Repeater4.DataBind();
                    Repeater5.DataSource = veri.Listele5();
                    Repeater5.DataBind();
                    Repeater6.DataSource = veri.Listele6();
                    Repeater6.DataBind();

           
                    logger.Info("Haberler görüntülendi.");//error loglama SQl.cs'de
                }
                catch(Exception)
                {
                    logger.Error(e);//error loglama SQl.cs'de
                }
            }
        }

        private string ParseHTML(string Value)
        {
            if (Value.IndexOf("&gt;", StringComparison.InvariantCultureIgnoreCase) > -1)
            {
                Value = Value.Replace("&gt;", ">");
                Value = Value.Replace("&lt;", "<");
            }
            return Regex.Replace(Value.Replace("<![endif]-->", "<endif>"), "<(?:(script|style|head|title|endif)[^<]*(?:<(?!/\\1)[^<]*)*</\\1>|[!/]?[a-zA-Z-]+[^<>]*>)", string.Empty);
        }

        protected void Timer2_Tick(object sender, EventArgs e)
        {
            Page.Response.Redirect(Page.Request.Url.ToString(), false);
            logger.Info("Sayfa Yenilendi!");
        }
    }
}