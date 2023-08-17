using BussinessLogic;
using BussinessObject;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.DataVisualization.Charting;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class DeviceRegistrationform : System.Web.UI.Page
    {

        AccountBAL objBAL = new AccountBAL();
        VehicleAccBO objBO = new VehicleAccBO();
        //public object ChartData { get; private set; }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                createTable();
                BindDDL();
            }
        }

        public DataTable createTable()
        { 
            DataTable dt = new DataTable();
            dt.Columns.Add("VehicleNumber",typeof(string));
            dt.Columns.Add("VehicleType",typeof (string));
            dt.Columns.Add("Milage", typeof(Int32));
            DataRow dr= dt.NewRow();
            DataRow dr1 = dt.NewRow();
            DataRow dr2 = dt.NewRow();
            DataRow dr3 = dt.NewRow();
            dr["VehicleNumber"] = "MH12QS8319";
            dr["VehicleType"] = "Bike";
            dr["Milage"] = 30;          
            dr1["VehicleNumber"] = "MH12FT3765";
            dr1["VehicleType"] = "Car";
            dr1["Milage"] = 55;
            dr2["VehicleNumber"] = "MH12QS0890";
            dr2["VehicleType"] = "Bike";
            dr2["Milage"] = 60;
            dr3["VehicleNumber"] = "MH12FT6323";
            dr3["VehicleType"] = "Car";
            dr3["Milage"] = 12;
            dt.Rows.Add(dr);
            dt.Rows.Add(dr1);
            dt.Rows.Add(dr2);
            dt.Rows.Add(dr3);

            //dt.Columns.Remove("VehicleType");
            //dt.Rows.Remove(dr1);
            //DataRow[] drw=dt.Select("VehicleType like '%Bike%'");

            DataTable dt2=dt.Copy();
       

            return dt;
        }

        protected void Ddldevicetype_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void BtnSave_Click(object sender, EventArgs e)
        {
            objBO.mode = 14;
            objBO.imed = Convert.ToInt32(TxtImei.Text);
            objBO.ccid = TxtCcid.Text;
            objBO.simno = Convert.ToInt32(TxtSimNO.Text);
            objBO.serviceprov = TxtServicepro.Text;
            objBO.devicetid = Convert.ToInt32(Ddldevicetype.Text);

            int result = objBAL.OpData(objBO);
            if (result > 0)
            {
                ScriptManager.RegisterStartupScript(this, GetType(), "alertMessage", "alert('records inserted successfully!!!');", true);


            }

        }
        protected void Button2_Click(object sender, EventArgs e)
        {
            BindGrid();
            Bindchart();
        }

        protected void Btnupdate_Click(object sender, EventArgs e)
        {
            objBO.mode = 18;
            objBO.ccid = TxtCcid.Text;
            objBO.deviceid = Convert.ToInt32(hidden1.Value);
            objBO.devicetid = Convert.ToInt32(Ddldevicetype.Text);

            if (TxtImei.Text.ToString() != null && TxtImei.Text.ToString() != "")
            {
                objBO.imed = Convert.ToInt32(TxtImei.Text);
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

            objBO.serviceprov = TxtServicepro.Text;

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
            objBO.serviceprov = TxtServicepro.Text;
            objBO.ccid = TxtCcid.Text;


            if (TxtImei.Text.ToString() != null && TxtImei.Text.ToString() != "")
            {
                objBO.imed = Convert.ToInt32(TxtImei.Text);
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

        
        public void Bindchart()
        {

            objBO.mode = 23;
            DataTable dt = new DataTable();
            dt = objBAL.FetchData(objBO);
            Chart1.DataSource = dt;


            //storing total rows count to loop on each Record    
            string[] XPointMember = new string[dt.Rows.Count];
            int[] YPointMember = new int[dt.Rows.Count];
            for (int count = 0; count < dt.Rows.Count; count++)
            {
                //storing Values for X axis    
                XPointMember[count] = dt.Rows[count]["ServiceProvider"].ToString();
                //storing values for Y Axis    
                YPointMember[count] = Convert.ToInt32(dt.Rows[count]["IMEI"]);
            }
            //binding chart control    
            Chart1.Series[0].Points.DataBindXY(XPointMember, YPointMember);

            //Setting width of line    
            Chart1.Series[0].BorderWidth = 10;
            Chart1.Series[0].ChartType = SeriesChartType.Pie;
          


            //Chart1.ChartAreas["ChartArea1"].Area3DStyle.Enable3D = true;

        }

       

        protected void Chart_Click(object sender, EventArgs e)
        {
           Bindchart();
        }

        protected void Chart1_Load(object sender, EventArgs e)
        {
            Bindchart();
        }
    }
}