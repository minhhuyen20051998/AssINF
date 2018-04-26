<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Hoadon.aspx.cs" Inherits="Hoadon" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" Runat="Server">
    <asp:FormView ID="FormView1" runat="server" AllowPaging="True" DataKeyNames="id_Hoadon" DataSourceID="SqlDataSource1">
        <EditItemTemplate>
            id_Hoadon:
            <asp:Label ID="id_HoadonLabel1" runat="server" Text='<%# Eval("id_Hoadon") %>' />
            <br />
            id_nd:
            <asp:TextBox ID="id_ndTextBox" runat="server" Text='<%# Bind("id_nd") %>' />
            <br />
            TenND:
            <asp:TextBox ID="TenNDTextBox" runat="server" Text='<%# Bind("TenND") %>' />
            <br />
            id_Sanpham:
            <asp:TextBox ID="id_SanphamTextBox" runat="server" Text='<%# Bind("id_Sanpham") %>' />
            <br />
            Soluong:
            <asp:TextBox ID="SoluongTextBox" runat="server" Text='<%# Bind("Soluong") %>' />
            <br />
            thanhtien:
            <asp:TextBox ID="thanhtienTextBox" runat="server" Text='<%# Bind("thanhtien") %>' />
            <br />
            NgayTaoHD:
            <asp:TextBox ID="NgayTaoHDTextBox" runat="server" Text='<%# Bind("NgayTaoHD") %>' />
            <br />
            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </EditItemTemplate>
        <InsertItemTemplate>
            id_Hoadon:
            <asp:TextBox ID="id_HoadonTextBox" runat="server" Text='<%# Bind("id_Hoadon") %>' />
            <br />
            id_nd:
            <asp:TextBox ID="id_ndTextBox" runat="server" Text='<%# Bind("id_nd") %>' />
            <br />
            TenND:
            <asp:TextBox ID="TenNDTextBox" runat="server" Text='<%# Bind("TenND") %>' />
            <br />
            id_Sanpham:
            <asp:TextBox ID="id_SanphamTextBox" runat="server" Text='<%# Bind("id_Sanpham") %>' />
            <br />
            Soluong:
            <asp:TextBox ID="SoluongTextBox" runat="server" Text='<%# Bind("Soluong") %>' />
            <br />
            thanhtien:
            <asp:TextBox ID="thanhtienTextBox" runat="server" Text='<%# Bind("thanhtien") %>' />
            <br />
            NgayTaoHD:
            <asp:TextBox ID="NgayTaoHDTextBox" runat="server" Text='<%# Bind("NgayTaoHD") %>' />
            <br />
            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </InsertItemTemplate>
        <ItemTemplate>
            id_Hoadon:
            <asp:Label ID="id_HoadonLabel" runat="server" Text='<%# Eval("id_Hoadon") %>' />
            <br />
            id_nd:
            <asp:Label ID="id_ndLabel" runat="server" Text='<%# Bind("id_nd") %>' />
            <br />
            TenND:
            <asp:Label ID="TenNDLabel" runat="server" Text='<%# Bind("TenND") %>' />
            <br />
            id_Sanpham:
            <asp:Label ID="id_SanphamLabel" runat="server" Text='<%# Bind("id_Sanpham") %>' />
            <br />
            Soluong:
            <asp:Label ID="SoluongLabel" runat="server" Text='<%# Bind("Soluong") %>' />
            <br />
            thanhtien:
            <asp:Label ID="thanhtienLabel" runat="server" Text='<%# Bind("thanhtien") %>' />
            <br />
            NgayTaoHD:
            <asp:Label ID="NgayTaoHDLabel" runat="server" Text='<%# Bind("NgayTaoHD") %>' />
            <br />
            <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
            &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
            &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New"  />
        </ItemTemplate>
    </asp:FormView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=(LocalDB)\v11.0;AttachDbFilename=|DataDirectory|\CSDL_QLBS2.mdf;Integrated Security=True" DeleteCommand="DELETE FROM [Hoadon] WHERE [id_Hoadon] = @id_Hoadon" InsertCommand="INSERT INTO [Hoadon] ([id_Hoadon], [id_nd], [TenND], [id_Sanpham], [Soluong], [thanhtien], [NgayTaoHD]) VALUES (@id_Hoadon, @id_nd, @TenND, @id_Sanpham, @Soluong, @thanhtien, @NgayTaoHD)" ProviderName="System.Data.SqlClient" SelectCommand="SELECT [id_Hoadon], [id_nd], [TenND], [id_Sanpham], [Soluong], [thanhtien], [NgayTaoHD] FROM [Hoadon]" UpdateCommand="UPDATE [Hoadon] SET [id_nd] = @id_nd, [TenND] = @TenND, [id_Sanpham] = @id_Sanpham, [Soluong] = @Soluong, [thanhtien] = @thanhtien, [NgayTaoHD] = @NgayTaoHD WHERE [id_Hoadon] = @id_Hoadon">
        <DeleteParameters>
            <asp:Parameter Name="id_Hoadon" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="id_Hoadon" Type="String" />
            <asp:Parameter Name="id_nd" Type="String" />
            <asp:Parameter Name="TenND" Type="String" />
            <asp:Parameter Name="id_Sanpham" Type="String" />
            <asp:Parameter Name="Soluong" Type="Int32" />
            <asp:Parameter Name="thanhtien" Type="Decimal" />
            <asp:Parameter Name="NgayTaoHD" Type="DateTime" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="id_nd" Type="String" />
            <asp:Parameter Name="TenND" Type="String" />
            <asp:Parameter Name="id_Sanpham" Type="String" />
            <asp:Parameter Name="Soluong" Type="Int32" />
            <asp:Parameter Name="thanhtien" Type="Decimal" />
            <asp:Parameter Name="NgayTaoHD" Type="DateTime" />
            <asp:Parameter Name="id_Hoadon" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>

