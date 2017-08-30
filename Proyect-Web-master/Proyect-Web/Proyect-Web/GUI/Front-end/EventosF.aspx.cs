using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DAO;
using System.Collections;


namespace Proyect_Web.GUI.Front_end
{
    public partial class EventosF : System.Web.UI.Page
    {
        EventosDAO objEvento = new EventosDAO();
        protected void Page_Load(object sender, EventArgs e)
        {
            DataList1.DataSource = objEvento.VerEvento();
            DataList1.DataBind();
            if (!IsPostBack)
            {
                MostrarCAtalogo();
            }    
           

        }
        public void MostrarCAtalogo()
        {

            DataList1.DataSource = objEvento.VerEvento();
            DataList1.DataBind();

        }
    }
}