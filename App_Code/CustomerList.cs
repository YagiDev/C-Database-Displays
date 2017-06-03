using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Reflection;

public class CustomerList
{
    private List<Customer> dlist;
    public CustomerList()
    {
        dlist = new List<Customer>();
    }
    public Customer this[int index]
    {
        get { return dlist[index]; }
    }
    public Customer this[string name]
    {
        get
        {
            foreach (Customer c in dlist)
                if (c.Name == name) return c;
            return null;
        }
    }

    public int Count
    {
        get { return dlist.Count; }
    }
    

    public static CustomerList GetCustomer()
    {
        CustomerList list = (CustomerList)HttpContext.Current.Session["Cust"];
        if (list == null)
            HttpContext.Current.Session["Cust"] = new CustomerList();
        return (CustomerList)HttpContext.Current.Session["Cust"];
    }
    public void AddItem(Customer customer)
    {
        Customer d = new Customer();
        dlist.Add(d);
    }
    public void Clear()
    {
        dlist.Clear();
    }
    public void RemoveAt(int index)
    {
        dlist.RemoveAt(index);
    }
}