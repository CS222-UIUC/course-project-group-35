// <auto-generated />
using System;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Infrastructure;
using Microsoft.EntityFrameworkCore.Storage.ValueConversion;
using XamarinAppTemplate.Persistance;

namespace XamarinAppTemplate.Migrations
{
    [DbContext(typeof(XamarinAppTemplateDbContext))]
    partial class XamarinAppTemplateDbContextModelSnapshot : ModelSnapshot
    {
        protected override void BuildModel(ModelBuilder modelBuilder)
        {
#pragma warning disable 612, 618
            modelBuilder
                .HasAnnotation("ProductVersion", "3.1.0");

            modelBuilder.Entity("XamarinAppTemplate.Models.Country", b =>
                {
                    b.Property<string>("Id")
                        .HasColumnType("TEXT");

                    b.Property<double?>("Area")
                        .HasColumnType("REAL");

                    b.Property<string>("CodeTwo")
                        .HasColumnType("TEXT");

                    b.Property<bool>("IsActive")
                        .HasColumnType("INTEGER");

                    b.Property<float?>("Latitude")
                        .HasColumnType("REAL");

                    b.Property<float?>("Longtitude")
                        .HasColumnType("REAL");

                    b.Property<string>("PhoneCode")
                        .HasColumnType("TEXT");

                    b.Property<int?>("Population")
                        .HasColumnType("INTEGER");

                    b.HasKey("Id");

                    b.ToTable("Countries");
                });

            modelBuilder.Entity("XamarinAppTemplate.Models.Country", b =>
                {
                    b.OwnsOne("XamarinAppTemplate.Models.LocaleStringSqlite", "Capital", b1 =>
                        {
                            b1.Property<string>("CountryId")
                                .HasColumnType("TEXT");

                            b1.Property<string>("Arabic")
                                .HasColumnType("TEXT");

                            b1.Property<string>("English")
                                .HasColumnType("TEXT");

                            b1.HasKey("CountryId");

                            b1.ToTable("Countries");

                            b1.WithOwner()
                                .HasForeignKey("CountryId");
                        });

                    b.OwnsOne("XamarinAppTemplate.Models.LocaleStringSqlite", "Name", b1 =>
                        {
                            b1.Property<string>("CountryId")
                                .HasColumnType("TEXT");

                            b1.Property<string>("Arabic")
                                .HasColumnType("TEXT");

                            b1.Property<string>("English")
                                .HasColumnType("TEXT");

                            b1.HasKey("CountryId");

                            b1.ToTable("Countries");

                            b1.WithOwner()
                                .HasForeignKey("CountryId");
                        });
                });
#pragma warning restore 612, 618
        }
    }
}
