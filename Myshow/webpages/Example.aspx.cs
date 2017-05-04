using System;
using System.Collections.Generic;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Myshow
{
    public partial class Example : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if (IsPostBack == false)
                {

                    getvisacountries();
                    dropdown();
                }

            }
            catch(Exception ex)
            {
                
            }

        }

        private static void dropdown()
        {
            DropDownList ddl = new DropDownList();
            ListItem list1 = new ListItem("mango", "1");
            ListItem list2 = new ListItem("apple", "2");
            ListItem list3 = new ListItem("orange", "3");
            ListItem list4 = new ListItem("kiwi", "4");
            ListItem list5 = new ListItem("banana", "5");
            ddl.Items.Add(list1);
            ddl.Items.Add(list2);
            ddl.Items.Add(list3);
            ddl.Items.Add(list4);
            ddl.Items.Add(list5);
        }

        private void getvisacountries()
        {
            ListItemCollection visit = new ListItemCollection();
            List<string> visa = countries();
            foreach (string count in visa)
            {
                ListItem li = new ListItem();
                li.Text = count;
                li.Value = count;
                visit.Add(li);
            }
            MyBulletedList.DataSource = visit;
            MyBulletedList.DataBind();
        }

        protected void MyBulletedList_Click(object sender, BulletedListEventArgs e)
        {

        }

        protected void MyImageButton_Click(object sender, ImageClickEventArgs e)
        {
            MyCalendar.Visible = true;
            MyCalendar.SelectedDate = DateTime.Now;
        }

        protected void MyTextBox_TextChanged(object sender, EventArgs e)
        {
              
          
        }

        protected void MyCalendar_SelectionChanged(object sender, EventArgs e)
        {
            MyTextBox.Text = MyCalendar.SelectedDate.ToString("dd/MM/yyyy");
            //MyCalendar.Visible = false; 
        }

        protected void MyCheckBoxList_SelectedIndexChanged(object sender, EventArgs e)
        {
            
            try
            {
                MyCheckBoxList.Visible = true;
                CheckBoxList list = new CheckBoxList();

                list.Items.Add(new ListItem("Male", "1"));
                list.Items.Add(new ListItem("Female", "2"));

                MyCheckBoxList.DataSource = list;
                MyCheckBoxList.DataBind();

            }
            catch (Exception ex)
            {
                throw;
            }
        }

        protected void MyDropDownList_SelectedIndexChanged(object sender, EventArgs e)
        {
            
        }
        protected List<string> countries()
        {

            try
            {
                List<string> VisaCountries = new List<string>();
               VisaCountries.Add("India");
               VisaCountries.Add("USA");
                VisaCountries.Add("Russia");

                return VisaCountries;
            }
            catch (Exception Ex)
            {
                return new List<string>();
                //throw;
                    }
        }

    }
    }
