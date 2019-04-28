namespace EnterPriseWeb.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;


    public class DataPoint
    {

        public string faculty_id { get; set; }


        public string faculty_name { get; set; }


        public int Numberofcontribution { get; set; }

        public string years { get; set; }

        public string PercentOfIssue { get; set; }
        public int NumberOfAccount { get; set; }
        public int Numberofcontributionpublic { get; set; }
    }

}
