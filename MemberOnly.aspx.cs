using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebDev_CW
{
    public partial class MemberOnly : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Username"] != null)
            {
                name.Text = Session["Username"].ToString();
            }
            
            HttpCookie cookie = Request.Cookies["Visitor"];
            if (cookie["Username"] != null)
            {
                member.Text = cookie["Username"].ToString();
            }
        }
    }
}