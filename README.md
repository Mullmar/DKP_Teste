# DKP_Teste
A página Login.aspx faz uma requisição POST via ajax utilizando JQuery, para ValidateLogin.aspx que é quem faria a validação do login (validação não foi feita pois foi especificado para não ser).
A página ValidateLogin retorna HTTP 200 em caso de caminho feliz (login realizado com sucesso) e então, a requisitante Login.aspx redireciona o browser via Javascript para a página inicial deste
sistema teste, que é uma página de consulta a fornecedores de medicamentos (Index.aspx), que contém 5 campos para pesquisa (conforme especificado) e um botão "Pesquisar".
#Versão do ASP.Net utilizada: 4.8
#Versão do Visual Studio utilizada: 2019
#JQuery utilizado: "Scripts/jquery-3.4.1.min.js"
#Bootstrap utilizado: https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css
