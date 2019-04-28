namespace EnterPriseWeb.Models
{
    using System;
    using System.Data.Entity;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Linq;

    public partial class ModelContext : DbContext
    {
        public ModelContext()
            : base("name=ModelContext")
        {
        }

        public virtual DbSet<account> accounts { get; set; }
        public virtual DbSet<closuredate> closuredates { get; set; }
        public virtual DbSet<comment> comments { get; set; }
        public virtual DbSet<content> contents { get; set; }
        public virtual DbSet<faculty> faculties { get; set; }
        public virtual DbSet<role> roles { get; set; }

        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            modelBuilder.Entity<account>()
                .Property(e => e.account_id)
                .IsUnicode(false);

            modelBuilder.Entity<account>()
                .Property(e => e.role_id)
                .IsUnicode(false);

            modelBuilder.Entity<account>()
                .Property(e => e.falcuty_id)
                .IsUnicode(false);

            modelBuilder.Entity<account>()
                .HasMany(e => e.comments)
                .WithRequired(e => e.account)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<comment>()
                .Property(e => e.content_id)
                .IsUnicode(false);

            modelBuilder.Entity<comment>()
                .Property(e => e.account_id)
                .IsUnicode(false);

            modelBuilder.Entity<content>()
                .Property(e => e.content_id)
                .IsUnicode(false);

            modelBuilder.Entity<content>()
                .Property(e => e.account_id)
                .IsUnicode(false);

            modelBuilder.Entity<content>()
                .Property(e => e.faculty_id)
                .IsUnicode(false);

            modelBuilder.Entity<content>()
                .HasMany(e => e.comments)
                .WithRequired(e => e.content)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<faculty>()
                .Property(e => e.faculty_id)
                .IsUnicode(false);

            modelBuilder.Entity<faculty>()
                .HasMany(e => e.accounts)
                .WithOptional(e => e.faculty)
                .HasForeignKey(e => e.falcuty_id);

            modelBuilder.Entity<role>()
                .Property(e => e.role_id)
                .IsUnicode(false);
        }
    }
}
