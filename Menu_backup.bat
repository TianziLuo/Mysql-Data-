@echo off
set "$=%temp%\Spring"
>%$% Echo WScript.Echo((new Date()).getTime())
for /f %%a in ('cscript -nologo -e:jscript %$%') do set timestamp=%%a
del /f /q %$%

set filename=%timestamp%
 
set WORK_DIR=%~dp0
cd /d %WORK_DIR%
 
.\MySQL8\bin\mysqldump.exe>mysqldump --opt -P3308 -u root --password=123456 userve menu_addons menu_categories menu_categories_to_items menu_category_to_modifies menu_course menu_groups menu_item_to_happy_hour menu_item_to_modifies menu_item_to_printers menu_item_to_sections menu_item_variants menu_items menu_options menu_price_lists menu_section_items menu_section_modifies menu_sections language_lists modify_categories modify_item_to_printers modify_items>MySQL_Backup\userve_menu%filename%.sql