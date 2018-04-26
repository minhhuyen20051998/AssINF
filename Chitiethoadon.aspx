<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Chitiethoadon.aspx.cs" Inherits="Chitiethoadon" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" Runat="Server">
    <asp:FormView ID="FormView1" runat="server" AllowPaging="True" DataKeyNames="id_Chitiethoadon" DataSourceID="SqlDataSource1">
        <EditItemTemplate>
            id_Chitiethoadon:
            <asp:Label ID="id_ChitiethoadonLabel1" runat="server" Text='<%# Eval("id_Chitiethoadon") %>' />
            <br />
            id_hoadon:
            <asp:TextBox ID="id_hoadonTextBox" runat="server" Text='<%# Bind("id_hoadon") %>' />
            <br />
            id_Sanpham:
            <asp:TextBox ID="id_SanphamTextBox" runat="server" Text='<%# Bind("id_Sanpham") %>' />
            <br />
            Soluong:
            <asp:TextBox ID="SoluongTextBox" runat="server" Text='<%# Bind("Soluong") %>' />
            <br />
            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </EditItemTemplate>
        <InsertItemTemplate>
            id_Chitiethoadon:
            <asp:TextBox ID="id_ChitiethoadonTextBox" runat="server" Text='<%# Bind("id_Chitiethoadon") %>' />
            <br />
            id_hoadon:
            <asp:TextBox ID="id_hoadonTextBox" runat="server" Text='<%# Bind("id_hoadon") %>' />
            <br />
            id_Sanpham:
            <asp:TextBox ID="id_SanphamTextBox" runat="server" Text='<%# Bind("id_Sanpham") %>' />
            <br />
            Soluong:
            <asp:TextBox ID="SoluongTextBox" runat="server" Text='<%# Bind("Soluong") %>' />
            <br />
            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </InsertItemTemplate>
        <ItemTemplate>
            id_Chitiethoadon:
            <asp:Label ID="id_ChitiethoadonLabel" runat="server" Text='<%# Eval("id_Chitiethoadon") %>' />
            <br />
            id_hoadon:
            <asp:Label ID="id_hoadonLabel" runat="server" Text='<%# Bind("id_hoadon") %>' />
            <br />
            id_Sanpham:
            <asp:Label ID="id_SanphamLabel" runat="server" Text='<%# Bind("id_Sanpham") %>' />
            <br />
          
            soluong:
            <asp:Label ID="SoluongLabel" runat="server" Text='<%# Bind("Soluong") %>' />
            <br />
            <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
            &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
            &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
        </ItemTemplate>
    </asp:FormView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=(LocalDB)\v11.0;AttachDbFilename=|DataDirectory|\CSDL_QLBS2.mdf;Integrated Security=True" DeleteCommand="DELETE FROM [Chitiethoadon] WHERE [id_Chitiethoadon] = @id_Chitiethoadon" InsertCommand="INSERT INTO [Chitiethoadon] ([id_Chitiethoadon], [id_hoadon], [id_Sanpham], [Soluong]) VALUES (@id_Chitiethoadon, @id_hoadon, @id_Sanpham, @Soluong)" ProviderName="System.Data.SqlClient" SelectCommand="SELECT [id_Chitiethoadon], [id_hoadon], [id_Sanpham], [Soluong] FROM [Chitiethoadon]" UpdateCommand="UPDATE [Chitiethoadon] SET [id_hoadon] = @id_hoadon, [id_Sanpham] = @id_Sanpham, [Soluong] = @Soluong WHERE [id_Chitiethoadon] = @id_Chitiethoadon">
        <DeleteParameters>
            <asp:Parameter Name="id_Chitiethoadon" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="id_Chitiethoadon" Type="String" />
            <asp:Parameter Name="id_hoadon" Type="String" />
            <asp:Parameter Name="id_Sanpham" Type="String" />
            <asp:Parameter Name="Soluong" Type="Int32" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="id_hoadon" Type="String" />
            <asp:Parameter Name="id_Sanpham" Type="String" />
            <asp:Parameter Name="Soluong" Type="Int32" />
            <asp:Parameter Name="id_Chitiethoadon" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>

