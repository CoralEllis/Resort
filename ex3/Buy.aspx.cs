using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ex3
{
    public partial class Buy : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Order_my_vication_onclick(object sender, EventArgs e) {
            var customer_Start_date = Start_date.Value;
            var customer_End_date = End_date.Value;
            var customer_room_type = roomtype.Value;
            var customer_num_of_gustes = num_of_guests.SelectedIndex+1;

            string conn_string = @"Data Source=DESKTOP-VRDARK3;Initial Catalog=DaniAndAdiResort;Integrated Security=True";
            SqlConnection con = new SqlConnection(conn_string);
            string unvialble_room_nums_query_str = String.Format("Select number from Room where MAX_NUM_OF_GUSTES>={0}  AND type='{1}' except Select room_number from Reservation where( start_date BETWEEN '{2}' AND '{3}' OR end_date BETWEEN '{4}' AND '{5}')", customer_num_of_gustes, customer_room_type, customer_Start_date, customer_End_date, customer_Start_date, customer_End_date);
            SqlCommand command = new SqlCommand(unvialble_room_nums_query_str, con);
            command.Connection.Open();
            SqlDataReader reader = command.ExecuteReader();
            List<string> avialbale_rooms = new List<string>();

            while (reader.Read()) {
                avialbale_rooms.Add(reader["number"].ToString());

            }
            command.Connection.Close();
            if (avialbale_rooms.Count == 0)
                Response.Write("<script>alert('threre is no avialable room for you')</script>");
            else {
                Session["room_number"] = avialbale_rooms[0];
                Session["start_date"] = customer_Start_date;
                Session["end_date"] = customer_End_date;
                Session["num_of_gustes"] = customer_num_of_gustes;

                ///////////////////////////////////////////start calculate the final price for customer to all period
                string get_room_number_daily_price_str = String.Format("Select daily_price From Room Where(number={0})", Session["room_number"]);
                SqlCommand get_room_number_daily_price_command = new SqlCommand(get_room_number_daily_price_str, con);
                get_room_number_daily_price_command.Connection.Open();
                reader = get_room_number_daily_price_command.ExecuteReader();
                reader.Read();
                var price_per_day = reader["daily_price"];
                get_room_number_daily_price_command.Connection.Close();
                var starting_date = Session["end_date"];


                string[] start_date_str_arr = Session["start_date"].ToString().Split('-');
                DateTime start_date_obj = new DateTime(Convert.ToInt32(start_date_str_arr[0]), Convert.ToInt32(start_date_str_arr[1]), Convert.ToInt32(start_date_str_arr[2]));
                string[] end_date_str_arr = Session["end_date"].ToString().Split('-');
                DateTime end_date_obj = new DateTime(Convert.ToInt32(end_date_str_arr[0]), Convert.ToInt32(end_date_str_arr[1]), Convert.ToInt32(end_date_str_arr[2]));

                int days_in_hotel = end_date_obj.Subtract(start_date_obj).Days;

                int customer_price = days_in_hotel * (int)price_per_day;
                Session["price"] = customer_price;

                ///////////////////////////////////////////end calculate the final price for customer to all period


                Response.Redirect("Pay.aspx");
            }

           
            //if (customer_Start_date != null && customer_End_date != null) { 

            //    Response.Redirect(Page.)

            //}


            //int a = 3;




        }

    }
}