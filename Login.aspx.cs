using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BussinessObject;
using BussinessLogic;
using System.Data;

namespace WebApplication1
{
    public partial class Login : System.Web.UI.Page
    {
        AccountBAL objBAL = new AccountBAL();
        VehicleAccBO objBO = new VehicleAccBO();

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            objBO.mode = 7;
            objBO.Username = TxtuName.Text;
            objBO.Password = Txtpass.Text;
            DataSet dt=objBAL.FetchDataSet(objBO);

            if (dt.Tables.Count > 0)
            {
                if (dt.Tables[0].Rows.Count > 0)
                {
                    lblUser.Text = dt.Tables[0].Rows[0]["username"].ToString();
                    Session["pk_AccId"] = dt.Tables[0].Rows[0]["fk_AccId"];
                    lblUser.Visible = true;
                    ScriptManager.RegisterStartupScript(this, GetType(), "alertMessage", "alert('Welcom User Login  successfully!!!');", true);
                    Response.Redirect("Homepage.aspx?Username="+TxtuName.Text);
                }
                else
                {
                    ScriptManager.RegisterStartupScript(this, GetType(), "alertMessage", "alert('Login Failed Please Enter Correct Username & Password!!!');", true);

                }

            }

   
            
            //+" " + DateTime.Now.ToString("dd/MM/yyyy hh:mm tt")
        }
    }
}