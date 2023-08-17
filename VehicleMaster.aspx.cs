using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BussinessLogic;
using BussinessObject;
using DataAccess;
using System.Data;

namespace WebApplication1
{
    public partial class VehicleMaster : System.Web.UI.Page
    {
        AccountBAL objBAL = new AccountBAL();
        VehicleAccBO objBO = new VehicleAccBO();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnSave_Click(object sender, EventArgs e)
        {
            objBO.mode = 1;
            objBO.Accid = Convert.ToInt32(Session["pk_AccId"]);
            objBO.VNO = Txtvno.Text;
            objBO.VType = TxtVtype.Text;
            objBO.ICompany= Txtincmpny.Text;
            objBO.status= Convert.ToInt32( Txtstatus.Text);
            objBO.Imail= Convert.ToInt32(TexImail.Text);
            objBO.ChassieNo= Convert.ToInt32(Txtchasiono.Text);
            objBO.VMilage= Convert.ToInt32(Txtvmilage.Text);
            objBO.Idate= Convert.ToDateTime( Txtidate.Text);
            objBO.IEXprydate = Convert.ToDateTime(TxtIExpDt.Text);
            
            
            int result = objBAL.OpData(objBO);
            if (result > 0)
            {
                ScriptManager.RegisterStartupScript(this, GetType(), "alertMessage", "alert('records inserted successfully!!!');", true);
                Response.Redirect("DeviceRegister.aspx");


            }
         

           // vehicleassignedfun();
           //Response.Redirect("Welcom.aspx");
        }

        
        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }


        public void BindGrid()
        {
            objBO.mode = 8;
            objBO.Accid = Convert.ToInt32(Session["pk_AccId"]);
            objBO.VType= TxtVtype.Text;
            objBO.ICompany = Txtincmpny.Text;
            objBO.VNO=Txtvno.Text;

           
            if (Txtstatus.Text.ToString() != null && Txtstatus.Text.ToString() != "")
            {
                objBO.status = Convert.ToInt64(Txtstatus.Text);
            }
            else
            {
                objBO.status = 0;
            }
            if (Txtchasiono.Text.ToString() != null && Txtchasiono.Text.ToString() != "")
            {
                objBO.ChassieNo = Convert.ToInt32(Txtchasiono.Text);
            }
            else
            {
                objBO.ChassieNo = 0;
            }
            if (Txtvmilage.Text.ToString() != null && Txtvmilage.Text.ToString() != "")
            {
                objBO.VMilage = Convert.ToInt64(Txtvmilage.Text);
            }
            else
            {
                objBO.VMilage = 0;
            }
            if (TxtIExpDt.Text.ToString() != null && TxtIExpDt.Text.ToString() != "")
            {
                objBO.IEXprydate = Convert.ToDateTime(TxtIExpDt.Text);
            }
            else
            {
                objBO.IEXprydate = DateTime.Now;
            }
            
            DataTable dt = new DataTable();
            dt = objBAL.FetchData(objBO);
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            BindGrid();
        }

        protected void lnkEdit_Click(object sender, EventArgs e)
        {
            LinkButton lnkbtn = (LinkButton)(sender);
            string a = lnkbtn.CommandArgument.ToString();
            objBO.mode = 9;

            objBO.VNO = Convert.ToString(a);
            DataTable dt = new DataTable();
            //objBO.emp_name = a;
            //objBO.mode = 2;
            //dt = objBAL.FetchData(objBO);
            //GridView1.DataSource = dt;
            //GridView1.DataBind();

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
            objBO.mode = 11;
            objBO.VNO= Convert.ToString(a);
            DataTable dt = new DataTable();
            dt = objBAL.FetchData(objBO);

            Txtvno.Text = dt.Rows[0]["Vno"].ToString();
            TxtVtype.Text = dt.Rows[0]["VType"].ToString();
            Txtincmpny.Text = dt.Rows[0]["InsuranceComp"].ToString();
            Txtstatus.Text = dt.Rows[0]["Status"].ToString();
            Txtchasiono.Text = dt.Rows[0]["ChassieNo"].ToString();
            Txtvmilage.Text = dt.Rows[0]["V_Milage"].ToString();
            Txtidate.Text = dt.Rows[0]["Insurance_date"].ToString();
            TxtIExpDt.Text = dt.Rows[0]["Insurance_Exp_date"].ToString();
            TexImail.Text = dt.Rows[0]["Imail"].ToString();
            

        }

        protected void Btnupdate_Click(object sender, EventArgs e)
        {
            objBO.mode = 10;
             objBO.VNO=Txtvno.Text;
            objBO.VType = TxtVtype.Text;
            objBO.ICompany = Txtincmpny.Text;
            objBO.status = Convert.ToInt32(Txtstatus.Text);
            objBO.ChassieNo = Convert.ToInt32(Txtchasiono.Text);
            objBO.VMilage = Convert.ToInt32(Txtvmilage.Text);
            if (Txtidate.Text.ToString() != null && Txtidate.Text.ToString() != "")
            {
                objBO.Idate = Convert.ToDateTime(Txtidate.Text);
            }
            else
            {
                objBO.Idate = DateTime.Now;
            }
           
           
            if (TxtIExpDt.Text.ToString() != null && TxtIExpDt.Text.ToString() != "")
            {
                objBO.IEXprydate = Convert.ToDateTime(TxtIExpDt.Text);
            }
            else
            {
                objBO.IEXprydate = DateTime.Now;
            }
            objBO.Imail=Convert.ToInt32(TexImail.Text);


            int result = objBAL.OpData(objBO);
            if (result > 0)
            {
                ScriptManager.RegisterStartupScript(this, GetType(), "alertMessage", "alert('records Updated successfully!!!');", true);
            }
        }
    }
}