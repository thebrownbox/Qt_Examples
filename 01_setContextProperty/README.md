## Using setContextProperty to refer a C++ object in QML
blog post: http://www.hoangvancong.com/2020/08/12/qt-cac-cach-giao-tiep-giua-c-va-qml-phan-1/
Ta có thể sử dụng object ở trong C++ trong QML như một object của QML.

Ở đây chúng ta sử dụng lớp “QQmlContext” để gán đối tượng trong C++ vào context của qml.

1. Object của chúng ta phải là 1 QObject

2. Method mà chúng ta muốn gọi phải là: public slots, hoặc Q_INVOKABLE method (hoặc là Q_PROPERTY).
```
class MyTestClass : public QObject
{
    Q_OBJECT
public:
    explicit MyTestClass(QObject *parent = nullptr);
//public slots | or Q_INVOKABLE
Q_INVOKABLE
    QString myName();
signals:

};
```

3. Gán đối tượng trên vào context của chương trình (cần xác định đúng context)

```
    MyTestClass theObjectInCpp;

    engine.rootContext()->setContextProperty("theSameObjectInCpp", &theObjectInCpp);
```
4. Sau đó ở qml ta chỉ cần tham chiếu dến alias mà ta đã set ở trên “theSameObjectInCpp”

```
 Text {
	 id: element
	 x: 233
	 y: 216
	 text: theSameObjectInCpp.myName()
	 font.pixelSize: 12
 }
```
ref: https://doc.qt.io/qt-5/qqmlcontext.html#setContextProperty

