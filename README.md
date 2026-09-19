# HOMAAN AI CONTROL PLANE

مرکز دائمی فرماندهی و ارکستراسیون ایجنت‌های Hooman / BuildWise.

هدف: یک Head Agent تصمیم می‌گیرد، کار را به متخصص مناسب می‌سپارد، خروجی را QA می‌کند و نتیجه/تصمیم/دسترسی‌ها را برای دفعات بعد حفظ می‌کند.

## اصول
1. SPEC → PLAN → DELEGATE → IMPLEMENT → TEST → QA → DEPLOY → VERIFY → RECORD
2. هیچ Agent نباید بدون قرارداد ورودی/خروجی و تست، کد اصلی را تغییر دهد.
3. Login/Bootstrap و بخش‌های پایدار قفل هستند مگر با Change Record صریح.
4. Secretها هرگز داخل Git commit نمی‌شوند؛ فقط نام متغیرها و سطح دسترسی ثبت می‌شود.
5. هر قابلیت یک Owner Agent و یک QA Agent دارد.
6. Head Agent مسئول تصمیم نهایی و جلوگیری از تکرار کار است.

## Domains
- Coding / GitHub / App
- Website / UI / Branding
- CRM / Supabase
- Construction / Participation / Calculator
- Market / Research / Price Engine
- Instagram / Meta / Community
- YouTube / SEO / Analytics
- Video / Reels / Remotion / FFmpeg
- Content / Copy / SEO
- Project Control / QA / Release
- Agent Registry / Memory / Decisions

## Sources
Public open-source projects are referenced in sources/REGISTRY.md. Selected MIT-compatible patterns are adapted into our own skills; upstream attribution and license requirements are preserved.
