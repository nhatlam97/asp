using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace baitap6
{
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnDangNhap_Click(object sender, EventArgs e)
        {
            DataView dv = (DataView)sqlDsSinhVien.Select(DataSourceSelectArguments.Empty);
            int num = dv.Count;
            if (num > 0)
            {
                Nguoidung objUser = new Nguoidung();
                objUser.tenDN = txtTenDN.Text;
                objUser.matKhau = txtMatkhau.Text;
                Session.Add("User", objUser);
                Response.Redirect("main.aspx");
            }
            else
            {
                Response.Redirect("error.aspx");
            }
        }
    }
}