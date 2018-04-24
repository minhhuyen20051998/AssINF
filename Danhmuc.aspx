<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Danhmuc.aspx.cs" Inherits="Danhmuc" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" Runat="Server">
    <asp:FormView ID="FormView1" runat="server" AllowPaging="True" DataKeyNames="id_Danhmuc" DataSourceID="SqlDataSource1">
        <EditItemTemplate>
            id_Danhmuc:
            <asp:Label ID="id_DanhmucLabel1" runat="server" Text='<%# Eval("id_Danhmuc") %>' />
            <br />
            Tendanhmuc:
            <asp:TextBox ID="TendanhmucTextBox" runat="server" Text='<%# Bind("Tendanhmuc") %>' />
            <br />
            id_Danhmuccha:
            <asp:TextBox ID="id_DanhmucchaTextBox" runat="server" Text='<%# Bind("id_Danhmuccha") %>' />
            <br />
            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </EditItemTemplate>
        <InsertItemTemplate>
            id_Danhmuc:
            <asp:TextBox ID="id_DanhmucTextBox" runat="server" Text='<%# Bind("id_Danhmuc") %>' />
            <br />
            Tendanhmuc:
            <asp:TextBox ID="TendanhmucTextBox" runat="server" Text='<%# Bind("Tendanhmuc") %>' />
            <br />
            id_Danhmuccha:
            <asp:TextBox ID="id_DanhmucchaTextBox" runat="server" Text='<%# Bind("id_Danhmuccha") %>' />
            <br />
            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </InsertItemTemplate>
        <ItemTemplate>
            id_Danhmuc:
            <asp:Label ID="id_DanhmucLabel" runat="server" Text='<%# Eval("id_Danhmuc") %>' />
            <br />
            Tendanhmuc:
            <asp:Label ID="TendanhmucLabel" runat="server" Text='<%# Bind("Tendanhmuc") %>' />
            <br />
            id_Danhmuccha:
            <asp:Label ID="id_DanhmucchaLabel" runat="server" Text='<%# Bind("id_Danhmuccha") %>' />
            <br />
            <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
            &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
            &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
        </ItemTemplate>
    </asp:FormView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=(LocalDB)\v11.0;AttachDbFilename=|DataDirectory|\CSDL_QLBS2.mdf;Integrated Security=True;Connect Timeout=30" DeleteCommand="DELETE FROM [Danhmuc] WHERE [id_Danhmuc] = @id_Danhmuc" InsertCommand="INSERT INTO [Danhmuc] ([id_Danhmuc], [Tendanhmuc], [id_Danhmuccha]) VALUES (@id_Danhmuc, @Tendanhmuc, @id_Danhmuccha)" ProviderName="System.Data.SqlClient" SelectCommand="SELECT [id_Danhmuc], [Tendanhmuc], [id_Danhmuccha] FROM [Danhmuc]" UpdateCommand="UPDATE [Danhmuc] SET [Tendanhmuc] = @Tendanhmuc, [id_Danhmuccha] = @id_Danhmuccha WHERE [id_Danhmuc] = @id_Danhmuc">
        <DeleteParameters>
            <asp:Parameter Name="id_Danhmuc" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="id_Danhmuc" Type="Int32" />
            <asp:Parameter Name="Tendanhmuc" Type="String" />
            <asp:Parameter Name="id_Danhmuccha" Type="Int32" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Tendanhmuc" Type="String" />
            <asp:Parameter Name="id_Danhmuccha" Type="Int32" />
            <asp:Parameter Name="id_Danhmuc" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>

