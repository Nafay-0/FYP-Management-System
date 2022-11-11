<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="audittrail.aspx.cs" Inherits="Audit_Trail" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <section>

        <div class="container">
            <div class="row mb-5">
                <div class="col-md-8 col-xl-6 text-center mx-auto">
                    <h2 class="font-weight-bold">Audit Trail</h2>
                </div>
            </div>
 
            <div class="row mb-5">
                <div class="col-md-8 col-xl-5 text-center mx-auto">
                    <asp:GridView runat="server" ID="GridView1" AutoGenerateColumns="False" DataKeyNames="TimeAction" GridLines="Both" BorderColor="Black" BorderStyle="Solid" BorderWidth="2px" CellPadding="8">
                        <Columns>
                            <asp:BoundField ItemStyle-Wrap="false" DataField="TimeAction" HeaderText="Time of Activity" InsertVisible="False" ReadOnly="True" SortExpression="Time of Activity" />
                            <asp:BoundField DataField="Role" HeaderText="Role" InsertVisible="False" ReadOnly="True" SortExpression="Role" />
                            <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="ID" />
                            <asp:BoundField ItemStyle-Wrap="false" DataField="ActionTaken" HeaderText="Activity" InsertVisible="False" ReadOnly="True" SortExpression="Activity" />
                            
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

