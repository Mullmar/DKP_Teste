<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="DKP_MarceloMullerCarvalho_Teste.Index1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
    <title></title>
</head>
<body style="margin-left: 100px">
    <h2>Consulta de Fornecedores</h2>
    <form id="form1" class="row g-3" runat="server">
        <div class="col-md-10">
            <label for="inputNome" class="form-label">Nome</label>
            <input type="text" id="inputNome" class="form-control">
        </div>
        <div class="col-md-6">
            <label for="exampleDataList" class="form-label">Cidade</label>
            <input class="form-control" list="datalistOptions" id="exampleDataList" placeholder="Digite para pesquisar...">
            <datalist id="datalistOptions">
              <option value="São Paulo">
              <option value="Campinas">
              <option value="Rio de Janeiro">
              <option value="Belo Horizonte">
              <option value="Santos">
            </datalist>
        </div>
        <div class="col-md-4">
            <label for="inputEstado" class="form-label">Estado</label>
            <select id="inputEstado" class="form-select">
              <option selected>Escolha...</option>
              <option>SP</option>
              <option>MG</option>
              <option>RJ</option>
            </select>
        </div>
        <div class="col-md-10">
            <label for="inputMedicamento" class="form-label">Medicamento</label>
            <input type="text" id="inputMedicamento" class="form-control">
            <div class="form-text">
              Apenas medicamentos autorizados pela ANVISA.
            </div>
        </div>
        <div class="col-md-12">
        <input class="form-check-input" type="checkbox" id="gridCheck">
          <label class="form-check-label" for="gridCheck">
            Genérico?
          </label>
        </div>
        <div class="col-md-12">
            <button type="submit" class="btn btn-primary">Pesquisar</button>
        </div>
    </form>
</body>
</html>
