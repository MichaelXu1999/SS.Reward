<%@ Page Language="C#" Inherits="SS.Payment.Pages.PageIntegrationPayWeixin" %>
  <!DOCTYPE html>
  <html>

  <head>
    <meta charset="utf-8">
    <link href="assets/plugin-utils/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <link href="assets/plugin-utils/css/plugin-utils.css" rel="stylesheet" type="text/css" />
    <link href="assets/plugin-utils/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
    <script src="assets/plugin-utils/js/jquery.min.js"></script>
    <script src="assets/plugin-utils/js/bootstrap.min.js"></script>
    <script src="assets/js/sweetalert.min.js"></script>
  </head>

  <body>
    <form class="m-l-15 m-r-15 m-t-15" runat="server">

      <div class="card-box">
        <div class="m-t-0 header-title">
          微信公众号支付集成
        </div>
        <p class="text-muted font-13 m-b-25">
          在此设置微信公众号支付
        </p>

        <div class="form-group">
          <label class="col-form-label">是否启用微信公众号支付</label>
          <asp:DropDownList id="DdlIsEnabled" AutoPostBack="true" OnSelectedIndexChanged="DdlIsEnabled_SelectedIndexChanged" class="form-control"
            runat="server"></asp:DropDownList>
        </div>

        <asp:PlaceHolder id="PhSettings" runat="server">

          <div class="form-group">
            <label class="col-form-label">公众号 AppID
              <asp:RequiredFieldValidator ControlToValidate="TbAppId" ErrorMessage=" *" ForeColor="red" Display="Dynamic" runat="server"
              />
              <asp:RegularExpressionValidator runat="server" ControlToValidate="TbAppId" ValidationExpression="[^']+" ErrorMessage=" *"
                ForeColor="red" Display="Dynamic" />
            </label>
            <asp:TextBox id="TbAppId" placeholder="微信公众号的 AppID" class="form-control" runat="server"></asp:TextBox>
            <small class="form-text text-muted">
              <a href="https://mp.weixin.qq.com" target="_blank">微信公众平台</a> - 开发 - 基本配置 - 开发者 ID - AppID</small>
          </div>

          <div class="form-group">
            <label class="col-form-label">公众号 AppSecret
              <asp:RequiredFieldValidator ControlToValidate="TbAppSecret" ErrorMessage=" *" ForeColor="red" Display="Dynamic" runat="server"
              />
              <asp:RegularExpressionValidator runat="server" ControlToValidate="TbAppSecret" ValidationExpression="[^']+" ErrorMessage=" *"
                ForeColor="red" Display="Dynamic" />
            </label>
            <asp:TextBox id="TbAppSecret" placeholder="微信公众号的 AppSecret" class="form-control" runat="server"></asp:TextBox>
            <small class="form-text text-muted">
              <a href="https://mp.weixin.qq.com" target="_blank">微信公众平台</a> - 开发 - 基本配置 - 开发者 ID - AppSecret</small>
          </div>

          <div class="form-group">
            <label class="col-form-label">微信支付商户号
              <asp:RequiredFieldValidator ControlToValidate="TbMchId" ErrorMessage=" *" ForeColor="red" Display="Dynamic" runat="server"
              />
              <asp:RegularExpressionValidator runat="server" ControlToValidate="TbMchId" ValidationExpression="[^']+" ErrorMessage=" *"
                ForeColor="red" Display="Dynamic" />
            </label>
            <asp:TextBox id="TbMchId" placeholder="微信支付商户号" class="form-control" runat="server"></asp:TextBox>
            <small class="form-text text-muted">在微信支付申请完成后微信支付商户平台的通知邮件中获取，请确保邮件中的公众号 AppID 与本次填写的公众号 AppID 一致</small>
          </div>

          <div class="form-group">
            <label class="col-form-label">API 密钥
              <asp:RequiredFieldValidator ControlToValidate="TbKey" ErrorMessage=" *" ForeColor="red" Display="Dynamic" runat="server"
              />
              <asp:RegularExpressionValidator runat="server" ControlToValidate="TbKey" ValidationExpression="[^']+" ErrorMessage=" *" ForeColor="red"
                Display="Dynamic" />
            </label>
            <asp:TextBox id="TbKey" placeholder="API 密钥（32位）" class="form-control" runat="server"></asp:TextBox>
            <small class="form-text text-muted">
              <a href="https://pay.weixin.qq.com" target="_blank">微信支付商户平台</a> - 账户中心 - 账户设置 - API 安全 - API 密钥 - 设置密钥</small>
          </div>

        </asp:PlaceHolder>

        <hr />

        <div class="text-center">
          <asp:Button class="btn btn-primary" ID="Submit" Text="确 定" OnClick="Submit_OnClick" runat="server" />
          <asp:Button class="btn m-l-10" Text="返 回"  OnClick="BtnReturn_OnClick" CausesValidation="false" runat="server" />
        </div>
      </div>

    </form>
  </body>

  </html>