using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Http;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DKP_MarceloMullerCarvalho_Teste
{
    public partial class Index : System.Web.UI.Page
    {
        public string Login { get; set; }
        public string Senha { get; set; }
        protected void Page_Load(object sender, EventArgs e)
        {
            Login = Request.Form["login"];
            Senha = Request.Form["senha"];
            //Validação de login e senha ok, retorna 200 por padrão

            //Não autorizado - HTTP 401
            //throw new HttpResponseException(HttpStatusCode.Unauthorized);
        }
    }
}