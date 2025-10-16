@echo off
REM 批处理脚本：收录当前目录下所有 .htm 文件名到 list.txt

setlocal enabledelayedexpansion

REM 输出文件名
set OUTPUT=list.txt

REM 如果已有旧文件，先删除
if exist %OUTPUT% del %OUTPUT%

REM 遍历当前目录下的所有 .htm 文件
for %%f in (*.htm) do (
    echo %%f >> %OUTPUT%
)

echo 已完成，结果保存在 %OUTPUT%
pause
