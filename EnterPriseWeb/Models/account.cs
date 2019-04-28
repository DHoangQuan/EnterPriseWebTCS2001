namespace EnterPriseWeb.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("account")]
    public partial class account
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public account()
        {
            comments = new HashSet<comment>();
            contents = new HashSet<content>();
        }

        [Key]
        [StringLength(50)]
        public string account_id { get; set; }

        public string account_name { get; set; }

        public string password { get; set; }
        [DataType(DataType.Date)]
        [Column(TypeName = "date")]
        public DateTime? Dob { get; set; }

        public int? phone { get; set; }

        public string email { get; set; }

        public string address { get; set; }

        [StringLength(50)]
        public string sex { get; set; }
        [DataType(DataType.Date)]
        [Column(TypeName = "date")]
        public DateTime? account_date { get; set; }

        [StringLength(50)]
        public string role_id { get; set; }

        public string avatar { get; set; }

        [StringLength(50)]
        public string active { get; set; }

        [StringLength(50)]
        public string falcuty_id { get; set; }

        public virtual faculty faculty { get; set; }

        public virtual role role { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<comment> comments { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<content> contents { get; set; }
    }
}
