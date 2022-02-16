using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Data.SqlClient;

public partial class Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }
    protected void LoginImageButton_Click(object sender, ImageClickEventArgs e)
    {
        string connstr="Data Source=localhost\\SQLEXPRESS;Initial Catalog=zikao;Integrated Security=True";
        string username = user_input.Text.ToString();
        string password = pass_input.Text.ToString(); 
        string sql = "select count(1) from account where username='"+username+"' and password='"+password+"';";
        
        SqlConnection conn=new SqlConnection(connstr);
        conn.Open();
        SqlCommand cmd = new SqlCommand(sql,conn);
        SqlDataReader dr = cmd.ExecuteReader();
        while(dr.Read())
        {
            if (dr[0].ToString() =="1")
            {
                msg.Text = "登录成功。"+username+password;
                Session["adminloggedin"] = true;
                Session["username"] = username;
                dr.Close();
                string sql2 = "select id from account  where username='" + username + "' and password='" + password + "';";
                cmd.CommandText = sql2;
                dr = cmd.ExecuteReader();
                while (dr.Read())
                {
                    Session["account_id"] = dr[0].ToString();
                } 
                
                Response.Redirect("Default_Admin.aspx");
            } 
            else 
            {
                msg.Text = "用户名或密码错误！";
            }
        }
        dr.Close();
        conn.Close();
        
    }
}
