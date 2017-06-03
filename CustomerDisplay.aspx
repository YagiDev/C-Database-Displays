<%@ Page Title="Home Page" Language="C#" AutoEventWireup="true" CodeFile="CustomerDisplay.aspx.cs" Inherits="_Default" %>
<!DOCTYPE html>
<script runat="server">


</script>


<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Price quotation</title>
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <script src="Scripts/jquery-1.9.1.min.js"></script>
    <script src="Scripts/bootstrap.min.js"></script>
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <link href="Content/site.css" rel="stylesheet" />
</head>

<body>
    
    <form id="form1" runat="server" class="form-horizontal">
        <main class="container">
        <h1 class="jumbotron">SportsPro</h1>
            <asp:DropDownList ID="ddlCustomer" runat="server" DataSourceID="SqlDataSource1" DataTextField="Name" 
                DataValueField="CustomerID" Height="61px" Width="205px" CssClass="form-control" AutoPostBack="True"></asp:DropDownList>


        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            SelectCommand="SELECT * FROM [Customers] ORDER BY [Name]"></asp:SqlDataSource>

            <div class="form-group">
                        <div class="col-sm-12"><asp:Label ID="lblAddress" runat="server"></asp:Label></div></div>
                    <div class="form-group">
                        <div class="col-sm-12"><asp:Label ID="lblPhone" runat="server"></asp:Label></div></div>
                    <div class="form-group">
                        <div class="col-sm-12"><asp:Label ID="lblEmail" runat="server"></asp:Label></div></div>
            <div class="form-group">
                        <div class="col-sm-12">
                            <asp:Button ID="btnAdd" runat="server" Text="Add to Contact List" 
                                onclick="btnAdd_Click" CssClass="btn" />
                            <asp:Button ID="btnDisplay" runat="server" Text="Display Contact List" 
                                PostBackUrl="~/ContactDisplay.aspx" CausesValidation="False" CssClass="btn" OnClick="btnDisplay_Click" />
                        </div>
                    </div>
        </main>
    </form>
</body>
    </html>