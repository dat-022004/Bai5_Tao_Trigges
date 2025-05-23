USE [GymNewday]
GO
INSERT [dbo].[PT] ([ID_PT], [Ho_Ten_PT], [Tuoi], [Gioi_tinh], [Ngay_Sinh], [Sdt], [Gmail], [Chuyen_Mon], [KInh_Nghiem], [Gia_Thue]) VALUES (N'PT01', N'Nguyễn Văn Tuấn', 25, N'nam', CAST(N'2000-01-03' AS Date), N'0921224876', N'tuan@gmail.com', N'Thể Hình', 3, 300000)
INSERT [dbo].[PT] ([ID_PT], [Ho_Ten_PT], [Tuoi], [Gioi_tinh], [Ngay_Sinh], [Sdt], [Gmail], [Chuyen_Mon], [KInh_Nghiem], [Gia_Thue]) VALUES (N'PT02', N'Đỗ Duy Côp', 34, N'nam', CAST(N'1990-08-08' AS Date), N'0979999999', N'cop@gmail.com', N'Giam cân', 1, 400000)
INSERT [dbo].[PT] ([ID_PT], [Ho_Ten_PT], [Tuoi], [Gioi_tinh], [Ngay_Sinh], [Sdt], [Gmail], [Chuyen_Mon], [KInh_Nghiem], [Gia_Thue]) VALUES (N'PT03', N'Lê Mỹ Duyên', 25, N'nữ', CAST(N'1999-09-24' AS Date), N'0979314253', N'duyen@gmail.com', N'yoga', 6, 600000)
GO
INSERT [dbo].[The HV] ([ID_The], [Loai_The], [Gia_The], [Free_Nuoc], [Free_Khan], [Free_Tam]) VALUES (N'T01', N'thường', 200000, 1, 0, 0)
INSERT [dbo].[The HV] ([ID_The], [Loai_The], [Gia_The], [Free_Nuoc], [Free_Khan], [Free_Tam]) VALUES (N'T02', N'cao cấp', 300000, 1, 1, 0)
INSERT [dbo].[The HV] ([ID_The], [Loai_The], [Gia_The], [Free_Nuoc], [Free_Khan], [Free_Tam]) VALUES (N'T03', N'vip', 400000, 1, 1, 1)
GO
INSERT [dbo].[Tai Khoan] ([ID_TK], [Mat_Khau]) VALUES (N'TK01', N'123')
INSERT [dbo].[Tai Khoan] ([ID_TK], [Mat_Khau]) VALUES (N'TK02', N'456')
INSERT [dbo].[Tai Khoan] ([ID_TK], [Mat_Khau]) VALUES (N'TK03', N'789')
INSERT [dbo].[Tai Khoan] ([ID_TK], [Mat_Khau]) VALUES (N'TK04', N'111')
INSERT [dbo].[Tai Khoan] ([ID_TK], [Mat_Khau]) VALUES (N'TK05', N'111')
INSERT [dbo].[Tai Khoan] ([ID_TK], [Mat_Khau]) VALUES (N'TK06', N'33')
GO
INSERT [dbo].[Thong Tin HV] ([ID_HV], [ID_TK], [Ten_HV], [Gioi_Tính], [Tuoi], [Ngay_Sinh], [Dia_Chi], [Sdt], [Gmail]) VALUES (N'HV01', N'TK01', N'Đặng Đình Đat', N'nam', 19, CAST(N'2006-02-06' AS Date), N'Thái nguyên', N'0921224974', N'dat@gmail.com')
INSERT [dbo].[Thong Tin HV] ([ID_HV], [ID_TK], [Ten_HV], [Gioi_Tính], [Tuoi], [Ngay_Sinh], [Dia_Chi], [Sdt], [Gmail]) VALUES (N'HV02', N'TK02', N'Hứa Thi Thanh Hiền', N'nư', 21, CAST(N'2004-03-08' AS Date), N'Thái nguyên', N'0981597907', N'hien@gmail.com')
INSERT [dbo].[Thong Tin HV] ([ID_HV], [ID_TK], [Ten_HV], [Gioi_Tính], [Tuoi], [Ngay_Sinh], [Dia_Chi], [Sdt], [Gmail]) VALUES (N'HV03', N'TK03', N'Nguyên Thị Kim Huệ', N'nữ', 21, CAST(N'2004-08-17' AS Date), N'Thái nguyên', N'0362743217', N'hue@gmail.com')
GO
INSERT [dbo].[Dang ki] ([ID_DK], [ID_HV], [ID_The], [Ngay_DK], [Ngay_Bat_Dau], [Thoi_Han_(Thang)], [ngay_Ket_thuc], [ID_PT], [Thoi_Gian_Tap], [Ghi_Chu]) VALUES (N'DK01', N'HV01', N'T03', CAST(N'2025-03-04' AS Date), CAST(N'2025-03-05' AS Date), 3, CAST(N'2025-06-05' AS Date), N'PT01', CAST(N'16:00:00' AS Time), N'Tôi mu?n 6 múi')
INSERT [dbo].[Dang ki] ([ID_DK], [ID_HV], [ID_The], [Ngay_DK], [Ngay_Bat_Dau], [Thoi_Han_(Thang)], [ngay_Ket_thuc], [ID_PT], [Thoi_Gian_Tap], [Ghi_Chu]) VALUES (N'DK02', N'HV02', N'T03', CAST(N'2025-02-01' AS Date), CAST(N'2025-02-05' AS Date), 12, CAST(N'2026-02-05' AS Date), N'PT03', CAST(N'16:00:00' AS Time), N'tôi mu?n d?p')
INSERT [dbo].[Dang ki] ([ID_DK], [ID_HV], [ID_The], [Ngay_DK], [Ngay_Bat_Dau], [Thoi_Han_(Thang)], [ngay_Ket_thuc], [ID_PT], [Thoi_Gian_Tap], [Ghi_Chu]) VALUES (N'DK03', N'HV03', N'T01', CAST(N'2025-04-01' AS Date), CAST(N'2025-04-01' AS Date), 3, CAST(N'2025-07-01' AS Date), N'PT02', CAST(N'19:00:00' AS Time), N'tôi mu?n gi?n can')
GO
INSERT [dbo].[Nhan Vien] ([ID_Nhan_Vien], [ID_TK], [Ho_Ten_NV], [Gio_tinh], [Ngay_Sinh], [Dia_Chi], [Sdt], [Gmail], [Vi_tri], [Luong_CB]) VALUES (N'NV01', N'TK04', N'Đặng Văn Hùng', N'nam', CAST(N'1967-05-15' AS Date), N'Thái nguyên', N'0393986170', N'hung@gmil.com', N'chuyền thông', 10000000)
INSERT [dbo].[Nhan Vien] ([ID_Nhan_Vien], [ID_TK], [Ho_Ten_NV], [Gio_tinh], [Ngay_Sinh], [Dia_Chi], [Sdt], [Gmail], [Vi_tri], [Luong_CB]) VALUES (N'NV02', N'TK05', N'Nông Thị Mười', N'nữ', CAST(N'1976-07-17' AS Date), N'Thái nguyên', N'0979314253', N'muoi@gmail.com', N'kế toán', 8000000)
GO
INSERT [dbo].[Hoa Don NV] ([ID_Hoa_Don_NV], [ID_Nhan_Vien], [Ngay_Nhan_Luong], [Thuong], [Tong_Tien], [Ghi_Chu]) VALUES (N'HDNV01', N'NV01', CAST(N'2025-04-30' AS Date), 1000000, 11000000, N'xong')
INSERT [dbo].[Hoa Don NV] ([ID_Hoa_Don_NV], [ID_Nhan_Vien], [Ngay_Nhan_Luong], [Thuong], [Tong_Tien], [Ghi_Chu]) VALUES (N'HDVN02', N'NV02', CAST(N'2025-04-30' AS Date), 1500000, 9500000, N'xong')
GO
INSERT [dbo].[Hoa Don HV] ([ID_Hoa_Don], [ID_DK], [Tong_Tien], [Phuong_Thuc_TT], [Ghi_Chu]) VALUES (N'HDHV01', N'DK01', 1300000, N'Chuyên Khoản', N'xong')
INSERT [dbo].[Hoa Don HV] ([ID_Hoa_Don], [ID_DK], [Tong_Tien], [Phuong_Thuc_TT], [Ghi_Chu]) VALUES (N'HDHV02', N'DK02', 7600000, N'Chuyển khoan', N'xong')
GO
