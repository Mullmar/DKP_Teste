<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="DKP_MarceloMullerCarvalho_Teste.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
    <script src="Scripts/jquery-3.4.1.min.js"></script>
    <script>
        $(document).ready(function(){
          $("#botao").click(function(){
              $.ajax({
                  url: '/ValidateLogin',
                  method: 'POST',
                  data: { login: $("#login").val(), senha: $("#pwd").val() },
                  statusCode: {
                      200: function () {
                          window.location.href = "Index";
                      },
                      401: function () {
                          $('#error-message').text('Usuário ou senha incorreto(a)!');
                      },
                      500: function () {
                          $('#error-message').text('HTTP 500: Erro de servidor.');
                      }
                  }
              });
              
          });
          
        });
    </script>
</head>
<body style="margin-left: 100px">
    <h2>Faça seu login!</h2>
    <form class="row g-3" id="form1" runat="server">
        <div class="col-md-10">
            <label for="login" class="form-label">Login</label>
            <input type="text" id="login" class="form-control">
        </div>
        <div class="col-md-10">
            <label for="pwd" class="form-label">Senha</label>
            <input type="password" id="pwd" class="form-control">
        </div>
        <div class="col-md-12">
            <input type="button" id="botao" class="btn btn-primary" value="Entrar"/>
        </div>
    </form>
</body>
</html>
