-- Create database Homework_session06_05
create database Homework_session06_05;
-- Create table Course
create table course(
	id serial primary key,
	title varchar(100),
	instructor varchar(50),
	price numeric(10,2),
	duration int
);
select * from course;
-- Thêm ít nhất 6 khóa học vào bảng
insert into course (title, instructor, price, duration) values 
('Lập trình C++ từ cơ bản đến nâng cao', 'Nguyễn Văn A', 500000.00, 40),
('Tiếng Nhật N5 cấp tốc', 'Yamada Hiroshi', 1200000.00, 36),
('Cấu trúc dữ liệu và giải thuật (DSA)', 'Trần Thị B', 800000.00, 50),
('Lập trình Web với Java Spring Boot', 'Lê Hoàng C', 2500000.00, 60),
('Toán rời rạc ứng dụng', 'Phạm Minh D', 450000.00, 24),
('Cơ sở dữ liệu & SQL chuyên sâu', 'Đỗ Quang E', 600000.00, 30);

-- Cập nhật giá tăng 15% cho các khóa học có thời lượng trên 30 giờ
update course
set price = price * 1.15
where duration > 30;

-- Xóa khóa học có tên chứa từ khóa “Demo”
delete from course
where title ilike '%Demo%';

-- Hiển thị các khóa học có tên chứa từ “SQL” (không phân biệt hoa thường)
select * from course
where title ilike '%SQL%';

-- Lấy 3 khóa học có giá nằm giữa 500,000 và 2,000,000, sắp xếp theo giá giảm dần
select * from course
where price between 500000 and 2000000
order by price desc;