<%@ Page Title="Contact" Language="C#" AutoEventWireup="true" CodeFile="ContactDisplay.aspx.cs" Inherits="Contact" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Contact Display</title>
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <link href="Content/site.css" rel="stylesheet" />
    <script src="Scripts/jquery-1.9.1.min.js"></script>
    <script src="Scripts/bootstrap.min.js"></script>
</head>
<body>
<div class="container">
    <header class="jumbotron"><%-- image set in site.css --%></header>
    <main>
        <form id="form1" runat="server" class="form-horizontal">
            <h1 class="jumbotron">SportsPro</h1>
            <div class="row"><%-- row 1 --%>
                <div class="col-sm-6"><%-- cart display column --%>
                    <div class="form-group">
                        <div class="col-sm-12"><asp:ListBox ID="lstCustomer" runat="server" CssClass="form-control" Width="841px"></asp:ListBox></div>
                    </div>
                </div>
                <div class="col-sm-6"><%-- cart edit buttons column --%>
                    <div class="form-group">
                        <div class="col-sm-12"><asp:Button ID="btnRemove" runat="server" 
                            Text="Remove Contact" onclick="btnRemove_Click" CssClass="btn" Width="114px"/></div>
                        <div class="col-sm-12"><asp:Button ID="btnEmpty" runat="server" 
                            Text="Empty List" onclick="btnEmpty_Click" CssClass="btn" Width="113px" />
                            <br />
                        </div>
                    </div>
                </div>
            </div><%-- end of row 1 --%>
            <div class="row"><%-- row 2 --%>
                <div class="col-sm-12">
                    <div class="form-group"><%-- message label --%>
                        <asp:Label ID="lblMessage" runat="server" EnableViewState="False"
                            CssClass="text-info col-sm-12"></asp:Label>
                    </div>
                    <div class="form-group"><%-- buttons --%>
                        <div class="col-sm-12">
                            <asp:Button ID="btnContinue" runat="server"
                                PostBackUrl="~/Order.aspx" Text="Select Additional Customers" CssClass="btn" />
                        </div>
                    </div>
                </div>
            </div><%-- end of row 2 --%>
        </form>
    </main>
</div>
</body>
</html>