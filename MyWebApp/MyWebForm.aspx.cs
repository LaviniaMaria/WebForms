using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyWebApp
{
    public partial class MyWebForm : System.Web.UI.Page
    {
        public string Title
        {

            get { return ViewState["titlu"] == null ? "" : ViewState["titlu"].ToString(); }
            set { ViewState["titlu"] = value; }
        }

        protected void Page_Load(object sender, EventArgs e)
        {

            label2.Text += "Page_Load<br/>";
            Button b = new Button();
            b.Text = "DinamicButton";
            b.ID = "dinamicButton";
            b.Click += setLabelText;
            addRemovePanel.Controls.Add(b);

        }

        protected void Page_Prerender(object sender, EventArgs e)
        {
            if (!string.IsNullOrEmpty(Title))
            {
                pageTitle.Text = Title;
            }

            label2.Text += "  Page_Prerender<br/>";

        }

        protected void Page_Init(object sender, EventArgs e)
        {

            label2.Text += " Page_Init<br/> ";

        }

        protected void Page_PreInit(object sender, EventArgs e)
        {

            label2.Text += " Page_PreInit123<br/>";

        }

        protected void Page_Unload(object sender, EventArgs e)
        {

            label2.Text += " Page_Unload<br/> ";

        }


        public void setLabelText(object sender, EventArgs e)
        {
            label.Text = "Dinamic button clicked";
        }

        public void changeText(object sender, EventArgs e)
        {
            string text = Request.Form["field"];
            field.Text = "";
            label.Text = text;
        }

        public void concatText(object sender, EventArgs e)
        {
            label2.Text += "Am dat click pe buton<br/>";
        }

        public void changeTitle(object sender, EventArgs e)
        {
            Title = "My first web form";
            //pageTitle.Text =Title ;
        }

        public void modifyPanelState(object sender, EventArgs e)
        {
            myPanel.Visible = !myPanel.Visible;
        }

        public void removeButton(object sender, EventArgs e)
        {
            if (Page.FindControl("dinamicButton") != null)
                myPanel.Controls.Remove(Page.FindControl("dinamicButton"));
        }

        public void showItem(object sender, EventArgs e)
        {
            label.Text = list.SelectedValue;
        }

        public void openNewPage(object sender, EventArgs e)
        {
            Response.Redirect("About.aspx");
        }

    }

}