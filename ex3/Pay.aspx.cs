using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace ex3
{
    public partial class Pay : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (Session["price"] != null)
            {
                string price_msg = price.InnerText + Session["price"].ToString() + "$";
                price.InnerText = price_msg;



            }
            else { //// no acces to page in case of no ordering buying procces
                
                string prev_url = Request.UrlReferrer.ToString();
                Response.Redirect(prev_url);

            }


        }
        protected void reserve_onclick(object sender, EventArgs e)
        {
            var customer_first_name = first_name.Value;
            var customer_last_name = last_name.Value;
            var customer_email = email.Value;
            var customer_phone = phone.Value;
            var customer_passport = passport.Value;
            var customer_card_type = card_type.SelectedIndex;
            var customer_card_num = card_num.Value;
   

            if (customer_first_name == "" || customer_last_name == "" || customer_email == "" || customer_phone == "" || customer_passport == "" || customer_card_num == "")
                Response.Write("<script>alert('one or more of the details is  Empty, please make sure to fill each detail.')</script>");
            else {
                string conn_string = @"Data Source=DESKTOP-VRDARK3;Initial Catalog=DaniAndAdiResort;Integrated Security=True";
                SqlConnection con = new SqlConnection(conn_string);
                /////////////////////////////////////////// start of insert procces for customer in the DB

                string insert_customer_str = String.Format("INSERT INTO Customer(passport_or_id_num, first_name, last_name, phone, email) VALUES({0}, '{1}', '{2}', {3}, '{4}')", customer_passport, customer_first_name, customer_last_name, customer_phone, customer_email);
                SqlCommand customer_command = new SqlCommand(insert_customer_str, con);
                customer_command.Connection.Open();
                customer_command.ExecuteNonQuery();
                customer_command.Connection.Close();


                ///////////////////////////////////////////End of insert procces  for customer in the DB





                ///////////////////////////////////////////start the reservetion insert to DB
                string insert_reservetion_str = String.Format("INSERT INTO Reservation(room_number,customer_passport_or_id_num,start_date,end_date, num_of_gustes , deposit_credit_card_num ,price,card_type) VALUES('{0}', '{1}', '{2}', '{3}', '{4}','{5}','{6}','{7}')", Session["room_number"], customer_passport, Session["start_date"], Session["end_date"], Session["num_of_gustes"], customer_card_num, Session["price"], customer_card_type);
                SqlCommand reservetion_command = new SqlCommand(insert_reservetion_str, con);
                reservetion_command.Connection.Open();
                reservetion_command.ExecuteNonQuery();
                reservetion_command.Connection.Close();
                ///////////////////////////////////////////END OF the reservetion insert to DB
                ///

                Response.Redirect("Orders.aspx");



            }



        }


    }
}