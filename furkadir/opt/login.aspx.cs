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
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        SqlConnection con;
        SqlCommand cmd;
        SqlDataReader dr;
        protected void Button1_Click(object sender, EventArgs e)
        {
            con = new SqlConnection("server=DESKTOP-KLA55VO;Initial Catalog=optmail;Integrated Security=true");
            cmd = new SqlCommand("TOPLU_MAIL_LOGIN", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@KULLANICI", kullaniciadi.Text);
            cmd.Parameters.AddWithValue("@PAROLA", sifre.Text);
            cmd.CommandTimeout = 120;
            con.Open();
            dr = cmd.ExecuteReader();


            if (dr.Read())
            {
                if (CheckBox1.Checked)
                {
                    HttpCookie cerez = new HttpCookie("cerezim");
                    cerez.Values.Add("kullaniciadi", kullaniciadi.Text);
                    cerez.Expires = DateTime.Now.AddDays(1);
                    Response.Cookies.Add(cerez);
                }

                Session["kullaniciadi"] = dr["EMAIL"].ToString();

                Response.Redirect("anasayfa.aspx");
            }
            else Label1.Text = "Kullanıcı Adı veya Şifre Hatalı";              

            con.Close();
        }
    }
}