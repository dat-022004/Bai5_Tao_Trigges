# Bai5_Tao_Trigges
Bài tập 5 của SV: Đặng Đình Đạt Msv: K225480106003  
BÀI TẬP VỀ NHÀ 05, Môn Hệ quản trị csdl.

SUBJECT: Trigger on mssql

A. Trình bày lại đầu bài của đồ án PT&TKHT:
1. Mô tả bài toán của đồ án PT&TKHT, 
   đưa ra yêu cầu của bài toán đó
2. Cơ sở dữ liệu của Đồ án PT&TKHT :
   Có database với các bảng dữ liệu cần thiết (3nf),
   Các bảng này đã có PK, FK, CK cần thiết
 
B. Nội dung Bài tập 05:
1. Dựa trên cơ sở là csdl của Đồ án
2. Tìm cách bổ xung thêm 1 (hoặc vài) trường phi chuẩn
   (là trường tính toán đc, nhưng thêm vào thì ok hơn,
    ok hơn theo 1 logic nào đó, vd ok hơn về speed)
   => Nêu rõ logic này!
3. Viết trigger cho 1 bảng nào đó, 
   mà có sử dụng trường phi chuẩn này,
   nhằm đạt được 1 vài mục tiêu nào đó.
   => Nêu rõ các mục tiêu 
4. Nhập dữ liệu có kiểm soát, 
   nhằm để test sự hiệu quả của việc trigger auto run.
5. Kết luận về Trigger đã giúp gì cho đồ án của em.

HƯỚNG DẪN CÁCH LÀM:

Hướng dẫn làm phần A: 
 - Chỉ cần nêu ra y/c của đồ án.
 - Không cần chụp quá trình làm ra db, tables.
 - Chỉ cần đưa ra db gồm các bảng nào,
   mỗi bảng có các trường nào, kiểu dữ liệu nào,
   và pk, fk, ck của các bảng.

Hướng dẫn làm phần B:
1. Sv tạo repo mới trên github, cho phép truy cập public.
2. Tạo file Readme.md, đầu file để thông tin cá nhân sv.
3. Tiếp theo đưa phần A vào file Reame.md .
3. Các thao tác làm trên csdl bằng phần mềm ssms.
4. Chụp ảnh màn hình quá trình làm.
5. Paste ngay vào Readme.md, 
   rồi gõ mô tả ảnh này làm gì, nhập gì, hay đạt được điều gì...
6. Có thể thêm những nhận xét hoặc kết luận
   cho việc bản thân đã hiểu rõ thêm về 1 vấn đề gì đó.
7. Lặp lại các step 4 5 6 cho đến khi hoàn thành yêu cầu của phần B.
8. Xuất các file sql chứa cấu trúc và data, up lên cùng repo.
9. Link đến repo cần mở được trực tiếp nội dung, 
   Paste link này vào file excel online ghim trên nhóm.
   Thầy sẽ dùng tool để check các link này.

