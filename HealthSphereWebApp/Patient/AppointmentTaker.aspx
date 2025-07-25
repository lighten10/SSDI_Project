﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Patient/PatientMaster.Master" AutoEventWireup="true" CodeBehind="AppointmentTaker.aspx.cs" Inherits="HealthSphereWebApp.AppointmentTaker" %>




<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <title>Appointment Taker</title>

</asp:Content>




<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <!------------------Styling------------------>
    <link rel="stylesheet" href="/assets/css/grid-view.css"/>


    <h1><strong style="margin:37%">Free Time Slots</strong></h1>
    <br /><br />

    <asp:Label ID="PAppointment" runat="server"></asp:Label>
    <br /><br />

    <asp:GridView ID="PAppointmentGrid" runat="server" class = "GridView-d" CellPadding="4" ForeColor="Black" GridLines="Vertical" Width="800px"
         AutoGenerateSelectButton="true" OnRowCommand="PAppointmentGrid_RowCommand" AutoGenerateColumns ="true"  EnableViewState ="False" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" 
        >

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
          
        <Columns>
            <asp:TemplateField HeaderText = "No." ItemStyle-Width="50">
                <ItemTemplate>
                    <asp:Label ID="lblRowNumber" Text='<%# Container.DataItemIndex + 1 %>' runat="server" />
                </ItemTemplate>

                <ItemStyle Width="50px"></ItemStyle>
            </asp:TemplateField>

        
        </Columns>


    </asp:GridView>

    <br /><br />

</asp:Content>
