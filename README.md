# Safe-zone-MTA

### Persion 
# 🔒 اسکریپت سیف زون (منطقه امن) برای MTA 🔒

این اسکریپت یک سیف زون ایجاد می‌کند که در آن بازیکنان نمی‌توانند آسیب ببینند. و این عمل برای بازیکنان تازه وارد بهترین کار ممکنه چون ممکن است 
`بازیکن تازه وارد پس از چندبار کشته شدن از بازی زده شود`

## نصب و استفاده

1. فولدر  `Source` را باز کنید 
2. فایل `safe_zone.lua` را دانلود کنید.
3. فایل را در پوشه `resources` سرور MTA خود قرار دهید.
4. به فایل `meta.xml` در پوشه منبع خود اضافه کنید:

```xml
<resource>
    <script src="safe_zone.lua" type="server"/>
</resource>
```

### English



# 🔒 Simple Safe Zone Script for MTA 🔒

This script creates a safe zone where players cannot take damage. And it's best for new players `because it's possible The new player was kicked out of the game after being killed a few times.`

## Installation and Usage
1. Open Folder `Source`
2. Download the `safe_zone_en.lua` file.
3. Place the file in your MTA server's `resources` folder.
4. Add the following to your `meta.xml` file in the resource folder:

```xml
<resource>
    <script src="safe_zone.lua" type="server"/>
</resource>
```
