<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Nguoidung.aspx.cs" Inherits="Nguoidung" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" Runat="Server">
    <asp:FormView ID="FormView1" runat="server" AllowPaging="True" DataKeyNames="id_ND" DataSourceID="SqlDataSource1">
        <EditItemTemplate>
            id_ND:
            <asp:Label ID="id_NDLabel1" runat="server" Text='<%# Eval("id_ND") %>' />
            <br />
            TenND:
            
            <asp:TextBox ID="TenNDTextBox" runat="server" Text='<%# Bind("TenND") %>' />
            <br />
            email:
            <asp:TextBox ID="emailTextBox" runat="server" Text='<%# Bind("email") %>' />
            <br />
            Tentaikhoan:
            <asp:TextBox ID="TentaikhoanTextBox" runat="server" Text='<%# Bind("Tentaikhoan") %>' />
            <br />
            Matkhau:
            <asp:TextBox ID="MatkhauTextBox" runat="server" Text='<%# Bind("Matkhau") %>' />
            <br />
            kieutaikhoan:
            <asp:TextBox ID="kieutaikhoanTextBox" runat="server" Text='<%# Bind("kieutaikhoan") %>' />
            <br />
            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </EditItemTemplate>
        <InsertItemTemplate>
            id_ND:
            <asp:TextBox ID="id_NDTextBox" runat="server" Text='<%# Bind("id_ND") %>' />
            <br />
            TenND:
            <asp:TextBox ID="TenNDTextBox" runat="server" Text='<%# Bind("TenND") %>' />
            <br />
            email:
            <asp:TextBox ID="emailTextBox" runat="server" Text='<%# Bind("email") %>' />
            <br />
            Tentaikhoan:
            <asp:TextBox ID="TentaikhoanTextBox" runat="server" Text='<%# Bind("Tentaikhoan") %>' />
            <br />
            Matkhau:
            <asp:TextBox ID="MatkhauTextBox" runat="server" Text='<%# Bind("Matkhau") %>' />
            <br />
            kieutaikhoan:
            <asp:TextBox ID="kieutaikhoanTextBox" runat="server" Text='<%# Bind("kieutaikhoan") %>' />
            <br />
            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </InsertItemTemplate>
        <ItemTemplate>
            id_ND:
            <asp:Label ID="id_NDLabel" runat="server" Text='<%# Eval("id_ND") %>' />
            <br />
           TenND:
            <asp:Label ID="TenNDLabel" runat="server" Text='<%# Bind("TenND") %>' />
            <br />
            email:
            <asp:Label ID="emailLabel" runat="server" Text='<%# Bind("email") %>' />
            <br />
            Tentaikhoan:
            <asp:Label ID="TentaikhoanLabel" runat="server" Text='<%# Bind("Tentaikhoan") %>' />
            <br />
            Matkhau:
            <asp:Label ID="MatkhauLabel" runat="server" Text='<%# Bind("Matkhau") %>' />
            <br />
            kieutaikhoan:
            <asp:Label ID="kieutaikhoanLabel" runat="server" Text='<%# Bind("kieutaikhoan") %>' />
            <br />
            <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
            &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
            &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
        </ItemTemplate>
    </asp:FormView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=(LocalDB)\v11.0;AttachDbFilename=|DataDirectory|\CSDL_QLBS2.mdf;Integrated Security=True" DeleteCommand="DELETE FROM [Nguoidung] WHERE [id_ND] = @id_ND" InsertCommand="INSERT INTO [Nguoidung] ([id_ND], [TenND], [email], [Tentaikhoan], [Matkhau], [kieutaikhoan]) VALUES (@id_ND, @TenND, @email, @Tentaikhoan, @Matkhau, @kieutaikhoan)" ProviderName="System.Data.SqlClient" SelectCommand="SELECT [id_ND], [TenND], [email], [Tentaikhoan], [Matkhau], [kieutaikhoan] FROM [Nguoidung]" UpdateCommand="UPDATE [Nguoidung] SET [TenND] = @TenND, [email] = @email, [Tentaikhoan] = @Tentaikhoan, [Matkhau] = @Matkhau, [kieutaikhoan] = @kieutaikhoan WHERE [id_ND] = @id_ND">
        <DeleteParameters>
            <asp:Parameter Name="id_ND" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="id_ND" Type="String" />
            <asp:Parameter Name="TenND" Type="String" />
            <asp:Parameter Name="email" Type="String" />
            <asp:Parameter Name="Tentaikhoan" Type="String" />
            <asp:Parameter Name="Matkhau" Type="String" />
            <asp:Parameter Name="kieutaikhoan" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="TenND" Type="String" />
            <asp:Parameter Name="email" Type="String" />
            <asp:Parameter Name="Tentaikhoan" Type="String" />
            <asp:Parameter Name="Matkhau" Type="String" />
            <asp:Parameter Name="kieutaikhoan" Type="String" />
            <asp:Parameter Name="id_ND" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>


