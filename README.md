<div align="center">
  <h1>🌍 PHÂN TÍCH MẶT HÀNG THEO VỊ TRÍ ĐỊ LÝ</h1>
</div>


<h2 align="center">🔍 Ứng dụng Apache Spark và Machine Learning trong phân tích kinh doanh</h2>
<p align="center">Dự án bài tập lớn môn Dữ liệu lớn - Khoa Công nghệ Thông tin, Đại học Đại Nam.</p>

---

## 🏢 Giới thiệu Dự án
Dự án này hướng tới phân tích dữ liệu doanh thu theo mặt hàng và vị trí địa lý bằng cách sử dụng tập dữ liệu `sales_data.csv`. Mục tiêu chính bao gồm:

- **Phân tích doanh thu**: Đánh giá **doanh thu trung bình** theo từng khu vực, cửa hàng và mặt hàng.
- **Dự đoán xu hướng bán hàng**: Áp dụng **Random Forest** để dự đoán doanh số bán ra dựa trên vị trí địa lý.
- **Gợi ý chiến lược kinh doanh**: Đề xuất **khu vực tiềm năng** và mặt hàng có nhu cầu cao.

## ✨ Tính năng nổi bật
✅ **Thống kê dữ liệu**: Biểu đồ doanh thu theo khu vực, danh sách mặt hàng bán chạy.
✅ **Dự đoán doanh thu**: Độ chính xác **trên 80%** bằng mô hình Machine Learning.
✅ **Gợi ý chiến lược**: Định hướng nhập hàng và quảng cáo dựa trên dữ liệu thực tế.

## 🔧 Công nghệ sử dụng
- **Ngôn ngữ**: Python (các thư viện `pyspark`, `pandas`, `matplotlib`, `scikit-learn`).
- **Framework**: Apache Spark (MLlib).
- **Dữ liệu**: `sales_data.csv`.

---

## 📥 Cài đặt

### 🛠️ Yêu cầu hệ thống
- **Python 3.8+**.
- **Apache Spark 3.x**.
- **RAM tối thiểu 4GB**.
- **Dung lượng lưu trữ tối thiểu 2GB**.

### ⚙️ Hướng dẫn cài đặt
#### 1️⃣ Cài đặt Python và Apache Spark:
```bash
sudo apt install python3-pip
wget https://archive.apache.org/dist/spark/spark-3.5.0/spark-3.5.0-bin-hadoop3.tgz
tar -xzf spark-3.5.0-bin-hadoop3.tgz
```
#### 2️⃣ Cài đặt thư viện Python:
```bash
pip install pyspark pandas matplotlib scikit-learn
```
#### 3️⃣ Kết nối Apache Spark:
```python
from pyspark.sql import SparkSession
spark = SparkSession.builder.appName("Sales Analysis").getOrCreate()
```

---

## 🚀 Cách sử dụng
1. **Tải tập dữ liệu `sales_data.csv`** và đặt vào thư mục dự án.
2. **Chạy mã nguồn phân tích**:
```python
python sales_analysis.py
```

---

## 📊 Kết quả Phân tích
- **Doanh thu trung bình theo khu vực**: Khu vực miền Nam có doanh số cao nhất.
- **Mặt hàng bán chạy**:
  - `Điện thoại thông minh`.
  - `Laptop`.
  - `Đồ gia dụng`.
- **Dự đoán doanh thu theo vị trí**:
  - **Hà Nội**: Doanh thu dự kiến tăng **10%** trong quý sau.
  - **TP.HCM**: Nhu cầu cao nhất cho sản phẩm công nghệ.
  - **Chuỗi cửa hàng tiêu biểu**: `Store A`, `Store B`, `Store C`.
- **Biểu đồ trực quan**:
- ## 📂 Cấu trúc thư mục dự án
```
├── sales_data.csv        # Dữ liệu doanh thu
├── sales_analysis.py     # Code phân tích          
├── REPORT.docx           # Báo cáo bài tập lớn
└── README.md             # Hướng dẫn sử dụng
```

---

## 📈 Hiệu suất & Hạn chế
- ✅ **Hiệu suất**: Mô hình Random Forest đạt độ chính xác **trên 80%**.
- ❌ **Hạn chế**:
  - Không xét đến các yếu tố bên ngoài như khuyến mãi, xu hướng thị trường.
  - Chưa tích hợp AI chuyên sâu như mạng nơ-ron nhân tạo.
- 🔄 **Cải tiến trong tương lai**:
  - Ứng dụng mô hình học sâu (Deep Learning) để phân tích xu hướng.
  - Tích hợp giao diện Dashboard để trực quan hóa kết quả phân tích.

---

## 📝 Thông tin Nhóm Thực Hiện
- **Đề tài**: Phân tích mặt hàng theo vị trí địa lý.
- **Giảng viên hướng dẫn**:
  - TS. **Trần Quý Nam**.
  - ThS. **Lê Thị Thùy Trang**.
- **Thành viên nhóm**:
  - 🏅 **Nguyễn Đức Hoàn** 
  - 🏅 **Nguyễn Văn Chuyện** 
  - 🏅 **Trịnh Kế Quang** 
  - 🏅 **Mai Đức Hòa** 
- **Thời gian thực hiện**: **Tháng 2/2025**.
- **Trường**: Đại học Đại Nam, Khoa Công nghệ Thông tin.

---

## 📚 Tài liệu Tham Khảo
- [Hướng dẫn cài đặt](#cài-đặt).
- [Hướng dẫn sử dụng](#sử-dụng).
