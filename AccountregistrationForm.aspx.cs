using BussinessLogic;
using BussinessObject;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class AccountregistrationForm : System.Web.UI.Page
    {
        AccountBAL objBAL = new AccountBAL();
        VehicleAccBO objBO = new VehicleAccBO();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindDDL();
                BindDDLState();
                BindDDLDist();
            }

        }

        public void BindDDL()
        {
            objBO.mode = 2;
            DataTable dt = new DataTable();
            dt = objBAL.FetchData(objBO);
            ddlrole.DataSource = dt;
            ddlrole.DataTextField = "Role_Name";
            ddlrole.DataValueField = "Pk_RoleID";
            ddlrole.DataBind();
        }

        public void BindDDLState()
        {
            objBO.mode = 3;
            DataTable dt = new DataTable();
            dt = objBAL.FetchData(objBO);
            Ddlstate.DataSource = dt;
            Ddlstate.DataTextField = "State_Name";
            Ddlstate.DataValueField = "Pk_StateId";
            Ddlstate.DataBind();
        }

        public void BindDDLDist()
        {

            if (Convert.ToInt32(Ddlstate.SelectedValue) > 0)
            {
                objBO.mode = 4;
                objBO.Pk_StateId = Convert.ToInt32(Ddlstate.SelectedValue);
            }
            else
            {
                objBO.mode = 5;
                objBO.Pk_StateId = 0;
            }
            DataTable dt = new DataTable();
            dt = objBAL.FetchData(objBO);
            Ddldistrict.DataSource = dt;
            Ddldistrict.DataTextField = "District_Name";
            Ddldistrict.DataValueField = "Pk_DistrictId";
            Ddldistrict.DataBind();
        }

        protected void ddlrole_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Ddlstate_SelectedIndexChanged(object sender, EventArgs e)
        {
            BindDDLDist();
        }
        protected void Ddldistrict_SelectedIndexChanged(Object sender, EventArgs e)
        {

        }

        protected void btnregister_Click(object sender, EventArgs e)
        {
            objBO.mode = 6;
            objBO.Account_Name = TxtAccName.Text;
            objBO.Username = TxtUname.Text;
            objBO.Password = Txtpass.Text;
            objBO.pk_RoleId = Convert.ToInt32(ddlrole.SelectedValue);
            objBO.Pk_StateId = Convert.ToInt32(Ddlstate.SelectedValue);
            objBO.pk_DistrictId = Convert.ToInt32(Ddldistrict.SelectedValue);


            int result = objBAL.OpData(objBO);
            if (result > 0)
            {
                ScriptManager.RegisterStartupScript(this, GetType(), "alertMessage", "alert('records inserted successfully!!!');", true);
                Response.Redirect("VehicleMaster.aspx?AccountName: " + TxtAccName.Text);
            }
        }
    }
}