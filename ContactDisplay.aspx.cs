using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Contact : Page
{
    private CustomerList clist;

    protected void Page_Load(object sender, EventArgs e)
    {
        clist = CustomerList.GetCustomer();
        if (!IsPostBack)
            this.DisplayList();
    }
    private void DisplayList()
    {
        lstCustomer.Items.Clear();
        CustomerList item;
        for (int i = 0; i < clist.Count; i++)
        {
            item = clist[i];
            lstCustomer.Items.Add(item.;
        } 
    }
    protected void btnRemove_Click(object sender, EventArgs e)
    {
        if (clist.Count > 0)
        {
            if (lstCustomer.SelectedIndex > -1)
            {
                clist.RemoveAt(lstCustomer.SelectedIndex);
                this.DisplayList();
            }
            else
            {
                lblMessage.Text = "Please select the item you want to remove.";
            }
        }
    }
    protected void btnEmpty_Click(object sender, EventArgs e)
    {
        if (clist.Count > 0)
        {
            clist.Clear();
            lstCustomer.Items.Clear();
        }
    }
}