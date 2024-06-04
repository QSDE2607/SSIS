<h1> Xây dựng Data Warehouse với SSIS </h1>
<h2> Tổng quan dự án </h2> 

Ở bài Assignment này, bạn sẽ được xây dựng một Data Warehouse từ một tập dữ liệu có sẵn. Data Warehouse sẽ cần đảm bảo các yêu cầu sau:
<ol>
<li> Thiết kế được ERD cho Data Warehouse dựa trên bộ dữ liệu cho trước. </li>
<li> Xác định được tối thiểu 3 business queries (truy vấn nghiệp vụ) để thực hiện phân tích dữ liệu.</li>
<li> Xây dựng được quy trình ETL trong SSIS.</li>
<li> Mô tả được quy trình ETL để đưa dữ liệu vào Data Warehouse.</li>
<li>Đưa được dữ liệu vào Database.</li>
<li> Viết các câu lệnh SQL để xây dựng Database.</li>
<li> Viết các câu lệnh SQL để  lấy dữ liệu cho các business queries đã xác định.</li>
</ol>

<h2> Yêu cầu chi tiết</h2>

Yêu cầu dự án

<h3> 1. Thiết kế ERD: </h3>

Sau khi tải xong dataset, bạn hãy tiến hành phân tích và xây dựng lược đồ cho Data Warehouse. Ở bài tập này, bạn nên chọn xây dựng theo kiến trúc Centralized Data Warehouse nên bạn chỉ cần thiết kế lược đồ cho một Database duy nhất. Sau đó, dựa theo ERD mà bạn đã thiết kế, hãy viết SQL để xây dựng cơ sở dữ liệu.

Bạn có thể sử dụng draw.io để vẽ ERD.

 <h3> 2. Xác định các truy vấn nghiệp vụ: </h3>

Sau khi thiết kế xong ERD, bạn hãy xác định tối thiểu 3 truy vấn nghiệp vụ dùng để phân tích dữ liệu từ Dataset. Một số ví dụ như sau:

Có bao nhiêu vật nuôi được tiêm phòng cũng được triệt sản?
Có bao nhiêu vật nuôi ở một bang?
<h3> 3. Xây dựng ETL cho Dimension Table:</h3>

Như đã giới thiệu, chúng ta nên viết ETL cho các Dimension Table trước rồi mới đến Fact Table. Bạn nên thiết kế từng ETL riêng cho các Dimension Table, mỗi ETL sẽ nằm trong 1 Data Flow riêng.

Với việc đưa dữ liệu vào Dimension Table, bạn hãy thiết kế sao cho chỉ đưa các dữ liệu mới hoặc các dữ liệu thay đổi vào Dimension Table chứ sẽ không đưa các dữ liệu cũ vào nữa.

Bạn có thể tham khảo bài Lab số 6 hoặc các tài liệu ở phần "Tài nguyên" để thực hiện được yêu cầu này.

<h3> 4. Xây dựng ETL cho Fact Table </h3>

Sau khi xây dựng xong ETL cho Dimension Table, bạn hãy xây dựng ETL cho Fact Table. Bạn có thể sử dụng Lookup Transformation để tìm kiếm các dữ liệu liên quan trong các Dimension Table.

Bạn có thể tham khảo bài Lab số 6 hoặc các tài liệu ở phần "Tài nguyên" để thực hiện được yêu cầu này,

<h3> 5. Viết SQL để thực hiện các truy vấn nghiệp vụ: </h3>

Sau khi chạy ETL và đưa dữ liệu vào Data Warehouse thành công. Bạn hãy viết SQL để thực hiện các truy vấn nghiệp vụ.

<h3> 6. (Nâng cao) Sử dụng cơ chế Change Data Capture: </h3>

Khi thực hiện lấy dữ liệu, chúng ta không nên lấy toàn bộ dữ liệu mà chỉ cần lấy dữ liệu đã được chỉnh sửa hoặc thêm mới. Kỹ thuật Change Data Capture sẽ giúp chúng ta xác định được các dữ liệu này.

Change Data Capture chỉ có thể được áp dụng trên các Data Source ở dạng SQL Server, vậy nên bạn cần thiết kế một bảng mới có cấu trúc tương tự với file csv đã cho, sau đó đưa toàn bộ dữ liệu từ file csv sang bảng mới.

Các bạn có thể tham khảo các tài liệu ở phần "Tài nguyên" để biết cách sử dụng cơ chế Data Change Capture.

<h3> 7. (Nâng cao) Thiết kế các ETL chạy song song: </h3>

Chúng ta không nên chạy từng ETL lần lượt, như vậy sẽ rất tốn thời gian và không khai thác được hết tài nguyên của hệ thống. Vậy nên bạn cần thiết kế các ETL sau cho chúng có thể chạy song song với nhau. Tuy nhiên vẫn cần đảm bảo các dữ liệu DIM được load trước, sau đó mới load đến bảng Fact.

Để làm được yêu cầu này, bạn sẽ cần sử dụng Sequence Container, bạn có thể tham khảo tài liệu ở phần “Tài nguyên” để tìm hiểu thêm.
