@echo off
mode con lines=30 cols=95
:main
cls
color 0A
echo.-----------------------------------------------------------------------------------------
echo -   **         **       *******          **********   ***************      **********   -
echo -   **         **     ***     ***      ***       ***  ***************    ***       ***  -
echo -   **         **    **         **    ***         **        ***         ***         **  - 
echo -   **         **   **           **   ***                   ***         ***             -
echo -   **         **   **           **    ***                  ***          ***            -
echo -   *************   **           **       ****              ***             ****        -
echo -   *************   **           **          ****           ***                ****     -    
echo -   **         **   **           **             ***         ***                   ***   -     
echo -   **         **   **           **              ***        ***                    ***  -
echo -   **         **    **         **    **         ***        ***          **        ***  -
echo -   **         **     ***     ***     ***      ***          ***          ***      ***   -
echo -   **         **       *******        *********            ***           *********     -  
echo.-----------------------------------------------------------------------------------------
echo.如有360、电脑管家等安全软件提醒，请勾选允许和不再提醒！
echo.
echo.警告：执行该命令你的原有hosts文件将被覆盖！操作前请做好hosts文件备份！
echo.
color 0A
echo.----------------------------------------------------------------------
echo.请选择使用：
echo.
echo.         1.更新穿墙host
echo.
echo.         2.恢复初始host	
echo.----------------------------------------------------------------------

set /p choice=请输入:

echo.
  if %choice%==1 goto host DNS
  if %choice%==2 goto CL
     cls
     goto end
:host DNS
cls
color 0A
copy "%~dp0hosts" "%SystemRoot%\System32\drivers\etc\hosts"
ipconfig /flushdns
echo.----------------------------------------------------------------------
echo.
echo 程序覆盖本地hosts并刷新本地DNS解析缓存成功!
echo.
echo 您现在可以正常的访问国际互联网了！
echo.
@Pause
goto end

:CL
cls
color 02
@echo 127.0.0.1 localhost > %SystemRoot%\System32\drivers\etc\hosts
echo  hosts恢复初始成功!
@Pause
goto end