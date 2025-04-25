<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="AdminHome.aspx.cs" Inherits="HealthSphereWebApp.AdminHome" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <style type="text/css">
        html {
            background-image: url("/assets/img/backgrounds/admin.jpg");
            background-size: cover;
            background-position: 0 -90px;
            background-attachment: fixed;
        }

        body {
            background: none !important;
        }

        .backstretch {
            display: none !important;
        }

        .grad {
            background: linear-gradient(to right, rgba(30, 160, 130, 0.15),rgba(0, 148, 255, 1));
            border-radius: 8px;
        }

        #space {
            padding-bottom: 50px;
        }
    </style>

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
</asp:Content>


<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <form runat="server">

        <br />
        <h1 style="text-decoration: underline;">Dashboard</h1>
        <br />
        <br />


        <div style="margin-left: 70px">

            <h4><strong>Total Number of Registered Doctors: </strong></h4>  /// spelling correction
            <asp:Label ID="TotalPatients" runat="server" Font-Bold="true" Font-Size="Medium"></asp:Label>
            <br />
            <br />

            <h4><strong>Total Registered Patients: </strong></h4>
            <asp:Label ID="Total_Doctors" runat="server" Font-Bold="true" Font-Size="Medium"></asp:Label>
            <br />
            <br />

            <h4><strong>Total Income: </strong></h4>
            <asp:Label ID="TotalIncome" runat="server" Font-Bold="true" Font-Size="Medium"></asp:Label>
            <br />
            <br />

            <h3><strong style="margin: 5%">Current Appointments</strong></h3>

            <asp:GridView ID="Appointment_view" runat="server" CellPadding="4" ForeColor="Black" GridLines="Vertical" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px">
                <AlternatingRowStyle BackColor="White" />
                <FooterStyle BackColor="#CCCC99" />
                <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="Silver" ForeColor="Black" HorizontalAlign="Right" />
                <RowStyle BackColor="Silver"/>
                <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#FBFBF2" />
                <SortedAscendingHeaderStyle BackColor="#848384" />
                <SortedDescendingCellStyle BackColor="#EAEAD3" />
                <SortedDescendingHeaderStyle BackColor="#575357" />
            </asp:GridView>

        </div>


        <div style="margin: 20%">

            <h2><strong style="margin: 20%">Department Information</strong></h2>

            <asp:GridView ID="department_View" runat="server" CellPadding="4" ForeColor="Black" Height="50px" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" GridLines="Vertical">
                <AlternatingRowStyle BackColor="White" />
                <FooterStyle BackColor="#CCCC99" />
                <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="Silver" ForeColor="Black" HorizontalAlign="Right" />
                <RowStyle BackColor="Silver" />
                <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#FBFBF2" />
                <SortedAscendingHeaderStyle BackColor="#848384" />
                <SortedDescendingCellStyle BackColor="#EAEAD3" />
                <SortedDescendingHeaderStyle BackColor="#575357" />
            </asp:GridView>

        </div>

    </form>
</asp:Content>
