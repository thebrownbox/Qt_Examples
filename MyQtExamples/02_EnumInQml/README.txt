## Sử dụng Enum trong QML

Blog post: http://www.hoangvancong.com/2020/08/12/qt-su-dung-enum-trong-qml/

A – Sử dụng Enum (C++) trong QML

Để thực hiện được điều này ta cần làm các thao tác sau:

Bước 1: Enum đó cần phải được khai báo trong 1 QObject

Bước 2: Cần sử dụng macro Q_ENUM cho enum đó

```
class MyOtherClass : public QObject
{
    Q_OBJECT
public:
    enum INSIDE_CAP2{
        INSIDE_CAP2_NONE,
        INSIDE_CAP2_01 = 10,
        INSIDE_CAP2_02
    };
    Q_ENUM(INSIDE_CAP2)
    explicit MyOtherClass(QObject *parent = nullptr);

};
```
Bước 3: Register enum đó cùng với QObject và tên mà mình muốn import trong QML

Lệnh này có thể đặt ở đâu trong chương trình cũng được, nhưng thường họ sẽ đặt trong hàm tạo của QObject chứa enum đó (chú ý, đặt ở đây nếu object không được tạo thì sẽ bị lỗi) hoặc ở một nơi tập trung nào đó (ví dụ hàm main).
```
MyOtherClass::MyOtherClass(QObject *parent) : QObject(parent)
{
    qmlRegisterType<MyOtherClass>("INSIDE_CAP2_IMPORT", 1, 0, "INSIDE_CAP2");
}
```

Ở trên “INSIDE_CAP2_IMPORT” chính là từ khóa mà chúng ta cần import vào trong qml, gần giống như chúng ta tạo ra một type mới vậy.

Bước 4: Thêm phần import vào qml

import INSIDE_CAP2_IMPORT 1.0

Bước 5: Sử dụng Type của enum giống như một object, và sử dụng enum value giống như một property của object đó

```
 Text {
	 id: txtTestClass
	 x: 292
	 y: 337
	 text: qsTr(" : ") + INSIDE_CAP2.INSIDE_CAP2_02
	 font.pixelSize: 12
 }
 ```

 Một số chú ý:

Enum bắt buộc phải để trong 1 QObject
Tên của enum bắt buộc phải bắt đầu bằng 1 chữ in hoa
Chú ý hàm qmlRegisterType phải được gọi trước khi sử dụng