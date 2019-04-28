namespace EnterPriseWeb.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("comment")]
    public partial class comment
    {
        [Key]

        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        [Column(Order = 0)]
        public int comment_id { get; set; }

        [Key]
        [Column(Order = 1)]
        [StringLength(50)]
        public string content_id { get; set; }

        public string comment_content { get; set; }

        [Key]
        [Column(Order = 2)]
        [StringLength(50)]
        public string account_id { get; set; }
        [DataType(DataType.Date)]
        [Column(TypeName = "date")]
        public DateTime? comment_date { get; set; }

        public virtual account account { get; set; }

        public virtual content content { get; set; }
    }
}
