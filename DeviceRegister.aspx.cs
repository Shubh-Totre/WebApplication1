using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BussinessObject;
using BussinessLogic;

namespace WebApplication1
{
    public partial class DeviceRegister : System.Web.UI.Page
    {
        AccountBAL objBAL = new AccountBAL();
        VehicleAccBO objBO = new VehicleAccBO();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindDDL();
            }
        }

       

        protected void Ddldevicetype_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void BtnSave_Click(object sender, EventArgs e)
        {
            objBO.mode = 14;
            objBO.imed=Convert.ToInt32(TxtImei.Text);
            objBO.ccid= TxtCcid.Text;
            objBO.simno=Convert.ToInt32(TxtSimNO.Text);
            objBO.serviceprov=TxtServicepro.Text;
            objBO.devicetid= Convert.ToInt32(Ddldevicetype.Text);

            int result = objBAL.OpData(objBO);
            if (result > 0)
            {
                ScriptManager.RegisterStartupScript(this, GetType(), "alertMessage", "alert('records inserted successfully!!!');", true);
                

            }

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            BindGrid();
        }

        protected void Btnupdate_Click(object sender, EventArgs e)
        {
            objBO.mode = 18;
            objBO.ccid = TxtCcid.Text;
            objBO.deviceid = Convert.ToInt32(hidden1.Value);
            objBO.devicetid = Convert.ToInt32(Ddldevicetype.Text);

            if (TxtImei.Text.ToString()!=null && TxtImei.Text.ToString() != "")
            {
                 objBO.imed= Convert.ToInt32(TxtImei.Text);
            }
            else
            {
                objBO.imed = 0;
            }
            if (TxtSimNO.Text.ToString() != null && TxtSimNO.Text.ToString() != "")
            {
                objBO.simno = Convert.ToInt32(TxtSimNO.Text);
            }
            else
            {
                objBO.simno = 0;
            }

            objBO.serviceprov= TxtServicepro.Text;
            
            if (Ddldevicetype.Text.ToString() != null && Ddldevicetype.Text.ToString() != "")
            {
                objBO.devicetid = Convert.ToInt32(Ddldevicetype.Text);
            }
            else
            {
                objBO.devicetid = 0;
            }
            int result = objBAL.OpData(objBO);
            if (result > 0)
            {
                ScriptManager.RegisterStartupScript(this, GetType(), "alertMessage", "alert('records Updated successfully!!!');", true);
            }

        }
        public void BindGrid()
        {
            objBO.mode = 15;
            objBO.serviceprov= TxtServicepro.Text;
            objBO.ccid= TxtCcid.Text;
         

           if (TxtImei.Text.ToString() != null && TxtImei.Text.ToString() != "")
            {
                objBO.imed = Convert.ToInt32(TxtImei.Text);
            }
            else
            {
                objBO.imed= 0;
            }
           
            if (TxtSimNO.Text.ToString() != null && TxtSimNO.Text.ToString() != "")
            {
                objBO.simno = Convert.ToInt32(TxtSimNO.Text);
            }
            else
            {
                objBO.simno = 0;
            }

            DataTable dt = new DataTable();
            dt = objBAL.FetchData(objBO);
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }


        public void BindDDL()
        {
            objBO.mode = 13;
            DataTable dt = new DataTable();
            dt = objBAL.FetchData(objBO);
            Ddldevicetype.DataSource = dt;
            Ddldevicetype.DataTextField = "Device_Type";
            Ddldevicetype.DataValueField = "pk_DeviceT_Id";
            Ddldevicetype.DataBind();
        }

        protected void lnkedit_Click(object sender, EventArgs e)
        {

            LinkButton lnkbtn = (LinkButton)(sender);
            string a = lnkbtn.CommandArgument.ToString();
            objBO.mode = 17;

            objBO.imed = Convert.ToInt32(a);
            DataTable dt = new DataTable();

            int result = objBAL.OpData(objBO);

            if (result > 0)
            {
                ScriptManager.RegisterStartupScript(this, GetType(), "alertMessage", "alert('records Deleted successfully!!!');", true);
            }

        }

        protected void lnkedit1_Click(object sender, EventArgs e)
        {
            
            LinkButton lnkbtn = (LinkButton)(sender);
            string a = lnkbtn.CommandArgument.ToString();
            hidden1.Value = a;
            objBO.mode = 16;
            objBO.deviceid = Convert.ToInt32(a);
            DataTable dt = new DataTable();
            dt = objBAL.FetchData(objBO);
            TxtImei.Text = dt.Rows[0]["IMEI"].ToString();
            TxtCcid.Text = dt.Rows[0]["CCID"].ToString();
            TxtSimNO.Text = dt.Rows[0]["SimNumber"].ToString();
            TxtServicepro.Text = dt.Rows[0]["ServiceProvider"].ToString();
           




        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}