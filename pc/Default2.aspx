<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default2.aspx.cs" Inherits="Default2" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" type="text/css" href="css/book.css" />
</head>
<body>
    <form id="form1" runat="server">
    <div>
  <div class="menu" >
<p>作品</p>
</div>
<div class="menu1">
<ul>
<li><a href="">详情</a></li>
<li><a href="">目录</a></li>
<li><a href="">书签</a></li>
</ul>
</div>
<div class="context">
<div class="imgs">
<asp:GridView ID="gvUserList" runat="server" CellPadding="4" ForeColor="#333333" 
            GridLines="None" OnPageIndexChanging="gvUserList_PageIndexChanging" 
            AutoGenerateColumns="False" ShowHeader="False" Width="100%" >
           <AlternatingRowStyle  />
            <Columns> 
             <asp:ImageField DataImageUrlField="id"  ControlStyle-CssClass="imgs" DataImageUrlFormatString="images/{0}.jpg">
            </asp:ImageField>
           </Columns>
    </asp:GridView> 
    </div>  
 <div id="jianjie">  
          <h4><asp:Label ID="Label1" runat="server" Text="Label"></asp:Label></h4>
           <p><asp:Label ID="Label2" runat="server" Text="Label"></asp:Label></p>
           <p><asp:Label ID="Label3" runat="server" Text="Label"></asp:Label></p>
           <p><asp:Label ID="Label4" runat="server" Text="Label"></asp:Label></p>
           <p><asp:Label ID="Label5" runat="server" Text="Label"></asp:Label></p>
           <p><asp:Label ID="Label6" runat="server" Text="Label"></asp:Label></p>
           
</div>
   </div>
 <div id="bt">
 <button type="button" >加入书架</button>
 <button type="button"  >免费试读</button>
  </div>
<div id="ctr">
<h4><img src="images/co.png" />内容简介</h4>
 <p ><asp:Label ID="Label7" runat="server" Text="Label"></asp:Label></p>
</div>
<div id="gd">
<h4><img src="images/star.png" />作品得分</h4>
<div id="grade">
<p>102次</p>
<p>打赏</p>
</div>
<div id="grade" >
<p>45456张</p>
<p>月票</p>
</div>
<div id="grade" >
<p>1390张</p>
<p>推荐票</p>
</div>
</div>
<div id="boyslove">
<h4><img src="images/book.png" />好书连连看</h4>
<div id="by">
        <ul>
         <li>
        <div id="love1">
        <div class="col-md-6 about-left">
        <div class="about_img">
        <img src="images/8.jpg" /><p><a href="">麻衣神算子</a></p>
         <div class="about_opa">
         <p>爷爷教了我一身算命的本事，我不光给活人算命，还要给死人看，更要...</p>
              </div>
            </div> 
            </div>
        </li>
        <li>
         <div id="love1"> 
         <div class="col-md-6 about-left">
        <div class="about_img">
        <img src="images/9.jpg" /><p><a href="">最强狂兵</a></p>
        <div class="about_opa">
         <p>一代兵王含恨离开部队，销声匿迹几年后，逆天强者强势回归都市，再度掀起...</p>
              </div>
            </div> 
        </div> 
        </li>
         <li>
         <div id="love1">
         <div class="col-md-6 about-left">
        <div class="about_img">
        <img src="images/10.jpg" /><p><a href="">万域之王</a></p>
         <div class="about_opa">
         <p>太古时代，有擎天巨灵，身如星辰，翱翔宇宙。有身怀异血的各地大尊，破灭虚空....</p>
              </div>
            </div> 
        </div>
        </li>
        <li> 
        <div id="love1">
         <div class="col-md-6 about-left">
        <div class="about_img">
        <img src="images/11.jpg" /><p><a href="">最强战龙</a></p>
         <div class="about_opa">
         <p>冷逸，战场上威猛无匹的王者。都市回归之后，在这钢铁丛林的战场上，依然是...</p>
              </div>
            </div>  
        </div>
        </li>
       <!-- <li>
         <div id="love1">
        <img src="images/2.jpg" /><p><a href="">万域之王</a></p> 
        </div>
        </li>
        <li> 
        <div id="love1">
        <img src="images/7.jpg" /><p><a href="">最强战龙</a></p> 
        </div>
        </li>-->
        </ul>
        </div>
</div>
<div id="comment">
<h4><img src="images/comment.png" />图书评论</h4>
<ul>
<li><img src="images/pp.png" />一起走<p>好好看，希望作者多出点作品，支持支持</p></li>
<li><img src="images/pp.png" />京城四少<p>书写得很好，作者辛苦了</p></li>
<li><img src="images/pp.png" />你不在我的心<p>结局太快了，感觉还没看够呢，希望作者可以加多点番外</p></li>
<li><img src="images/pp.png" />嫣然<p>好羡慕啊，好希望自己是女主啊，男主好有气质啊</p></li>
<li><img src="images/pp.png" />谢大脚<p>为啥自己的大学一点这种浪漫感都没啊，一切都是假的，自己只能在书中寻找大学了</p></li>
<li>
        <div id="love2">
        <p><a href="">加载更多评论...</a></p> 
        </div>
        </li>
</ul>
</div>
    </div>
    </form>
</body>
</html>
