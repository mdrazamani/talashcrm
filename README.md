# روش دانلود و اجرای پروژه crm پرگاران

### توجه: این crm به موارد زیر نیاز دارد:
- گیت
- وب سرور
- Composer

------------------------------

### مقدمات اجرای پروژه
1. ابتدا یک دیتابیس با نام `talashcrm` ایجاد کنید
2. فایل `database.sql` را داخل mysql خود وارد کنید
<!-- 3. اطلاعات مربوط به پایگاه داده را فایل `application/config/app-config.php` را تغییر دهید -->
3. پروژه را اجرا کنید!

------------------------------

### دانلود و به‌روزرسانی پروژه
در پنجره cmd در مسیر localhost وب سرور خود، دستور `git clone https://github.com/mdrazamani/talashcrm.git` را اجرا کنید

------------------------------

### آپلود تغییرات
دستورات زیر را به ترتیب داخل cmd وارد کنید:
- `git add -A`
- `git commit -m "توضیحات مربوط به تغییرات را در این بخش وارد کنید"`
- `git push`

------------------------------

### نکته
ممکن است حین اجرای دستورات، به خطای `user.name` و `user.email` بربخورید. برای رفع این مشکل، بر طبق دستورات مطرح شده در کنسول عمل کنید. یعنی باید دستورات زیر را در cmd وارد کنید:
- `git config --global user.name=نام شما به انگلیسی`
- `git config --global user.email=email@email.ir`

و مجددا دستورات مورد نظر خود را وارد کنید
