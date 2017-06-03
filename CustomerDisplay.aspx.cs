using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : Page
{
    private Customer selectedCustomer;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack) ddlCustomer.DataBind();

        //get and show product on every load
        selectedCustomer = this.GetSelectedCustomer();
        lblAddress.Text = selectedCustomer.Address;
        lblPhone.Text = selectedCustomer.Phone;
        lblEmail.Text = selectedCustomer.Email;
    }

    private Customer GetSelectedCustomer()
    {
        //get row from SqlDataSource based on value in drop-down list
        DataView customerTable = (DataView)
            SqlDataSource1.Select(DataSourceSelectArguments.Empty);
        customerTable.RowFilter =
            "CustomerID = '" + ddlCustomer.SelectedValue + "'";
        DataRowView row = customerTable[0];

        //create a new product object and load with data from row
        Customer c = new Customer();
        c.CustomerID = row["CustomerID"].ToString();
        c.Address = row["Address"].ToString();
        c.Phone = row["Phone"].ToString();
        c.Email = row["Email"].ToString();
        return c;
    }

    protected void btnAdd_Click(object sender, EventArgs e)
    {
        if (Page.IsValid)
        {
            //get cart from session and selected item from cart
            CustomerList cart = CustomerList.GetCustomer();
            Customer cartItem = cart[selectedCustomer.Name];
            //if item isn’t in cart, add it; otherwise, increase its quantity
            if (cartItem == null)
            {
                cart.AddItem(selectedCustomer);
                Response.Redirect("~/ContactDisplay.aspx");
            }
            
        }
    } 

    protected void btnDisplay_Click(object sender, EventArgs e)
    {

    }
}
    
