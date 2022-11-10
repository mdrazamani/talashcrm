# روش دانلود و اجرای crm پرگاران

### توجه: این crm نباز به موارد زیر دارد:
- گیت
- وب سرور
- Composer
- آرتیزان

<!-- 1. ابتدا به محلی که میخواهید پروژه را قرار دهید بروید -->
<!-- 2. `Shift` را نگه داشته، راست کلیک کرده و گزینه `Open Powershell window here` یا `open Command Promp window here` را بزنید -->
<!-- 3. در پنجره باز شده، دستور `git clone https://github.com/mdrazamani/talashcrm.git` را اجرا کنید -->
##### دانلود و به‌روزرسانی پروژه
در پنجره cmd در مسیر مورد نظر، دستور `git clone https://github.com/mdrazamani/talashcrm.git` را اجرا کنید

##### آپلود تغییرات
دستورات زیر را به ترتیب داخل cdm وارد کنید:
- `git add -A`
- `git commit -m "توضیحات مربوط به تغییرات را در این بخش وارد کنید"`
- `git push`


### نکته
ممکن است حین اجرای دستورات، به خطای `user.name` و `user.email` بربخورید. برای رفع این مشکل، بر طبق دستورات مطرح شده در کنسول عمل کنید. یعنی باید دستورات زیر را در cmd وارد کنید:
- `git config --global user.name=نام شما به انگلیسی`
- `git config --global user.email=email@email.ir`
و مجددا دستورات مورد نظر خود را وارد کنید