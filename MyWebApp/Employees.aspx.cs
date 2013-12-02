using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
namespace MyWebApp
{
    public partial class Employees : System.Web.UI.Page
    {
        private EmployeeService eServ;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["list"] == null)
            {
                eServ = new EmployeeService();
                List<Employee> employeesList = eServ.addAll();
                Session["list"] = employeesList;
            }

            if (!IsPostBack)
            {

                //listRepeater.DataSource = employeesList;
                //listRepeater.DataBind();
                setGridView();

            }
            
        }

        public void setGridView() {

            gridView.DataSource = Session["list"];
            gridView.DataBind();

        }
        
        protected void gridView_RowCommand(object sender, GridViewCommandEventArgs e)
        {
             int rowIndex = Convert.ToInt32(e.CommandArgument.ToString());
             int id= (int)gridView.DataKeys[rowIndex].Value;
             

             if (e.CommandName == "editEmployee") {

                   Response.Redirect("~/Employee.aspx?id="+id);
             }
            
       
             else if (e.CommandName == "deleteEmployee") {
            
                List<Employee> l = (List<Employee>)Session["list"];
                Employee empToDelete=l.Find(x => x.Id == id);
                for (int i = 0; i < l.Count(); i++)
                {
                    Employee emp=l.ElementAt(i);
                    if (emp.Manager!=null && emp.Manager.Id == empToDelete.Id)
                        emp.Manager = null;

                }
                    
                l.Remove(empToDelete);
                setGridView();
            }
        }

    }
}