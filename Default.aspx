<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content runat="server" ID="FeaturedContent" ContentPlaceHolderID="FeaturedContent">
   <section class="featured">
        <div class="content-wrapper">
            <hgroup class="title">
                <h1><%: Title %>.</h1>
               
            </hgroup>
            <p><b>
               Chúng ta đã biết, sách luôn giữ một vị trí quan trọng trong
                 việc học tập và bồi dưỡng kiến thức cho học sinh. Sách tốt thì định
                 hướng tốt, ngược lại, sách có nội dung không phù hợp dễ làm học sinh có sự tiếp nhận sai dẫn đến hành động sai. Hiện nay, trên thị trường, sách nhiều không kể xiết, hàng trăm hàng nghìn loại sách với hình thức đa dạng và nội dung phong phú. Bên cạnh những cuốn sách có giá trị giáo dục, còn xuất hiện những cuốn sách sai lệch về kiến thức cho học sinh...
               
           </b></p>
        </div>
    </section>
</asp:Content>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <div id ="anh1">
     <asp:Image ID="Image1" runat="server" ImageUrl="~/Images/bannerblog.png" />
   </div> <br />
    <br />
    <br />
    <asp:Image ID="Image2" runat="server" ImageUrl="~/Images/9159a7ba710db49.jpg" />

</asp:Content>