DEADLINE: 23H59:59 NGÀY 23/04/2025
# BÀI LÀM
Cơ sở dữ liệu của tôi làm về phan tích thiết kế hệ thống quản lý phòng gym NewDay  
Hệ thống xẽ giúp tối ưu hoá trong khâu quản lý phòng gym giúp tin học hóa các quy trình quản lý hội viên, PT, đăng ký dịch vụ, thanh toán, báo cáo…  
Nâng cao hiệu quả quản lý, giảm sai sót thủ công, tiết kiệm thời gian.  
Hướng đến xây dựng mô hình hiện đại, chuyên nghiệp, có khả năng mở rộng. 
CSDL tôi gồm các bảng và khoá chính như hình dưới.  
![image](https://github.com/user-attachments/assets/76a41c3a-8add-4007-a444-38c977056287)  

# TẠO TRIGGERS CHO CÁC BẢNG  
# Ảnh 1: 
Tạo triggers cho bảng TaiKhoan nhằm mục đích không cho ID_TK trùng nhau.  
![image](https://github.com/user-attachments/assets/5ff2a9c2-e803-45d3-84cd-073163407143)  

# Ảnh 2:  
Nhập thư Tài khoản bị trùng thấy thông báo hiện lên nghĩa là triggers đang được Run.  
![image](https://github.com/user-attachments/assets/9f6f7f42-c9d8-4a26-81f9-7ecbfd55ab0a)  

# Ảnh 3:
Nhập thử Tài khoản khác không bị trùng thì ok không báo lỗi gì cả.  
![image](https://github.com/user-attachments/assets/48bb9e55-dc9a-45d8-a393-15413140bc93)  

# Ảnh 4+5:  
Tạo ra 2 triggers cho bảng Thong Tin HV nhằm không cho sDT và tự động nhập tổi cho hội viên khi đã nhập ngày tháng năm sinh.  
![image](https://github.com/user-attachments/assets/a5720230-fa11-4a95-a7e6-93fbd355e3d9)  

![image](https://github.com/user-attachments/assets/90d3147c-dcaf-40cf-8102-6102bb842aa1)  

# Ảnh 6:  
Nhập thư SDT bị trùng thấy thông báo hiện lên nghĩa là triggers đang được Run. 
![image](https://github.com/user-attachments/assets/aa71545c-507b-4f25-b5a1-a8abdce94897)  

# Ảnh 7:  
Nhập thử SDT khác không bị trùng thì ok không báo lỗi gì cả và bảng đã tự dộng tính toán ra tuổi của từng hội viên khi nhập thông tin cột ngày sinh.  
![image](https://github.com/user-attachments/assets/e278a662-ce81-4d64-887e-3f7d34269fa7)  

# Ảnh 8:  
Tạo triggers cho bảng PT có thể tự dộng tính toán tuổi của từng PT.
![image](https://github.com/user-attachments/assets/32dab54f-1d3a-47e8-8490-368af28367f1)  

# Ảnh 9:  
Sau khi tạo xong triggers bảng PT có thể tự dộng cập nhận cột tuổi cho từng PT nghĩa là triggers đang được Run.  
![image](https://github.com/user-attachments/assets/69dd3822-0597-4530-82ac-cbd0a9d6c704)  

# Ảnh 10+11:  
Tạo 2 triggers cho bảng Nhan Vien nhằm không cho gmail và SDT trùng nhau.  
![image](https://github.com/user-attachments/assets/91bfd719-820d-4f2f-b2de-3df81a846663)  

![image](https://github.com/user-attachments/assets/92190755-692d-45b4-97e2-ed0c80fd568f)  
# Ảnh 12+13:  
Nhâp tử các Gmail và SDT đã có thì đều thấy thông báo hiện lên là triggers đang được Run.  
![image](https://github.com/user-attachments/assets/ec47c233-990f-4c9f-9a9b-90d3a8e7c1e4)  

![image](https://github.com/user-attachments/assets/75705c29-f58d-4775-9d96-b530470278ae)  

# ẢNh 14:  
Nhập thử các Gmail và SDT chưa có thì ok không báo lỗi gì cả.  
![image](https://github.com/user-attachments/assets/8a8b7d05-1399-448c-bfa7-93e30195d867)  

# Ảnh 15:  
Tạo triggers cho bảng Hoá dơn NV nhằm tự dộng tính tổng tiền lương của từng nhân viên.  
![image](https://github.com/user-attachments/assets/e67cd1d1-b07e-4b20-82bd-43d7d97d4737)  

# Ảnh 16:  
Bảng Hoa Don NV đã tự tính tông tiền lương bằng công thức LuongCB(bảng Nhan Vien) + Thương(Bang Hoa Don nv).
![image](https://github.com/user-attachments/assets/9b4aef78-c476-47f5-b57b-e856d00f090a)  

# Ảnh 17:  
Tạo Triggers cho bảng Hoa Don Hv nhằm tự tính tổng tiền khi đăng kí hội viên.  
![image](https://github.com/user-attachments/assets/b0d45b68-d26b-4d6b-9fba-0d80dd0d5ad6)  

# Ảnh 18:  
Bảng Hoa Don HV đã tự tính tông tiền Hoa đơn bằng công thức [gia_ve(bảng The HV) + Gia_thue(bảng PT)] * thoi_han(bảng dang ki).  
![image](https://github.com/user-attachments/assets/84ace311-07ee-4bf9-a59c-12833202ea36)  

# Ảnh 19+20: 
Tạo 2 triggers cho bảng Dang ki nhằm kiểm tra Pt có bị trùng lịch hay không và Tự nhạp ngày kết thúc dụa trên ngày bắt đầu và thời hạn dăng kí.  
![image](https://github.com/user-attachments/assets/9f7651e6-246d-416e-bd47-c233628eb3e5)  

![image](https://github.com/user-attachments/assets/0ce0b5f3-e090-45e0-b24f-1d086d6790e1)  

# Ảnh 21:  
Bảng Đăng kí đã được cập nhật ngày kết thúc và thông báo khi Pt có trùng lịch tập bắt phải chọn lịch khác.  
![image](https://github.com/user-attachments/assets/465852e6-e696-41ac-bfbd-d5d45cf24384)  

![image](https://github.com/user-attachments/assets/f0f7845e-9765-4949-b603-9b2b585fed87)  

#  Kết Luận
Triggers đã giúp hệ thống của em kiểm soát đươc dữ liệu chính sác hơn và tự động hoá 1 số phần cơ bảng như tính tiền cập nhật dư liệu...  
tóm lại triggers dất tuyệt vời.





























