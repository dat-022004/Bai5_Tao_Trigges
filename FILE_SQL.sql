USE [master]
GO
/****** Object:  Database [GymNewday]    Script Date: 4/23/2025 6:01:13 PM ******/
CREATE DATABASE [GymNewday]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'GymNewday', FILENAME = N'D:\học tập\PHAN TICH THIET KE HE THONG\GymNewday.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'GymNewday_log', FILENAME = N'D:\học tập\PHAN TICH THIET KE HE THONG\GymNewday_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [GymNewday] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [GymNewday].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [GymNewday] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [GymNewday] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [GymNewday] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [GymNewday] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [GymNewday] SET ARITHABORT OFF 
GO
ALTER DATABASE [GymNewday] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [GymNewday] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [GymNewday] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [GymNewday] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [GymNewday] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [GymNewday] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [GymNewday] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [GymNewday] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [GymNewday] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [GymNewday] SET  DISABLE_BROKER 
GO
ALTER DATABASE [GymNewday] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [GymNewday] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [GymNewday] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [GymNewday] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [GymNewday] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [GymNewday] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [GymNewday] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [GymNewday] SET RECOVERY FULL 
GO
ALTER DATABASE [GymNewday] SET  MULTI_USER 
GO
ALTER DATABASE [GymNewday] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [GymNewday] SET DB_CHAINING OFF 
GO
ALTER DATABASE [GymNewday] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [GymNewday] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [GymNewday] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [GymNewday] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'GymNewday', N'ON'
GO
ALTER DATABASE [GymNewday] SET QUERY_STORE = ON
GO
ALTER DATABASE [GymNewday] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [GymNewday]
GO
/****** Object:  Table [dbo].[PT]    Script Date: 4/23/2025 6:01:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PT](
	[ID_PT] [varchar](50) NOT NULL,
	[Ho_Ten_PT] [nvarchar](50) NULL,
	[Tuoi] [int] NULL,
	[Gioi_tinh] [nvarchar](50) NULL,
	[Ngay_Sinh] [date] NULL,
	[Sdt] [char](10) NULL,
	[Gmail] [varchar](50) NULL,
	[Chuyen_Mon] [nvarchar](50) NULL,
	[KInh_Nghiem] [int] NULL,
	[Gia_Thue] [float] NULL,
 CONSTRAINT [PK_PT] PRIMARY KEY CLUSTERED 
(
	[ID_PT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[The HV]    Script Date: 4/23/2025 6:01:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[The HV](
	[ID_The] [varchar](50) NOT NULL,
	[Loai_The] [nvarchar](50) NULL,
	[Gia_The] [float] NULL,
	[Free_Nuoc] [tinyint] NULL,
	[Free_Khan] [tinyint] NULL,
	[Free_Tam] [tinyint] NULL,
 CONSTRAINT [PK_The HV] PRIMARY KEY CLUSTERED 
(
	[ID_The] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Thong Tin HV]    Script Date: 4/23/2025 6:01:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Thong Tin HV](
	[ID_HV] [varchar](50) NOT NULL,
	[ID_TK] [varchar](50) NULL,
	[Ten_HV] [nvarchar](50) NULL,
	[Gioi_Tính] [nvarchar](50) NULL,
	[Tuoi] [int] NULL,
	[Ngay_Sinh] [date] NULL,
	[Dia_Chi] [nvarchar](50) NULL,
	[Sdt] [char](10) NULL,
	[Gmail] [varchar](50) NULL,
 CONSTRAINT [PK_Thong Tin HV] PRIMARY KEY CLUSTERED 
(
	[ID_HV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Dang ki]    Script Date: 4/23/2025 6:01:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Dang ki](
	[ID_DK] [varchar](50) NOT NULL,
	[ID_HV] [varchar](50) NULL,
	[ID_The] [varchar](50) NULL,
	[Ngay_DK] [date] NULL,
	[Ngay_Bat_Dau] [date] NULL,
	[Thoi_Han_(Thang)] [int] NULL,
	[ngay_Ket_thuc] [date] NULL,
	[ID_PT] [varchar](50) NULL,
	[Thoi_Gian_Tap] [time](0) NULL,
	[Ghi_Chu] [text] NOT NULL,
 CONSTRAINT [PK_Dang ki] PRIMARY KEY CLUSTERED 
(
	[ID_DK] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  UserDefinedFunction [dbo].[fn_ThongTinDangKyDayDu]    Script Date: 4/23/2025 6:01:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   FUNCTION [dbo].[fn_ThongTinDangKyDayDu]()
RETURNS TABLE
AS
RETURN
(
    SELECT
        hv.Ten_HV AS HoTen_HocVien,
        dk.Ngay_DK,
        dk.Ngay_Bat_Dau,
        dk.ngay_Ket_thuc,
        dk.[Thoi_Han_(Thang)],
        pt.Ho_Ten_PT,
        t.Loai_the,
        t.Gia_The,
        pt.Gia_Thue,
        -- Tính tổng tiền (giá thẻ + giá thuê PT) * số tháng
        (ISNULL(t.Gia_The, 0) + ISNULL(pt.Gia_Thue, 0)) * ISNULL(dk.[Thoi_Han_(Thang)], 0) AS Tong_Tien
    FROM [dbo].[Dang ki] dk
    JOIN [dbo].[Thong Tin HV] hv ON dk.ID_HV = hv.ID_HV
    JOIN [dbo].[The HV] t ON dk.ID_The = t.ID_The
    LEFT JOIN [dbo].[PT] pt ON dk.ID_PT = pt.ID_PT
);
GO
/****** Object:  Table [dbo].[Nhan Vien]    Script Date: 4/23/2025 6:01:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Nhan Vien](
	[ID_Nhan_Vien] [varchar](50) NOT NULL,
	[ID_TK] [varchar](50) NULL,
	[Ho_Ten_NV] [nvarchar](50) NULL,
	[Gio_tinh] [nvarchar](50) NULL,
	[Ngay_Sinh] [date] NULL,
	[Dia_Chi] [nvarchar](50) NULL,
	[Sdt] [char](10) NULL,
	[Gmail] [varchar](50) NULL,
	[Vi_tri] [nvarchar](max) NULL,
	[Luong_CB] [float] NULL,
 CONSTRAINT [PK_Nhan Vien] PRIMARY KEY CLUSTERED 
(
	[ID_Nhan_Vien] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Hoa Don NV]    Script Date: 4/23/2025 6:01:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Hoa Don NV](
	[ID_Hoa_Don_NV] [varchar](50) NOT NULL,
	[ID_Nhan_Vien] [varchar](50) NULL,
	[Ngay_Nhan_Luong] [date] NULL,
	[Thuong] [float] NULL,
	[Tong_Tien] [float] NULL,
	[Ghi_Chu] [text] NULL,
 CONSTRAINT [PK_Hoa Don NV] PRIMARY KEY CLUSTERED 
(
	[ID_Hoa_Don_NV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  UserDefinedFunction [dbo].[fn_ThongTinNhanVienDayDu]    Script Date: 4/23/2025 6:01:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   FUNCTION [dbo].[fn_ThongTinNhanVienDayDu]()
RETURNS TABLE
AS
RETURN
(
    SELECT
        nv.Ho_Ten_NV AS HoTen_NhanVien,
        nv.Luong_CB,
        hdnv.Thuong,
        nv.Vi_tri,
        nv.SDT,
        nv.gmail,
        hdnv.Ngay_Nhan_Luong,
        -- Tổng lương = lương cơ bản + thưởng
        ISNULL(nv.Luong_CB, 0) + ISNULL(hdnv.Thuong, 0) AS Tong_tien
    FROM [dbo].[Nhan Vien] nv
    LEFT JOIN [dbo].[Hoa Don NV] hdnv ON nv.ID_Nhan_Vien = hdnv.ID_Nhan_Vien
);
GO
/****** Object:  Table [dbo].[Hoa Don HV]    Script Date: 4/23/2025 6:01:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Hoa Don HV](
	[ID_Hoa_Don] [varchar](50) NOT NULL,
	[ID_DK] [varchar](50) NULL,
	[Tong_Tien] [float] NULL,
	[Phuong_Thuc_TT] [nvarchar](50) NULL,
	[Ghi_Chu] [text] NULL,
 CONSTRAINT [PK_Hoa Dơn HV] PRIMARY KEY CLUSTERED 
(
	[ID_Hoa_Don] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tai Khoan]    Script Date: 4/23/2025 6:01:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tai Khoan](
	[ID_TK] [varchar](50) NOT NULL,
	[Mat_Khau] [varchar](50) NULL,
 CONSTRAINT [PK_Tai Khoan] PRIMARY KEY CLUSTERED 
(
	[ID_TK] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Dang ki]  WITH CHECK ADD  CONSTRAINT [FK_Dang ki_Dang ki] FOREIGN KEY([ID_PT])
REFERENCES [dbo].[PT] ([ID_PT])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[Dang ki] CHECK CONSTRAINT [FK_Dang ki_Dang ki]
GO
ALTER TABLE [dbo].[Dang ki]  WITH CHECK ADD  CONSTRAINT [FK_Dang ki_The HV] FOREIGN KEY([ID_The])
REFERENCES [dbo].[The HV] ([ID_The])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[Dang ki] CHECK CONSTRAINT [FK_Dang ki_The HV]
GO
ALTER TABLE [dbo].[Dang ki]  WITH CHECK ADD  CONSTRAINT [FK_Dang ki_Thong Tin HV] FOREIGN KEY([ID_HV])
REFERENCES [dbo].[Thong Tin HV] ([ID_HV])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[Dang ki] CHECK CONSTRAINT [FK_Dang ki_Thong Tin HV]
GO
ALTER TABLE [dbo].[Hoa Don HV]  WITH CHECK ADD  CONSTRAINT [FK_Hoa Dơn HV_Dang ki] FOREIGN KEY([ID_DK])
REFERENCES [dbo].[Dang ki] ([ID_DK])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[Hoa Don HV] CHECK CONSTRAINT [FK_Hoa Dơn HV_Dang ki]
GO
ALTER TABLE [dbo].[Hoa Don NV]  WITH CHECK ADD  CONSTRAINT [FK_Hoa Don NV_Nhan Vien] FOREIGN KEY([ID_Nhan_Vien])
REFERENCES [dbo].[Nhan Vien] ([ID_Nhan_Vien])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[Hoa Don NV] CHECK CONSTRAINT [FK_Hoa Don NV_Nhan Vien]
GO
ALTER TABLE [dbo].[Nhan Vien]  WITH CHECK ADD  CONSTRAINT [FK_Nhan Vien_Tai Khoan] FOREIGN KEY([ID_TK])
REFERENCES [dbo].[Tai Khoan] ([ID_TK])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[Nhan Vien] CHECK CONSTRAINT [FK_Nhan Vien_Tai Khoan]
GO
ALTER TABLE [dbo].[Thong Tin HV]  WITH CHECK ADD  CONSTRAINT [FK_Thong Tin HV_Tai Khoan] FOREIGN KEY([ID_TK])
REFERENCES [dbo].[Tai Khoan] ([ID_TK])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[Thong Tin HV] CHECK CONSTRAINT [FK_Thong Tin HV_Tai Khoan]
GO
USE [master]
GO
ALTER DATABASE [GymNewday] SET  READ_WRITE 
GO
