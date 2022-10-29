using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace furkadir.opt
{
    public partial class sifremiunuttum : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
 
        }

        SqlConnection con;
        SqlCommand cmd;
        SqlDataReader dr;
        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {


                con = new SqlConnection("server=DESKTOP-KLA55VO;Initial Catalog=optmail;Integrated Security=true");
                cmd = new SqlCommand("TOPLU_MAIL_LOGIN", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@KULLANICI", kullaniciadi.Text);
                cmd.Parameters.AddWithValue("@PAROLA", eskisifre.Text);
                cmd.CommandTimeout = 120;
                con.Open();
                dr = cmd.ExecuteReader();



                if (dr.Read())
                {

                    if (sifre.Text == sifre2.Text)
                    {
                        con.Close();
                        con.Open();
                        SqlCommand cmd;

                        cmd = new SqlCommand("TOPLU_MAIL_SIFREMI_UNUTTUM", con);
                        cmd.CommandType = CommandType.StoredProcedure;
                        cmd.Parameters.AddWithValue("@KULLANICI_ADI", kullaniciadi.Text);
                        cmd.Parameters.AddWithValue("@ESKI_SIFRE", eskisifre.Text);
                        cmd.Parameters.AddWithValue("@YENI_SIFRE", sifre.Text);
                        cmd.ExecuteNonQuery();


                        con.Close();
                        Label1.Text = ("Başarıyla güncellendi");
                        Response.Redirect("login.aspx");
                    }
                    else
                    {
                        Label1.Text = ("yeni şifrenizi doğru bir şekilde tekrar yazın");
                    }

                }
                else
                {

                    Label1.Text = ("Kayıt Bulunamadı");

                }
            }
            catch (Exception f)
            {
                Label1.Text = (f.Message);
            }

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("login.aspx");
        }
    }
}