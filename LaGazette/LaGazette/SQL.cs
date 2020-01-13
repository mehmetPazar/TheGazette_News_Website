using NLog;
using System;
using System.Collections;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace WebApplication6
{
    public class SQL
    {
        SqlConnection con;
        SqlCommand cmd;
        Logger logger = LogManager.GetCurrentClassLogger();
        
        public SQL()
        {
            Baglan();
        }
        public void Baglan()
        {
            try
            {
                con = new SqlConnection("Data Source=DESKTOP-H8S07B6\\SQLEXPRESS;Initial Catalog=DHA;Integrated Security=True");
                cmd = new SqlCommand();
                cmd.Connection = con;
                logger.Info("Veritabanına bağlantı başarılı!");
            }
            catch (Exception e)
            {
                logger.Error("Veritabanına bağlantı başarısız!");
            }

        }
        public void Ekle(Item n)
        {
            try
            {
                cmd.CommandText = "Insert Into Haberler(Title,Description,Category,Author,PubDate,ImageUrl) Values (@title,@description,@category,@author,@pubDate,@imageUrl)";
                cmd.Parameters.Clear();
                cmd.Parameters.AddWithValue("@title", n.Title);
                cmd.Parameters.AddWithValue("@description", n.Description);
                cmd.Parameters.AddWithValue("@category", n.Category);
                cmd.Parameters.AddWithValue("@author", n.Author);
                cmd.Parameters.AddWithValue("@pubDate", n.PubDate);
                cmd.Parameters.AddWithValue("@imageUrl", n.ImageUrl);
                con.Open();
                cmd.ExecuteNonQuery();
                logger.Info("Veritabanına haber eklendi!");
            }
            catch (Exception e)
            {
                logger.Error("Veritabanına haberler kaydedilemedi!");
            }
            finally
            {
                if (con != null)
                    con.Close();
            }
        }
        public ArrayList Listele()
        {
            ArrayList HaberlerListesi = new ArrayList();
            try
            {

                cmd.CommandText = "select top 5 Title from Haberler order by NewsID desc";
                cmd.CommandType = CommandType.Text;
                con.Open();
                SqlDataReader reader = cmd.ExecuteReader();

                while (reader.Read())
                {
                    Item n = new Item();
                    n.Title = reader[0].ToString();
                    HaberlerListesi.Add(n);
                    logger.Info("Veritabanından haberler listelendi!");
                }
            }
            catch (Exception e)
            {
                logger.Error("Veritabanından haberler listelenemedi!");
            }
            finally
            {
                if (con != null)
                {
                    con.Close();
                }
            }
            return HaberlerListesi;
        }
        public ArrayList Listele1()
        {
            ArrayList HaberlerListesi = new ArrayList();
            try
            {

                cmd.CommandText = "select top 5 * from Haberler order by NewsID desc";
                cmd.CommandType = CommandType.Text;
                con.Open();
                SqlDataReader reader = cmd.ExecuteReader();

                while (reader.Read())
                {
                    Item n = new Item();
                    n.NewsID = Convert.ToInt32(reader[0]);
                    n.Title = reader[1].ToString();
                    n.Description = reader[2].ToString();
                    n.Category = reader[3].ToString();
                    n.Author = reader[4].ToString();
                    n.PubDate = Convert.ToDateTime(reader[5].ToString());
                    n.ImageUrl = reader[6].ToString();
                    HaberlerListesi.Add(n);
                    logger.Info("Veritabanından haberler listelendi!");
                }
            }
            catch (Exception e)
            {
                logger.Error("Veritabanından haberler listelenemedi!");
            }
            finally
            {
                if (con != null)
                {
                    con.Close();
                }
            }
            return HaberlerListesi;
        }
        public ArrayList Listele2()
        {
            ArrayList HaberlerListesi = new ArrayList();
            DateTime zaman;
            try
            {

                cmd.CommandText = "select * from (select Title,PubDate,ROW_NUMBER() OVER (ORDER BY NewsID desc) as row from Haberler) Haberler where Haberler.row >= 1 and Haberler.row <= 5";
                cmd.CommandType = CommandType.Text;
                con.Open();
                SqlDataReader reader = cmd.ExecuteReader();

                while (reader.Read())
                {
                    Item n = new Item();
                    n.Title = reader[0].ToString();
                    zaman = Convert.ToDateTime(reader[1].ToString());
                    n.Category= zaman.ToShortTimeString();
                    HaberlerListesi.Add(n);
                    logger.Info("Veritabanından haberler listelendi!");
                }
            }
            catch (Exception e)
            {
                logger.Error("Veritabanından haberler listelenemedi!");
            }
            finally
            {
                if (con != null)
                {
                    con.Close();
                }
            }
            return HaberlerListesi;
        }

        public ArrayList Listele3()
        {
            ArrayList HaberlerListesi = new ArrayList();
            int IcerikBaslangicIndex, IcerikBitisIndex2;
            int IcerikBitisIndex;
            string sonuc;
            string basla = "<p><p>";
            string bitir = "</p>";
            string bitir2 = "<br />";
            try
            {

                cmd.CommandText = "select * from (select Title,Description,Category,PubDate,ImageUrl,ROW_NUMBER() OVER (ORDER BY NewsID desc) as row from Haberler) Haberler where Haberler.row >11 and Haberler.row <= 12";
                cmd.CommandType = CommandType.Text;
                con.Open();
                SqlDataReader reader = cmd.ExecuteReader();

                while (reader.Read())
                {
                    Item n = new Item();
                    n.Title = reader[0].ToString();


                    IcerikBaslangicIndex = reader[1].ToString().IndexOf(basla) + basla.Length;
                    IcerikBitisIndex = reader[1].ToString().Substring(IcerikBaslangicIndex).IndexOf(bitir);
                    IcerikBitisIndex2 = reader[1].ToString().Substring(IcerikBaslangicIndex).IndexOf(bitir2);
                    if (IcerikBitisIndex > IcerikBitisIndex2)
                    {
                        sonuc = reader[1].ToString().Substring(IcerikBaslangicIndex, IcerikBitisIndex2);
                        n.Description = sonuc;
                    }
                    if (IcerikBitisIndex < IcerikBitisIndex2)
                    {
                        sonuc = reader[1].ToString().Substring(IcerikBaslangicIndex, IcerikBitisIndex);
                        n.Description = sonuc;
                    }

                    n.Category = reader[2].ToString();
                    n.PubDate = Convert.ToDateTime(reader[3].ToString());
                    n.ImageUrl = reader[4].ToString();
                    HaberlerListesi.Add(n);
                    logger.Info("Veritabanından haberler listelendi!");
                }
            }
            catch (Exception e)
            {
                logger.Error("Veritabanından haberler listelenemedi!");
            }
            finally
            {
                if (con != null)
                {
                    con.Close();
                }
            }
            return HaberlerListesi;
        }

        public ArrayList Listele4()
        {
            ArrayList HaberlerListesi = new ArrayList();
            int IcerikBaslangicIndex, IcerikBitisIndex2;
            int IcerikBitisIndex;
            string sonuc;
            string basla = "<p><p>";
            string bitir = "</p>";
            string bitir2 = "<br />";
            try
            {

                cmd.CommandText = "select * from (select Title,Description,Category,PubDate,ImageUrl,ROW_NUMBER() OVER (ORDER BY NewsID desc) as row from Haberler) Haberler where Haberler.row >12 and Haberler.row <= 13";
                cmd.CommandType = CommandType.Text;
                con.Open();
                SqlDataReader reader = cmd.ExecuteReader();

                while (reader.Read())
                {
                    Item n = new Item();
                    n.Title = reader[0].ToString();

                    IcerikBaslangicIndex = reader[1].ToString().IndexOf(basla) + basla.Length;
                    IcerikBitisIndex = reader[1].ToString().Substring(IcerikBaslangicIndex).IndexOf(bitir);
                    IcerikBitisIndex2 = reader[1].ToString().Substring(IcerikBaslangicIndex).IndexOf(bitir2);
                    if(IcerikBitisIndex > IcerikBitisIndex2)
                    {
                        sonuc = reader[1].ToString().Substring(IcerikBaslangicIndex, IcerikBitisIndex2);
                        n.Description = sonuc;
                    }
                    if (IcerikBitisIndex < IcerikBitisIndex2)
                    {
                        sonuc = reader[1].ToString().Substring(IcerikBaslangicIndex, IcerikBitisIndex);
                        n.Description = sonuc;
                    }

                    n.Category = reader[2].ToString();
                    n.PubDate = Convert.ToDateTime(reader[3].ToString());
                    n.ImageUrl = reader[4].ToString();
                    HaberlerListesi.Add(n);
                    logger.Info("Veritabanından haberler listelendi!");
                }
            }
            catch (Exception e)
            {
                logger.Error("Veritabanından haberler listelenemedi!");
            }
            finally
            {
                if (con != null)
                {
                    con.Close();
                }
            }
            return HaberlerListesi;
        }


        public ArrayList Listele5()
        {
            ArrayList HaberlerListesi = new ArrayList();
            int IcerikBaslangicIndex, IcerikBitisIndex2;
            int IcerikBitisIndex;
            string sonuc;
            string basla = "<p><p>";
            string bitir = "</p>";
            string bitir2 = "<br />";
            try
            {

                cmd.CommandText = "select * from (select Title,Description,Category,PubDate,ImageUrl,ROW_NUMBER() OVER (ORDER BY NewsID desc) as row from Haberler) Haberler where Haberler.row >13 and Haberler.row <= 14";
                cmd.CommandType = CommandType.Text;
                con.Open();
                SqlDataReader reader = cmd.ExecuteReader();

                while (reader.Read())
                {
                    Item n = new Item();
                    n.Title = reader[0].ToString();

                    IcerikBaslangicIndex = reader[1].ToString().IndexOf(basla) + basla.Length;
                    IcerikBitisIndex = reader[1].ToString().Substring(IcerikBaslangicIndex).IndexOf(bitir);
                    IcerikBitisIndex2 = reader[1].ToString().Substring(IcerikBaslangicIndex).IndexOf(bitir2);
                    if (IcerikBitisIndex > IcerikBitisIndex2)
                    {
                        sonuc = reader[1].ToString().Substring(IcerikBaslangicIndex, IcerikBitisIndex2);
                        n.Description = sonuc;
                    }
                    if (IcerikBitisIndex < IcerikBitisIndex2)
                    {
                        sonuc = reader[1].ToString().Substring(IcerikBaslangicIndex, IcerikBitisIndex);
                        n.Description = sonuc;
                    }
                    n.Category = reader[2].ToString();
                    n.PubDate = Convert.ToDateTime(reader[3].ToString());
                    n.ImageUrl = reader[4].ToString();
                    HaberlerListesi.Add(n);
                    logger.Info("Veritabanından haberler listelendi!");
                }
            }
            catch (Exception e)
            {
                logger.Error("Veritabanından haberler listelenemedi!");
            }
            finally
            {
                if (con != null)
                {
                    con.Close();
                }
            }
            return HaberlerListesi;
        }
        public ArrayList Listele6()
        {
            ArrayList HaberlerListesi = new ArrayList();
            int IcerikBaslangicIndex, IcerikBitisIndex2;
            int IcerikBitisIndex;
            string sonuc;
            string basla = "<p><p>";
            string bitir = "</p>";
            string bitir2 = "<br />";
            try
            {

                cmd.CommandText = "select * from (select Title,Description,Category,PubDate,ImageUrl,ROW_NUMBER() OVER (ORDER BY NewsID desc) as row from Haberler) Haberler where Haberler.row >14 and Haberler.row <= 15";
                cmd.CommandType = CommandType.Text;
                con.Open();
                SqlDataReader reader = cmd.ExecuteReader();

                while (reader.Read())
                {
                    Item n = new Item();
                    n.Title = reader[0].ToString();

                    IcerikBaslangicIndex = reader[1].ToString().IndexOf(basla) + basla.Length;
                    IcerikBitisIndex = reader[1].ToString().Substring(IcerikBaslangicIndex).IndexOf(bitir);
                    IcerikBitisIndex2 = reader[1].ToString().Substring(IcerikBaslangicIndex).IndexOf(bitir2);
                    if (IcerikBitisIndex > IcerikBitisIndex2)
                    {
                        sonuc = reader[1].ToString().Substring(IcerikBaslangicIndex, IcerikBitisIndex2);
                        n.Description = sonuc;
                    }
                    if (IcerikBitisIndex < IcerikBitisIndex2)
                    {
                        sonuc = reader[1].ToString().Substring(IcerikBaslangicIndex, IcerikBitisIndex);
                        n.Description = sonuc;
                    }
                    n.Category = reader[2].ToString();
                    n.PubDate = Convert.ToDateTime(reader[3].ToString());
                    n.ImageUrl = reader[4].ToString();
                    HaberlerListesi.Add(n);
                    logger.Info("Veritabanından haberler listelendi!");
                }
            }
            catch (Exception e)
            {
                logger.Error("Veritabanından haberler listelenemedi!");
            }
            finally
            {
                if (con != null)
                {
                    con.Close();
                }
            }
            return HaberlerListesi;
        }
        public ArrayList Listele7(string a)
        {
            ArrayList HaberlerListesi = new ArrayList();
            int IcerikBaslangicIndex, IcerikBitisIndex2;
            int IcerikBitisIndex;
            string sonuc;
            string basla = "<p><p>";
            string bitir = "</p>";
            string bitir2 = "<br />";
            try
            {
                
                cmd.CommandText = "select * from (select Title,Description,Category,PubDate,ImageUrl,ROW_NUMBER() OVER (ORDER BY NewsID  desc) as row from Haberler where Category=@category) Haberler where Haberler.row >=1 and Haberler.row <= 6";
                cmd.Parameters.Clear();
                cmd.Parameters.AddWithValue("@category", a);
                con.Open();
                SqlDataReader reader = cmd.ExecuteReader();

                while (reader.Read())
                {
                    Item n = new Item();
                    n.Title = reader[0].ToString();

                    IcerikBaslangicIndex = reader[1].ToString().IndexOf(basla) + basla.Length;
                    IcerikBitisIndex = reader[1].ToString().Substring(IcerikBaslangicIndex).IndexOf(bitir);
                    IcerikBitisIndex2 = reader[1].ToString().Substring(IcerikBaslangicIndex).IndexOf(bitir2);
                    if (IcerikBitisIndex > IcerikBitisIndex2)
                    {
                        sonuc = reader[1].ToString().Substring(IcerikBaslangicIndex, IcerikBitisIndex2);
                        n.Description = sonuc;
                    }
                    if (IcerikBitisIndex < IcerikBitisIndex2)
                    {
                        sonuc = reader[1].ToString().Substring(IcerikBaslangicIndex, IcerikBitisIndex);
                        n.Description = sonuc;
                    }

                    n.Category = reader[2].ToString();
                    n.PubDate = Convert.ToDateTime(reader[3].ToString());
                    n.ImageUrl = reader[4].ToString();
                    HaberlerListesi.Add(n);
                    logger.Info("Veritabanından haberler listelendi!");
                }
            }
            catch (Exception e)
            {
                logger.Error("Veritabanından haberler listelenemedi!");
            }
            finally
            {
                if (con != null)
                {
                    con.Close();
                }
            }
            return HaberlerListesi;
        }

        public int Arama(Item n)
        {
            int flag = 0;
            try
            {
                cmd.CommandText = "select * from Haberler where Title=@title and Category=@category and Author=@author and PubDate=@pubDate and ImageUrl=@imageUrl ";
                cmd.Parameters.Clear();
                cmd.Parameters.AddWithValue("@title", n.Title);
                cmd.Parameters.AddWithValue("@category", n.Category);
                cmd.Parameters.AddWithValue("@author", n.Author);
                cmd.Parameters.AddWithValue("@pubDate", n.PubDate);
                cmd.Parameters.AddWithValue("@imageUrl", n.ImageUrl);
                con.Open();

                SqlDataReader reader = cmd.ExecuteReader();
                while (reader.Read())
                {
                    flag++;
                    logger.Info("Veritabanından arama yapıldı!");
                }
            }
            catch (Exception e)
            {
                logger.Error("Veritabanından haber kontrol edildi!");
            }
            finally
            {
                if (con != null)
                {
                    con.Close();
                }
            }
            return flag;
        }
        public ArrayList Arama2(string a)
        {
            ArrayList HaberlerListesi = new ArrayList();
            try
            {
                cmd.CommandText = "select Description,Category,PubDate,ImageUrl from Haberler where Title=@title";
                cmd.Parameters.Clear();
                cmd.Parameters.AddWithValue("@title", a);
                con.Open();
                
                SqlDataReader reader = cmd.ExecuteReader();
                while (reader.Read())
                {
                    Item n = new Item();
                    n.Description = reader[0].ToString();
                    n.Category = reader[1].ToString();
                    n.PubDate = Convert.ToDateTime(reader[2].ToString());
                    n.ImageUrl =reader[3].ToString().ToString();
                    HaberlerListesi.Add(n);
                    logger.Info("Veritabanından haber gösterildi!");
                }
            }
            catch (Exception e)
            {
                logger.Error("Veritabanından haber kontrol edildi!");
            }
            finally
            {
                if (con != null)
                {
                    con.Close();
                }
            }
            return HaberlerListesi;
        }

        public void Guncelle(Item n)
        {
            try
            {
                cmd.CommandText = "Update Haberler set Title=@title,Description=@description,PubDate=@pubDate where ImageUrl=@imageUrl and Category=@category and Author=@author ";
                cmd.Parameters.Clear();
                cmd.Parameters.AddWithValue("@title", n.Title);
                cmd.Parameters.AddWithValue("@description", n.Description);
                cmd.Parameters.AddWithValue("@category", n.Category);
                cmd.Parameters.AddWithValue("@author", n.Author);
                cmd.Parameters.AddWithValue("@pubDate", n.PubDate);
                cmd.Parameters.AddWithValue("@imageUrl", n.ImageUrl);
                con.Open();
                cmd.ExecuteNonQuery();
                logger.Info("Veritabanındaki haber güncellendi!");
            }
            catch (Exception)
            {
                logger.Error("Veritabandaki haberler güncenlenmedi!");
            }
            finally
            {
                if (con != null)
                    con.Close();
            }
        }
    }
}