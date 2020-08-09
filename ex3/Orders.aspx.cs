using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ex3
{
    public partial class Orders : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            OrderDetail.InnerText = String.Format("Room number:{0}, Total guests:{1} , Booking Date:{2} , Check out Date:{3} Price:{4}" , Session["room_number"], Session["num_of_gustes"], Session["start_date"], Session["end_date"], Session["price"]);

        }
        
        //protected void reserve_onclick(object sender, EventArgs e)
        //{
           
        //    {
        //        string conn_string = @"Data Source=DESKTOP-VRDARK3;Initial Catalog=DaniAndAdiResort;Integrated Security=True";
        //        SqlConnection con = new SqlConnection(conn_string);
             
        //        string insert_customer_str = String.Format("INSERT INTO Customer(passport_or_id_num, first_name, last_name, phone, email) VALUES({0}, '{1}', '{2}', {3}, '{4}')", customer_passport, customer_first_name, customer_last_name, customer_phone, customer_email);
        //        SqlCommand customer_command = new SqlCommand(insert_customer_str, con);
        //        customer_command.Connection.Open();
        //        customer_command.ExecuteNonQuery();
        //        customer_command.Connection.Close();


        //        ///////////////////////////////////////////End of insert procces  for customer in the DB
        //        ///////////////////////////////////////////start the reservetion insert to DB
        //        string insert_reservetion_str = String.Format("INSERT INTO Reservation(room_number,customer_passport_or_id_num,start_date,end_date, num_of_gustes , deposit_credit_card_num ,price,card_type) VALUES('{0}', '{1}', '{2}', '{3}', '{4}','{5}','{6}','{7}')", Session["room_number"], customer_passport, Session["start_date"], Session["end_date"], Session["num_of_gustes"], customer_card_num, Session["price"], customer_card_type);
        //        SqlCommand reservetion_command = new SqlCommand(insert_reservetion_str, con);
        //        reservetion_command.Connection.Open();
        //        reservetion_command.ExecuteNonQuery();
        //        reservetion_command.Connection.Close();
        //        ///////////////////////////////////////////END OF the reservetion insert to DB
        //        ///

        //        Response.Redirect("Orders.aspx");



        //    }



        //}


        protected void deletereserve_onclick(object sender, EventArgs e)
        {
            var customer_passport = pass.Value;
            var start = Start_date.Value;
            var end = End_date.Value;


            string conn_string = @"Data Source=DESKTOP-VRDARK3;Initial Catalog=DaniAndAdiResort;Integrated Security=True";
            SqlConnection con = new SqlConnection(conn_string);

            string delete_customer_str = "delete from Reservation where customer_passport_or_id_num='" + customer_passport + "' and start_date='" + start + "' and end_date='" + end + "' ";
            SqlCommand customer_command = new SqlCommand(delete_customer_str, con);
            customer_command.Connection.Open();
            customer_command.ExecuteNonQuery();
            customer_command.Connection.Close();
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "msg", "alert('Your orser was deleted')", true);
        }

        protected void updatereserve_onclick(object sender, EventArgs e)
        {
            var customer_passport = passport.Value;
            var firstname = first_name.Value;
            var lastname = last_name.Value;
            var emaill = email.Value;
            var tel = phone.Value;
            
            string conn_string = @"Data Source=DESKTOP-VRDARK3;Initial Catalog=DaniAndAdiResort;Integrated Security=True";
            SqlConnection con = new SqlConnection(conn_string);

            string delete_customer_str = "UPDATE Customer SET first_name = '"+ firstname + "', last_name = '"+ lastname + "', email = '"+emaill+"', phone = '"+tel+"' WHERE passport_or_id_num = '"+ customer_passport + "'";
            SqlCommand customer_command = new SqlCommand(delete_customer_str, con);
            customer_command.Connection.Open();
            customer_command.ExecuteNonQuery();
            customer_command.Connection.Close();
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "msg", "alert('Your datails has changed')", true);
        }



    }
}