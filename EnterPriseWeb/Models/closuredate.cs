namespace EnterPriseWeb.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("closuredate")]
    public partial class closuredate
    {
        [Key]
        [DatabaseGenerated(DatabaseGeneratedOption.None)]
        public int Year { get; set; }
        [DataType(DataType.Date)]
        [Column(TypeName = "date")]
        public DateTime? Closure_date { get; set; }
        [DataType(DataType.Date)]
        [Column(TypeName = "date")]
        public DateTime? Final_Closure_date { get; set; }
    }
}
