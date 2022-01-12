using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace WebDev_CW
{
    public partial class Signup : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void CancelBtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("Login.aspx");
        }

        protected void SignupBtn_Click(object sender, EventArgs e)
        {
            //Response.Redirect("Login.aspx");
            String fname = FirstNTB.Text;
            String lname = LastNTB.Text;
            String uname = UsernameTB.Text;
            String email = EmailTB.Text;
            String tphone = TPTB.Text;
            String pword = PasswordTB.Text;
            String cpword = PasswordTB2.Text;

            string cs = "Data Source = DESKTOP-AFQL4EU\\SQLEXPRESS; database = Testing; Integrated Security = True; ";

            SqlConnection con = new SqlConnection(cs);

            string query = string.Format("insert into Login values ('{0}','{1}','{2}','{3}',{4},{5},{6})",
                fname, lname, uname, email, tphone, pword, cpword);

            SqlCommand cmd = new SqlCommand(query, con);

            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();

            ClientScript.RegisterClientScriptBlock(this.GetType(), "K", "swal('Good Job','Successfully Signup!..','success')", true);

            FirstNTB.Text = "";
            LastNTB.Text = "";
            UsernameTB.Text = "";
            EmailTB.Text = "";
            TPTB.Text = "";
            PasswordTB.Text = "";
            PasswordTB2.Text = "";

            Response.Redirect("Login.aspx");
        }
    }
}