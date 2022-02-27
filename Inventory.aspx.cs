using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Inventory
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                GetNameList();
            }
        }

        SqlConnection connection = new SqlConnection("data source=DESKTOP-5ARN2QG\\SQLEXPRESS01; Database = CodeInventory; Trusted_Connection=True; MultipleActiveResultSets=true");
        protected void Button1_Click(object sender, EventArgs e)
        {
            
            string Name = TextBox1.Text;
            string Description = TextBox2.Text;
            int Quantity = int.Parse(TextBox3.Text);
            float Price = float.Parse(TextBox4.Text);
            connection.Open();
            SqlCommand command = new SqlCommand("Insert into Units values ('" + Name + "','" + Description + "','" + Quantity + "','" + Price + "')", connection);
            command.ExecuteNonQuery();
            connection.Close();
            ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('successfully saved');", true);
            GetNameList();
        }
        void GetNameList()
        {
            SqlCommand command = new SqlCommand("Select * from Units", connection);
            SqlDataAdapter sd = new SqlDataAdapter(command);
            DataTable dt = new DataTable();
            sd.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            int Id = int.Parse(TextBox5.Text);
            string Name = TextBox1.Text;
            string Description = TextBox2.Text;
            int Quantity = int.Parse(TextBox3.Text);
            float Price = float.Parse(TextBox4.Text);
            connection.Open();
            SqlCommand command = new SqlCommand(" Update  Units  set Name = '" + Name + "', Description = '" + Description + "', Quantity = '" + Quantity + "', Price = '" + Price + "' where Id = '" + Id + "' ", connection);
            command.ExecuteNonQuery();
            connection.Close();
            ScriptManager.RegisterStartupScript(this, GetType(), "script", "alert('successfully Edited');", true);
            GetNameList();
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            int Id = int.Parse(TextBox5.Text);
            connection.Open();
            SqlCommand command = new SqlCommand(" Delete  Units  where Id = '" + Id + "' ", connection);
            command.ExecuteNonQuery();
            connection.Close();
            ScriptManager.RegisterStartupScript(this, GetType(), "script", "alert('successfully Deleted');", true);
            GetNameList();
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            int Id = int.Parse(TextBox5.Text);
            SqlCommand command = new SqlCommand("Select * from Units where Id = '" + Id + "' ", connection);
            SqlDataAdapter sd = new SqlDataAdapter(command);
            DataTable dt = new DataTable();
            sd.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            GetNameList();
        }
    }
}