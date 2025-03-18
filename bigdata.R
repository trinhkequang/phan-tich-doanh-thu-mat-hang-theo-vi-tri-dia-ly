# Nạp các gói cần thiết
library(data.table)
library(dplyr)
library(ggplot2)

# Đọc dữ liệu từ tệp CSV
data <- fread("C:/Users/TUAN DAI/Downloads/online_retail.csv")

# Kiểm tra tên các cột trong dữ liệu
colnames(data)

# Tạo cột doanh thu
data[, Revenue := Quantity * UnitPrice]

# Kiểm tra dữ liệu
head(data)

# Bước 1: Tính tổng doanh thu theo mặt hàng (StockCode)
revenue_by_item <- data[, .(total_revenue = sum(Revenue, na.rm = TRUE)), by = StockCode]

# Xem kết quả doanh thu theo mặt hàng
print(revenue_by_item)

# Bước 2: Tính tổng doanh thu theo quốc gia (Country)
revenue_by_country <- data[, .(total_revenue = sum(Revenue, na.rm = TRUE)), by = Country]

# Xem kết quả doanh thu theo quốc gia
print(revenue_by_country)

# Bước 3: Vẽ biểu đồ doanh thu theo mặt hàng (StockCode)
ggplot(revenue_by_item, aes(x = reorder(StockCode, total_revenue), y = total_revenue)) +
  geom_bar(stat = "identity", fill = "skyblue") +
  coord_flip() +  # Lật biểu đồ để dễ đọc tên mặt hàng
  labs(title = "Doanh thu theo mặt hàng", x = "Mặt hàng", y = "Tổng doanh thu") +
  theme_minimal() +
  theme(axis.text.x = element_text(angle = 45, hjust = 1))

# Bước 4: Vẽ biểu đồ doanh thu theo quốc gia
ggplot(revenue_by_country, aes(x = reorder(Country, total_revenue), y = total_revenue)) +
  geom_bar(stat = "identity", fill = "lightgreen") +
  coord_flip() +  # Lật biểu đồ để dễ đọc tên quốc gia
  labs(title = "Doanh thu theo quốc gia", x = "Quốc gia", y = "Tổng doanh thu") +
  theme_minimal() +
  theme(axis.text.x = element_text(angle = 45, hjust = 1))

