namespace EnterPriseWeb.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;
    using System.Web.Mvc;

    [Table("content")]
    public partial class content
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public content()
        {
            comments = new HashSet<comment>();
        }

        [Key]
        [StringLength(50)]
        public string content_id { get; set; }

        public string content_title { get; set; }
        [AllowHtml]
        public string content_post { get; set; }

        [StringLength(50)]
        public string account_id { get; set; }

        [StringLength(50)]
        public string status { get; set; }

        [StringLength(50)]
        public string faculty_id { get; set; }
        [DataType(DataType.Date)]
        [Column(TypeName = "date")]
        public DateTime? date_post { get; set; }
        [DataType(DataType.Date)]
        [Column(TypeName = "date")]
        public DateTime? date_public { get; set; }
        [DataType(DataType.Date)]
        [Column(TypeName = "date")]
        public DateTime? date_end { get; set; }
        [DataType(DataType.Date)]
        [Column(TypeName = "date")]
        public DateTime? date_final_end { get; set; }

        public virtual account account { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<comment> comments { get; set; }

        public virtual faculty faculty { get; set; }
    }
}
