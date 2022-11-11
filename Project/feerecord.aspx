﻿<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="feerecord.aspx.cs" Inherits="Fee_Record" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <section>

        <div class="container">
            <div class="row mb-5">
                <div class="col-md-8 col-xl-6 text-center mx-auto">
                    <h2 class="font-weight-bold">Paid Fees Record</h2>
                </div>
            </div>
 
            <div class="row mb-5">
                <div class="col-md-8 col-xl-5 text-center mx-auto">
                    <asp:GridView runat="server" ID="GridView1" AutoGenerateColumns="False" DataKeyNames="Submission_date" GridLines="Both" BorderColor="Black" BorderStyle="Solid" BorderWidth="2px" CellPadding="8">
                        <Columns>
                            <asp:BoundField ItemStyle-Wrap="false" DataField="Submission_date" HeaderText="Dated" InsertVisible="False" ReadOnly="True" SortExpression="Submission_date" />
                            <asp:BoundField DataField="std_id" HeaderText="Student ID" InsertVisible="False" ReadOnly="True" SortExpression="std_id" />
                            <asp:BoundField DataField="name" HeaderText="Student Name" InsertVisible="False" ReadOnly="True" SortExpression="name" />
                            <asp:BoundField DataField="Semester" HeaderText="Semester" InsertVisible="False" ReadOnly="True" SortExpression="Semester" />
                            <asp:BoundField DataField="Amount" HeaderText="Fee Amount" InsertVisible="False" ReadOnly="True" SortExpression="Amount" />
                            
                       </Columns>

                        <RowStyle BackColor="#ffffff" ForeColor="#000000" Font-Size="13px"/>
                        <HeaderStyle BackColor="#007bff" ForeColor="#ffffff" Font-Size="16px" />
                        <AlternatingRowStyle BackColor="#99caff" ForeColor="#000000" Font-Size="13px" />
        
                    </asp:GridView>
                </div>
            </div>
        </div>
    </section>
</asp:Content>

