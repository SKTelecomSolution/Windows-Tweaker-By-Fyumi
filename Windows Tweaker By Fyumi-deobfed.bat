

@echo off
title Windows Tweaker - Coded By Fyumi ( Son Dang )
chcp 65001 >nul 2>&1

:: Enabling ANSI Escape Sequences
reg add HKCU\Console /v VirtualTerminalLevel /t REG_DWORD /d 1 /f >nul 2>&1

:: Enable Delayed Expansion
setlocal EnableDelayedExpansion

:: Enabling Restore Points
chcp 437 >nul 2>&1
powershell -NoProfile Enable-ComputerRestore -Drive 'C:\' >nul 2>&1
Reg.exe delete "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\SystemRestore" /v "RPSessionInterval" /f  >nul 2>&1
Reg.exe delete "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\SystemRestore" /v "DisableConfig" /f >nul 2>&1
Reg.exe add "HKLM\Software\Microsoft\Windows NT\CurrentVersion\SystemRestore" /v "SystemRestorePointCreationFrequency" /t REG_DWORD /d 0 /f >nul 2>&1
chcp 65001 >nul 2>&1
goto warning

:restorepoint
cls
chcp 437 > nul
Reg.exe delete "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\WindowsNT\CurrentVersion\SystemRestore" /v "RPSessionInterval" /f >nul 2>&1
Reg.exe delete "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\WindowsNT\CurrentVersion\SystemRestore" /v "DisableConfig" /f >nul 2>&1
Reg.exe  add "HKLM\Software\Microsoft\Windows NT\CurrentVersion\SystemRestore" /v "SystemRestorePointCreationFrequency" /t REG_DWORD /d 0 /f >nul 2>&1
powershell -ExecutionPolicy Unrestricted -NoProfile Enable-ComputerRestore -Drive 'C:\'  'D:\'  'E:\'  'F:\'  'G:\'
powershell -ExecutionPolicy Unrestricted -NoProfile Checkpoint-Computer -Description 'Fyumi Restore Point'
cls
goto ngonngu

:warning
cls
echo.
echo.
echo.     [97mBecause this is a free Windows optimization tool
echo.     [38 5 245m[ Do công cụ tối ưu Windows này miễn phí ]
echo.
echo.     [97mSo if any error occurs on your computer  we will not be responsible
echo.     [38 5 245m[ Nên nếu có xảy ra lỗi gì thì chúng tôi sẽ không chịu trách nhiệm ]
echo.
echo.     [97mBut don't worry  we'll create a restore point for you in case anything goes wrong
echo.     [38 5 245m[ Nhưng đừng lo  chúng tôi sẽ tạo 1 điểm khôi phục cho bạn để tránh trường hợp bị lỗi ]
echo.
echo.     [97mType "[91mskip[97m" to proceed to tweaking [ Nhập "skip" để tiếp tục bắt đầu tối ưu ]
echo.     [97mType "[91mrestore[97m" to create a Restore Point [ Nhập "restore" để tạo điểm khôi phục ]
echo.
echo.     [97mHowever We Advise Creating One MANUALLY Just In Case the Automatic One Fails
echo.     [38 5 245m[ Tuy nhiên chúng tôi khuyên bạn nên tạo 1 cái thủ công  phòng trường hợp cái tự động bị lỗi ]
echo.[97m
set /p fyumi=:
if /i __input__==skip (goto ngonngu)
if /i __input__==restore (goto restorepoint)
cls
echo.
echo.
echo.      [97mYou entered the wrong choice  please enter again
echo.      [97mBạn đã nhập nhầm lựa chọn  hãy nhập lại
echo.
pause >nul
goto warning

:ngonngu
cls
echo.
echo.     [97mWhich langugue do you want to use?
echo.     [97mNgôn ngữ mà bạn muốn sử dụng là gì?
echo.
echo.     [97mType "[91meng[97m" if you want to use english langugue
echo.     [97mNhập "[91mvie[97m" nếu bạn muốn sử dụng ngôn ngữ tiếng việt
echo.
set /p fyumi=:
if /i __input__==eng (goto loadingmenutienganh)
if /i __input__==vie (goto comingsoon)
cls
echo.
echo.
echo.      [97mYou entered the wrong choice  please enter again
echo.      [97mBạn đã nhập nhầm lựa chọn  hãy nhập lại
echo.
pause >nul
goto ngonngu

:comingsoon
cls
echo.
echo.
echo.     [97mHiện tại ngôn ngữ tiếng việt chưa được thêm vào  zậy nên chờ ad làm xong nhé. Mãi iu :3
echo.
echo.
pause >nul
goto loadingmenutienganh

:loadingmenutienganh
cls
echo.
echo.
echo.
echo.
echo.
echo.                                      [38 5 33m[====                 9                    ]
ping localhost -n 3 >nul
cls
echo.
echo.
echo.
echo.
echo.
echo.                                      [38 5 69m[=======              18                   ]
ping localhost -n 3 >nul
cls
echo.
echo.
echo.
echo.
echo.
echo.                                      [38 5 105m[============         30                   ]
ping localhost -n 3 >nul
cls
echo.
echo.
echo.
echo.
echo.
echo.                                      [38 5 177m[=====================58=====              ]
ping localhost -n 3 >nul
cls
echo.
echo.
echo.
echo.
echo.
echo.                                      [38 5 213m[=====================70=============      ]
ping localhost -n 3 >nul
cls
echo.
echo.
echo.
echo.
echo.
echo.                                      [38 5 33m[=====================100===================]
ping localhost -n 3 >nul
goto menutienganh

:menutienganh
cls
echo.[38 5 33mUploaded 1/12/2025
echo.[38 5 69mWelcome adminpc  to Fyu Tool
echo.
echo.
echo.                     [38 5 33m           █     █░ ██▓ ███▄    █ ▓█████▄  ▒█████   █     █░  ██████    ▄▄▄█████▓ █     █░▓█████ ▄▄▄       ██ ▄█▀▓█████  ██▀███
echo.                     [38 5 69m          ▓█░ █ ░█░▓██▒ ██ ▀█   █ ▒██▀ ██▌▒██▒  ██▒▓█░ █ ░█░▒██    ▒    ▓  ██▒ ▓▒▓█░ █ ░█░▓█   ▀▒████▄     ██▄█▒ ▓█   ▀ ▓██ ▒ ██▒
echo.                     [38 5 105m          ▒█░ █ ░█ ▒██▒▓██  ▀█ ██▒░██   █▌▒██░  ██▒▒█░ █ ░█ ░ ▓██▄      ▒ ▓██░ ▒░▒█░ █ ░█ ▒███  ▒██  ▀█▄  ▓███▄░ ▒███   ▓██ ░▄█ ▒
echo.                     [38 5 177m          ░█░ █ ░█ ░██░▓██▒  ▐▌██▒░▓█▄   ▌▒██   ██░░█░ █ ░█   ▒   ██▒   ░ ▓██▓ ░ ░█░ █ ░█ ▒▓█  ▄░██▄▄▄▄██ ▓██ █▄ ▒▓█  ▄ ▒██▀▀█▄
echo.                     [38 5 213m          ░░██▒██▓ ░██░▒██░   ▓██░░▒████▓ ░ ████▓▒░░░██▒██▓ ▒██████▒▒     ▒██▒ ░ ░░██▒██▓ ░▒████▒▓█   ▓██▒▒██▒ █▄░▒████▒░██▓ ▒██▒
echo.                     [38 5 33m          ░ ▓░▒ ▒  ░▓  ░ ▒░   ▒ ▒  ▒▒▓  ▒ ░ ▒░▒░▒░ ░ ▓░▒ ▒  ▒ ▒▓▒ ▒ ░     ▒ ░░   ░ ▓░▒ ▒  ░░ ▒░ ░▒▒   ▓▒█░▒ ▒▒ ▓▒░░ ▒░ ░░ ▒▓ ░▒▓░
echo.                     [38 5 105m            ▒ ░ ░   ▒ ░░ ░░   ░ ▒░ ░ ▒  ▒   ░ ▒ ▒░   ▒ ░ ░  ░ ░▒  ░ ░       ░      ▒ ░ ░   ░ ░  ░ ▒   ▒▒ ░░ ░▒ ▒░ ░ ░  ░  ░▒ ░ ▒░
echo.                     [38 5 177m            ░   ░   ▒ ░   ░   ░ ░  ░ ░  ░ ░ ░ ░ ▒    ░   ░  ░  ░  ░       ░        ░   ░     ░    ░   ▒   ░ ░░ ░    ░     ░░   ░
echo.                     [38 5 69m              ░     ░           ░    ░        ░ ░      ░          ░                  ░       ░  ░     ░  ░░  ░      ░  ░   ░
echo.                     [38 5 105m                                   ░
echo.
echo.                                                                       ╔═══
echo.                                                                       ║   This Utility Was Made By Fyumi   ║
echo.                                                                                                         ═══╝
echo.
echo.
echo.                                                         [38 5 213m[[0m 1 [38 5 213m][0m  [90mWindows Tweaks[90m    [38 5 213m[[0m 2 [38 5 213m][0m  [90mDebloats[90m         [38 5 213m[[0m 3 [38 5 213m][0m  [90mCPU Tweaks[90m
echo.
echo.
echo.                                                         [38 5 213m[[0m 4 [38 5 213m][0m  [90mGPU Tweaks[90m        [38 5 213m[[0m 5 [38 5 213m][0m  [90mNet Tweaks[90m       [38 5 213m[[0m 6 [38 5 213m][0m  [90mRam Tweaks[90m
echo.
echo.
echo.                                                         [38 5 213m[[0m 7 [38 5 213m][0m  [90mPower Tweaks[90m      [38 5 213m[[0m 8 [38 5 213m][0m  [90mDisk Tweaks[90m      [38 5 213m[[0m 9 [38 5 213m][0m  [90mAbout Fyumi[90m
echo.
echo.
echo. [38 5 33m                                                      ╔════════════════════════════════════════════════════════════════════╗
echo. [38 5 69m                                                      ║   Add "F" After Your Choice To See More Details About That Tweak   ║
echo. [38 5 105m                                                      ║                         Ex : 1F  2F  3F                            ║
echo. [38 5 177m                                                      ╚════════════════════════════════════════════════════════════════════╝
echo.
set /p fyumi=:
if /i __input__ == 1 (goto windowstweaks)
if /i __input__ == 2 (goto debloats)
if /i __input__ == 3 (goto cputweaks)
if /i __input__ == 4 (goto gputweaks)
if /i __input__ == 5 (goto nettweaks)
if /i __input__ == 6 (goto ramtweaks)
if /i __input__ == 7 (goto powertweaks)
if /i __input__ == 8 (goto disktweaks)
if /i __input__ == 9 (goto about)
if /i __input__ == 1F (goto windowstweaksF)
if /i __input__ == 2F (goto debloatsF)
if /i __input__ == 3F (goto cputweaksF)
if /i __input__ == 4F (goto gputweaksF)
if /i __input__ == 5F (goto pingtweaksF)
if /i __input__ == 6F (goto ramtweaksF)
if /i __input__ == 7F (goto powertweaksF)
if /i __input__ == 8F (goto disktweaksF)
if /i __input__ == 9F (goto aboutF)
cls
echo.
echo.
echo.      [97mYou entered the wrong choice  please enter again
echo.
echo.
pause >nul
goto menutienganh

:windowstweaksF
chcp 65001 >nul 2>&1
cls
echo.
echo.
echo.
echo. [38 5 33m                                                      ╔════════════════════════════════════════════════════════════════════╗
echo. [38 5 69m                                                      ║       When you select this choice  it will take you to menus       ║
echo. [38 5 105m                                                      ║          where you can customize various Windows features          ║
echo. [38 5 177m                                                      ╚════════════════════════════════════════════════════════════════════╝
echo.
echo.
pause
goto menutienganh

:windowstweaks
chcp 65001 >nul 2>&1
cls
echo.[38 5 33mPage 1/10
echo.
echo.
echo.
echo.                     [38 5 33m           █     █░ ██▓ ███▄    █ ▓█████▄  ▒█████   █     █░  ██████    ▄▄▄█████▓ █     █░▓█████ ▄▄▄       ██ ▄█▀▓█████  ██▀███
echo.                     [38 5 69m          ▓█░ █ ░█░▓██▒ ██ ▀█   █ ▒██▀ ██▌▒██▒  ██▒▓█░ █ ░█░▒██    ▒    ▓  ██▒ ▓▒▓█░ █ ░█░▓█   ▀▒████▄     ██▄█▒ ▓█   ▀ ▓██ ▒ ██▒
echo.                     [38 5 105m          ▒█░ █ ░█ ▒██▒▓██  ▀█ ██▒░██   █▌▒██░  ██▒▒█░ █ ░█ ░ ▓██▄      ▒ ▓██░ ▒░▒█░ █ ░█ ▒███  ▒██  ▀█▄  ▓███▄░ ▒███   ▓██ ░▄█ ▒
echo.                     [38 5 177m          ░█░ █ ░█ ░██░▓██▒  ▐▌██▒░▓█▄   ▌▒██   ██░░█░ █ ░█   ▒   ██▒   ░ ▓██▓ ░ ░█░ █ ░█ ▒▓█  ▄░██▄▄▄▄██ ▓██ █▄ ▒▓█  ▄ ▒██▀▀█▄
echo.                     [38 5 213m          ░░██▒██▓ ░██░▒██░   ▓██░░▒████▓ ░ ████▓▒░░░██▒██▓ ▒██████▒▒     ▒██▒ ░ ░░██▒██▓ ░▒████▒▓█   ▓██▒▒██▒ █▄░▒████▒░██▓ ▒██▒
echo.                     [38 5 33m          ░ ▓░▒ ▒  ░▓  ░ ▒░   ▒ ▒  ▒▒▓  ▒ ░ ▒░▒░▒░ ░ ▓░▒ ▒  ▒ ▒▓▒ ▒ ░     ▒ ░░   ░ ▓░▒ ▒  ░░ ▒░ ░▒▒   ▓▒█░▒ ▒▒ ▓▒░░ ▒░ ░░ ▒▓ ░▒▓░
echo.                     [38 5 105m            ▒ ░ ░   ▒ ░░ ░░   ░ ▒░ ░ ▒  ▒   ░ ▒ ▒░   ▒ ░ ░  ░ ░▒  ░ ░       ░      ▒ ░ ░   ░ ░  ░ ▒   ▒▒ ░░ ░▒ ▒░ ░ ░  ░  ░▒ ░ ▒░
echo.                     [38 5 33m            ░   ░   ▒ ░   ░   ░ ░  ░ ░  ░ ░ ░ ░ ▒    ░   ░  ░  ░  ░       ░        ░   ░     ░    ░   ▒   ░ ░░ ░    ░     ░░   ░
echo.                     [38 5 69m              ░     ░           ░    ░        ░ ░      ░          ░                  ░       ░  ░     ░  ░░  ░      ░  ░   ░
echo.                     [38 5 105m                                   ░
echo.
echo.                                                                      ╔═══
echo.                                                                      ║   This Utility Was Made By Fyumi   ║
echo.                                                                                                        ═══╝
echo.
echo.
echo.                               [38 5 213m[[0m 1 [38 5 213m][0m  [90mDisable Game Bar[90m                [38 5 213m[[0m 2 [38 5 213m][0m  [90mDisable Fax[90m                     [38 5 213m[[0m 3 [38 5 213m][0m  [90mDisable Telemetry And DataCollection [90m
echo.
echo.
echo.                               [38 5 213m[[0m 4 [38 5 213m][0m  [90mDisable Smart Screen[90m            [38 5 213m[[0m 5 [38 5 213m][0m  [90mOptimize Menu File Explorer[90m     [38 5 213m[[0m 6 [38 5 213m][0m  [90mDisable Windows Search[90m
echo.
echo.
echo.                               [38 5 213m[[0m 7 [38 5 213m][0m  [90mDisable Show Notifications[90m      [38 5 213m[[0m 8 [38 5 213m][0m  [90mDisable Windows Update[90m          [38 5 213m[[0m 9 [38 5 213m][0m  [90mNext Page[90m
echo.
echo.
echo.                                                                      [38 5 213m[[0m 10 [38 5 213m][0m  [90mReturn To Main Menu[90m
echo.
echo.
echo. [38 5 33m                                                      ╔════════════════════════════════════════════════════════════════════╗
echo. [38 5 69m                                                      ║   Add "F" After Your Choice To See More Details About That Tweak   ║
echo. [38 5 105m                                                      ║                         Ex : 1F  2F  3F                            ║
echo. [38 5 177m                                                      ╚════════════════════════════════════════════════════════════════════╝
echo.
echo.
echo.
echo.
set /p fyumi=:
if /i __input__ == 1 (goto disablegamebar)
if /i __input__ == 2 (goto disablefax)
if /i __input__ == 3 (goto disabletelemetryanddatacollection)
if /i __input__ == 4 (goto disablesmartscreen)
if /i __input__ == 5 (goto optimizemenufileexplorer)
if /i __input__ == 6 (goto disablewindowssearch)
if /i __input__ == 7 (goto disableshownotifications)
if /i __input__ == 8 (goto disablewindowsupdate)
if /i __input__ == 9 (goto page2)
if /i __input__ == 10 (goto menutienganh)
if /i __input__ == 1F (goto disablegamebarF)
if /i __input__ == 2F (goto disablefaxF)
if /i __input__ == 3F (goto disabletelemetryanddatacollectionF)
if /i __input__ == 4F (goto disablesmartscreenF)
if /i __input__ == 5F (goto optimizemenufileexplorerF)
if /i __input__ == 6F (goto disablewindowssearchF)
if /i __input__ == 7F (goto disableshownotificationsF)
if /i __input__ == 8F (goto disablewindowsupdateF)
cls
echo.
echo.
echo.      [97mYou entered the wrong choice  please enter again
echo.
echo.
pause >nul
goto page1

:page2
chcp 65001 >nul 2>&1
cls
echo.[38 5 33mPage 2/10
echo.
echo.
echo.
echo.                     [38 5 33m           █     █░ ██▓ ███▄    █ ▓█████▄  ▒█████   █     █░  ██████    ▄▄▄█████▓ █     █░▓█████ ▄▄▄       ██ ▄█▀▓█████  ██▀███
echo.                     [38 5 69m          ▓█░ █ ░█░▓██▒ ██ ▀█   █ ▒██▀ ██▌▒██▒  ██▒▓█░ █ ░█░▒██    ▒    ▓  ██▒ ▓▒▓█░ █ ░█░▓█   ▀▒████▄     ██▄█▒ ▓█   ▀ ▓██ ▒ ██▒
echo.                     [38 5 105m          ▒█░ █ ░█ ▒██▒▓██  ▀█ ██▒░██   █▌▒██░  ██▒▒█░ █ ░█ ░ ▓██▄      ▒ ▓██░ ▒░▒█░ █ ░█ ▒███  ▒██  ▀█▄  ▓███▄░ ▒███   ▓██ ░▄█ ▒
echo.                     [38 5 177m          ░█░ █ ░█ ░██░▓██▒  ▐▌██▒░▓█▄   ▌▒██   ██░░█░ █ ░█   ▒   ██▒   ░ ▓██▓ ░ ░█░ █ ░█ ▒▓█  ▄░██▄▄▄▄██ ▓██ █▄ ▒▓█  ▄ ▒██▀▀█▄
echo.                     [38 5 213m          ░░██▒██▓ ░██░▒██░   ▓██░░▒████▓ ░ ████▓▒░░░██▒██▓ ▒██████▒▒     ▒██▒ ░ ░░██▒██▓ ░▒████▒▓█   ▓██▒▒██▒ █▄░▒████▒░██▓ ▒██▒
echo.                     [38 5 33m          ░ ▓░▒ ▒  ░▓  ░ ▒░   ▒ ▒  ▒▒▓  ▒ ░ ▒░▒░▒░ ░ ▓░▒ ▒  ▒ ▒▓▒ ▒ ░     ▒ ░░   ░ ▓░▒ ▒  ░░ ▒░ ░▒▒   ▓▒█░▒ ▒▒ ▓▒░░ ▒░ ░░ ▒▓ ░▒▓░
echo.                     [38 5 105m            ▒ ░ ░   ▒ ░░ ░░   ░ ▒░ ░ ▒  ▒   ░ ▒ ▒░   ▒ ░ ░  ░ ░▒  ░ ░       ░      ▒ ░ ░   ░ ░  ░ ▒   ▒▒ ░░ ░▒ ▒░ ░ ░  ░  ░▒ ░ ▒░
echo.                     [38 5 33m            ░   ░   ▒ ░   ░   ░ ░  ░ ░  ░ ░ ░ ░ ▒    ░   ░  ░  ░  ░       ░        ░   ░     ░    ░   ▒   ░ ░░ ░    ░     ░░   ░
echo.                     [38 5 69m              ░     ░           ░    ░        ░ ░      ░          ░                  ░       ░  ░     ░  ░░  ░      ░  ░   ░
echo.                     [38 5 105m                                   ░
echo.
echo.                                                                      ╔═══
echo.                                                                      ║   This Utility Was Made By Fyumi   ║
echo.                                                                                                        ═══╝
echo.
echo.
echo.                               [38 5 213m[[0m 1 [38 5 213m][0m  [90mDisable SettingSync[90m             [38 5 213m[[0m 2 [38 5 213m][0m  [90mDisable Bluetooth[90m                     [38 5 213m[[0m 3 [38 5 213m][0m  [90mDisable Windows Defender[90m
echo.
echo.
echo.                               [38 5 213m[[0m 4 [38 5 213m][0m  [90mDisable Biometrics[90m              [38 5 213m[[0m 5 [38 5 213m][0m  [90mDisable Windows Firewall[90m              [38 5 213m[[0m 6 [38 5 213m][0m  [90mDisable Hyper V[90m
echo.
echo.
echo.                               [38 5 213m[[0m 7 [38 5 213m][0m  [90mDisable FSO Globally[90m            [38 5 213m[[0m 8 [38 5 213m][0m  [90mDiable Windows Error Reporting[90m        [38 5 213m[[0m 9 [38 5 213m][0m  [90mNext Page[90m
echo.
echo.
echo.                               [38 5 213m[[0m 10 [38 5 213m][0m  [90mReturn To Previous Page[90m        [38 5 213m[[0m 11 [38 5 213m][0m  [90mReturn To Main Menu[90m
echo.
echo.
echo. [38 5 33m                                                      ╔════════════════════════════════════════════════════════════════════╗
echo. [38 5 69m                                                      ║   Add "F" After Your Choice To See More Details About That Tweak   ║
echo. [38 5 105m                                                      ║                         Ex : 1F  2F  3F                            ║
echo. [38 5 177m                                                      ╚════════════════════════════════════════════════════════════════════╝
echo.
echo.
echo.
echo.
set /p fyumi=:
if /i __input__ == 1 (goto disablesettingsync)
if /i __input__ == 2 (goto disablebluetooth)
if /i __input__ == 3 (goto disablewindowsdefender)
if /i __input__ == 4 (goto disablebiometrics)
if /i __input__ == 5 (goto disablewindowsfirewall)
if /i __input__ == 6 (goto disablehyperv)
if /i __input__ == 7 (goto disablefsoglobally)
if /i __input__ == 8 (goto diablewindowserrorreporting)
if /i __input__ == 9 (goto page3)
if /i __input__ == 10 (goto windowstweaks)
if /i __input__ == 11 (goto menutienganh)
if /i __input__ == 1F (goto disablesettingsyncF)
if /i __input__ == 2F (goto disablebluetoothF)
if /i __input__ == 3F (goto disablewindowsdefenderF)
if /i __input__ == 4F (goto disablebiometricsF)
if /i __input__ == 5F (goto disablewindowsfirewallF)
if /i __input__ == 6F (goto disablehypervF)
if /i __input__ == 7F (goto disablefsogloballyF)
if /i __input__ == 8F (goto diablewindowserrorreportingF)
cls
echo.
echo.
echo.      [97mYou entered the wrong choice  please enter again
echo.
echo.
pause >nul
goto page2

:page3
chcp 65001 >nul 2>&1
cls
echo.[38 5 33mPage 3/10
echo.
echo.
echo.
echo.                     [38 5 33m           █     █░ ██▓ ███▄    █ ▓█████▄  ▒█████   █     █░  ██████    ▄▄▄█████▓ █     █░▓█████ ▄▄▄       ██ ▄█▀▓█████  ██▀███
echo.                     [38 5 69m          ▓█░ █ ░█░▓██▒ ██ ▀█   █ ▒██▀ ██▌▒██▒  ██▒▓█░ █ ░█░▒██    ▒    ▓  ██▒ ▓▒▓█░ █ ░█░▓█   ▀▒████▄     ██▄█▒ ▓█   ▀ ▓██ ▒ ██▒
echo.                     [38 5 105m          ▒█░ █ ░█ ▒██▒▓██  ▀█ ██▒░██   █▌▒██░  ██▒▒█░ █ ░█ ░ ▓██▄      ▒ ▓██░ ▒░▒█░ █ ░█ ▒███  ▒██  ▀█▄  ▓███▄░ ▒███   ▓██ ░▄█ ▒
echo.                     [38 5 177m          ░█░ █ ░█ ░██░▓██▒  ▐▌██▒░▓█▄   ▌▒██   ██░░█░ █ ░█   ▒   ██▒   ░ ▓██▓ ░ ░█░ █ ░█ ▒▓█  ▄░██▄▄▄▄██ ▓██ █▄ ▒▓█  ▄ ▒██▀▀█▄
echo.                     [38 5 213m          ░░██▒██▓ ░██░▒██░   ▓██░░▒████▓ ░ ████▓▒░░░██▒██▓ ▒██████▒▒     ▒██▒ ░ ░░██▒██▓ ░▒████▒▓█   ▓██▒▒██▒ █▄░▒████▒░██▓ ▒██▒
echo.                     [38 5 33m          ░ ▓░▒ ▒  ░▓  ░ ▒░   ▒ ▒  ▒▒▓  ▒ ░ ▒░▒░▒░ ░ ▓░▒ ▒  ▒ ▒▓▒ ▒ ░     ▒ ░░   ░ ▓░▒ ▒  ░░ ▒░ ░▒▒   ▓▒█░▒ ▒▒ ▓▒░░ ▒░ ░░ ▒▓ ░▒▓░
echo.                     [38 5 105m            ▒ ░ ░   ▒ ░░ ░░   ░ ▒░ ░ ▒  ▒   ░ ▒ ▒░   ▒ ░ ░  ░ ░▒  ░ ░       ░      ▒ ░ ░   ░ ░  ░ ▒   ▒▒ ░░ ░▒ ▒░ ░ ░  ░  ░▒ ░ ▒░
echo.                     [38 5 33m            ░   ░   ▒ ░   ░   ░ ░  ░ ░  ░ ░ ░ ░ ▒    ░   ░  ░  ░  ░       ░        ░   ░     ░    ░   ▒   ░ ░░ ░    ░     ░░   ░
echo.                     [38 5 69m              ░     ░           ░    ░        ░ ░      ░          ░                  ░       ░  ░     ░  ░░  ░      ░  ░   ░
echo.                     [38 5 105m                                   ░
echo.
echo.                                                                      ╔═══
echo.                                                                      ║   This Utility Was Made By Fyumi   ║
echo.                                                                                                        ═══╝
echo.
echo.
echo.                    [38 5 213m[[0m 1 [38 5 213m][0m  [90mDisable Program Compatibility Assistant[90m    [38 5 213m[[0m 2 [38 5 213m][0m  [90mDisable Smart Card Support[90m                                 [38 5 213m[[0m 3 [38 5 213m][0m  [90mDisable Task Scheduler[90m
echo.
echo.
echo.                    [38 5 213m[[0m 4 [38 5 213m][0m  [90mDisable Watson Malware Reports[90m             [38 5 213m[[0m 5 [38 5 213m][0m  [90mDisable Windows Customer Experience Improvement Program[90m    [38 5 213m[[0m 6 [38 5 213m][0m  [90mDisable Diagnostic Data[90m
echo.
echo.
echo.                    [38 5 213m[[0m 7 [38 5 213m][0m  [90mDisable Remote Desktop[90m                     [38 5 213m[[0m 8 [38 5 213m][0m  [90mDiable Setting Override Reporting To Microsoft MAPS[90m        [38 5 213m[[0m 9 [38 5 213m][0m  [90mNext Page[90m
echo.
echo.
echo.                    [38 5 213m[[0m 10 [38 5 213m][0m  [90mReturn To Previous Page[90m                   [38 5 213m[[0m 11 [38 5 213m][0m  [90mReturn To Main Menu[90m
echo.
echo.
echo. [38 5 33m                                                      ╔════════════════════════════════════════════════════════════════════╗
echo. [38 5 69m                                                      ║   Add "F" After Your Choice To See More Details About That Tweak   ║
echo. [38 5 105m                                                      ║                         Ex : 1F  2F  3F                            ║
echo. [38 5 177m                                                      ╚════════════════════════════════════════════════════════════════════╝
echo.
echo.
echo.
echo.
set /p fyumi=:
if /i __input__ == 1 (goto disableprogramcompatibilityassistant)
if /i __input__ == 2 (goto disablesmartcardsupport)
if /i __input__ == 3 (goto disabletaskscheduler)
if /i __input__ == 4 (goto disablewatsonmalwarereports)
if /i __input__ == 5 (goto disablewindowscustomerexperienceimprovementprogram)
if /i __input__ == 6 (goto disablediagnosticdata)
if /i __input__ == 7 (goto disableremotedesktop)
if /i __input__ == 8 (goto diablesettingoverridereportingtomicrosoftMAPS)
if /i __input__ == 9 (goto page4)
if /i __input__ == 10 (goto page2)
if /i __input__ == 11 (goto menutienganh)
if /i __input__ == 1F (goto sorry)
if /i __input__ == 2F (goto sorry)
if /i __input__ == 3F (goto sorry)
if /i __input__ == 4F (goto sorry)
if /i __input__ == 5F (goto sorry)
if /i __input__ == 6F (goto sorry)
if /i __input__ == 7F (goto sorry)
if /i __input__ == 8F (goto sorry)
cls
echo.
echo.
echo.      [97mYou entered the wrong choice  please enter again
echo.
echo.
pause >nul
goto page3

:page4
chcp 65001 >nul 2>&1
cls
echo.[38 5 33mPage 4/10
echo.
echo.
echo.
echo.                     [38 5 33m           █     █░ ██▓ ███▄    █ ▓█████▄  ▒█████   █     █░  ██████    ▄▄▄█████▓ █     █░▓█████ ▄▄▄       ██ ▄█▀▓█████  ██▀███
echo.                     [38 5 69m          ▓█░ █ ░█░▓██▒ ██ ▀█   █ ▒██▀ ██▌▒██▒  ██▒▓█░ █ ░█░▒██    ▒    ▓  ██▒ ▓▒▓█░ █ ░█░▓█   ▀▒████▄     ██▄█▒ ▓█   ▀ ▓██ ▒ ██▒
echo.                     [38 5 105m          ▒█░ █ ░█ ▒██▒▓██  ▀█ ██▒░██   █▌▒██░  ██▒▒█░ █ ░█ ░ ▓██▄      ▒ ▓██░ ▒░▒█░ █ ░█ ▒███  ▒██  ▀█▄  ▓███▄░ ▒███   ▓██ ░▄█ ▒
echo.                     [38 5 177m          ░█░ █ ░█ ░██░▓██▒  ▐▌██▒░▓█▄   ▌▒██   ██░░█░ █ ░█   ▒   ██▒   ░ ▓██▓ ░ ░█░ █ ░█ ▒▓█  ▄░██▄▄▄▄██ ▓██ █▄ ▒▓█  ▄ ▒██▀▀█▄
echo.                     [38 5 213m          ░░██▒██▓ ░██░▒██░   ▓██░░▒████▓ ░ ████▓▒░░░██▒██▓ ▒██████▒▒     ▒██▒ ░ ░░██▒██▓ ░▒████▒▓█   ▓██▒▒██▒ █▄░▒████▒░██▓ ▒██▒
echo.                     [38 5 33m          ░ ▓░▒ ▒  ░▓  ░ ▒░   ▒ ▒  ▒▒▓  ▒ ░ ▒░▒░▒░ ░ ▓░▒ ▒  ▒ ▒▓▒ ▒ ░     ▒ ░░   ░ ▓░▒ ▒  ░░ ▒░ ░▒▒   ▓▒█░▒ ▒▒ ▓▒░░ ▒░ ░░ ▒▓ ░▒▓░
echo.                     [38 5 105m            ▒ ░ ░   ▒ ░░ ░░   ░ ▒░ ░ ▒  ▒   ░ ▒ ▒░   ▒ ░ ░  ░ ░▒  ░ ░       ░      ▒ ░ ░   ░ ░  ░ ▒   ▒▒ ░░ ░▒ ▒░ ░ ░  ░  ░▒ ░ ▒░
echo.                     [38 5 33m            ░   ░   ▒ ░   ░   ░ ░  ░ ░  ░ ░ ░ ░ ▒    ░   ░  ░  ░  ░       ░        ░   ░     ░    ░   ▒   ░ ░░ ░    ░     ░░   ░
echo.                     [38 5 69m              ░     ░           ░    ░        ░ ░      ░          ░                  ░       ░  ░     ░  ░░  ░      ░  ░   ░
echo.                     [38 5 105m                                   ░
echo.
echo.                                                                      ╔═══
echo.                                                                      ║   This Utility Was Made By Fyumi   ║
echo.                                                                                                        ═══╝
echo.
echo.
echo.                        [38 5 213m[[0m 1 [38 5 213m][0m  [90mDisable Spynet Defender Reporting[90m      [38 5 213m[[0m 2 [38 5 213m][0m  [90mDisable AMD Txt Logging[90m               [38 5 213m[[0m 3 [38 5 213m][0m  [90mDisable Telemetry Packages For Card Nvidia[90m
echo.
echo.
echo.                        [38 5 213m[[0m 4 [38 5 213m][0m  [90mDisable File Leftover For Card Nvidia[90m  [38 5 213m[[0m 5 [38 5 213m][0m  [90mOptimize Chrome's Config[90m              [38 5 213m[[0m 6 [38 5 213m][0m  [90mDisable Chrome Metrics[90m
echo.
echo.
echo.                        [38 5 213m[[0m 7 [38 5 213m][0m  [90mDisable Nvidia Tasks/Services[90m          [38 5 213m[[0m 8 [38 5 213m][0m  [90mDiable Error Reporting To Chrome[90m      [38 5 213m[[0m 9 [38 5 213m][0m  [90mNext Page[90m
echo.
echo.
echo.                        [38 5 213m[[0m 10 [38 5 213m][0m  [90mReturn To Previous Page[90m               [38 5 213m[[0m 11 [38 5 213m][0m  [90mReturn To Main Menu[90m
echo.
echo.
echo. [38 5 33m                                                      ╔════════════════════════════════════════════════════════════════════╗
echo. [38 5 69m                                                      ║   Add "F" After Your Choice To See More Details About That Tweak   ║
echo. [38 5 105m                                                      ║                         Ex : 1F  2F  3F                            ║
echo. [38 5 177m                                                      ╚════════════════════════════════════════════════════════════════════╝
echo.
echo.
echo.
echo.
set /p fyumi=:
if /i __input__ == 1 (goto disablespynetdefenderreporting)
if /i __input__ == 2 (goto disableAMDtxtlogging)
if /i __input__ == 3 (goto disabletelemetrypackagesforcardnvidia)
if /i __input__ == 4 (goto disablefileleftoverforcardnvidia)
if /i __input__ == 5 (goto optimizechromeconfig)
if /i __input__ == 6 (goto disablechromemetrics)
if /i __input__ == 7 (goto disablenvidiatasksservices)
if /i __input__ == 8 (goto diablerrrorreportingtochrome)
if /i __input__ == 9 (goto page5)
if /i __input__ == 10 (goto page3)
if /i __input__ == 11 (goto menutienganh)
if /i __input__ == 1F (goto sorry)
if /i __input__ == 2F (goto sorry)
if /i __input__ == 3F (goto sorry)
if /i __input__ == 4F (goto sorry)
if /i __input__ == 5F (goto sorry)
if /i __input__ == 6F (goto sorry)
if /i __input__ == 7F (goto sorry)
if /i __input__ == 8F (goto sorry)
cls
echo.
echo.
echo.      [97mYou entered the wrong choice  please enter again
echo.
echo.
pause >nul
goto page4

:page5
chcp 65001 >nul 2>&1
cls
echo.[38 5 33mPage 5/10
echo.
echo.
echo.
echo.                     [38 5 33m           █     █░ ██▓ ███▄    █ ▓█████▄  ▒█████   █     █░  ██████    ▄▄▄█████▓ █     █░▓█████ ▄▄▄       ██ ▄█▀▓█████  ██▀███
echo.                     [38 5 69m          ▓█░ █ ░█░▓██▒ ██ ▀█   █ ▒██▀ ██▌▒██▒  ██▒▓█░ █ ░█░▒██    ▒    ▓  ██▒ ▓▒▓█░ █ ░█░▓█   ▀▒████▄     ██▄█▒ ▓█   ▀ ▓██ ▒ ██▒
echo.                     [38 5 105m          ▒█░ █ ░█ ▒██▒▓██  ▀█ ██▒░██   █▌▒██░  ██▒▒█░ █ ░█ ░ ▓██▄      ▒ ▓██░ ▒░▒█░ █ ░█ ▒███  ▒██  ▀█▄  ▓███▄░ ▒███   ▓██ ░▄█ ▒
echo.                     [38 5 177m          ░█░ █ ░█ ░██░▓██▒  ▐▌██▒░▓█▄   ▌▒██   ██░░█░ █ ░█   ▒   ██▒   ░ ▓██▓ ░ ░█░ █ ░█ ▒▓█  ▄░██▄▄▄▄██ ▓██ █▄ ▒▓█  ▄ ▒██▀▀█▄
echo.                     [38 5 213m          ░░██▒██▓ ░██░▒██░   ▓██░░▒████▓ ░ ████▓▒░░░██▒██▓ ▒██████▒▒     ▒██▒ ░ ░░██▒██▓ ░▒████▒▓█   ▓██▒▒██▒ █▄░▒████▒░██▓ ▒██▒
echo.                     [38 5 33m          ░ ▓░▒ ▒  ░▓  ░ ▒░   ▒ ▒  ▒▒▓  ▒ ░ ▒░▒░▒░ ░ ▓░▒ ▒  ▒ ▒▓▒ ▒ ░     ▒ ░░   ░ ▓░▒ ▒  ░░ ▒░ ░▒▒   ▓▒█░▒ ▒▒ ▓▒░░ ▒░ ░░ ▒▓ ░▒▓░
echo.                     [38 5 105m            ▒ ░ ░   ▒ ░░ ░░   ░ ▒░ ░ ▒  ▒   ░ ▒ ▒░   ▒ ░ ░  ░ ░▒  ░ ░       ░      ▒ ░ ░   ░ ░  ░ ▒   ▒▒ ░░ ░▒ ▒░ ░ ░  ░  ░▒ ░ ▒░
echo.                     [38 5 33m            ░   ░   ▒ ░   ░   ░ ░  ░ ░  ░ ░ ░ ░ ▒    ░   ░  ░  ░  ░       ░        ░   ░     ░    ░   ▒   ░ ░░ ░    ░     ░░   ░
echo.                     [38 5 69m              ░     ░           ░    ░        ░ ░      ░          ░                  ░       ░  ░     ░  ░░  ░      ░  ░   ░
echo.                     [38 5 105m                                   ░
echo.
echo.                                                                      ╔═══
echo.                                                                      ║   This Utility Was Made By Fyumi   ║
echo.                                                                                                        ═══╝
echo.
echo.
echo.                      [38 5 213m[[0m 1 [38 5 213m][0m  [90mDisable Chrome Update[90m                    [38 5 213m[[0m 2 [38 5 213m][0m  [90mOptimize FireFox Browser[90m              [38 5 213m[[0m 3 [38 5 213m][0m  [90mDisable Reports In Windows Media Player[90m
echo.
echo.
echo.                      [38 5 213m[[0m 4 [38 5 213m][0m  [90mOptimize Visual Studio Code[90m              [38 5 213m[[0m 5 [38 5 213m][0m  [90mDisable Powershell Telemetry[90m          [38 5 213m[[0m 6 [38 5 213m][0m  [90mDisable Skype Telemetry[90m
echo.
echo.
echo.                      [38 5 213m[[0m 7 [38 5 213m][0m  [90mOptimize Office Telemtry And Hardening[90m   [38 5 213m[[0m 8 [38 5 213m][0m  [90mDiable Adobe Telemetry And Services[90m   [38 5 213m[[0m 9 [38 5 213m][0m  [90mNext Page[90m
echo.
echo.
echo.                      [38 5 213m[[0m 10 [38 5 213m][0m  [90mReturn To Previous Page[90m                 [38 5 213m[[0m 11 [38 5 213m][0m  [90mReturn To Main Menu[90m
echo.
echo.
echo. [38 5 33m                                                      ╔════════════════════════════════════════════════════════════════════╗
echo. [38 5 69m                                                      ║   Add "F" After Your Choice To See More Details About That Tweak   ║
echo. [38 5 105m                                                      ║                         Ex : 1F  2F  3F                            ║
echo. [38 5 177m                                                      ╚════════════════════════════════════════════════════════════════════╝
echo.
echo.
echo.
echo.
set /p fyumi=:
if /i __input__ == 1 (goto disablechromeupdate)
if /i __input__ == 2 (goto optimizefirefoxbrowser)
if /i __input__ == 3 (goto disablereportsinwindowsmediaplayer)
if /i __input__ == 4 (goto optimizevisualstudiocode)
if /i __input__ == 5 (goto disablepowershelltelemetry)
if /i __input__ == 6 (goto disableskypetelemetry)
if /i __input__ == 7 (goto diableerrorreportingtochrome)
if /i __input__ == 8 (goto diableadobetelemetryandservices)
if /i __input__ == 9 (goto page6)
if /i __input__ == 10 (goto page4)
if /i __input__ == 11 (goto menutienganh)
if /i __input__ == 1F (goto sorry)
if /i __input__ == 2F (goto sorry)
if /i __input__ == 3F (goto sorry)
if /i __input__ == 4F (goto sorry)
if /i __input__ == 5F (goto sorry)
if /i __input__ == 6F (goto sorry)
if /i __input__ == 7F (goto sorry)
if /i __input__ == 8F (goto sorry)
cls
echo.
echo.
echo.      [97mYou entered the wrong choice  please enter again
echo.
echo.
pause >nul
goto page5

:page6
chcp 65001 >nul 2>&1
cls
echo.[38 5 33mPage 6/10
echo.
echo.
echo.
echo.                     [38 5 33m           █     █░ ██▓ ███▄    █ ▓█████▄  ▒█████   █     █░  ██████    ▄▄▄█████▓ █     █░▓█████ ▄▄▄       ██ ▄█▀▓█████  ██▀███
echo.                     [38 5 69m          ▓█░ █ ░█░▓██▒ ██ ▀█   █ ▒██▀ ██▌▒██▒  ██▒▓█░ █ ░█░▒██    ▒    ▓  ██▒ ▓▒▓█░ █ ░█░▓█   ▀▒████▄     ██▄█▒ ▓█   ▀ ▓██ ▒ ██▒
echo.                     [38 5 105m          ▒█░ █ ░█ ▒██▒▓██  ▀█ ██▒░██   █▌▒██░  ██▒▒█░ █ ░█ ░ ▓██▄      ▒ ▓██░ ▒░▒█░ █ ░█ ▒███  ▒██  ▀█▄  ▓███▄░ ▒███   ▓██ ░▄█ ▒
echo.                     [38 5 177m          ░█░ █ ░█ ░██░▓██▒  ▐▌██▒░▓█▄   ▌▒██   ██░░█░ █ ░█   ▒   ██▒   ░ ▓██▓ ░ ░█░ █ ░█ ▒▓█  ▄░██▄▄▄▄██ ▓██ █▄ ▒▓█  ▄ ▒██▀▀█▄
echo.                     [38 5 213m          ░░██▒██▓ ░██░▒██░   ▓██░░▒████▓ ░ ████▓▒░░░██▒██▓ ▒██████▒▒     ▒██▒ ░ ░░██▒██▓ ░▒████▒▓█   ▓██▒▒██▒ █▄░▒████▒░██▓ ▒██▒
echo.                     [38 5 33m          ░ ▓░▒ ▒  ░▓  ░ ▒░   ▒ ▒  ▒▒▓  ▒ ░ ▒░▒░▒░ ░ ▓░▒ ▒  ▒ ▒▓▒ ▒ ░     ▒ ░░   ░ ▓░▒ ▒  ░░ ▒░ ░▒▒   ▓▒█░▒ ▒▒ ▓▒░░ ▒░ ░░ ▒▓ ░▒▓░
echo.                     [38 5 105m            ▒ ░ ░   ▒ ░░ ░░   ░ ▒░ ░ ▒  ▒   ░ ▒ ▒░   ▒ ░ ░  ░ ░▒  ░ ░       ░      ▒ ░ ░   ░ ░  ░ ▒   ▒▒ ░░ ░▒ ▒░ ░ ░  ░  ░▒ ░ ▒░
echo.                     [38 5 33m            ░   ░   ▒ ░   ░   ░ ░  ░ ░  ░ ░ ░ ░ ▒    ░   ░  ░  ░  ░       ░        ░   ░     ░    ░   ▒   ░ ░░ ░    ░     ░░   ░
echo.                     [38 5 69m              ░     ░           ░    ░        ░ ░      ░          ░                  ░       ░  ░     ░  ░░  ░      ░  ░   ░
echo.                     [38 5 105m                                   ░
echo.
echo.                                                                      ╔═══
echo.                                                                      ║   This Utility Was Made By Fyumi   ║
echo.                                                                                                        ═══╝
echo.
echo.
echo.                      [38 5 213m[[0m 1 [38 5 213m][0m  [90mDisable Razer Game Scanning[90m              [38 5 213m[[0m 2 [38 5 213m][0m  [90mOptimize Logitech Registry Service[90m       [38 5 213m[[0m 3 [38 5 213m][0m  [90mOptimize DirectX[90m
echo.
echo.
echo.                      [38 5 213m[[0m 4 [38 5 213m][0m  [90mBoost PFM DirectX And Kenel Gaming[90m       [38 5 213m[[0m 5 [38 5 213m][0m  [90mOptimize CCleaner[90m                        [38 5 213m[[0m 6 [38 5 213m][0m  [90mDisable TaggedEnergy  Power Logging And Telemetry[90m
echo.
echo.
echo.                      [38 5 213m[[0m 7 [38 5 213m][0m  [90mDisable Device Census[90m                    [38 5 213m[[0m 8 [38 5 213m][0m  [90mDiable Location Service[90m                  [38 5 213m[[0m 9 [38 5 213m][0m  [90mNext Page[90m
echo.
echo.
echo.                      [38 5 213m[[0m 10 [38 5 213m][0m  [90mReturn To Previous Page[90m                 [38 5 213m[[0m 11 [38 5 213m][0m  [90mReturn To Main Menu[90m
echo.
echo.
echo. [38 5 33m                                                      ╔════════════════════════════════════════════════════════════════════╗
echo. [38 5 69m                                                      ║   Add "F" After Your Choice To See More Details About That Tweak   ║
echo. [38 5 105m                                                      ║                         Ex : 1F  2F  3F                            ║
echo. [38 5 177m                                                      ╚════════════════════════════════════════════════════════════════════╝
echo.
echo.
echo.
echo.
set /p fyumi=:
if /i __input__ == 1 (goto disablerazergamescanning)
if /i __input__ == 2 (goto optimizelogitechregistryservice)
if /i __input__ == 3 (goto optimizedirectx)
if /i __input__ == 4 (goto boostperformancedirectxandkenelgaming)
if /i __input__ == 5 (goto optimizeccleaner)
if /i __input__ == 6 (goto disabletaggedenergypowerloggingandtelemetry)
if /i __input__ == 7 (goto disabledevicecensus)
if /i __input__ == 8 (goto diablelocationservice)
if /i __input__ == 9 (goto page7)
if /i __input__ == 10 (goto page5)
if /i __input__ == 11 (goto menutienganh)
if /i __input__ == 1F (goto sorry)
if /i __input__ == 2F (goto sorry)
if /i __input__ == 3F (goto sorry)
if /i __input__ == 4F (goto sorry)
if /i __input__ == 5F (goto sorry)
if /i __input__ == 6F (goto sorry)
if /i __input__ == 7F (goto sorry)
if /i __input__ == 8F (goto sorry)
cls
echo.
echo.
echo.      [97mYou entered the wrong choice  please enter again
echo.
echo.
pause >nul
goto page6

:page7
chcp 65001 >nul 2>&1
cls
echo.[38 5 33mPage 7/10
echo.
echo.
echo.
echo.                     [38 5 33m           █     █░ ██▓ ███▄    █ ▓█████▄  ▒█████   █     █░  ██████    ▄▄▄█████▓ █     █░▓█████ ▄▄▄       ██ ▄█▀▓█████  ██▀███
echo.                     [38 5 69m          ▓█░ █ ░█░▓██▒ ██ ▀█   █ ▒██▀ ██▌▒██▒  ██▒▓█░ █ ░█░▒██    ▒    ▓  ██▒ ▓▒▓█░ █ ░█░▓█   ▀▒████▄     ██▄█▒ ▓█   ▀ ▓██ ▒ ██▒
echo.                     [38 5 105m          ▒█░ █ ░█ ▒██▒▓██  ▀█ ██▒░██   █▌▒██░  ██▒▒█░ █ ░█ ░ ▓██▄      ▒ ▓██░ ▒░▒█░ █ ░█ ▒███  ▒██  ▀█▄  ▓███▄░ ▒███   ▓██ ░▄█ ▒
echo.                     [38 5 177m          ░█░ █ ░█ ░██░▓██▒  ▐▌██▒░▓█▄   ▌▒██   ██░░█░ █ ░█   ▒   ██▒   ░ ▓██▓ ░ ░█░ █ ░█ ▒▓█  ▄░██▄▄▄▄██ ▓██ █▄ ▒▓█  ▄ ▒██▀▀█▄
echo.                     [38 5 213m          ░░██▒██▓ ░██░▒██░   ▓██░░▒████▓ ░ ████▓▒░░░██▒██▓ ▒██████▒▒     ▒██▒ ░ ░░██▒██▓ ░▒████▒▓█   ▓██▒▒██▒ █▄░▒████▒░██▓ ▒██▒
echo.                     [38 5 33m          ░ ▓░▒ ▒  ░▓  ░ ▒░   ▒ ▒  ▒▒▓  ▒ ░ ▒░▒░▒░ ░ ▓░▒ ▒  ▒ ▒▓▒ ▒ ░     ▒ ░░   ░ ▓░▒ ▒  ░░ ▒░ ░▒▒   ▓▒█░▒ ▒▒ ▓▒░░ ▒░ ░░ ▒▓ ░▒▓░
echo.                     [38 5 105m            ▒ ░ ░   ▒ ░░ ░░   ░ ▒░ ░ ▒  ▒   ░ ▒ ▒░   ▒ ░ ░  ░ ░▒  ░ ░       ░      ▒ ░ ░   ░ ░  ░ ▒   ▒▒ ░░ ░▒ ▒░ ░ ░  ░  ░▒ ░ ▒░
echo.                     [38 5 33m            ░   ░   ▒ ░   ░   ░ ░  ░ ░  ░ ░ ░ ░ ▒    ░   ░  ░  ░  ░       ░        ░   ░     ░    ░   ▒   ░ ░░ ░    ░     ░░   ░
echo.                     [38 5 69m              ░     ░           ░    ░        ░ ░      ░          ░                  ░       ░  ░     ░  ░░  ░      ░  ░   ░
echo.                     [38 5 105m                                   ░
echo.
echo.                                                                      ╔═══
echo.                                                                      ║   This Utility Was Made By Fyumi   ║
echo.                                                                                                        ═══╝
echo.
echo.
echo.                       [38 5 213m[[0m 1 [38 5 213m][0m  [90mDisable Bing Speech API[90m                 [38 5 213m[[0m 2 [38 5 213m][0m  [90mDisable Windows Privacy Consent[90m              [38 5 213m[[0m 3 [38 5 213m][0m  [90mDisable Handwriting  Inking And Contacts[90m
echo.
echo.
echo.                       [38 5 213m[[0m 4 [38 5 213m][0m  [90mDisable Instrument Startup Tracking[90m     [38 5 213m[[0m 5 [38 5 213m][0m  [90mOptimize Windows Language Repository[90m         [38 5 213m[[0m 6 [38 5 213m][0m  [90mDisable Data Usage Limit[90m
echo.
echo.
echo.                       [38 5 213m[[0m 7 [38 5 213m][0m  [90mOptimize Diagnostics And Privacy[90m        [38 5 213m[[0m 8 [38 5 213m][0m  [90mOptimize Access Permissions[90m                  [38 5 213m[[0m 9 [38 5 213m][0m  [90mNext Page[90m
echo.
echo.
echo.                       [38 5 213m[[0m 10 [38 5 213m][0m  [90mReturn To Previous Page[90m                [38 5 213m[[0m 11 [38 5 213m][0m  [90mReturn To Main Menu[90m
echo.
echo.
echo. [38 5 33m                                                      ╔════════════════════════════════════════════════════════════════════╗
echo. [38 5 69m                                                      ║   Add "F" After Your Choice To See More Details About That Tweak   ║
echo. [38 5 105m                                                      ║                         Ex : 1F  2F  3F                            ║
echo. [38 5 177m                                                      ╚════════════════════════════════════════════════════════════════════╝
echo.
echo.
echo.
echo.
set /p fyumi=:
if /i __input__ == 1 (goto disablebingspeechapi)
if /i __input__ == 2 (goto disablewindowsprivacyconsent)
if /i __input__ == 3 (goto disablehandwritinginkingandcontacts)
if /i __input__ == 4 (goto disableinstrumentstartuptracking)
if /i __input__ == 5 (goto optimizewindowslanguagerepository)
if /i __input__ == 6 (goto disabledatausagelimit)
if /i __input__ == 7 (goto optimizediagnosticsandprivacy)
if /i __input__ == 8 (goto optimizeaccesspermissions)
if /i __input__ == 9 (goto page8)
if /i __input__ == 10 (goto page6)
if /i __input__ == 11 (goto menutienganh)
if /i __input__ == 1F (goto sorry)
if /i __input__ == 2F (goto sorry)
if /i __input__ == 3F (goto sorry)
if /i __input__ == 4F (goto sorry)
if /i __input__ == 5F (goto sorry)
if /i __input__ == 6F (goto sorry)
if /i __input__ == 7F (goto sorry)
if /i __input__ == 8F (goto sorry)
cls
echo.
echo.
echo.      [97mYou entered the wrong choice  please enter again
echo.
echo.
pause >nul
goto page7

:page8
chcp 65001 >nul 2>&1
cls
echo.[38 5 33mPage 8/10
echo.
echo.
echo.
echo.                     [38 5 33m           █     █░ ██▓ ███▄    █ ▓█████▄  ▒█████   █     █░  ██████    ▄▄▄█████▓ █     █░▓█████ ▄▄▄       ██ ▄█▀▓█████  ██▀███
echo.                     [38 5 69m          ▓█░ █ ░█░▓██▒ ██ ▀█   █ ▒██▀ ██▌▒██▒  ██▒▓█░ █ ░█░▒██    ▒    ▓  ██▒ ▓▒▓█░ █ ░█░▓█   ▀▒████▄     ██▄█▒ ▓█   ▀ ▓██ ▒ ██▒
echo.                     [38 5 105m          ▒█░ █ ░█ ▒██▒▓██  ▀█ ██▒░██   █▌▒██░  ██▒▒█░ █ ░█ ░ ▓██▄      ▒ ▓██░ ▒░▒█░ █ ░█ ▒███  ▒██  ▀█▄  ▓███▄░ ▒███   ▓██ ░▄█ ▒
echo.                     [38 5 177m          ░█░ █ ░█ ░██░▓██▒  ▐▌██▒░▓█▄   ▌▒██   ██░░█░ █ ░█   ▒   ██▒   ░ ▓██▓ ░ ░█░ █ ░█ ▒▓█  ▄░██▄▄▄▄██ ▓██ █▄ ▒▓█  ▄ ▒██▀▀█▄
echo.                     [38 5 213m          ░░██▒██▓ ░██░▒██░   ▓██░░▒████▓ ░ ████▓▒░░░██▒██▓ ▒██████▒▒     ▒██▒ ░ ░░██▒██▓ ░▒████▒▓█   ▓██▒▒██▒ █▄░▒████▒░██▓ ▒██▒
echo.                     [38 5 33m          ░ ▓░▒ ▒  ░▓  ░ ▒░   ▒ ▒  ▒▒▓  ▒ ░ ▒░▒░▒░ ░ ▓░▒ ▒  ▒ ▒▓▒ ▒ ░     ▒ ░░   ░ ▓░▒ ▒  ░░ ▒░ ░▒▒   ▓▒█░▒ ▒▒ ▓▒░░ ▒░ ░░ ▒▓ ░▒▓░
echo.                     [38 5 105m            ▒ ░ ░   ▒ ░░ ░░   ░ ▒░ ░ ▒  ▒   ░ ▒ ▒░   ▒ ░ ░  ░ ░▒  ░ ░       ░      ▒ ░ ░   ░ ░  ░ ▒   ▒▒ ░░ ░▒ ▒░ ░ ░  ░  ░▒ ░ ▒░
echo.                     [38 5 33m            ░   ░   ▒ ░   ░   ░ ░  ░ ░  ░ ░ ░ ░ ▒    ░   ░  ░  ░  ░       ░        ░   ░     ░    ░   ▒   ░ ░░ ░    ░     ░░   ░
echo.                     [38 5 69m              ░     ░           ░    ░        ░ ░      ░          ░                  ░       ░  ░     ░  ░░  ░      ░  ░   ░
echo.                     [38 5 105m                                   ░
echo.
echo.                                                                      ╔═══
echo.                                                                      ║   This Utility Was Made By Fyumi   ║
echo.                                                                                                        ═══╝
echo.
echo.
echo.                        [38 5 213m[[0m 1 [38 5 213m][0m  [90mOptimize FPS Game[90m                      [38 5 213m[[0m 2 [38 5 213m][0m  [90mEnable MSI Mode[90m                    [38 5 213m[[0m 3 [38 5 213m][0m  [90mOptimize Hardware[90m
echo.
echo.
echo.                        [38 5 213m[[0m 4 [38 5 213m][0m  [90mSpeed Up PC Boot[90m                       [38 5 213m[[0m 5 [38 5 213m][0m  [90mDisable Network Data Saver[90m         [38 5 213m[[0m 6 [38 5 213m][0m  [90mOptimize Bcdedit[90m
echo.
echo.
echo.                        [38 5 213m[[0m 7 [38 5 213m][0m  [90mDisable Windows Insider Experiments[90m    [38 5 213m[[0m 8 [38 5 213m][0m  [90mDisk Clean Up[90m                      [38 5 213m[[0m 9 [38 5 213m][0m  [90mNext Page[90m
echo.
echo.
echo.                        [38 5 213m[[0m 10 [38 5 213m][0m  [90mReturn To Previous Page[90m               [38 5 213m[[0m 11 [38 5 213m][0m  [90mReturn To Main Menu[90m
echo.
echo.
echo. [38 5 33m                                                      ╔════════════════════════════════════════════════════════════════════╗
echo. [38 5 69m                                                      ║   Add "F" After Your Choice To See More Details About That Tweak   ║
echo. [38 5 105m                                                      ║                         Ex : 1F  2F  3F                            ║
echo. [38 5 177m                                                      ╚════════════════════════════════════════════════════════════════════╝
echo.
echo.
echo.
echo.
set /p fyumi=:
if /i __input__ == 1 (goto optimizefpsgame)
if /i __input__ == 2 (goto enablemsimode)
if /i __input__ == 3 (goto optimizehardware)
if /i __input__ == 4 (goto speeduppcboot)
if /i __input__ == 5 (goto disablenetworkdatasaver)
if /i __input__ == 6 (goto optimizebcdedit)
if /i __input__ == 7 (goto disablewindowsinsiderexperiments)
if /i __input__ == 8 (goto diskcleanup)
if /i __input__ == 9 (goto page9)
if /i __input__ == 10 (goto page7)
if /i __input__ == 11 (goto menutienganh)
if /i __input__ == 1F (goto sorry)
if /i __input__ == 2F (goto sorry)
if /i __input__ == 3F (goto sorry)
if /i __input__ == 4F (goto sorry)
if /i __input__ == 5F (goto sorry)
if /i __input__ == 6F (goto sorry)
if /i __input__ == 7F (goto sorry)
if /i __input__ == 8F (goto sorry)
cls
echo.
echo.
echo.      [97mYou entered the wrong choice  please enter again
echo.
echo.
pause >nul
goto page8

:page9
chcp 65001 >nul 2>&1
cls
echo.[38 5 33mPage 9/10
echo.
echo.
echo.
echo.                     [38 5 33m           █     █░ ██▓ ███▄    █ ▓█████▄  ▒█████   █     █░  ██████    ▄▄▄█████▓ █     █░▓█████ ▄▄▄       ██ ▄█▀▓█████  ██▀███
echo.                     [38 5 69m          ▓█░ █ ░█░▓██▒ ██ ▀█   █ ▒██▀ ██▌▒██▒  ██▒▓█░ █ ░█░▒██    ▒    ▓  ██▒ ▓▒▓█░ █ ░█░▓█   ▀▒████▄     ██▄█▒ ▓█   ▀ ▓██ ▒ ██▒
echo.                     [38 5 105m          ▒█░ █ ░█ ▒██▒▓██  ▀█ ██▒░██   █▌▒██░  ██▒▒█░ █ ░█ ░ ▓██▄      ▒ ▓██░ ▒░▒█░ █ ░█ ▒███  ▒██  ▀█▄  ▓███▄░ ▒███   ▓██ ░▄█ ▒
echo.                     [38 5 177m          ░█░ █ ░█ ░██░▓██▒  ▐▌██▒░▓█▄   ▌▒██   ██░░█░ █ ░█   ▒   ██▒   ░ ▓██▓ ░ ░█░ █ ░█ ▒▓█  ▄░██▄▄▄▄██ ▓██ █▄ ▒▓█  ▄ ▒██▀▀█▄
echo.                     [38 5 213m          ░░██▒██▓ ░██░▒██░   ▓██░░▒████▓ ░ ████▓▒░░░██▒██▓ ▒██████▒▒     ▒██▒ ░ ░░██▒██▓ ░▒████▒▓█   ▓██▒▒██▒ █▄░▒████▒░██▓ ▒██▒
echo.                     [38 5 33m          ░ ▓░▒ ▒  ░▓  ░ ▒░   ▒ ▒  ▒▒▓  ▒ ░ ▒░▒░▒░ ░ ▓░▒ ▒  ▒ ▒▓▒ ▒ ░     ▒ ░░   ░ ▓░▒ ▒  ░░ ▒░ ░▒▒   ▓▒█░▒ ▒▒ ▓▒░░ ▒░ ░░ ▒▓ ░▒▓░
echo.                     [38 5 105m            ▒ ░ ░   ▒ ░░ ░░   ░ ▒░ ░ ▒  ▒   ░ ▒ ▒░   ▒ ░ ░  ░ ░▒  ░ ░       ░      ▒ ░ ░   ░ ░  ░ ▒   ▒▒ ░░ ░▒ ▒░ ░ ░  ░  ░▒ ░ ▒░
echo.                     [38 5 33m            ░   ░   ▒ ░   ░   ░ ░  ░ ░  ░ ░ ░ ░ ▒    ░   ░  ░  ░  ░       ░        ░   ░     ░    ░   ▒   ░ ░░ ░    ░     ░░   ░
echo.                     [38 5 69m              ░     ░           ░    ░        ░ ░      ░          ░                  ░       ░  ░     ░  ░░  ░      ░  ░   ░
echo.                     [38 5 105m                                   ░
echo.
echo.                                                                      ╔═══
echo.                                                                      ║   This Utility Was Made By Fyumi   ║
echo.                                                                                                        ═══╝
echo.
echo.
echo.                            [38 5 213m[[0m 1 [38 5 213m][0m  [90mDisable Useless Animations[90m         [38 5 213m[[0m 2 [38 5 213m][0m  [90mDisable Maintenece[90m             [38 5 213m[[0m 3 [38 5 213m][0m  [90mDisable Popups[90m
echo.
echo.
echo.                            [38 5 213m[[0m 4 [38 5 213m][0m  [90mDisable Shared Experiences[90m         [38 5 213m[[0m 5 [38 5 213m][0m  [90mDisable Transparency[90m           [38 5 213m[[0m 6 [38 5 213m][0m  [90mDisable Setting Hronization[90m
echo.
echo.
echo.                            [38 5 213m[[0m 7 [38 5 213m][0m  [90mDisable Background Apps[90m            [38 5 213m[[0m 8 [38 5 213m][0m  [90mDisable Activity Feed[90m          [38 5 213m[[0m 9 [38 5 213m][0m  [90mNext Page[90m
echo.
echo.
echo.                            [38 5 213m[[0m 10 [38 5 213m][0m  [90mReturn To Previous Page[90m           [38 5 213m[[0m 11 [38 5 213m][0m  [90mReturn To Main Menu[90m
echo.
echo.
echo. [38 5 33m                                                      ╔════════════════════════════════════════════════════════════════════╗
echo. [38 5 69m                                                      ║   Add "F" After Your Choice To See More Details About That Tweak   ║
echo. [38 5 105m                                                      ║                         Ex : 1F  2F  3F                            ║
echo. [38 5 177m                                                      ╚════════════════════════════════════════════════════════════════════╝
echo.
echo.
echo.
echo.
set /p fyumi=:
if /i __input__ == 1 (goto disableuselessanimations)
if /i __input__ == 2 (goto disablemaintenece)
if /i __input__ == 3 (goto disablepopups)
if /i __input__ == 4 (goto disablesharedexperiences)
if /i __input__ == 5 (goto disabletransparency)
if /i __input__ == 6 (goto disablesettinghronization)
if /i __input__ == 7 (goto disablebackgroundapps)
if /i __input__ == 8 (goto disableactivityfeed)
if /i __input__ == 9 (goto page10)
if /i __input__ == 10 (goto page8)
if /i __input__ == 11 (goto menutienganh)
if /i __input__ == 1F (goto sorry)
if /i __input__ == 2F (goto sorry)
if /i __input__ == 3F (goto sorry)
if /i __input__ == 4F (goto sorry)
if /i __input__ == 5F (goto sorry)
if /i __input__ == 6F (goto sorry)
if /i __input__ == 7F (goto sorry)
if /i __input__ == 8F (goto sorry)
cls
echo.
echo.
echo.      [97mYou entered the wrong choice  please enter again
echo.
echo.
pause >nul
goto page9

:page10
chcp 65001 >nul 2>&1
cls
echo.[38 5 33mPage 10/10
echo.
echo.
echo.
echo.                     [38 5 33m           █     █░ ██▓ ███▄    █ ▓█████▄  ▒█████   █     █░  ██████    ▄▄▄█████▓ █     █░▓█████ ▄▄▄       ██ ▄█▀▓█████  ██▀███
echo.                     [38 5 69m          ▓█░ █ ░█░▓██▒ ██ ▀█   █ ▒██▀ ██▌▒██▒  ██▒▓█░ █ ░█░▒██    ▒    ▓  ██▒ ▓▒▓█░ █ ░█░▓█   ▀▒████▄     ██▄█▒ ▓█   ▀ ▓██ ▒ ██▒
echo.                     [38 5 105m          ▒█░ █ ░█ ▒██▒▓██  ▀█ ██▒░██   █▌▒██░  ██▒▒█░ █ ░█ ░ ▓██▄      ▒ ▓██░ ▒░▒█░ █ ░█ ▒███  ▒██  ▀█▄  ▓███▄░ ▒███   ▓██ ░▄█ ▒
echo.                     [38 5 177m          ░█░ █ ░█ ░██░▓██▒  ▐▌██▒░▓█▄   ▌▒██   ██░░█░ █ ░█   ▒   ██▒   ░ ▓██▓ ░ ░█░ █ ░█ ▒▓█  ▄░██▄▄▄▄██ ▓██ █▄ ▒▓█  ▄ ▒██▀▀█▄
echo.                     [38 5 213m          ░░██▒██▓ ░██░▒██░   ▓██░░▒████▓ ░ ████▓▒░░░██▒██▓ ▒██████▒▒     ▒██▒ ░ ░░██▒██▓ ░▒████▒▓█   ▓██▒▒██▒ █▄░▒████▒░██▓ ▒██▒
echo.                     [38 5 33m          ░ ▓░▒ ▒  ░▓  ░ ▒░   ▒ ▒  ▒▒▓  ▒ ░ ▒░▒░▒░ ░ ▓░▒ ▒  ▒ ▒▓▒ ▒ ░     ▒ ░░   ░ ▓░▒ ▒  ░░ ▒░ ░▒▒   ▓▒█░▒ ▒▒ ▓▒░░ ▒░ ░░ ▒▓ ░▒▓░
echo.                     [38 5 105m            ▒ ░ ░   ▒ ░░ ░░   ░ ▒░ ░ ▒  ▒   ░ ▒ ▒░   ▒ ░ ░  ░ ░▒  ░ ░       ░      ▒ ░ ░   ░ ░  ░ ▒   ▒▒ ░░ ░▒ ▒░ ░ ░  ░  ░▒ ░ ▒░
echo.                     [38 5 33m            ░   ░   ▒ ░   ░   ░ ░  ░ ░  ░ ░ ░ ░ ▒    ░   ░  ░  ░  ░       ░        ░   ░     ░    ░   ▒   ░ ░░ ░    ░     ░░   ░
echo.                     [38 5 69m              ░     ░           ░    ░        ░ ░      ░          ░                  ░       ░  ░     ░  ░░  ░      ░  ░   ░
echo.                     [38 5 105m                                   ░
echo.
echo.                                                                      ╔═══
echo.                                                                      ║   This Utility Was Made By Fyumi   ║
echo.                                                                                                        ═══╝
echo.
echo.
echo.                                [38 5 213m[[0m 1 [38 5 213m][0m  [90mDisable Mitigations[90m            [38 5 213m[[0m 2 [38 5 213m][0m  [90mDisable Dynamic Tick[90m             [38 5 213m[[0m 3 [38 5 213m][0m  [90mNFTS Tweaks[90m
echo.
echo.
echo.                                [38 5 213m[[0m 4 [38 5 213m][0m  [90mSet MMCSS Priority[90m             [38 5 213m[[0m 5 [38 5 213m][0m  [90mSet IRQ8 Priority[90m                [38 5 213m[[0m 6 [38 5 213m][0m  [90mEnable Memory Mapping[90m
echo.
echo.
echo.                                [38 5 213m[[0m 7 [38 5 213m][0m  [90mClean Temporary Device Data[90m    [38 5 213m[[0m 8 [38 5 213m][0m  [90mDisable Geolocation Service[90m      [38 5 213m[[0m 9 [38 5 213m][0m  [90mReturn To Previous Page[90m
echo.
echo.
echo.                                                                      [38 5 213m[[0m 10 [38 5 213m][0m  [90mReturn To Main Menu[90m
echo.
echo.
echo. [38 5 33m                                                      ╔════════════════════════════════════════════════════════════════════╗
echo. [38 5 69m                                                      ║   Add "F" After Your Choice To See More Details About That Tweak   ║
echo. [38 5 105m                                                      ║                         Ex : 1F  2F  3F                            ║
echo. [38 5 177m                                                      ╚════════════════════════════════════════════════════════════════════╝
echo.
echo.
echo.
echo.
set /p fyumi=:
if /i __input__ == 1 (goto disablemitigations)
if /i __input__ == 2 (goto disabledynamictick)
if /i __input__ == 3 (goto nftstweaks)
if /i __input__ == 4 (goto setmmcsspriority)
if /i __input__ == 5 (goto setirq8priority)
if /i __input__ == 6 (goto enablememorymapping)
if /i __input__ == 7 (goto cleantemporarydevicedata)
if /i __input__ == 8 (goto disablegeolocationservice)
if /i __input__ == 9 (goto page9)
if /i __input__ == 10 (goto menutienganh)
if /i __input__ == 1F (goto sorry)
if /i __input__ == 2F (goto sorry)
if /i __input__ == 3F (goto sorry)
if /i __input__ == 4F (goto sorry)
if /i __input__ == 5F (goto sorry)
if /i __input__ == 6F (goto sorry)
if /i __input__ == 7F (goto sorry)
if /i __input__ == 8F (goto sorry)
cls
echo.
echo.
echo.      [97mYou entered the wrong choice  please enter again
echo.
echo.
pause >nul
goto page10

:disablegamebar
reg add "HKLM\SOFTWARE\Microsoft\PolicyManager\default\ApplicationManagement\AllowGameDVR" /v "value" /t REG_SZ /d "00000000" /f
reg add "HKEY_CURRENT_USER\System\GameConfigStore" /v GameDVR_Enabled /t REG_DWORD /d 0 /f
reg add "HKEY_CURRENT_USER\System\GameConfigStore" /v GameDVR_FSEBehaviorMode /t REG_DWORD /d 2 /f
goto windowstweaks

:disablegamebarF
chcp 65001 >nul 2>&1
cls
echo.
echo.
echo.
echo.[38 5 33m                                                   ╔══════════════════════════════════════════════════════════════════════════════════════════════════════╗
echo.[38 5 69m                                                   ║                   Game Bar is a Windows 10 feature for recording  screenshotting                     ║
echo.[38 5 105m                                                   ║           and monitoring system performance (FPS  CPU  RAM) during gaming and app usage              ║
echo.[38 5 177m                                                   ║ Also includes audio/mic control and Xbox Live integration. Open with Windows + G or search 'Game Bar'║
echo.[38 5 213m                                                   ╚══════════════════════════════════════════════════════════════════════════════════════════════════════╝
echo.
echo.
echo.                                                                     "This is an explanation from AI, but I'm not sure if it's correct"
echo.
echo.
pause
goto windowstweaks

:disablefax
reg add "HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Services\Fax" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Services\Spooler" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Services\PrintNotify" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Services\PrintWorkflowUserSvc" /v "Start" /t REG_DWORD /d "4" /f
goto windowstweaks

:disablefaxF
chcp 65001 >nul 2>&1
cls
echo.
echo.
echo.
echo.[38 5 33m                                                   ╔══════════════════════════════════════════════════════════════════════════════════════════════════════╗
echo.[38 5 33m                                                   ║           Windows Fax is used for sends and receives documents via phone lines  enabling :           ║
echo.[38 5 105m                                                   ║     Direct faxing from applications Automatic fax reception Electronic fax storage and management    ║
echo.[38 5 177m                                                   ║                                 Fax sharing via email or network                                     ║
echo.[38 5 213m                                                   ╚══════════════════════════════════════════════════════════════════════════════════════════════════════╝
echo.
echo.
echo.                                                                      "This is an explanation from AI, but I'm not sure if it's correct"
echo.
echo.
pause >nul
goto windowstweaks

:disabletelemetryanddatacollection
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\DataCollection" /v "AllowTelemetry" /t REG_DWORD /d "0" /f
reg add "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Policies\DataCollection" /v "AllowTelemetry" /t REG_DWORD /d 00000000 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\DataCollection" /v "AllowDeviceNameInTelemetry" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\CloudContent" /v "DisableWindowsConsumerFeatures" /t REG_DWORD /d "1" /f
goto windowstweaks

:disabletelemetryanddatacollectionF
chcp 65001 >nul 2>&1
cls
echo.
echo.
echo.
echo.[38 5 33m                                                   ╔══════════════════════════════════════════════════════════════════════════════════════════════════════╗
echo.[38 5 33m                                                   ║         Telemetry and Data Collection are gathering  measuring  and analyzing data to monitor        ║
echo.[38 5 105m                                                   ║                                manage  and optimize system performance                               ║
echo.[38 5 177m                                                   ╚══════════════════════════════════════════════════════════════════════════════════════════════════════╝
echo.
echo.
echo.                                                                    "This is an explanation from AI, but I'm not sure if it's correct"
echo.
echo.
pause >nul
goto windowstweaks

:disablesmartscreen
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer" /v "SmartScreenEnabled" /t REG_SZ /d "Off" /f
reg add "HKLM\SOFTWARE\WOW6432Node\Microsoft\Windows\CurrentVersion\Explorer" /v "SmartScreenEnabled" /t REG_SZ /d "Off" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppHost" /v "EnableWebContentEvaluation" /t REG_DWORD /d 0 /f
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\AppHost" /v "EnableWebContentEvaluation" /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\System" /v "EnableSmartScreen" /t REG_DWORD /d 0 /f
goto windowstweaks

:disablesmartscreenF
chcp 65001 >nul 2>&1
cls
echo.
echo.
echo.
echo.[38 5 33m                                                   ╔══════════════════════════════════════════════════════════════════════════════════════════════════════╗
echo.[38 5 33m                                                   ║               Smart Screen is a Windows security feature that scans and analyzes apps                ║
echo.[38 5 105m                                                   ║         for malware  viruses  and threats before installation  protecting devices from harm          ║
echo.[38 5 177m                                                   ╚══════════════════════════════════════════════════════════════════════════════════════════════════════╝
echo.
echo.
echo.                                                                    "This is an explanation from AI, but I'm not sure if it's correct"
echo.
echo.
pause >nul
goto windowstweaks

:optimizemenufileexplorer
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "DontPrettyPath" /t REG_DWORD /d 1 /f
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "HideFileExt" /t REG_DWORD /d 0 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "DisallowShaking" /t REG_DWORD /d "1" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "EnableBalloonTips" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v "NoLowDiskSpaceChecks" /t REG_DWORD /d "1" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v "LinkResolveIgnoreLinkInfo" /t REG_DWORD /d "1" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v "NoResolveSearch" /t REG_DWORD /d "1" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v "NoResolveTrack" /t REG_DWORD /d "1" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v "NoInternetOpenWith" /t REG_DWORD /d "1" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v "NoInstrumentation" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer" /v "Max Cached Icons" /t REG_SZ /d "4000" /f
goto windowstweaks

:optimizemenufileexplorerF
chcp 65001 >nul 2>&1
cls
echo.
echo.
echo.
echo.[38 5 33m                                                   ╔══════════════════════════════════════════════════════════════════════════════════════════════════════╗
echo.[38 5 33m                                                   ║ File Explorer Menu is the main menu in Windows File Explorer  offering file management options like  ║
echo.[38 5 105m                                                   ║                         New  Open  Save  Print  Share  Manage  and Options                           ║
echo.[38 5 177m                                                   ╚══════════════════════════════════════════════════════════════════════════════════════════════════════╝
echo.
echo.
echo.                                                                    "This is an explanation from AI, but I'm not sure if it's correct"
echo.
echo.
pause >nul
goto windowstweaks

:disablewindowssearch
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Search" /v "AllowCortana" /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Search" /v "AllowSearchToUseLocation" /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Search" /v "ConnectedSearchPrivacy" /t REG_DWORD /d 3 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Search" /v "ConnectedSearchUseWeb" /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Search" /v "ConnectedSearchUseWebOverMeteredConnections" /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Search" /v "DisableWebSearch" /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Microsoft\PolicyManager\default\Experience\AllowCortana" /v "value" /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Search" /v "CortanaEnabled" /t REG_DWORD /d 0 /f
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Search" /v "BingSearchEnabled" /t REG_DWORD /d 0 /f
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Search" /v "CortanaEnabled" /t REG_DWORD /d 0 /f
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Search" /v "CanCortanaBeEnabled" /t REG_DWORD /d 0 /f
reg add "HKCU\SOFTWARE\Microsoft\Personalization\Settings" /v "AcceptedPrivacyPolicy" /t REG_DWORD /d 0 /f
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Search" /v "DeviceHistoryEnabled" /t REG_DWORD /d 0 /f
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Search" /v "HistoryViewEnabled" /t REG_DWORD /d 0 /f
goto windowstweaks

:disablewindowssearchF
chcp 65001 >nul 2>&1
cls
echo.
echo.
echo.
echo.[38 5 33m                                                   ╔══════════════════════════════════════════════════════════════════════════════════════════════════════╗
echo.[38 5 33m                                                   ║      Windows Search is a built-in search feature on Windows  finding files  apps  emails  images     ║
echo.[38 5 105m                                                   ║                                    and more on your PC or online                                     ║
echo.[38 5 177m                                                   ╚══════════════════════════════════════════════════════════════════════════════════════════════════════╝
echo.
echo.
echo.                                                                    "This is an explanation from AI, but I'm not sure if it's correct"
echo.
echo.
pause >nul
goto windowstweaks

:disableshownotifications
reg add "HKCU\SOFTWARE\Policies\Microsoft\Windows\CurrentVersion\PushNotifications" /v "NoTileApplicationNotification" /t REG_DWORD /d "1" /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Services\WerSvc" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Services\WpnService" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Services\WpnUserService" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Services\SharedAccess\Parameters\FirewallPolicy\DomainProfile" /v "DisableNotifications" /t REG_DWORD /d 00000001 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Services\SharedAccess\Parameters\FirewallPolicy\StandardProfile" /v "DisableNotifications" /t REG_DWORD /d 00000001 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Services\SharedAccess\Parameters\FirewallPolicy\PublicProfile" /v "DisableNotifications" /t REG_DWORD /d 00000001 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Services\SharedAccess\Parameters\FirewallPolicy\StandardProfile" /v "DisableNotifications" /t REG_DWORD /d 00000001 /f
goto windowstweaks

:disableshownotificationsF
chcp 65001 >nul 2>&1
cls
echo.
echo.
echo.
echo.[38 5 33m                                                   ╔══════════════════════════════════════════════════════════════════════════════════════════════════════╗
echo.[38 5 33m                                                   ║            Windows Notifications: displays real-time alerts from apps  system  and services          ║
echo.[38 5 105m                                                   ║   including app notifications  system updates  messages  calendar events  and security warnings      ║
echo.[38 5 177m                                                   ╚══════════════════════════════════════════════════════════════════════════════════════════════════════╝
echo.
echo.
echo.                                                                    "This is an explanation from AI, but I'm not sure if it's correct"
echo.
echo.
pause >nul
goto windowstweaks

:disablewindowsupdate
taskkill /F /FI "IMAGENAME eq SystemSettings.exe"
net stop wuauserv
net stop UsoSvc
reg add "HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Services\wuauserv" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Services\WaaSMedicSvc" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Services\PeerDistSvc" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Services\UsoSvc" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Services\DoSvc" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate" /v "DoNotConnectToWindowsUpdateInternetLocations" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate" /v "SetDisableUXWUAccess" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\AU" /v "NoAutoUpdate" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate" /v "ExcludeWUDriversInQualityUpdate" /t REG_DWORD /d "1" /f
net start wuauserv
net start UsoSvc
goto windowstweaks

:disablewindowsupdateF
chcp 65001 >nul 2>&1
cls
echo.
echo.
echo.
echo.[38 5 33m                                                   ╔══════════════════════════════════════════════════════════════════════════════════════════════════════╗
echo.[38 5 33m                                                   ║                 Windows Update is a feature that automatically downloads and installs                ║
echo.[38 5 105m                                                   ║    Windows operating system updates  security patches  new features  and performance enhancements    ║
echo.[38 5 177m                                                   ╚══════════════════════════════════════════════════════════════════════════════════════════════════════╝
echo.
echo.
echo.                                                                    "This is an explanation from AI, but I'm not sure if it's correct"
echo.
echo.
pause >nul
goto windowstweaks

:disablesettingsync
Reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\SettingSync" /v "SyncPolicy" /t Reg_DWORD /d 5 /f
Reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\SettingSync\Groups\Accessibility" /v "Enabled" /t Reg_DWORD /d 0 /f
Reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\SettingSync\Groups\AppSync" /v "Enabled" /t Reg_DWORD /d 0 /f
Reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\SettingSync\Groups\BrowserSettings" /v "Enabled" /t Reg_DWORD /d 0 /f
Reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\SettingSync\Groups\Credentials" /v "Enabled" /t Reg_DWORD /d 0 /f
Reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\SettingSync\Groups\DesktopTheme" /v "Enabled" /t Reg_DWORD /d 0 /f
Reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\SettingSync\Groups\Language" /v "Enabled" /t Reg_DWORD /d 0 /f
Reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\SettingSync\Groups\PackageState" /v "Enabled" /t Reg_DWORD /d 0 /f
Reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\SettingSync\Groups\Personalization" /v "Enabled" /t Reg_DWORD /d 0 /f
Reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\SettingSync\Groups\StartLayout" /v "Enabled" /t Reg_DWORD /d 0 /f
Reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\SettingSync\Groups\Windows" /v "Enabled" /t Reg_DWORD /d 0 /f
Reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\SettingSync" /v "DisableSettingSync" /t Reg_DWORD /d 2 /f
Reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\SettingSync" /v "DisableSettingSyncUserOverride" /t Reg_DWORD /d 1 /f
Reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\SettingSync" /v "DisableAppSyncSettingSync" /t Reg_DWORD /d 2 /f
Reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\SettingSync" /v "DisableAppSyncSettingSyncUserOverride" /t Reg_DWORD /d 1 /f
Reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\SettingSync" /v "DisableApplicationSettingSync" /t Reg_DWORD /d 2 /f
Reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\SettingSync" /v "DisableApplicationSettingSyncUserOverride" /t Reg_DWORD /d 1 /f
Reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\SettingSync" /v "DisableCredentialsSettingSync" /t Reg_DWORD /d 2 /f
Reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\SettingSync" /v "DisableCredentialsSettingSyncUserOverride" /t Reg_DWORD /d 1 /f
Reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\SettingSync" /v "DisableDesktopThemeSettingSync" /t Reg_DWORD /d 2 /f
Reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\SettingSync" /v "DisableDesktopThemeSettingSyncUserOverride" /t Reg_DWORD /d 1 /f
Reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\SettingSync" /v "DisablePersonalizationSettingSync" /t Reg_DWORD /d 2 /f
Reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\SettingSync" /v "DisablePersonalizationSettingSyncUserOverride" /t Reg_DWORD /d 1 /f
Reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\SettingSync" /v "DisableStartLayoutSettingSync" /t Reg_DWORD /d 2 /f
Reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\SettingSync" /v "DisableStartLayoutSettingSyncUserOverride" /t Reg_DWORD /d 1 /f
Reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\SettingSync" /v "DisableSyncOnPaidNetwork" /t Reg_DWORD /d 1 /f
Reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\SettingSync" /v "DisableWebBrowserSettingSync" /t Reg_DWORD /d 2 /f
Reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\SettingSync" /v "DisableWebBrowserSettingSyncUserOverride" /t Reg_DWORD /d 1 /f
Reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\SettingSync" /v "DisableWindowsSettingSync" /t Reg_DWORD /d 2 /f
Reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\SettingSync" /v "DisableWindowsSettingSyncUserOverride" /t Reg_DWORD /d 1 /f
goto page2

:disablesettingsyncF
chcp 65001 >nul 2>&1
cls
echo.
echo.
echo.
echo.[38 5 33m                                                   ╔════════════════════════════════════════════════════════════════════════════════════════════════════════════╗
echo.[38 5 33m                                                   ║    SettingSync is a Windows feature that syncs settings like themes  passwords  and language preference    ║
echo.[38 5 105m                                                   ║  across devices using your Microsoft account. It ensures a consistent experience on all connected devices  ║
echo.[38 5 177m                                                   ╚════════════════════════════════════════════════════════════════════════════════════════════════════════════╝
echo.
echo.
echo.                                                                       "This is an explanation from AI, but I'm not sure if it's correct"
echo.
echo.
pause >nul
goto page2

:disablebluetooth
reg add "HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Services\BTAGService" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Services\bthserv" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Services\BthAvctpSvc" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Services\NaturalAuthentication" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Services\BluetoothUserService" /v "Start" /t REG_DWORD /d "4" /f
goto page2

:disablebluetoothF
chcp 65001 >nul 2>&1
cls
echo.
echo.
echo.
echo.[38 5 33m                                                   ╔══════════════════════════════════════════════════════════════════════════════════════════════════════╗
echo.[38 5 33m                                                   ║                   Bluetooth is a wireless technology that allows devices to connect                  ║
echo.[38 5 105m                                                   ║                       and exchange data over short distances using radio waves                       ║
echo.[38 5 177m                                                   ╚══════════════════════════════════════════════════════════════════════════════════════════════════════╝
echo.
echo.
echo.                                                                    "This is an explanation from AI, but I'm not sure if it's correct"
echo.
echo.
pause >nul
goto page2

:disablewindowsdefender
reg add "HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Services\Sense" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Services\WdNisSvc" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Services\WdFilter" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Services\WinDefend" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Services\SamSs" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Services\wscsvc" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Services\SgrmBroker" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Services\SecurityHealthService" /v "Start" /t REG_DWORD /d "4" /f
net stop Sense
net stop WdFilter
net stop WdNisSvc
net stop WinDefend
reg add "HKLM\SOFTWARE\Microsoft\Windows Defender" /v "DisableAntiVirus" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows Defender" /v "DisableAntiSpyware" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows Defender" /v "DisableRoutinelyTakingAction" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows Defender" /v "OneTimeSqmDataSent" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\Spynet" /v "SpyNetReporting" /t REG_DWORD /d 0 /
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\Spynet" /v "SubmitSamplesConsent" /t REG_DWORD /d 2 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\Real-Time Protection" /v "DisableBehaviorMonitoring" /t REG_DWORD /d 1 /
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\Real-Time Protection" /v "DisableOnAccessProtection" /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\Real-Time Protection" /v "DisableScanOnRealtimeEnable" /t REG_DWORD /d 1 /f
reg add "HKLM\Software\Policies\Microsoft\Windows Defender\Real-Time Protection" /v "DisableRealtimeMonitoring" /t REG_DWORD /d 1 /
reg add "HKLM\SOFTWARE\Microsoft\Windows Defender\UX Configuration" /v "DisablePrivacyMode" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows Defender\Scan" /v "AutomaticallyCleanAfterScan" /t REG_DWORD /d "0" /f
schtasks /Change /TN "Microsoft\Windows\Windows Defender\Windows Defender Cache Maintenance" /Disable > NUL 2>&1
schtasks /Change /TN "Microsoft\Windows\Windows Defender\Windows Defender Cleanup" /Disable > NUL 2>&1
schtasks /Change /TN "Microsoft\Windows\Windows Defender\Windows Defender Scheduled Scan" /Disable > NUL 2>&1
schtasks /Change /TN "Microsoft\Windows\Windows Defender\Windows Defender Verification" /Disable > NUL 2>&1
reg add "HKLM\SOFTWARE\Policies\Microsoft\MRT" /v "DontOfferThroughWUAU" /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\MRT" /v "DontReportInfectionInformation" /t REG_DWORD /d 1 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\WdNisDrv" /v "Start" /t REG_DWORD /d 4 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\WdBoot" /v "Start" /t REG_DWORD /d 4 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\WdFilter" /v "Start" /t REG_DWORD /d 4 /f
regsvr32 /s /u "C:\Program Files\Windows Defender\shellext.dll"
taskkill /f /im MSASCuiL.exe
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Run" /v "WindowsDefender" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows Defender\Real-Time Protection" /v "DisableAntiSpywareRealtimeProtection" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows Defender\Real-Time Protection" /v "DisableRealtimeMonitoring" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows Defender\Real-Time Protection" /v "DpaDisabled" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows Defender" /v "ProductStatus" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows Defender" /v "ManagedDefenderProductType" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\MRT" /v "DontReportInfectionInformation" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\SecurityHealthService" /v "Start" /t REG_DWORD /d "4" /f
goto page2

:disablewindowsdefenderF
chcp 65001 >nul 2>&1
cls
echo.
echo.
echo.
echo.[38 5 33m                                                   ╔══════════════════════════════════════════════════════════════════════════════════════════════════════╗
echo.[38 5 33m                                                   ║       Windows Defender is a built-in antivirus program in Windows that protects your computer        ║
echo.[38 5 105m                                                   ║                           from viruses  malware  and other security threats                          ║
echo.[38 5 177m                                                   ╚══════════════════════════════════════════════════════════════════════════════════════════════════════╝
echo.
echo.
echo.                                                                    "This is an explanation from AI, but I'm not sure if it's correct"
echo.
echo.
pause >nul
goto page2

:disablebiometrics
reg add "HKLM\SOFTWARE\Policies\Microsoft\Biometrics" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\WbioSrvc" /v "Start" /t REG_DWORD /d "4" /f
goto page2

:disablebiometricsF
chcp 65001 >nul 2>&1
cls
echo.
echo.
echo.
echo.[38 5 33m                                                   ╔══════════════════════════════════════════════════════════════════════════════════════════════════════╗
echo.[38 5 33m                                                   ║         Windows Biometrics is a security feature that uses biometric data  like fingerprints         ║
echo.[38 5 105m                                                   ║               or facial recognition  to authenticate users and enhance device security               ║
echo.[38 5 177m                                                   ╚══════════════════════════════════════════════════════════════════════════════════════════════════════╝
echo.
echo.
echo.                                                                    "This is an explanation from AI, but I'm not sure if it's correct"
echo.
echo.
pause >nul
goto page2

:disablewindowsfirewall
reg add "HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Services\mpssvc" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Services\BFE" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Services\SharedAccess\Parameters\FirewallPolicy\StandardProfile" /v "EnableFirewall" /t REG_DWORD /d 00000000 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Services\SharedAccess\Parameters\FirewallPolicy\StandardProfile" /v "DisableNotifications" /t REG_DWORD /d 00000001 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Services\SharedAccess\Parameters\FirewallPolicy\StandardProfile" /v "DoNotAllowExceptions" /t REG_DWORD /d 00000001 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Services\SharedAccess\Parameters\FirewallPolicy\DomainProfile" /v "EnableFirewall" /t REG_DWORD /d 00000000 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Services\SharedAccess\Parameters\FirewallPolicy\DomainProfile" /v "DisableNotifications" /t REG_DWORD /d 00000001 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Services\SharedAccess\Parameters\FirewallPolicy\DomainProfile" /v "DoNotAllowExceptions" /t REG_DWORD /d 00000001 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Services\SharedAccess\Parameters\FirewallPolicy\PublicProfile" /v "EnableFirewall" /t REG_DWORD /d 00000000 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Services\SharedAccess\Parameters\FirewallPolicy\PublicProfile" /v "DisableNotifications" /t REG_DWORD /d 00000001 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Services\SharedAccess\Parameters\FirewallPolicy\PublicProfile" /v "DoNotAllowExceptions" /t REG_DWORD /d 00000001 /f
goto page2

:disablewindowsfirewallF
chcp 65001 >nul 2>&1
cls
echo.
echo.
echo.
echo.[38 5 33m                                                   ╔══════════════════════════════════════════════════════════════════════════════════════════════════════╗
echo.[38 5 33m                                                   ║       Windows Firewall is a security feature that monitors and controls incoming and outgoing        ║
echo.[38 5 105m                                                   ║           network traffic to protect your computer from unauthorized access and threats              ║
echo.[38 5 177m                                                   ╚══════════════════════════════════════════════════════════════════════════════════════════════════════╝
echo.
echo.
echo.                                                                    "This is an explanation from AI, but I'm not sure if it's correct"
echo.
echo.
pause >nul
goto page2

:disablehyperv
reg add "HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Services\HvHost" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Services\vmickvpexchange" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Services\vmicguestinterface" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Services\vmicshutdown" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Services\vmicheartbeat" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Services\vmicvmsession" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Services\vmicrdv" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Services\vmictimesync" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Services\vmicvss" /v "Start" /t REG_DWORD /d "4" /f
goto page2

:disablehypervF
chcp 65001 >nul 2>&1
cls
echo.
echo.
echo.
echo.[38 5 33m                                                   ╔══════════════════════════════════════════════════════════════════════════════════════════════════════╗
echo.[38 5 33m                                                   ║                     Hyper-V is a virtualization feature in Windows that allows you                   ║
echo.[38 5 105m                                                   ║ to create and manage virtual machines to run multiple operating systems on the same physical device  ║
echo.[38 5 177m                                                   ╚══════════════════════════════════════════════════════════════════════════════════════════════════════╝
echo.
echo.
echo.                                                                    "This is an explanation from AI, but I'm not sure if it's correct"
echo.
echo.
pause >nul
goto page2

:disablefsoglobally
reg add "HKCU\System\GameConfigStore" /v "GameDVR_Enabled" /t REG_DWORD /d "0" /f
reg add "HKCU\System\GameConfigStore" /v "GameDVR_FSEBehaviorMode" /t REG_DWORD /d "2" /f
reg add "HKCU\System\GameConfigStore" /v "GameDVR_HonorUserFSEBehaviorMode" /t REG_DWORD /d "0" /f
reg add "HKCU\System\GameConfigStore" /v "GameDVR_DXGIHonorFSEWindowsCompatible" /t REG_DWORD /d "0" /f
reg add "HKCU\System\GameConfigStore" /v "GameDVR_EFSEFeatureFlags" /t REG_DWORD /d "0" /f
goto page2

:disablefsogloballyF
chcp 65001 >nul 2>&1
echo.
echo.
echo.
echo.[38 5 33m                                                   ╔════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════╗
echo.[38 5 33m                                                   ║                    FSO (File System Object) globally refers to using the File System Object in a global                    ║
echo.[38 5 105m                                                   ║ scope within scripting environments like VBScript. It allows managing files  folders  and drives across the entire system  ║
echo.[38 5 177m                                                   ╚════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════╝
echo.
echo.
echo.                                                                               "This is an explanation from AI, but I'm not sure if it's correct"
echo.
echo.
pause >nul
goto page2

:diablewindowserrorreporting
reg add "HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Services\WerSvc" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Services\WpnService" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Services\WpnUserService" /v "Start" /t REG_DWORD /d "4" /f
goto page2

:diablewindowserrorreportingF
chcp 65001 >nul 2>&1
cls
echo.
echo.
echo.
echo.[38 5 33m                                                   ╔══════════════════════════════════════════════════════════════════════════════════════════════════════════════════╗
echo.[38 5 33m                                                   ║             Windows Error Reporting is a feature in Windows that collects information about system errors        ║
echo.[38 5 105m                                                   ║   and crashes  then sends the data to Microsoft for analysis to improve the system's performance and stability   ║
echo.[38 5 177m                                                   ╚══════════════════════════════════════════════════════════════════════════════════════════════════════════════════╝
echo.
echo.
echo.                                                                         "This is an explanation from AI, but I'm not sure if it's correct"
echo.
echo.
pause >nul
goto page2

:sorry
chcp 65001 >nul 2>&1
cls
echo.
echo.
echo.
echo.[38 5 33m                                                   ╔══════════════════════════════════════════════════════════════════════════════════════════════════════════════════╗
echo.[38 5 33m                                                   ║                This is a test version. Some features  including this one  are still under development            ║
echo.[38 5 105m                                                   ║                                         We'll improve it in future updates                                       ║
echo.[38 5 177m                                                   ╚══════════════════════════════════════════════════════════════════════════════════════════════════════════════════╝
echo.
echo.
echo.
pause >nul
goto menutienganh

:disableprogramcompatibilityassistant
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\AppCompat" /v "DisablePCA" /t REG_DWORD /d 1 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\PcaSvc" /v "Start" /t REG_DWORD /d 4 /f
goto page3

:disablesmartcardsupport
reg add "HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Services\SCardSvr" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Services\ScDeviceEnum" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Services\SCPolicySvc" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Services\CertPropSvc" /v "Start" /t REG_DWORD /d "4" /f
goto page3

:disabletaskscheduler
reg add "HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Services\Schedule" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Services\TimeBrokerSvc" /v "Start" /t REG_DWORD /d "4" /f
goto page3

:disablewatsonmalwarereports
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\Reporting" /v "DisableGenericReports" /t REG_DWORD /d 1 /f
goto page3

:disablewindowscustomerexperienceimprovementprogram
reg add "HKLM\SOFTWARE\Policies\Microsoft\SQMClient\Windows" /v "CEIPEnable" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Messenger\Client" /v "CEIP" /t REG_DWORD /d "2" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\SQMClient" /v "CorporateSQMURL" /t REG_SZ /d "0.0.0.0" /f
schtasks /end /tn "\Microsoft\Windows\Customer Experience Improvement Program\Consolidator" > nul 2>&1
schtasks /change /tn "\Microsoft\Windows\Customer Experience Improvement Program\Consolidator" /Disable > nul 2>&1
schtasks /end /tn "\Microsoft\Windows\Customer Experience Improvement Program\BthSQM" > nul 2>&1
schtasks /change /tn "\Microsoft\Windows\Customer Experience Improvement Program\BthSQM" /Disable > nul 2>&1
schtasks /end /tn "\Microsoft\Windows\Customer Experience Improvement Program\KernelCeipTask" > nul 2>&1
schtasks /change /tn "\Microsoft\Windows\Customer Experience Improvement Program\KernelCeipTask" /Disable > nul 2>&1
schtasks /end /tn "\Microsoft\Windows\Customer Experience Improvement Program\UsbCeip" > nul 2>&1
schtasks /change /tn "\Microsoft\Windows\Customer Experience Improvement Program\UsbCeip" /Disable > nul 2>&1
schtasks /end /tn "\Microsoft\Windows\Customer Experience Improvement Program\Uploader" > nul 2>&1
schtasks /change /tn "\Microsoft\Windows\Customer Experience Improvement Program\Uploader" /Disable > nul 2>&1
schtasks /end /tn "\Microsoft\Windows\Application Experience\Microsoft Compatibility Appraiser" > nul 2>&1
schtasks /change /tn "\Microsoft\Windows\Application Experience\Microsoft Compatibility Appraiser" /Disable > nul 2>&1
schtasks /end /tn "\Microsoft\Windows\Application Experience\ProgramDataUpdater" > nul 2>&1
schtasks /change /tn "\Microsoft\Windows\Application Experience\ProgramDataUpdater" /Disable > nul 2>&1
schtasks /end /tn "\Microsoft\Windows\Application Experience\StartupAppTask" > nul 2>&1
schtasks /end /tn "\Microsoft\Windows\Shell\FamilySafetyMonitor" > nul 2>&1
schtasks /change /tn "\Microsoft\Windows\Shell\FamilySafetyMonitor" /Disable > nul 2>&1
schtasks /end /tn "\Microsoft\Windows\Shell\FamilySafetyRefresh" > nul 2>&1
schtasks /change /tn "\Microsoft\Windows\Shell\FamilySafetyRefresh" /Disable > nul 2>&1
schtasks /end /tn "\Microsoft\Windows\Shell\FamilySafetyUpload" > nul 2>&1
schtasks /change /tn "\Microsoft\Windows\Shell\FamilySafetyUpload" /Disable > nul 2>&1
schtasks /end /tn "\Microsoft\Windows\Maintenance\WinSAT" > nul 2>&1
goto page3

:disablediagnosticdata
reg add "HKLM\SOFTWARE\Policies\Microsoft\MRT" /v "DontReportInfectionInformation" /t REG_DWORD /d 1 /f
goto page3

:disableremotedesktop
reg add "HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Services\RasAuto" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Services\RasMan" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Services\SessionEnv" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Services\TermService" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Services\UmRdpService" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Services\RemoteRegistry" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Services\RpcLocator" /v "Start" /t REG_DWORD /d "4" /f
goto page3

:diablesettingoverridereportingtomicrosoftMAPS
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows Defender\Spynet" /v SubmitSamplesConsent /t REG_DWORD /d 0 /f
goto page3

:disablespynetdefenderreporting
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\Spynet" /v "SpynetReporting" /t REG_DWORD /d 0 /f
goto page4

:disableAMDtxtlogging
reg add "HKLM\SYSTEM\CurrentControlSet\Services\amdlog" /v "Start" /t REG_DWORD /d "4" /f
goto page4

:disabletelemetrypackagesforcardnvidia
if exist "C:\Program Files\NVIDIA Corporation\Installer2\InstallerCore\NVI2.DLL" (
rundll32 "C:\Program Files\NVIDIA Corporation\Installer2\InstallerCore\NVI2.DLL" UninstallPackage NvTelemetryContainer
rundll32 "C:\Program Files\NVIDIA Corporation\Installer2\InstallerCore\NVI2.DLL" UninstallPackage NvTelemetry
)
goto page4

:disablefileleftoverforcardnvidia
del /s C:\System32\DriverStore\FileRepository\NvTelemetry*.dll
rmdir /s /q "C:\Program Files\NVIDIA Corporation\NvTelemetry" 2
rmdir /s /q "C:\Program Files (x86)\NVIDIA Corporation\NvTelemetry" 2
goto page4

:optimizechromeconfig
icacls "C:\Users\adminpc\AppData\Local\Google\Chrome\User Data\SwReporter" /inheritance:r /deny "*S-1-1-0:(OI)(CI)(F)" "*S-1-5-7:(OI)(CI)(F)"
cacls "C:\Users\adminpc\AppData\Local\Google\Chrome\User Data\SwReporter" /e /c /d adminpc
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v "DisallowRun" /t REG_DWORD /d 1 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer\DisallowRun" /v "1" /t REG_SZ /d "software_reporter_tool.exe" /f
goto page4

:disablechromemetrics
reg add "HKLM\SOFTWARE\Policies\Google\Chrome" /v "MetricsReportingEnabled" /t REG_DWORD /d 0 /f
goto page4

:disablenvidiatasksservices
schtasks /change /TN NvTmMon_{B2FE1952-0186-46C3-BAEC-A80AA35AC5B8} /DISABLE
schtasks /change /TN NvTmRep_{B2FE1952-0186-46C3-BAEC-A80AA35AC5B8} /DISABLE
schtasks /change /TN NvTmRepOnLogon_{B2FE1952-0186-46C3-BAEC-A80AA35AC5B8} /DISABLE
)
goto page4

:diablerrrorreportingtochrome
reg add "HKLM\SOFTWARE\Policies\Google\Chrome" /v "ChromeCleanupReportingEnabled" /t REG_DWORD /d 0 /f
goto page4

:disablechromeupdate
sc stop "gupdate"sc config "gupdate" start=disabled
sc stop "gupdatem"sc config "gupdatem" start=disabled
schtasks /change /disable /tn "GoogleUpdateTaskMachineCore"
schtasks /change /disable /tn "GoogleUpdateTaskMachineUA"
goto page5

:optimizefirefoxbrowser
reg add HKLM\SOFTWARE\Policies\Mozilla\Firefox /v DisableDefaultBrowserAgent /t REG_DWORD /d 1 /f
schtasks /change /disable /tn "\Mozilla\Firefox Default Browser Agent 308046B0AF4A39CB"
schtasks /change /disable /tn "\Mozilla\Firefox Default Browser Agent D2CEEC440E2074BD"
goto page5

:disablereportsinwindowsmediaplayer
reg add "HKCU\SOFTWARE\Microsoft\MediaPlayer\Preferences" /v "UsageTracking" /t REG_DWORD /d 0 /f
sc stop "WMPNetworkSvc"sc config "WMPNetworkSvc" start=disabled
goto page5

:optimizevisualstudiocode
rmdir /s /q "C:\Users\adminpc\AppData\Roaming\vstelemetry" 2>nul
rmdir /s /q "C:\Users\adminpc\AppData\Local\Microsoft\VSApplicationInsights" 2>nul
rmdir /s /q "C:\ProgramData\Microsoft\VSApplicationInsights" 2>nul
rmdir /s /q "C:\Users\adminpc\AppData\Local\Temp\Microsoft\VSApplicationInsights" 2>nul
rmdir /s /q "C:\Users\adminpc\AppData\Local\Temp\VSFaultInfo" 2>nul
rmdir /s /q "C:\Users\adminpc\AppData\Local\Temp\VSFeedbackPerfWatsonData" 2>nul
rmdir /s /q "C:\Users\adminpc\AppData\Local\Temp\VSFeedbackVSRTCLogs" 2>nul
rmdir /s /q "C:\Users\adminpc\AppData\Local\Temp\VSRemoteControl" 2>nul
rmdir /s /q "C:\Users\adminpc\AppData\Local\Temp\VSTelem" 2>nul
rmdir /s /q "C:\Users\adminpc\AppData\Local\Temp\VSTelem.Out" 2>nul
goto page5

:disablepowershelltelemetry
setx POWERSHELL_TELEMETRY_OPTOUT 1
goto page5

:disableskypetelemetry
reg add "HKCU\SOFTWARE\Microsoft\Tracing\WPPMediaPerApp\Skype\ETW" /v "TraceLevelThreshold" /t REG_DWORD /d 0 /f
reg add "HKCU\SOFTWARE\Microsoft\Tracing\WPPMediaPerApp\Skype" /v "EnableTracing" /t REG_DWORD /d 0 /f
reg add "HKCU\SOFTWARE\Microsoft\Tracing\WPPMediaPerApp\Skype\ETW" /v "EnableTracing" /t REG_DWORD /d 0 /f
reg add "HKCU\SOFTWARE\Microsoft\Tracing\WPPMediaPerApp\Skype" /v "WPPFilePath" /t REG_SZ /d "%%SYSTEMDRIVE%%\TEMP\Tracing\WPPMedia" /f
reg add "HKCU\SOFTWARE\Microsoft\Tracing\WPPMediaPerApp\Skype\ETW" /v "WPPFilePath" /t REG_SZ /d "%%SYSTEMDRIVE%%\TEMP\WPPMedia" /f
goto page5

:diableerrorreportingtochrome
reg add "HKLM\SOFTWARE\Policies\Google\Chrome" /v "ChromeCleanupReportingEnabled" /t REG_DWORD /d 0 /f
goto page5

:diableadobetelemetryandservices
sc stop "AdobeARMservice"sc config "AdobeARMservice" start=disabled
sc stop "adobeupdateservice"sc config "adobeupdateservice" start=disabled
sc stop "adobeflashplayerupdatesvc"sc config "adobeflashplayerupdatesvc" start=disabled
schtasks /change /tn "Adobe Acrobat Update Task" /disable
schtasks /change /tn "Adobe Flash Player Updater" /disable
goto page5

:disablerazergamescanning
sc stop "Razer Game Scanner Service"sc config "Razer Game Scanner Service" start=disabled
goto page6

:optimizelogitechregistryservice
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer" /v "link" /t REG_BINARY /d "00000000" /f >nul 2>&1
sc stop "LogiRegistryService"sc config "LogiRegistryService" start=disabled
goto page6

:optimizedirectx
reg add "HKLM\SOFTWARE\Microsoft\Direct3D" /v "DisableVidMemVBs" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Microsoft\Direct3D" /v "MMX Fast Path" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Microsoft\Direct3D" /v "FlipNoVsync" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Microsoft\Direct3D\Drivers" /v "SoftwareOnly" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /v "DpiMapIommuContiguous" /t REG_DWORD /d "1" /f
goto page6

:boostperformancedirectxandkenelgaming
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /v HWSchMode /t REG_DWORD /d 2 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v LargeSystemCache /t REG_DWORD /d 0 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\Ndu" /v Start /t REG_DWORD /d 4 /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\DirectX" /v MaxFeatureLevel /t REG_DWORD /d 0x000c0000 /f
goto page6

:optimizeccleaner
reg add "HKCU\Software\Piriform\CCleaner" /v "Monitoring" /t REG_DWORD /d 0 /f
reg add "HKCU\Software\Piriform\CCleaner" /v "HelpImproveCCleaner" /t REG_DWORD /d 0 /f
reg add "HKCU\Software\Piriform\CCleaner" /v "SystemMonitoring" /t REG_DWORD /d 0 /f
reg add "HKCU\Software\Piriform\CCleaner" /v "UpdateAuto" /t REG_DWORD /d 0 /f
reg add "HKCU\Software\Piriform\CCleaner" /v "UpdateCheck" /t REG_DWORD /d 0 /f
reg add "HKCU\Software\Piriform\CCleaner" /v "CheckTrialOffer" /t REG_DWORD /d 0 /f
reg add "HKLM\Software\Piriform\CCleaner" /v "(Cfg)HealthCheck" /t REG_DWORD /d 0 /f
reg add "HKLM\Software\Piriform\CCleaner" /v "(Cfg)QuickClean" /t REG_DWORD /d 0 /f
reg add "HKLM\Software\Piriform\CCleaner" /v "(Cfg)QuickCleanIpm" /t REG_DWORD /d 0 /f
reg add "HKLM\Software\Piriform\CCleaner" /v "(Cfg)GetIpmForTrial" /t REG_DWORD /d 0 /f
reg add "HKLM\Software\Piriform\CCleaner" /v "(Cfg)SoftwareUpdater" /t REG_DWORD /d 0 /f
reg add "HKLM\Software\Piriform\CCleaner" /v "(Cfg)SoftwareUpdaterIpm" /t REG_DWORD /d 0 /f
goto page6

:disabletaggedenergypowerloggingandtelemetry
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power\EnergyEstimation\TaggedEnergy" /v "TelemetryMaxTagPerApplication" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power\EnergyEstimation\TaggedEnergy" /v "DisableTaggedEnergyLogging" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power\EnergyEstimation\TaggedEnergy" /v "TelemetryMaxApplication" /t REG_DWORD /d "0" /f
goto page6

:disabledevicecensus
schtasks /change /TN "Microsoft\Windows\Device Information\Device" /DISABLE
goto page6

:diablelocationservice
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\LocationAndSensors" /v "DisableWindowsLocationProvider" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\LocationAndSensors" /v "DisableLocationScripting" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\LocationAndSensors" /v "DisableLocation" /d "1" /t REG_DWORD /f
goto page6

:disablebingspeechapi
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Speech" /v AllowOnlineSpeechRecognition /t REG_DWORD /d 0 /f
goto page7

:disablewindowsprivacyconsent
reg add "HKCU\SOFTWARE\Microsoft\Personalization\Settings" /v "AcceptedPrivacyPolicy" /t REG_DWORD /d 0 /f
goto page7

:disablehandwritinginkingandcontacts
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\InputPersonalization" /v RestrictImplicitInkCollection /t REG_DWORD /d 1 /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\InputPersonalization" /v RestrictImplicitTextCollection /t REG_DWORD /d 1 /f
reg add "HKCU\Software\Policies\Microsoft\InputPersonalization" /v "RestrictImplicitInkCollection" /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\InputPersonalization" /v "RestrictImplicitInkCollection" /t REG_DWORD /d 1 /f
reg add "HKCU\Software\Policies\Microsoft\Windows\HandwritingErrorReports" /v "PreventHandwritingErrorReports" /t REG_DWORD /d 1 /f
reg add "HKLM\Software\Policies\Microsoft\Windows\HandwritingErrorReports" /v "PreventHandwritingErrorReports" /t REG_DWORD /d 1 /f
reg add "HKCU\Software\Policies\Microsoft\Windows\TabletPC" /v "PreventHandwritingDataSharing" /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\TabletPC" /v "PreventHandwritingDataSharing" /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\InputPersonalization" /v "AllowInputPersonalization" /t REG_DWORD /d 0 /f
reg add "HKCU\SOFTWARE\Microsoft\InputPersonalization\TrainedDataStore" /v "HarvestContacts" /t REG_DWORD /d 0 /f
goto page7

:disableinstrumentstartuptracking
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "Start_TrackProgs" /d 0 /t REG_DWORD /f
goto page7

:optimizewindowslanguagerepository
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\MUI" /v UseSxS /t REG_DWORD /d 1 /f
goto page7

:disabledatausagelimit
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\DataplanManager" /v DataUsageLimit /t REG_DWORD /d 0 /f
goto page7

:optimizediagnosticsandprivacy
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\DataCollection" /v AllowTelemetry /t REG_DWORD /d 0 /f
goto page7

:optimizeaccesspermissions
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\AppPrivacy" /v LetAppsAccessAccountInfo /t REG_DWORD /d 2 /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\AppPrivacy" /v LetAppsAccessCalendar /t REG_DWORD /d 2 /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\AppPrivacy" /v LetAppsAccessCallHistory /t REG_DWORD /d 2 /f
goto page7

:optimizefpsgame
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\DisplayPostProcessing" /v "Affinity" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\DisplayPostProcessing" /v "Background Only" /t REG_SZ /d "True" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\DisplayPostProcessing" /v "BackgroundPriority" /t REG_DWORD /d "24" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\DisplayPostProcessing" /v "Clock Rate" /t REG_DWORD /d "10000" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\DisplayPostProcessing" /v "GPU Priority" /t REG_DWORD /d "18" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\DisplayPostProcessing" /v "Priority" /t REG_DWORD /d "8" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\DisplayPostProcessing" /v "Scheduling Category" /t REG_SZ /d "High" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\DisplayPostProcessing" /v "SFIO Priority" /t REG_SZ /d "High" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\DisplayPostProcessing" /v "Latency Sensitive" /t REG_SZ /d "True" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /v "TdrLevel" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /v "TdrDebugMode" /t REG_DWORD /d "0" /f
goto page7

:enablemsimode
for /f %%g in ('wmic path win32_videocontroller get PNPDeviceID ^| findstr /L "VEN_"') do (
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Enum\%%g\Device Parameters\Interrupt Management\MessageSignaledInterruptProperties" /v MSISupported /t REG_DWORD /d 0x00000001 /f
)
goto page8

:optimizehardware
reg add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /v "HwSchedMode" /t REG_DWORD /d "2" /f >nul 2>&1
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "Background Only" /t REG_SZ /d "False" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "Clock Rate" /t REG_DWORD /d "10000" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "GPU Priority" /t REG_DWORD /d "8" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "Priority" /t REG_DWORD /d "6" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "Scheduling Category" /t REG_SZ /d "High" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "SFIO Priority" /t REG_SZ /d "High" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "Latency Sensitive" /t REG_SZ /d "True" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Audio" /v "Background Only" /t REG_SZ /d "True" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Audio" /v "Clock Rate" /t REG_DWORD /d "10000" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Audio" /v "GPU Priority" /t REG_DWORD /d "8" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Audio" /v "Priority" /t REG_DWORD /d "6" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Audio" /v "Scheduling Category" /t REG_SZ /d "Medium" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Audio" /v "SFIO Priority" /t REG_SZ /d "Normal" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile" /v "NoLazyMode" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "EnergyEstimationEnabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "CsEnabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "PerfCalculateActualUtilization" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "SleepReliabilityDetailedDiagnostics" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "EventProcessorEnabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "QosManagesIdleProcessors" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DisableVsyncLatencyUpdate" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DisableSensorWatchdog" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "ExitLatencyCheckEnabled" /t REG_DWORD /d "0" /f
goto page8

:speeduppcboot
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Power" /v "HiberbootEnabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Microsoft\Input\Settings\ControllerProcessor\CursorSpeed" /v "CursorUpdateInterval" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Reliability" /v "TimeStampInterval" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Windows\DWM" /v "CompositionPolicy" /t REG_DWORD /d "0" /f
goto page8

:disablenetworkdatasaver
for /f %%r in ('reg query "HKLM\SYSTEM\ControlSet001\Control\Class\{4D36E972-E325-11CE-BFC1-08002bE10318}" /f "PCI\VEN_" /d /s^|Findstr HKEY_') do (
Reg add %%r /v "AutoDisableGigabit" /t REG_SZ /d "0" /f
Reg add %%r /v "EnableGreenEthernet" /t REG_SZ /d "0" /f
Reg add %%r /v "GigaLite" /t REG_SZ /d "0" /f
Reg add %%r /v "PowerSavingMode" /t REG_SZ /d "0" /f
)
goto page8

:optimizebcdedit
bcdedit /deletevalue useplatformclock
bcdedit /set useplatformtick yes
bcdedit /set disabledynamictick Yes
bcdedit /set bootmenupolicy Legacy
bcdedit /set debug No
bcdedit /set pae ForceEnable
bcdedit /set bootux disabled
bcdedit /set sos Yes
bcdedit /set ems No
bcdedit /set hypervisorlaunchtype off
bcdedit /set quietboot yes
bcdedit /set uselegacyapicmode no
bcdedit /set timeout 3
bcdedit /set tscsyncpolicy Enhanced
goto page8

:disablewindowsinsiderexperiments
reg add "HKLM\SOFTWARE\Microsoft\PolicyManager\current\device\System" /v "AllowExperimentation" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Microsoft\PolicyManager\default\System\AllowExperimentation" /v "value" /t "REG_DWORD" /d "0" /f
goto page8

:diskcleanup
del /f /s /q C:\*.tmp
del /f /s /q C:\*._mp
del /f /s /q C:\*.log del /f /s /q C:\*.gid
del /f /s /q C:\*.chk
del /f /s /q C:\*.old del /f /s /q C:\recycled\*.*
del /f /s /q C:\Windows\*.bak
del /f /s /q C:\Windows\prefetch\*.* rd /s /q C:\Windows\tempmd C:\Windows\temp
del /f /q C:\Users\adminpc\cookies\*.*
del /f /q C:\Users\adminpc\recent\*.*
del /f /s /q “C:\Users\adminpc\Local Settings\Temporary Internet Files\*.*” del /f /s /q “C:\Users\adminpc\Local Settings\Temp\*.*”
del /f /s /q “C:\Users\adminpc\recent\*.*”
goto page8

:disableuselessanimations
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\VisualEffects" /v VisualFXSetting /t REG_DWORD /d 2 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v IconsOnly /t REG_DWORD /d 0 /f
reg add "HKCU\Control Panel\Desktop" /v FontSmoothing /t REG_DWORD /d 2 /f
reg add "HKCU\Control Panel\Desktop" /v FontSmoothingType /t REG_DWORD /d 2 /f
goto page9

:disablemaintenece
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\Maintenance" /v "MaintenanceDisabled" /t REG_DWORD /d "1" /f
goto page9

:disablepopups
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "DisallowShaking" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "EnableBalloonTips" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "ShowSyncProviderNotifications" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\userNotificationListener" /v "Value" /t REG_SZ /d "Deny" /f
Reg.exe add "HKLM\Software\Policies\Microsoft\Windows\AdvertisingInfo" /v "DisabledByGroupPolicy" /t REG_DWORD /d "1" /f
goto page9

:disablesharedexperiences
Reg.exe add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\CDP" /v "CdpSessionUserAuthzPolicy" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\CDP" /v "NearShareChannelUserAuthzPolicy" /t REG_DWORD /d "0" /f
goto page9

:disabletransparency
Reg.exe add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Themes\Personalize" /v "EnablingTransparency" /t REG_DWORD /d "0" /f
goto page9

:disablesettinghronization
Reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\SettingSync" /v "SyncPolicy" /t Reg_DWORD /d "5" /f
Reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\SettingSync\Groups\Accessibility" /v "Enabled" /t Reg_DWORD /d "0" /f
Reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\SettingSync\Groups\AppSync" /v "Enabled" /t Reg_DWORD /d "0" /f
Reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\SettingSync\Groups\BrowserSettings" /v "Enabled" /t Reg_DWORD /d "0" /f
Reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\SettingSync\Groups\Credentials" /v "Enabled" /t Reg_DWORD /d ""0"" /f
Reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\SettingSync\Groups\DesktopTheme" /v "Enabled" /t Reg_DWORD /d "0" /f
Reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\SettingSync\Groups\Language" /v "Enabled" /t Reg_DWORD /d "0" /f
Reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\SettingSync\Groups\PackageState" /v "Enabled" /t Reg_DWORD /d "0" /f
Reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\SettingSync\Groups\Personalization" /v "Enabled" /t Reg_DWORD /d "0" /f
Reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\SettingSync\Groups\StartLayout" /v "Enabled" /t Reg_DWORD /d "0" /f
Reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\SettingSync\Groups\Windows" /v "Enabled" /t Reg_DWORD /d "0" /f
Reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\SettingSync" /v "DisableSettingSync" /t Reg_DWORD /d "2" /f
Reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\SettingSync" /v "DisableSettingSyncUserOverride" /t Reg_DWORD /d "1" /f
Reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\SettingSync" /v "DisableAppSyncSettingSync" /t Reg_DWORD /d "2" /f
Reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\SettingSync" /v "DisableAppSyncSettingSyncUserOverride" /t Reg_DWORD /d "1" /f
Reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\SettingSync" /v "DisableApplicationSettingSync" /t Reg_DWORD /d "2" /f
Reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\SettingSync" /v "DisableApplicationSettingSyncUserOverride" /t Reg_DWORD /d "1" /f
Reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\SettingSync" /v "DisableCredentialsSettingSync" /t Reg_DWORD /d "2" /f
Reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\SettingSync" /v "DisableCredentialsSettingSyncUserOverride" /t Reg_DWORD /d "2" /f
Reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\SettingSync" /v "DisableDesktopThemeSettingSync" /t Reg_DWORD /d "2" /f
Reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\SettingSync" /v "DisableDesktopThemeSettingSyncUserOverride" /t Reg_DWORD /d "2" /f
Reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\SettingSync" /v "DisablePersonalizationSettingSync" /t Reg_DWORD /d "2" /f
Reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\SettingSync" /v "DisablePersonalizationSettingSyncUserOverride" /t Reg_DWORD /d "2" /f
Reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\SettingSync" /v "DisableStartLayoutSettingSync" /t Reg_DWORD /d "2" /f
Reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\SettingSync" /v "DisableStartLayoutSettingSyncUserOverride" /t Reg_DWORD /d "2" /f
Reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\SettingSync" /v "DisableSyncOnPaidNetwork" /t Reg_DWORD /d "2" /f
Reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\SettingSync" /v "DisableWebBrowserSettingSync" /t Reg_DWORD /d "2" /f
Reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\SettingSync" /v "DisableWebBrowserSettingSyncUserOverride" /t Reg_DWORD /d "2" /f
Reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\SettingSync" /v "DisableWindowsSettingSync" /t Reg_DWORD /d "2" /f
Reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\SettingSync" /v "DisableWindowsSettingSyncUserOverride" /t Reg_DWORD /d "2" /f
goto page9

:disablebackgroundapps
Reg.exe add "HKU\\SOFTWARE\Microsoft\Windows\CurrentVersion\BackgroundAccessApplications" /v "GlobalUserDisabled" /t REG_DWORD /d "1" /f
Reg.exe add "HKU\\SOFTWARE\Microsoft\Windows\CurrentVersion\Search" /v "BackgroundAppGlobalToggle" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\bam" /v "Start" /t REG_DWORD /d "4" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\dam" /v "Start" /t REG_DWORD /d "4" /f
goto page9

:disableactivityfeed
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Feeds" /v "EnableFeeds" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft" /v "AllowNewsAndInterests" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\System" /v "EnableActivityFeed" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\Control Panel\International\User Profile" /v "HttpAcceptLanguageOptOut" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\AdvertisingInfo" /v "Enabled" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\Software\Policies\Microsoft\Windows\System" /v "EnableActivityFeed" /t REG_DWORD /d "0" /f
goto page9

:disablemitigations
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\DeviceGuard" /v "EnablingVirtualizationBasedSecurity" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\DeviceGuard" /v "HVCIMATRequired" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v "DisableExceptionChainValidation" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v "KernelSEHOPEnabled" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "EnablingCfg" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager" /v "ProtectionMode" /t REG_DWORD /d "0" /f

if "" EQU "AuthenticAMD" (
Reg.exe add "HKLM\System\CurrentControlSet\Control\Session Manager\Memory Management" /v "FeatureSettingsOverride" /t REG_DWORD /d "2" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "FeatureSettingsOverrideMask" /t REG_DWORD /d "2" /f
) else (
Reg.exe add "HKLM\System\CurrentControlSet\Control\Session Manager\Memory Management" /v "FeatureSettingsOverride" /t REG_DWORD /d "3" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "FeatureSettingsOverrideMask" /t REG_DWORD /d "3" /f
)

Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "FeatureSettings" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "MoveImages" /t REG_DWORD /d "0" /f
goto page10

:disabledynamictick
bcdedit /set Disabledynamictick
bcdedit /deletevalue useplatformclock  >nul 2>&1
bcdedit /set useplatformtick yes  >nul 2>&1
goto page10

:nftstweaks
fsutil behavior set memoryusage 2 >nul 2>&1
fsutil behavior set mftzone 4 >nul 2>&1
fsutil behavior set Disablinglastaccess 1 >nul 2>&1
fsutil behavior set Disabledeletenotify 1 >nul 2>&1
fsutil behavior set encryptpagingfile 0 >nul 2>&1
goto page10

:setmmcsspriority
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Low Latency" /v "Affinity" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Low Latency" /v "Background Only" /t REG_SZ /d "False" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Low Latency" /v "BackgroundPriority" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Low Latency" /v "Clock Rate" /t REG_DWORD /d "10000" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Low Latency" /v "GPU Priority" /t REG_DWORD /d "8" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Low Latency" /v "Priority" /t REG_DWORD /d "2" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Low Latency" /v "Scheduling Category" /t REG_SZ /d "Medium" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Low Latency" /v "SFIO Priority" /t REG_SZ /d "High" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Low Latency" /v "Latency Sensitive" /t REG_SZ /d "True" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "Affinity" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "Background Only" /t REG_SZ /d "False" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "BackgroundPriority" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "Clock Rate" /t REG_DWORD /d "10000" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "GPU Priority" /t REG_DWORD /d "8" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "Priority" /t REG_DWORD /d "2" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "Scheduling Category" /t REG_SZ /d "High" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "SFIO Priority" /t REG_SZ /d "High" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "Latency Sensitive" /t REG_SZ /d "True" /f
goto page10

:setirq8priority
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\PriorityControl" /v "IRQ8Priority" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\ControlSet001\Control\PriorityControl" /v "IRQ8Priority" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\PriorityControl" /v "IRQ16Priority" /t REG_DWORD /d "2" /f
Reg.exe add "HKLM\SYSTEM\ControlSet001\Control\PriorityControl" /v "IRQ16Priority" /t REG_DWORD /d "2" /f
goto page10

:enablememorymapping
bcdedit /set configaccesspolicy Default
bcdedit /set MSI Default
bcdedit /set usephysicaldestination No
bcdedit /set usefirmwarepcisettings No
goto page10

:cleantemporarydevicedata
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\DXGKrnl" /v "MonitorLatencyTolerance" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\DXGKrnl" /v "MonitorRefreshLatencyTolerance" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "ExitLatency" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "ExitLatencyCheckEnabled" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "Latency" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "LatencyToleranceDefault" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "LatencyToleranceFSVP" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "LatencyTolerancePerfOverride" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "LatencyToleranceScreenOffIR" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "LatencyToleranceVSyncEnabled" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "RtlCapabilityCheckLatency" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "DefaultD3TransitionLatencyActivelyUsed" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "DefaultD3TransitionLatencyIdleLongTime" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "DefaultD3TransitionLatencyIdleMonitorOff" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "DefaultD3TransitionLatencyIdleNoContext" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "DefaultD3TransitionLatencyIdleShortTime" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "DefaultD3TransitionLatencyIdleVeryLongTime" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "DefaultLatencyToleranceIdle0" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "DefaultLatencyToleranceIdle0MonitorOff" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "DefaultLatencyToleranceIdle1" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "DefaultLatencyToleranceIdle1MonitorOff" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "DefaultLatencyToleranceMemory" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "DefaultLatencyToleranceNoContext" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "DefaultLatencyToleranceNoContextMonitorOff" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "DefaultLatencyToleranceOther" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "DefaultLatencyToleranceTimerPeriod" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "DefaultMemoryRefreshLatencyToleranceActivelyUsed" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "DefaultMemoryRefreshLatencyToleranceMonitorOff" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "DefaultMemoryRefreshLatencyToleranceNoContext" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "Latency" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "MaxIAverageGraphicsLatencyInOneBucket" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "MiracastPerfTrackGraphicsLatency" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "MonitorLatencyTolerance" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "MonitorRefreshLatencyTolerance" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "TransitionLatency" /t REG_DWORD /d "1" /f
goto page10

:disablegeolocationservice
sc stop lfsvc
sc config lfsvc start= disabled
goto page10

:debloats
cls
echo.
echo.
echo.
echo.
echo.                     [38 5 33m           █     █░ ██▓ ███▄    █ ▓█████▄  ▒█████   █     █░  ██████    ▄▄▄█████▓ █     █░▓█████ ▄▄▄       ██ ▄█▀▓█████  ██▀███
echo.                     [38 5 69m          ▓█░ █ ░█░▓██▒ ██ ▀█   █ ▒██▀ ██▌▒██▒  ██▒▓█░ █ ░█░▒██    ▒    ▓  ██▒ ▓▒▓█░ █ ░█░▓█   ▀▒████▄     ██▄█▒ ▓█   ▀ ▓██ ▒ ██▒
echo.                     [38 5 105m          ▒█░ █ ░█ ▒██▒▓██  ▀█ ██▒░██   █▌▒██░  ██▒▒█░ █ ░█ ░ ▓██▄      ▒ ▓██░ ▒░▒█░ █ ░█ ▒███  ▒██  ▀█▄  ▓███▄░ ▒███   ▓██ ░▄█ ▒
echo.                     [38 5 177m          ░█░ █ ░█ ░██░▓██▒  ▐▌██▒░▓█▄   ▌▒██   ██░░█░ █ ░█   ▒   ██▒   ░ ▓██▓ ░ ░█░ █ ░█ ▒▓█  ▄░██▄▄▄▄██ ▓██ █▄ ▒▓█  ▄ ▒██▀▀█▄
echo.                     [38 5 213m          ░░██▒██▓ ░██░▒██░   ▓██░░▒████▓ ░ ████▓▒░░░██▒██▓ ▒██████▒▒     ▒██▒ ░ ░░██▒██▓ ░▒████▒▓█   ▓██▒▒██▒ █▄░▒████▒░██▓ ▒██▒
echo.                     [38 5 33m          ░ ▓░▒ ▒  ░▓  ░ ▒░   ▒ ▒  ▒▒▓  ▒ ░ ▒░▒░▒░ ░ ▓░▒ ▒  ▒ ▒▓▒ ▒ ░     ▒ ░░   ░ ▓░▒ ▒  ░░ ▒░ ░▒▒   ▓▒█░▒ ▒▒ ▓▒░░ ▒░ ░░ ▒▓ ░▒▓░
echo.                     [38 5 105m            ▒ ░ ░   ▒ ░░ ░░   ░ ▒░ ░ ▒  ▒   ░ ▒ ▒░   ▒ ░ ░  ░ ░▒  ░ ░       ░      ▒ ░ ░   ░ ░  ░ ▒   ▒▒ ░░ ░▒ ▒░ ░ ░  ░  ░▒ ░ ▒░
echo.                     [38 5 33m            ░   ░   ▒ ░   ░   ░ ░  ░ ░  ░ ░ ░ ░ ▒    ░   ░  ░  ░  ░       ░        ░   ░     ░    ░   ▒   ░ ░░ ░    ░     ░░   ░
echo.                     [38 5 69m              ░     ░           ░    ░        ░ ░      ░          ░                  ░       ░  ░     ░  ░░  ░      ░  ░   ░
echo.                     [38 5 105m                                   ░
echo.
echo.                                                                       ╔═══
echo.                                                                       ║   This Utility Was Made By Fyumi   ║
echo.                                                                                                         ═══╝
echo.
echo.
echo.                              [38 5 213m[[0m 1 [38 5 213m][0m  [90mClean Up All Trash[90m                [38 5 213m[[0m 2 [38 5 213m][0m  [90mDebloats[90m                        [38 5 213m[[0m 3 [38 5 213m][0m  [90mDisable Unecessary Services[90m
echo.
echo.
echo.                              [38 5 213m[[0m 4 [38 5 213m][0m  [90mSelect App To Delete[90m              [38 5 213m[[0m 5 [38 5 213m][0m  [90mCapture The Registry[90m            [38 5 213m[[0m 6 [38 5 213m][0m  [90mReturn To Main Menu[90m
echo.
echo.
echo.
echo.
echo. [38 5 33m                                                      ╔════════════════════════════════════════════════════════════════════╗
echo. [38 5 69m                                                      ║   Add "F" After Your Choice To See More Details About That Tweak   ║
echo. [38 5 105m                                                      ║                         Ex : 1F  2F  3F                            ║
echo. [38 5 177m                                                      ╚════════════════════════════════════════════════════════════════════╝
echo.
set /p fyumi=:
if /i __input__ == 1 (goto cleanupalltrash)
if /i __input__ == 2 (goto debloatwindows)
if /i __input__ == 3 (goto disableunecessaryservices)
if /i __input__ == 4 (goto selectapptodelete)
if /i __input__ == 5 (goto capturetheregistry)
if /i __input__ == 6 (goto menutienganh)
if /i __input__ == 1F (goto sorry)
if /i __input__ == 2F (goto sorry)
if /i __input__ == 3F (goto sorry)
if /i __input__ == 4F (goto sorry)
if /i __input__ == 5F (goto sorry)
cls
echo.
echo.
echo.      [97mYou entered the wrong choice  please enter again
echo.
echo.
pause >nul
goto debloats

:cleanupalltrash
del /s /f /q C:\Users\adminpc\AppData\Local\Temp\* >nul
rd /s /q C:\Users\adminpc\AppData\Local\Temp >nul
del /s /f /q C:\Windows\Temp\* >nul
rd /s /q C:\Windows\Temp >nul
del /s /f /q C:\Windows\Prefetch\* >nul
rd /s /q C:\$Recycle.Bin >nul
del /s /f /q C:\Windows\*.log >nul
del /s /f /q C:\Windows\*.dmp >nul
rd /s /q C:\Windows\SoftwareDistribution\Download >nul
rd /s /q C:\Windows\System32\CatRoot2 >nul
del /s /f /q C:\Users\adminpc\AppData\Roaming\Microsoft\Windows\Recent\* >nul
rd /s /q C:\Users\adminpc\AppData\Local\Microsoft\Windows\INetCache >nul
dism /online /cleanup-image /startcomponentcleanup /quiet
md C:\Users\adminpc\AppData\Local\Temp >nul
md C:\Windows\Temp >nul
del /s /f /q C:\Windows\Minidump\* >nul
del /s /f /q C:\Windows\LiveKernelReports\* >nul
rd /s /q C:\Windows\System32\FNTCACHE.DAT >nul
rd /s /q C:\Users\adminpc\AppData\Local\Microsoft\Windows\Explorer >nul
del /s /f /q C:\Windows\Installer\$PatchCache$\* >nul
del C:\Windows\SoftwareDistribution >nul
goto debloats

:debloatwindows
cls
echo.
echo.
echo.
echo.
echo. [38 5 33m                                                      ╔════════════════════════════════════════════════════════════════════╗
echo. [38 5 69m                                                      ║                 Which Windows Version Are You Using?               ║
echo. [38 5 105m                                                      ║      [ 1 ] Windows 10      [ 2 ] Windows 11        [ 3 ] Back      ║
echo. [38 5 177m                                                      ╚════════════════════════════════════════════════════════════════════╝
echo.
echo.
echo.
set /p fyumi=:
if /i __input__ == 1 (goto debloatwindows10)
if /i __input__ == 2 (goto debloatwindows11)
if /i __input__ == 3 (goto debloats)
if /i __input__ == 1F (goto sorry)
if /i __input__ == 2F (goto sorry)
cls
echo.
echo.
echo.      [97mYou entered the wrong choice  please enter again
echo.
echo.
pause >nul
goto debloatwindows

:debloatwindows10
powershell -Command "iwr -useb https://git.io/debloat | iex"
goto debloats

:debloatwindows11
powershell -Command "& ([scriptblock]::Create((irm "https://win11debloat.raphi.re/")))"
goto debloats

:disableunecessaryservices
schtasks /end /tn "\Microsoft\Windows\Customer Experience Improvement Program\Consolidator"
schtasks /change /tn "\Microsoft\Windows\Customer Experience Improvement Program\Consolidator" /Disable
schtasks /end /tn "\Microsoft\Windows\Customer Experience Improvement Program\BthSQM"
schtasks /change /tn "\Microsoft\Windows\Customer Experience Improvement Program\BthSQM" /Disable
schtasks /end /tn "\Microsoft\Windows\Customer Experience Improvement Program\KernelCeipTask"
schtasks /change /tn "\Microsoft\Windows\Customer Experience Improvement Program\KernelCeipTask" /Disable
schtasks /end /tn "\Microsoft\Windows\Customer Experience Improvement Program\UsbCeip"
schtasks /change /tn "\Microsoft\Windows\Customer Experience Improvement Program\UsbCeip" /Disable
schtasks /end /tn "\Microsoft\Windows\Customer Experience Improvement Program\Uploader"
schtasks /change /tn "\Microsoft\Windows\Customer Experience Improvement Program\Uploader" /Disable
schtasks /end /tn "\Microsoft\Windows\Application Experience\Microsoft Compatibility Appraiser"
schtasks /change /tn "\Microsoft\Windows\Application Experience\Microsoft Compatibility Appraiser" /Disable
schtasks /end /tn "\Microsoft\Windows\Application Experience\ProgramDataUpdater"
schtasks /change /tn "\Microsoft\Windows\Application Experience\ProgramDataUpdater" /Disable
schtasks /end /tn "\Microsoft\Windows\Application Experience\StartupAppTask"
schtasks /change /tn "\Microsoft\Windows\Application Experience\StartupAppTask" /Disable
schtasks /end /tn "\Microsoft\Windows\DiskDiagnostic\Microsoft-Windows-DiskDiagnosticDataCollector"
schtasks /change /tn "\Microsoft\Windows\DiskDiagnostic\Microsoft-Windows-DiskDiagnosticDataCollector" /Disable
schtasks /end /tn "\Microsoft\Windows\DiskDiagnostic\Microsoft-Windows-DiskDiagnosticResolver"
schtasks /change /tn "\Microsoft\Windows\DiskDiagnostic\Microsoft-Windows-DiskDiagnosticResolver" /Disable
schtasks /end /tn "\Microsoft\Windows\Power Efficiency Diagnostics\AnalyzeSystem"
schtasks /change /tn "\Microsoft\Windows\Power Efficiency Diagnostics\AnalyzeSystem" /Disable
schtasks /end /tn "\Microsoft\Windows\Shell\FamilySafetyMonitor"
schtasks /change /tn "\Microsoft\Windows\Shell\FamilySafetyMonitor" /Disable
schtasks /end /tn "\Microsoft\Windows\Shell\FamilySafetyRefresh"
schtasks /change /tn "\Microsoft\Windows\Shell\FamilySafetyRefresh" /Disable
schtasks /end /tn "\Microsoft\Windows\Shell\FamilySafetyUpload"
schtasks /change /tn "\Microsoft\Windows\Shell\FamilySafetyUpload" /Disable
schtasks /end /tn "\Microsoft\Windows\Autochk\Proxy"
schtasks /change /tn "\Microsoft\Windows\Autochk\Proxy" /Disable
schtasks /end /tn "\Microsoft\Windows\Maintenance\WinSAT"
schtasks /change /tn "\Microsoft\Windows\Maintenance\WinSAT" /Disable
schtasks /end /tn "\Microsoft\Windows\Application Experience\AitAgent"
schtasks /change /tn "\Microsoft\Windows\Application Experience\AitAgent" /Disable
schtasks /end /tn "\Microsoft\Windows\Windows Error Reporting\QueueReporting"
schtasks /change /tn "\Microsoft\Windows\Windows Error Reporting\QueueReporting" /Disable
schtasks /end /tn "\Microsoft\Windows\CloudExperienceHost\CreateObjectTask"
schtasks /change /tn "\Microsoft\Windows\CloudExperienceHost\CreateObjectTask" /Disable
schtasks /end /tn "\Microsoft\Windows\DiskFootprint\Diagnostics"
schtasks /change /tn "\Microsoft\Windows\DiskFootprint\Diagnostics" /Disable
schtasks /end /tn "\Microsoft\Windows\PI\Sqm-Tasks"
schtasks /change /tn "\Microsoft\Windows\PI\Sqm-Tasks" /Disable
schtasks /end /tn "\Microsoft\Windows\NetTrace\GatherNetworkInfo"
schtasks /change /tn "\Microsoft\Windows\NetTrace\GatherNetworkInfo" /Disable
schtasks /end /tn "\Microsoft\Windows\AppID\SmartScreenSpecific"
schtasks /change /tn "\Microsoft\Windows\AppID\SmartScreenSpecific" /Disable
schtasks /end /tn "\Microsoft\Office\OfficeTelemetryAgentFallBack2016"
schtasks /change /tn "\Microsoft\Office\OfficeTelemetryAgentFallBack2016" /Disable
schtasks /end /tn "\Microsoft\Office\OfficeTelemetryAgentLogOn2016"
schtasks /change /tn "\Microsoft\Office\OfficeTelemetryAgentLogOn2016" /Disable
schtasks /end /tn "\Microsoft\Office\OfficeTelemetryAgentLogOn"
schtasks /change /TN "\Microsoft\Office\OfficeTelemetryAgentLogOn" /Disable
schtasks /end /tn "\Microsoftd\Office\OfficeTelemetryAgentFallBack"
schtasks /change /TN "\Microsoftd\Office\OfficeTelemetryAgentFallBack" /Disable
schtasks /end /tn "\Microsoft\Office\Office 15 Subscription Heartbeat"
schtasks /change /TN "\Microsoft\Office\Office 15 Subscription Heartbeat" /Disable
schtasks /end /tn "\Microsoft\Windows\Time Synchronization\ForceSynchronizeTime"
schtasks /change /TN "\Microsoft\Windows\Time Synchronization\ForceSynchronizeTime" /Disable
schtasks /end /tn "\Microsoft\Windows\Time Synchronization\SynchronizeTime"
schtasks /change /TN "\Microsoft\Windows\Time Synchronization\SynchronizeTime" /Disable
schtasks /end /tn "\Microsoft\Windows\WindowsUpdate\Automatic App Update"
schtasks /change /TN "\Microsoft\Windows\WindowsUpdate\Automatic App Update" /Disable
schtasks /end /tn "\Microsoft\Windows\Device Information\Device"
schtasks /change /TN "\Microsoft\Windows\Device Information\Device" /Disable
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Device Metadata" /v "PreventDeviceMetadataFromNetwork" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\DataCollection" /v "AllowTelemetry" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\SOFTWARE\Microsoft\InputPersonalization" /v "RestrictImplicitInkCollection" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\SOFTWARE\Microsoft\InputPersonalization" /v "RestrictImplicitTextCollection" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Sensor\Permissions\{BFA794E4-F964-4FDB-90F6-51056BFE4B44}" /v "SensorPermissionState" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Sensor\Overrides\{BFA794E4-F964-4FDB-90F6-51056BFE4B44}" /v "SensorPermissionState" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\WUDF" /v "LogEnable" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\WUDF" /v "LogLevel" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\DataCollection" /v "AllowTelemetry" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\DataCollection" /v "DoNotShowFeedbackNotifications" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\DataCollection" /v "AllowCommercialDataPipeline" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\DataCollection" /v "AllowDeviceNameInTelemetry" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\DataCollection" /v "LimitEnhancedDiagnosticDataWindowsAnalytics" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\DataCollection" /v "MicrosoftEdgeDataOptIn" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\SOFTWARE\Microsoft\Siuf\Rules" /v "NumberOfSIUFInPeriod" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\SOFTWARE\Microsoft\Siuf\Rules" /v "PeriodInNanoSeconds" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\SOFTWARE\Policies\Microsoft\Assistance\Client\1.0" /v "NoExplicitFeedback" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Assistance\Client\1.0" /v "NoActiveHelp" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\AppCompat" /v "DisableInventory" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\AppCompat" /v "AITEnable" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\AppCompat" /v "DisableUAR" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\TabletPC" /v "PreventHandwritingDataSharing" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\TabletPC" /v "DoSvc" /t REG_DWORD /d "3" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\LocationAndSensors" /v "DisableLocation" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\LocationAndSensors" /v "DisableLocationScripting" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\LocationAndSensors" /v "DisableSensors" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\LocationAndSensors" /v "DisableWindowsLocationProvider" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\System" /v "PublishUserActivities" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\System" /v "EnableActivityFeed" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\System" /v "UploadUserActivities" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\SQMClient\Windows" /v "CEIPEnable" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\SQMClient\Reliability" /v "CEIPEnable" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\SQMClient\Reliability" /v "SqmLoggerRunning" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\SQMClient\Windows" /v "CEIPEnable" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\SQMClient\Windows" /v "DisableOptinExperience" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\SQMClient\Windows" /v "SqmLoggerRunning" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\SQMClient\IE" /v "SqmLoggerRunning" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\HandwritingErrorReports" /v "PreventHandwritingErrorReports" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\SOFTWARE\Microsoft\MediaPlayer\Preferences" /v "UsageTracking" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\CloudContent" /v "DisableSoftLanding" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Peernet" /v "Disabled" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\DeliveryOptimization\Config" /v DODownloadMode /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\PolicyManager\default\WiFi\AllowWiFiHotSpotReporting" /v value /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\SOFTWARE\Microsoft\InputPersonalization\TrainedDataStore" /v "HarvestContacts" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AdvertisingInfo" /v "Enabled" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\AdvertisingInfo" /v "DisabledByGroupPolicy" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\MRT" /v "DontOfferThroughWUAU" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Biometrics" /v "Enabled" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\dmwappushservice" /v "Start" /t REG_DWORD /d "4" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\AppModel" /v "Start" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\Cellcore" /v "Start" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\Circular Kernel Context Logger" /v "Start" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\CloudExperienceHostOobe" /v "Start" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\DataMarket" /v "Start" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\DefenderApiLogger" /v "Start" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\DefenderAuditLogger" /v "Start" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\DiagLog" /v "Start" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\HolographicDevice" /v "Start" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\iclsClient" /v "Start" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\iclsProxy" /v "Start" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\LwtNetLog" /v "Start" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\Mellanox-Kernel" /v "Start" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\Microsoft-Windows-AssignedAccess-Trace" /v "Start" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\Microsoft-Windows-Setup" /v "Start" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\NBSMBLOGGER" /v "Start" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\PEAuthLog" /v "Start" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\RdrLog" /v "Start" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\ReadyBoot" /v "Start" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\SetupPlatform" /v "Start" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\SetupPlatformTel" /v "Start" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\SocketHeciServer" /v "Start" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\SpoolerLogger" /v "Start" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\SQMLogger" /v "Start" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\TCPIPLOGGER" /v "Start" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\TileStore" /v "Start" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\Tpm" /v "Start" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\TPMProvisioningService" /v "Start" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\UBPM" /v "Start" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\WdiContextLog" /v "Start" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\WFP-IPsec Trace" /v "Start" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\WiFiDriverIHVSession" /v "Start" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\WiFiDriverIHVSessionRepro" /v "Start" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\WiFiSession" /v "Start" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\WinPhoneCritical" /v "Start" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\WUDF" /v "LogEnabling" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\WUDF" /v "LogLevel" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\CloudContent" /v "DisableThirdPartySuggestions" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\CloudContent" /v "DisableWindowsConsumerFeatures" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Lsa\Credssp" /v "DebugLogLevel" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\Control Panel\International\User Profile" /v "HttpAcceptLanguageOptOut" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\AppModel" /v "Start" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\Cellcore" /v "Start" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\Circular Kernel Context Logger" /v "Start" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\CloudExperienceHostOobe" /v "Start" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\DataMarket" /v "Start" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\DefenderApiLogger" /v "Start" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\DefenderAuditLogger" /v "Start" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\DiagLog" /v "Start" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\HolographicDevice" /v "Start" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\iclsClient" /v "Start" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\iclsProxy" /v "Start" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\LwtNetLog" /v "Start" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\Mellanox-Kernel" /v "Start" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\Microsoft-Windows-AssignedAccess-Trace" /v "Start" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\Microsoft-Windows-Setup" /v "Start" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\NBSMBLOGGER" /v "Start" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\PEAuthLog" /v "Start" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\RdrLog" /v "Start" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\ReadyBoot" /v "Start" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\SetupPlatform" /v "Start" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\SetupPlatformTel" /v "Start" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\SocketHeciServer" /v "Start" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\SpoolerLogger" /v "Start" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\SQMLogger" /v "Start" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\TCPIPLOGGER" /v "Start" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\TileStore" /v "Start" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\Tpm" /v "Start" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\TPMProvisioningService" /v "Start" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\UBPM" /v "Start" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\WdiContextLog" /v "Start" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\WFP-IPsec Trace" /v "Start" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\WiFiDriverIHVSession" /v "Start" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\WiFiDriverIHVSessionRepro" /v "Start" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\WiFiSession" /v "Start" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\WinPhoneCritical" /v "Start" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\WUDF" /v "LogEnabling" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\WUDF" /v "LogLevel" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\CloudContent" /v "DisableThirdPartySuggestions" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\CloudContent" /v "DisableWindowsConsumerFeatures" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Lsa\Credssp" /v "DebugLogLevel" /t REG_DWORD /d "0" /f
cls
goto debloats

:selectapptodelete
curl -L -o C:\Users\adminpc\AppData\Local\Temp\Windows10AppsManager.exe https://github.com/FyumiSownz/Windows-Tweaker-Resources/raw/91d96e8085cc68faae1c9b298cf30cb0c45c0cbb/Windows0100Apps0Manager.exepowershell -Command "Start-Process -FilePath 'C:\Users\adminpc\AppData\Local\Temp\Windows10AppsManager.exe' -Verb RunAs"
cls
goto debloats

:capturetheregistry
curl -o C:\Users\adminpc\AppData\Local\Temp\Windows_Debloater.ps1 https://raw.githubusercontent.com/FyumiSownz/Windows-Tweaker-Resources/refs/heads/main/Windows0Debloater.ps1timeout /t 2 >nulpowershell -Command "Start-Process powershell -ArgumentList '-ExecutionPolicy Bypass -File \"C:\Users\adminpc\AppData\Local\Temp\Windows_Debloater.ps1\"' -Verb RunAs"
cls
goto debloats

:cputweaks
cls
echo.
echo.
echo.
echo.
echo.                     [38 5 33m           █     █░ ██▓ ███▄    █ ▓█████▄  ▒█████   █     █░  ██████    ▄▄▄█████▓ █     █░▓█████ ▄▄▄       ██ ▄█▀▓█████  ██▀███
echo.                     [38 5 69m          ▓█░ █ ░█░▓██▒ ██ ▀█   █ ▒██▀ ██▌▒██▒  ██▒▓█░ █ ░█░▒██    ▒    ▓  ██▒ ▓▒▓█░ █ ░█░▓█   ▀▒████▄     ██▄█▒ ▓█   ▀ ▓██ ▒ ██▒
echo.                     [38 5 105m          ▒█░ █ ░█ ▒██▒▓██  ▀█ ██▒░██   █▌▒██░  ██▒▒█░ █ ░█ ░ ▓██▄      ▒ ▓██░ ▒░▒█░ █ ░█ ▒███  ▒██  ▀█▄  ▓███▄░ ▒███   ▓██ ░▄█ ▒
echo.                     [38 5 177m          ░█░ █ ░█ ░██░▓██▒  ▐▌██▒░▓█▄   ▌▒██   ██░░█░ █ ░█   ▒   ██▒   ░ ▓██▓ ░ ░█░ █ ░█ ▒▓█  ▄░██▄▄▄▄██ ▓██ █▄ ▒▓█  ▄ ▒██▀▀█▄
echo.                     [38 5 213m          ░░██▒██▓ ░██░▒██░   ▓██░░▒████▓ ░ ████▓▒░░░██▒██▓ ▒██████▒▒     ▒██▒ ░ ░░██▒██▓ ░▒████▒▓█   ▓██▒▒██▒ █▄░▒████▒░██▓ ▒██▒
echo.                     [38 5 33m          ░ ▓░▒ ▒  ░▓  ░ ▒░   ▒ ▒  ▒▒▓  ▒ ░ ▒░▒░▒░ ░ ▓░▒ ▒  ▒ ▒▓▒ ▒ ░     ▒ ░░   ░ ▓░▒ ▒  ░░ ▒░ ░▒▒   ▓▒█░▒ ▒▒ ▓▒░░ ▒░ ░░ ▒▓ ░▒▓░
echo.                     [38 5 105m            ▒ ░ ░   ▒ ░░ ░░   ░ ▒░ ░ ▒  ▒   ░ ▒ ▒░   ▒ ░ ░  ░ ░▒  ░ ░       ░      ▒ ░ ░   ░ ░  ░ ▒   ▒▒ ░░ ░▒ ▒░ ░ ░  ░  ░▒ ░ ▒░
echo.                     [38 5 33m            ░   ░   ▒ ░   ░   ░ ░  ░ ░  ░ ░ ░ ░ ▒    ░   ░  ░  ░  ░       ░        ░   ░     ░    ░   ▒   ░ ░░ ░    ░     ░░   ░
echo.                     [38 5 69m              ░     ░           ░    ░        ░ ░      ░          ░                  ░       ░  ░     ░  ░░  ░      ░  ░   ░
echo.                     [38 5 105m                                   ░
echo.
echo.                                                                       ╔═══
echo.                                                                       ║   This Utility Was Made By Fyumi   ║
echo.                                                                                                         ═══╝
echo.
echo.
echo.                              [38 5 213m[[0m 1 [38 5 213m][0m  [90mOptimize Intel CPU[90m                [38 5 213m[[0m 2 [38 5 213m][0m  [90mOptimize AMD CPU[90m                [38 5 213m[[0m 3 [38 5 213m][0m  [90mBoost Performance[90m
echo.
echo.
echo.                                                                       [38 5 213m[[0m 4 [38 5 213m][0m  [90mReturn To Main Menu[90m
echo.
echo.
echo.
echo.
echo. [38 5 33m                                                      ╔════════════════════════════════════════════════════════════════════╗
echo. [38 5 69m                                                      ║   Add "F" After Your Choice To See More Details About That Tweak   ║
echo. [38 5 105m                                                      ║                         Ex : 1F  2F  3F                            ║
echo. [38 5 177m                                                      ╚════════════════════════════════════════════════════════════════════╝
echo.
set /p fyumi=:
if /i __input__ == 1 (goto optimizeintelcpu)
if /i __input__ == 2 (goto optimizeamdcpu)
if /i __input__ == 3 (goto boostperformance)
if /i __input__ == 4 (goto menutienganh)
if /i __input__ == 1F (goto sorry)
if /i __input__ == 2F (goto sorry)
if /i __input__ == 3F (goto sorry)
cls
echo.
echo.
echo.      [97mYou entered the wrong choice  please enter again
echo.
echo.
pause >nul
goto cputweaks

:optimizeintelcpu
bcdedit /set allowedinmemorysettings 0x0
bcdedit /set isolatedcontext No
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v "DistributeTimers" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v "DisableTsx" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power\PowerThrottling" /v "PowerThrottlingOff" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Power" /v "CoalescingTimerInterval" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "EnergyEstimationEnabled" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "EventProcessorEnabled" /t REG_DWORD /d "0" /f
cls
goto cputweaks

:optimizeamdcpu
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v "DistributeTimers" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v "DisableTsx" /t REG_DWORD /d "1" /f
cls
goto cputweaks

:boostperformance
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power\PowerSettings\54533251-82be-4824-96c1-47b60b740d00\943c8cb6-6f93-4227-ad87-e9a3feec08d1" /v "Attributes" /t REG_DWORD /d "2" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power\PowerSettings\2a737441-1930-4402-8d77-b2bebba308a3\d4e98f31-5ffe-4ce1-be31-1b38b384c009\DefaultPowerSchemeValues\381b4222-f694-41f0-9685-ff5bb260df2e" /v "ACSettingIndex" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "MaximumThrottlePercent" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "MaximumPerformancePercent" /t REG_DWORD /d "100" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "Class1InitialUnparkCount" /t REG_DWORD /d "100" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "InitialUnparkCount" /t REG_DWORD /d "100" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "MaximumPerformancePercent" /t REG_DWORD /d "100" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power\PowerThrottling" /v "PowerThrottlingOff" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power\Policy\Settings\Processor" /v "CPHEADROOM" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power\Policy\Settings\Processor" /v "CPCONCURRENCY" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\ControlSet001\Control\Processor" /v "ProccesorThrottlingEnabled" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\ControlSet001\Control\Processor" /v "CpuIdleThreshold" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\ControlSet001\Control\Processor" /v "CpuIdle" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\ControlSet001\Control\Processor" /v "CpuLatencyTimer" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\ControlSet001\Control\Processor" /v "CpuDebuggingEnabled" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\ControlSet001\Control\Processor" /v "ProccesorLatencyThrottlingEnabled" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\ControlSet001\Control\Processor" /v "CpuIdleScrubDelay" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\ControlSet001\Control\Processor" /v "CpuIdleScrubInterval" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\ControlSet001\Control\Processor" /v "CpuIdleScrubPower" /t REG_DWORD /d "18" /f
Reg.exe add "HKLM\SYSTEM\ControlSet001\Control\Processor" /v "CpuIdleScrubThreshold" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\ControlSet001\Control\Processor" /v "CpuIdleScrubType" /t REG_DWORD /d "2" /f
Reg.exe add "HKLM\SYSTEM\ControlSet001\Control\Processor" /v "CpuIdleScrubValueFirst" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\ControlSet001\Control\Processor" /v "CpuIdleScrubValueCount" /t REG_DWORD /d "100" /f
Reg.exe add "HKLM\SYSTEM\ControlSet001\Control\Processor" /v "CpuIdleScrubValueIndex" /t REG_DWORD /d "42" /f
Reg.exe add "HKLM\SYSTEM\ControlSet001\Control\Processor" /v "CpuIdleScrubValueName" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\ControlSet001\Control\Processor" /v "CpuIdleScrubValueDescription" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\ControlSet001\Control\Processor" /v "CpuIdleScrubValueEnabled" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\ControlSet001\Control\Processor" /v "CpuIdleScrubValueDisabled" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\ControlSet001\Control\Processor" /v "CpuIdleScrubValueVisible" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\ControlSet001\Control\Processor" /v "CpuIdleScrubValueHidden" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\ControlSet001\Control\Processor" /v "CpuIdleScrubValueReadOnly" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\ControlSet001\Control\Processor" /v "CpuIdleScrubValueReadnv11" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\ControlSet001\Control\Processor" /v "CpuIdleScrubValuenv11Only" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\ControlSet001\Control\Processor" /v "CpuIdleScrubValueAuto" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\ControlSet001\Control\Processor" /v "CpuIdleScrubValueManual" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\ControlSet001\Control\Processor" /v "CpuIdleScrubValueAutomatic" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\ControlSet001\Control\Processor" /v "CpuIdleScrubValueDisabledByDefault" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\ControlSet001\Control\Processor" /v "CpuIdleScrubValueEnabledByDefault" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\ControlSet001\Control\Processor" /v "CpuIdleScrubValueDefaultEnabled" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\ControlSet001\Control\Processor" /v "CpuIdleScrubValueDefaultDisabled" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\ControlSet001\Control\Processor" /v "CpuIdleScrubValueDefaultAuto" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\ControlSet001\Control\Processor" /v "CpuIdleScrubValueDefaultManual" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\IntelPPM" /v Start /t REG_DWORD /d 3 /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\AmdPPM" /v Start /t REG_DWORD /d 3 /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Low Latency" /v "Affinity" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Low Latency" /v "Background Only" /t REG_SZ /d "False" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Low Latency" /v "BackgroundPriority" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Low Latency" /v "Clock Rate" /t REG_DWORD /d "10000" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Low Latency" /v "GPU Priority" /t REG_DWORD /d "8" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Low Latency" /v "Priority" /t REG_DWORD /d "2" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Low Latency" /v "Scheduling Category" /t REG_SZ /d "Medium" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Low Latency" /v "SFIO Priority" /t REG_SZ /d "High" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Low Latency" /v "Latency Sensitive" /t REG_SZ /d "True" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "Affinity" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "Background Only" /t REG_SZ /d "False" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "BackgroundPriority" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "Clock Rate" /t REG_DWORD /d "10000" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "GPU Priority" /t REG_DWORD /d "18" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "Priority" /t REG_DWORD /d "2" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "Scheduling Category" /t REG_SZ /d "High" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "SFIO Priority" /t REG_SZ /d "High" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "Latency Sensitive" /t REG_SZ /d "True" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\svchost.exe\PerfOptions" /v "CpuPriorityClass" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\svchost.exe\PerfOptions" /v "IoPriority" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\ControlSet001\Control\PriorityControl" /v "Win32PrioritySeparation" /t REG_DWORD /d "38" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\PriorityControl" /v "Win32PrioritySeparation" /t REG_DWORD /d "38" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\DXGKrnl\Parameters" /v "ThreadPriority" /t REG_DWORD /d "15" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm\Parameters" /v "ThreadPriority" /t REG_DWORD /d "15" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile" /v "SystemResponsiveness" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\PriorityControl" /v "IRQ8Priority" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\ControlSet001\Control\PriorityControl" /v "IRQ8Priority" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\PriorityControl" /v "IRQ16Priority" /t REG_DWORD /d "2" /f
Reg.exe add "HKLM\SYSTEM\ControlSet001\Control\PriorityControl" /v "IRQ16Priority" /t REG_DWORD /d "2" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\csrss.exe\PerfOptions" /v "CpuPriorityClass" /t REG_DWORD /d "4" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\csrss.exe\PerfOptions" /v "IoPriority" /t REG_DWORD /d "4" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Window Manager" /v "Background Only" /t REG_SZ /d "True" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Window Manager" /v "Clock Rate" /t REG_DWORD /d "10000" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Window Manager" /v "GPU Priority" /t REG_DWORD /d "8" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Window Manager" /v "Priority" /t REG_DWORD /d "5" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Window Manager" /v "Scheduling Category" /t REG_SZ /d "Medium" /f
Reg.exe add "HKLM\SYSTEM\ResourcePolicyStore\ResourceSets\Policies\CPU\HardCap0" /v "CapPercentage" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\ResourcePolicyStore\ResourceSets\Policies\CPU\HardCap0" /v "SchedulingType" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\ResourcePolicyStore\ResourceSets\Policies\CPU\Paused" /v "CapPercentage" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\ResourcePolicyStore\ResourceSets\Policies\CPU\Paused" /v "SchedulingType" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\ResourcePolicyStore\ResourceSets\Policies\CPU\SoftCapFull" /v "CapPercentage" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\ResourcePolicyStore\ResourceSets\Policies\CPU\SoftCapFull" /v "SchedulingType" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\ResourcePolicyStore\ResourceSets\Policies\CPU\SoftCapLow" /v "CapPercentage" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\ResourcePolicyStore\ResourceSets\Policies\CPU\SoftCapLow" /v "SchedulingType" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\ResourcePolicyStore\ResourceSets\Policies\Flags\BackgroundDefault" /v "IsLowPriority" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\ResourcePolicyStore\ResourceSets\Policies\Flags\Frozen" /v "IsLowPriority" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\ResourcePolicyStore\ResourceSets\Policies\Flags\FrozenDNCS" /v "IsLowPriority" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\ResourcePolicyStore\ResourceSets\Policies\Flags\FrozenDNK" /v "IsLowPriority" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\ResourcePolicyStore\ResourceSets\Policies\Flags\PrelaunchForeground" /v "IsLowPriority" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\ResourcePolicyStore\ResourceSets\Policies\Flags\ThrottleGPUInterference" /v "IsLowPriority" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\ResourcePolicyStore\ResourceSets\Policies\Importance\Critical" /v "BasePriority" /t REG_DWORD /d "82" /f
Reg.exe add "HKLM\SYSTEM\ResourcePolicyStore\ResourceSets\Policies\Importance\Critical" /v "OverTargetPriority" /t REG_DWORD /d "50" /f
Reg.exe add "HKLM\SYSTEM\ResourcePolicyStore\ResourceSets\Policies\Importance\CriticalNoUi" /v "BasePriority" /t REG_DWORD /d "82" /f
Reg.exe add "HKLM\SYSTEM\ResourcePolicyStore\ResourceSets\Policies\Importance\CriticalNoUi" /v "OverTargetPriority" /t REG_DWORD /d "50" /f
Reg.exe add "HKLM\SYSTEM\ResourcePolicyStore\ResourceSets\Policies\Importance\EmptyHostPPLE" /v "BasePriority" /t REG_DWORD /d "82" /f
Reg.exe add "HKLM\SYSTEM\ResourcePolicyStore\ResourceSets\Policies\Importance\EmptyHostPPLE" /v "OverTargetPriority" /t REG_DWORD /d "50" /f
Reg.exe add "HKLM\SYSTEM\ResourcePolicyStore\ResourceSets\Policies\Importance\Critical" /v "BasePriority" /t REG_DWORD /d "82" /f
Reg.exe add "HKLM\SYSTEM\ResourcePolicyStore\ResourceSets\Policies\Importance\Critical" /v "OverTargetPriority" /t REG_DWORD /d "50" /f
Reg.exe add "HKLM\SYSTEM\ResourcePolicyStore\ResourceSets\Policies\Importance\CriticalNoUi" /v "BasePriority" /t REG_DWORD /d "82" /f
Reg.exe add "HKLM\SYSTEM\ResourcePolicyStore\ResourceSets\Policies\Importance\CriticalNoUi" /v "OverTargetPriority" /t REG_DWORD /d "50" /f
Reg.exe add "HKLM\SYSTEM\ResourcePolicyStore\ResourceSets\Policies\Importance\EmptyHostPPLE" /v "BasePriority" /t REG_DWORD /d "82" /f
Reg.exe add "HKLM\SYSTEM\ResourcePolicyStore\ResourceSets\Policies\Importance\EmptyHostPPLE" /v "OverTargetPriority" /t REG_DWORD /d "50" /f
Reg.exe add "HKLM\SYSTEM\ResourcePolicyStore\ResourceSets\Policies\Importance\High" /v "BasePriority" /t REG_DWORD /d "82" /f
Reg.exe add "HKLM\SYSTEM\ResourcePolicyStore\ResourceSets\Policies\Importance\High" /v "OverTargetPriority" /t REG_DWORD /d "50" /f
Reg.exe add "HKLM\SYSTEM\ResourcePolicyStore\ResourceSets\Policies\Importance\Low" /v "BasePriority" /t REG_DWORD /d "82" /f
Reg.exe add "HKLM\SYSTEM\ResourcePolicyStore\ResourceSets\Policies\Importance\Low" /v "OverTargetPriority" /t REG_DWORD /d "50" /f
Reg.exe add "HKLM\SYSTEM\ResourcePolicyStore\ResourceSets\Policies\Importance\Lowest" /v "BasePriority" /t REG_DWORD /d "82" /f
Reg.exe add "HKLM\SYSTEM\ResourcePolicyStore\ResourceSets\Policies\Importance\Lowest" /v "OverTargetPriority" /t REG_DWORD /d "50" /f
Reg.exe add "HKLM\SYSTEM\ResourcePolicyStore\ResourceSets\Policies\Importance\Medium" /v "BasePriority" /t REG_DWORD /d "82" /f
Reg.exe add "HKLM\SYSTEM\ResourcePolicyStore\ResourceSets\Policies\Importance\Medium" /v "OverTargetPriority" /t REG_DWORD /d "50" /f
Reg.exe add "HKLM\SYSTEM\ResourcePolicyStore\ResourceSets\Policies\Importance\MediumHigh" /v "BasePriority" /t REG_DWORD /d "82" /f
Reg.exe add "HKLM\SYSTEM\ResourcePolicyStore\ResourceSets\Policies\Importance\MediumHigh" /v "OverTargetPriority" /t REG_DWORD /d "50" /f
Reg.exe add "HKLM\SYSTEM\ResourcePolicyStore\ResourceSets\Policies\Importance\StartHost" /v "BasePriority" /t REG_DWORD /d "82" /f
Reg.exe add "HKLM\SYSTEM\ResourcePolicyStore\ResourceSets\Policies\Importance\StartHost" /v "OverTargetPriority" /t REG_DWORD /d "50" /f
Reg.exe add "HKLM\SYSTEM\ResourcePolicyStore\ResourceSets\Policies\Importance\VeryLow" /v "OverTargetPriority" /t REG_DWORD /d "50" /f
Reg.exe add "HKLM\SYSTEM\ResourcePolicyStore\ResourceSets\Policies\IO\NoCap" /v "IOBandwidth" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\ResourcePolicyStore\ResourceSets\Policies\Memory\NoCap" /v "CommitLimit" /t REG_DWORD /d "4294967295" /f
Reg.exe add "HKLM\SYSTEM\ResourcePolicyStore\ResourceSets\Policies\Memory\NoCap" /v "CommitTarget" /t REG_DWORD /d "4294967295" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power\PowerSettings\54533251-82be-4824-96c1-47b60b740d00\893dee8e-2bef-41e0-89c6-b55d0929964c" /v "ValueMax" /t REG_DWORD /d "100" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power\PowerSettings\54533251-82be-4824-96c1-47b60b740d00\893dee8e-2bef-41e0-89c6-b55d0929964c\DefaultPowerSchemeValues\8c5e7fda-e8bf-4a96-9a85-a6e23a8c635c" /v "ValueMax" /t REG_DWORD /d "100" /f
Reg.exe add "HKLM\SYSTEM\ControlSet001\Control\Power\PowerSettings\54533251-82be-4824-96c1-47b60b740d00\0cc5b647-c1df-4637-891a-dec35c318583" /v "ValueMin" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\ControlSet002\Control\Power\PowerSettings\54533251-82be-4824-96c1-47b60b740d00\0cc5b647-c1df-4637-891a-dec35c318583" /v "ValueMax" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\ControlSet002\Control\Power\PowerSettings\54533251-82be-4824-96c1-47b60b740d00\0cc5b647-c1df-4637-891a-dec35c318583" /v "ValueMin" /t REG_DWORD /d "0" /f
Reg.exe add HKLM\SYSTEM\CurrentControlSet\Control\Power /v Class2InitialUnparkCount /t REG_DWORD /d 100 /f
Reg.exe add HKLM\SYSTEM\CurrentControlSet\Control\Power /v EnergyEstimationDisabled /t REG_DWORD /d 1 /f
Reg.exe add HKLM\SYSTEM\CurrentControlSet\Control\Power /v PerfBoostAtGuaranteed /t REG_DWORD /d 1 /f
Reg.exe add HKLM\SYSTEM\CurrentControlSet\Control\Power /v PpmMfBufferingThreshold /t REG_DWORD /d 0 /f
Reg.exe add HKLM\SYSTEM\CurrentControlSet\Control\Power /v MfOverridesDisabled /t REG_DWORD /d 1 /f
Reg.exe add HKLM\SYSTEM\CurrentControlSet\Control\Power /v PpmMfOverridesDisabled /t REG_DWORD /d 1 /f
Reg.exe add HKLM\SYSTEM\CurrentControlSet\Control\Power /v UserBatteryDischargeEstimator /t REG_DWORD /d 1 /f
Reg.exe add HKLM\SYSTEM\CurrentControlSet\Control\Power /v PowerThrottlingOff /t REG_DWORD /d 1 /f
Reg.exe add HKLM\SYSTEM\CurrentControlSet\Control\Power\PowerThrottling /v PowerThrottlingOff /t REG_DWORD /d 1 /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "PerfLevelSrc" /t REG_DWORD /d "2222" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "PowerMizerEnable" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "PowerMizerLevel" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "PowerMizerLevelAC" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "CoalescingTimerInterval" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "PlatformAoAcOverride" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "EnergyEstimationEnabled" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "EventProcessorEnabled" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "CsEnabled" /t REG_DWORD /d "0" /f
Reg.exe add HKLM\SYSTEM\CurrentControlSet\Control\Power /v AwayModeEnabled /t REG_DWORD /d 0 /f
Reg.exe add HKLM\SYSTEM\CurrentControlSet\Control\Power /v Class1InitialUnparkCount /t REG_DWORD /d 100 /f
Reg.exe add HKLM\SYSTEM\CurrentControlSet\Control\Power /v CsEnabled /t REG_DWORD /d 0 /f
Reg.exe add HKLM\SYSTEM\CurrentControlSet\Control\Power /v CustomizeDuringSetup /t REG_DWORD /d 1 /f
Reg.exe add HKLM\SYSTEM\CurrentControlSet\Control\Power /v EnergyEstimationEnabled /t REG_DWORD /d 1 /f
Reg.exe add HKLM\SYSTEM\CurrentControlSet\Control\Power /v HiberFileSizePercent /t REG_DWORD /d 0 /f
Reg.exe add HKLM\SYSTEM\CurrentControlSet\Control\Power /v HibernateEnabled /t REG_DWORD /d 0 /f
Reg.exe add HKLM\SYSTEM\CurrentControlSet\Control\Power /v MfBufferingThreshold /t REG_DWORD /d 0 /f
Reg.exe add HKLM\SYSTEM\CurrentControlSet\Control\Power /v PerfCalculateActualUtilization /t REG_DWORD /d 1 /f
Reg.exe add HKLM\SYSTEM\CurrentControlSet\Control\Power /v TimerRebaseThresholdOnDripsExit /t REG_DWORD /d 30 /f
Reg.exe add HKLM\SYSTEM\CurrentControlSet\Control\Power /v EventProcessorEnabled /t REG_DWORD /d 1 /f
Reg.exe add HKLM\SYSTEM\CurrentControlSet\Control\Power /v HiberFileType /t REG_DWORD /d 0 /f
Reg.exe add HKLM\SYSTEM\CurrentControlSet\Control\Power /v Class2InitialUnparkCount /t REG_DWORD /d 100 /f
Reg.exe add HKLM\SYSTEM\CurrentControlSet\Control\Power /v EnergyEstimationDisabled /t REG_DWORD /d 1 /f
Reg.exe add HKLM\SYSTEM\CurrentControlSet\Control\Power /v PerfBoostAtGuaranteed /t REG_DWORD /d 1 /f
Reg.exe add HKLM\SYSTEM\CurrentControlSet\Control\Power /v PpmMfBufferingThreshold /t REG_DWORD /d 0 /f
Reg.exe add HKLM\SYSTEM\CurrentControlSet\Control\Power /v MfOverridesDisabled /t REG_DWORD /d 1 /f
Reg.exe add HKLM\SYSTEM\CurrentControlSet\Control\Power /v PpmMfOverridesDisabled /t REG_DWORD /d 1 /f
Reg.exe add HKLM\SYSTEM\CurrentControlSet\Control\Power /v UserBatteryDischargeEstimator /t REG_DWORD /d 1 /f
Reg.exe add HKLM\SYSTEM\CurrentControlSet\Control\Power /v PowerThrottlingOff /t REG_DWORD /d 1 /f
Reg.exe add HKLM\SYSTEM\CurrentControlSet\Control\Power\PowerThrottling /v PowerThrottlingOff /t REG_DWORD /d 1 /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Power" /v "HiberbootEnabled" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\GpuEnergyDrv" /v "Start" /t REG_DWORD /d "4" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\GpuEnergyDr" /v "Start" /t REG_DWORD /d "4" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager" /v "CoalescingTimerInterval" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Power" /v "CoalescingTimerInterval" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "CoalescingTimerInterval" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v "CoalescingTimerInterval" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "HibernateEnabled" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "SleepReliabilityDetailedDiagnostics" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power\EnergyEstimation\TaggedEnergy" /v "DisableTaggedEnergyLogging" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power\EnergyEstimation\TaggedEnergy" /v "TelemetryMaxApplication" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power\EnergyEstimation\TaggedEnergy" /v "TelemetryMaxTagPerApplication" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power\EnergyEstimation\TaggedEnergy" /v "EnergyEstimationEnabled" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power\EnergyEstimation\Storage\SD\IdleState\1" /v "IdleExitEnergyMicroJoules" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power\EnergyEstimation\Storage\SD\IdleState\1" /v "IdleExitLatencyMs" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power\EnergyEstimation\Storage\SD\IdleState\1" /v "IdlePowerMw" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power\EnergyEstimation\Storage\SD\IdleState\1" /v "IdleTimeLengthMs" /t REG_DWORD /d "4294967295" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power\EnergyEstimation\Storage\SSD\IdleState\1" /v "IdleExitEnergyMicroJoules" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power\EnergyEstimation\Storage\SSD\IdleState\2" /v "IdleExitLatencyMs" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power\EnergyEstimation\Storage\SSD\IdleState\2" /v "IdlePowerMw" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power\EnergyEstimation\Storage\SSD\IdleState\2" /v "IdleTimeLengthMs" /t REG_DWORD /d "4294967295" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power\EnergyEstimation\Storage\SSD\IdleState\3" /v "IdleExitEnergyMicroJoules" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power\EnergyEstimation\Storage\SSD\IdleState\3" /v "IdleExitLatencyMs" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power\EnergyEstimation\Storage\SSD\IdleState\3" /v "IdlePowerMw" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power\EnergyEstimation\Storage\SSD\IdleState\3" /v "IdleTimeLengthMs" /t REG_DWORD /d "4294967295" /f
powercfg -duplicatescheme e9a42b02-d5df-448d-aa00-03f14749eb61 11111111-1111-1111-1111-111111111111
powercfg -changename 11111111-1111-1111-1111-111111111111 "Fyumi's Power" "Nah, I'd Win"
Reg.exe add "HKLM\System\CurrentControlSet\Control\Power\PowerSettings\0012ee47-9041-4b5d-9b77-535fba8b1442\d3d55efd-c1ff-424e-9dc3-441be7833010" /v "Attributes" /t REG_DWORD /d "0" /f > NUL 2>&1
Reg.exe add "HKLM\System\CurrentControlSet\Control\Power\PowerSettings\0012ee47-9041-4b5d-9b77-535fba8b1442\d639518a-e56d-4345-8af2-b9f32fb26109" /v "Attributes" /t REG_DWORD /d "0" /f > NUL 2>&1
Reg.exe add "HKLM\System\CurrentControlSet\Control\Power\PowerSettings\2a737441-1930-4402-8d77-b2bebba308a3\0853a681-27c8-4100-a2fd-82013e970683" /v "Attributes" /t REG_DWORD /d "0" /f > NUL 2>&1
Reg.exe add "HKLM\System\CurrentControlSet\Control\Power\PowerSettings\2a737441-1930-4402-8d77-b2bebba308a3\d4e98f31-5ffe-4ce1-be31-1b38b384c009" /v "Attributes" /t REG_DWORD /d "0" /f > NUL 2>&1
Reg.exe add "HKLM\System\CurrentControlSet\Control\Power\PowerSettings\54533251-82be-4824-96c1-47b60b740d00\06cadf0e-64ed-448a-8927-ce7bf90eb35d" /v "Attributes" /t REG_DWORD /d "0" /f > NUL 2>&1
Reg.exe add "HKLM\System\CurrentControlSet\Control\Power\PowerSettings\54533251-82be-4824-96c1-47b60b740d00\12a0ab44-fe28-4fa9-b3bd-4b64f44960a6" /v "Attributes" /t REG_DWORD /d "0" /f > NUL 2>&1
Reg.exe add "HKLM\System\CurrentControlSet\Control\Power\PowerSettings\54533251-82be-4824-96c1-47b60b740d00\3b04d4fd-1cc7-4f23-ab1c-d1337819c4bb" /v "Attributes" /t REG_DWORD /d "0" /f > NUL 2>&1
Reg.exe add "HKLM\System\CurrentControlSet\Control\Power\PowerSettings\54533251-82be-4824-96c1-47b60b740d00\4b92d758-5a24-4851-a470-815d78aee119" /v "Attributes" /t REG_DWORD /d "0" /f > NUL 2>&1
Reg.exe add "HKLM\System\CurrentControlSet\Control\Power\PowerSettings\54533251-82be-4824-96c1-47b60b740d00\5d76a2ca-e8c0-402f-a133-2158492d58ad" /v "Attributes" /t REG_DWORD /d "0" /f > NUL 2>&1
Reg.exe add "HKLM\System\CurrentControlSet\Control\Power\PowerSettings\54533251-82be-4824-96c1-47b60b740d00\7b224883-b3cc-4d79-819f-8374152cbe7c" /v "Attributes" /t REG_DWORD /d "0" /f > NUL 2>&1
PowerRun.exe /SW:0 Reg.exe add "HKLM\System\CurrentControlSet\Control\Power\User\PowerSchemes\11111111-1111-1111-1111-111111111111\0012ee47-9041-4b5d-9b77-535fba8b1442\6738e2c4-e8a5-4a42-b16a-e040e769756e" /v "ACSettingIndex" /t REG_DWORD /d "0" /f > NUL 2>&1
PowerRun.exe /SW:0 Reg.exe add "HKLM\System\CurrentControlSet\Control\Power\User\PowerSchemes\11111111-1111-1111-1111-111111111111\0012ee47-9041-4b5d-9b77-535fba8b1442\d3d55efd-c1ff-424e-9dc3-441be7833010" /v "ACSettingIndex" /t REG_DWORD /d "0" /f > NUL 2>&1
PowerRun.exe /SW:0 Reg.exe add "HKLM\System\CurrentControlSet\Control\Power\User\PowerSchemes\11111111-1111-1111-1111-111111111111\0012ee47-9041-4b5d-9b77-535fba8b1442\d639518a-e56d-4345-8af2-b9f32fb26109" /v "ACSettingIndex" /t REG_DWORD /d "0" /f > NUL 2>&1
PowerRun.exe /SW:0 Reg.exe add "HKLM\System\CurrentControlSet\Control\Power\User\PowerSchemes\11111111-1111-1111-1111-111111111111\0d7dbae2-4294-402a-ba8e-26777e8488cd\309dce9b-bef4-4119-9921-a851fb12f0f4" /v "ACSettingIndex" /t REG_DWORD /d "1" /f > NUL 2>&1
PowerRun.exe /SW:0 Reg.exe add "HKLM\System\CurrentControlSet\Control\Power\User\PowerSchemes\11111111-1111-1111-1111-111111111111\19cbb8fa-5279-450e-9fac-8a3d5fedd0c1\12bbebe6-58d6-4636-95bb-3217ef867c1a" /v "ACSettingIndex" /t REG_BINARY /d "00000000" /f > NUL 2>&1
PowerRun.exe /SW:0 Reg.exe add "HKLM\System\CurrentControlSet\Control\Power\User\PowerSchemes\11111111-1111-1111-1111-111111111111\238c9fa8-0aad-41ed-83f4-97be242c8f20\bd3b718a-0680-4d9d-8ab2-e1d2b4ac806d" /v "ACSettingIndex" /t REG_DWORD /d "0" /f > NUL 2>&1
PowerRun.exe /SW:0 Reg.exe add "HKLM\System\CurrentControlSet\Control\Power\User\PowerSchemes\11111111-1111-1111-1111-111111111111\2a737441-1930-4402-8d77-b2bebba308a3\0853a681-27c8-4100-a2fd-82013e970683" /v "ACSettingIndex" /t REG_DWORD /d "0" /f > NUL 2>&1
PowerRun.exe /SW:0 Reg.exe add "HKLM\System\CurrentControlSet\Control\Power\User\PowerSchemes\11111111-1111-1111-1111-111111111111\2a737441-1930-4402-8d77-b2bebba308a3\48e6b7a6-50f5-4782-a5d4-53bb8f07e226" /v "ACSettingIndex" /t REG_DWORD /d "0" /f > NUL 2>&1
PowerRun.exe /SW:0 Reg.exe add "HKLM\System\CurrentControlSet\Control\Power\User\PowerSchemes\11111111-1111-1111-1111-111111111111\2a737441-1930-4402-8d77-b2bebba308a3\d4e98f31-5ffe-4ce1-be31-1b38b384c009" /v "ACSettingIndex" /t REG_DWORD /d "0" /f > NUL 2>&1
PowerRun.exe /SW:0 Reg.exe add "HKLM\System\CurrentControlSet\Control\Power\User\PowerSchemes\11111111-1111-1111-1111-111111111111\4f971e89-eebd-4455-a8de-9e59040e7347\7648efa3-dd9c-4e3e-b566-50f929386280" /v "ACSettingIndex" /t REG_DWORD /d "0" /f > NUL 2>&1
PowerRun.exe /SW:0 Reg.exe add "HKLM\System\CurrentControlSet\Control\Power\User\PowerSchemes\11111111-1111-1111-1111-111111111111\4f971e89-eebd-4455-a8de-9e59040e7347\96996bc0-ad50-47ec-923b-6f41874dd9eb" /v "ACSettingIndex" /t REG_DWORD /d "0" /f > NUL 2>&1
PowerRun.exe /SW:0 Reg.exe add "HKLM\System\CurrentControlSet\Control\Power\User\PowerSchemes\11111111-1111-1111-1111-111111111111\501a4d13-42af-4429-9fd1-a8218c268e20\ee12f906-d277-404b-b6da-e5fa1a576df5" /v "ACSettingIndex" /t REG_DWORD /d "0" /f > NUL 2>&1
PowerRun.exe /SW:0 Reg.exe add "HKLM\System\CurrentControlSet\Control\Power\User\PowerSchemes\11111111-1111-1111-1111-111111111111\54533251-82be-4824-96c1-47b60b740d00\06cadf0e-64ed-448a-8927-ce7bf90eb35d" /v "ACSettingIndex" /t REG_DWORD /d "2" /f > NUL 2>&1
PowerRun.exe /SW:0 Reg.exe add "HKLM\System\CurrentControlSet\Control\Power\User\PowerSchemes\11111111-1111-1111-1111-111111111111\54533251-82be-4824-96c1-47b60b740d00\12a0ab44-fe28-4fa9-b3bd-4b64f44960a6" /v "ACSettingIndex" /t REG_DWORD /d "1" /f > NUL 2>&1
PowerRun.exe /SW:0 Reg.exe add "HKLM\System\CurrentControlSet\Control\Power\User\PowerSchemes\11111111-1111-1111-1111-111111111111\54533251-82be-4824-96c1-47b60b740d00\3b04d4fd-1cc7-4f23-ab1c-d1337819c4bb" /v "ACSettingIndex" /t REG_DWORD /d "0" /f > NUL 2>&1
PowerRun.exe /SW:0 Reg.exe add "HKLM\System\CurrentControlSet\Control\Power\User\PowerSchemes\11111111-1111-1111-1111-111111111111\54533251-82be-4824-96c1-47b60b740d00\4b92d758-5a24-4851-a470-815d78aee119" /v "ACSettingIndex" /t REG_DWORD /d "100" /f > NUL 2>&1
PowerRun.exe /SW:0 Reg.exe add "HKLM\System\CurrentControlSet\Control\Power\User\PowerSchemes\11111111-1111-1111-1111-111111111111\54533251-82be-4824-96c1-47b60b740d00\5d76a2ca-e8c0-402f-a133-2158492d58ad" /v "ACSettingIndex" /t REG_DWORD /d "0" /f > NUL 2>&1
PowerRun.exe /SW:0 Reg.exe add "HKLM\System\CurrentControlSet\Control\Power\User\PowerSchemes\11111111-1111-1111-1111-111111111111\54533251-82be-4824-96c1-47b60b740d00\7b224883-b3cc-4d79-819f-8374152cbe7c" /v "ACSettingIndex" /t REG_DWORD /d "100" /f > NUL 2>&1
PowerRun.exe /SW:0 Reg.exe add "HKLM\System\CurrentControlSet\Control\Power\User\PowerSchemes\11111111-1111-1111-1111-111111111111\54533251-82be-4824-96c1-47b60b740d00\893dee8e-2bef-41e0-89c6-b55d0929964c" /v "ACSettingIndex" /t REG_DWORD /d "100" /f > NUL 2>&1
PowerRun.exe /SW:0 Reg.exe add "HKLM\System\CurrentControlSet\Control\Power\User\PowerSchemes\11111111-1111-1111-1111-111111111111\54533251-82be-4824-96c1-47b60b740d00\94d3a615-a899-4ac5-ae2b-e4d8f634367f" /v "ACSettingIndex" /t REG_DWORD /d "1" /f > NUL 2>&1
PowerRun.exe /SW:0 Reg.exe add "HKLM\System\CurrentControlSet\Control\Power\User\PowerSchemes\11111111-1111-1111-1111-111111111111\54533251-82be-4824-96c1-47b60b740d00\bc5038f7-23e0-4960-96da-33abaf5935ec" /v "ACSettingIndex" /t REG_DWORD /d "100" /f > NUL 2>&1
PowerRun.exe /SW:0 Reg.exe add "HKLM\System\CurrentControlSet\Control\Power\User\PowerSchemes\11111111-1111-1111-1111-111111111111\7516b95f-f776-4464-8c53-06167f40cc99\3c0bc021-c8a8-4e07-a973-6b14cbcb2b7e" /v "ACSettingIndex" /t REG_DWORD /d "0" /f > NUL 2>&1
PowerRun.exe /SW:0 Reg.exe add "HKLM\System\CurrentControlSet\Control\Power\User\PowerSchemes\11111111-1111-1111-1111-111111111111\7516b95f-f776-4464-8c53-06167f40cc99\aded5e82-b909-4619-9949-f5d71dac0bcb" /v "ACSettingIndex" /t REG_DWORD /d "100" /f > NUL 2>&1
PowerRun.exe /SW:0 Reg.exe add "HKLM\System\CurrentControlSet\Control\Power\User\PowerSchemes\11111111-1111-1111-1111-111111111111\7516b95f-f776-4464-8c53-06167f40cc99\f1fbfde2-a960-4165-9f88-50667911ce96" /v "ACSettingIndex" /t REG_DWORD /d "100" /f > NUL 2>&1
PowerRun.exe /SW:0 Reg.exe add "HKLM\System\CurrentControlSet\Control\Power\User\PowerSchemes\11111111-1111-1111-1111-111111111111\7516b95f-f776-4464-8c53-06167f40cc99\fbd9aa66-9553-4097-ba44-ed6e9d65eab8" /v "ACSettingIndex" /t REG_DWORD /d "0" /f > NUL 2>&1
powercfg /setacvalueindex scheme_current 54533251-82be-4824-96c1-47b60b740d00 4d2b0152-7d5c-498b-88e2-34345392a2c5 5000
powercfg -setactive 11111111-1111-1111-1111-111111111111
powercfg /setactive scheme_current
powercfg -delete a1841308-3541-4fab-bc81-f71556f20b4a > NUL 2>&1
powercfg -delete 381b4222-f694-41f0-9685-ff5bb260df2e > NUL 2>&1
powercfg -delete 8c5e7fda-e8bf-4a96-9a85-a6e23a8c635c > NUL 2>&1
powercfg -delete e9a42b02-d5df-448d-aa00-03f14749eb61 > NUL 2>&1
powercfg -setacvalueindex scheme_current sub_processor PERFAUTONOMOUS 1
Powercfg -setactive scheme_current
powercfg -setacvalueindex scheme_current sub_processor PERFAUTONOMOUSWINDOW 20000
Powercfg -setactive scheme_current
powercfg -setacvalueindex scheme_current sub_processor PERFCHECK 20
Powercfg -setactive scheme_curre
powercfg -setacvalueindex scheme_current sub_none DEVICEIDLE 0
powercfg /setactive SCHEME_CURRENT
powercfg -setacvalueindex scheme_current sub_processor IDLESCALING 1
powercfg /setactive SCHEME_CURRENT
powercfg -setacvalueindex scheme_current sub_processor PERFEPP 0
powercfg /setactive SCHEME_CURRENT
powercfg -setacvalueindex scheme_current sub_processor THROTTLING 0
powercfg /setactive SCHEME_CURRENT
powercfg -setacvalueindex scheme_current sub_processor PERFBOOSTMODE 1
powercfg -setacvalueindex scheme_current sub_processor PERFBOOSTPOL 100
powercfg /setactive SCHEME_CURRENT
powercfg -setacvalueindex scheme_current sub_processor CPMINCORES 100
powercfg /setactive SCHEME_CURRENT
Powercfg -setacvalueindex scheme_current sub_processor PROCTHROTTLEMAX 100
Powercfg -setactive scheme_current
Powercfg -setacvalueindex scheme_current sub_processor PROCTHROTTLEMIN 100
Powercfg -setactive scheme_current
Powercfg -setdcvalueindex scheme_current sub_processor PROCTHROTTLEMAX 100
Powercfg -setactive scheme_current
Powercfg -setdcvalueindex scheme_current sub_processor PROCTHROTTLEMIN 50
Powercfg -setactive scheme_current
bcdedit /set {current} numproc 4
powercfg -setacvalueindex 95533644-e700-4a79-a56c-a89e8cb109d9 238c9fa8-0aad-41ed-83f4-97be242c8f20 25dfa149-5dd1-4736-b5ab-e8a37b5b8187 0
Powercfg -setactive scheme_current
powercfg -setdcvalueindex 95533644-e700-4a79-a56c-a89e8cb109d9 238c9fa8-0aad-41ed-83f4-97be242c8f20 25dfa149-5dd1-4736-b5ab-e8a37b5b8187 0
Powercfg -setactive scheme_current
powercfg -setacvalueindex scheme_current sub_processor IDLEPROMOTE 98
powercfg -setacvalueindex scheme_current sub_processor IDLEDEMOTE 98
powercfg -setacvalueindex scheme_current sub_processor IDLECHECK 20000
powercfg /setactive SCHEME_CURRENT
powercfg -setacvalueindex scheme_current SUB_SLEEP AWAYMODE 0
powercfg -setacvalueindex scheme_current SUB_SLEEP ALLOWSTANDBY 0
powercfg -setacvalueindex scheme_current SUB_SLEEP HYBRIDSLEEP 0
powercfg -setacvalueindex scheme_current sub_processor PROCTHROTTLEMIN 100
powercfg /setactive SCHEME_CURRENT
cls
goto cputweaks

:gputweaks
cls
echo.
echo.
echo.
echo.
echo.                     [38 5 33m           █     █░ ██▓ ███▄    █ ▓█████▄  ▒█████   █     █░  ██████    ▄▄▄█████▓ █     █░▓█████ ▄▄▄       ██ ▄█▀▓█████  ██▀███
echo.                     [38 5 69m          ▓█░ █ ░█░▓██▒ ██ ▀█   █ ▒██▀ ██▌▒██▒  ██▒▓█░ █ ░█░▒██    ▒    ▓  ██▒ ▓▒▓█░ █ ░█░▓█   ▀▒████▄     ██▄█▒ ▓█   ▀ ▓██ ▒ ██▒
echo.                     [38 5 105m          ▒█░ █ ░█ ▒██▒▓██  ▀█ ██▒░██   █▌▒██░  ██▒▒█░ █ ░█ ░ ▓██▄      ▒ ▓██░ ▒░▒█░ █ ░█ ▒███  ▒██  ▀█▄  ▓███▄░ ▒███   ▓██ ░▄█ ▒
echo.                     [38 5 177m          ░█░ █ ░█ ░██░▓██▒  ▐▌██▒░▓█▄   ▌▒██   ██░░█░ █ ░█   ▒   ██▒   ░ ▓██▓ ░ ░█░ █ ░█ ▒▓█  ▄░██▄▄▄▄██ ▓██ █▄ ▒▓█  ▄ ▒██▀▀█▄
echo.                     [38 5 213m          ░░██▒██▓ ░██░▒██░   ▓██░░▒████▓ ░ ████▓▒░░░██▒██▓ ▒██████▒▒     ▒██▒ ░ ░░██▒██▓ ░▒████▒▓█   ▓██▒▒██▒ █▄░▒████▒░██▓ ▒██▒
echo.                     [38 5 33m          ░ ▓░▒ ▒  ░▓  ░ ▒░   ▒ ▒  ▒▒▓  ▒ ░ ▒░▒░▒░ ░ ▓░▒ ▒  ▒ ▒▓▒ ▒ ░     ▒ ░░   ░ ▓░▒ ▒  ░░ ▒░ ░▒▒   ▓▒█░▒ ▒▒ ▓▒░░ ▒░ ░░ ▒▓ ░▒▓░
echo.                     [38 5 105m            ▒ ░ ░   ▒ ░░ ░░   ░ ▒░ ░ ▒  ▒   ░ ▒ ▒░   ▒ ░ ░  ░ ░▒  ░ ░       ░      ▒ ░ ░   ░ ░  ░ ▒   ▒▒ ░░ ░▒ ▒░ ░ ░  ░  ░▒ ░ ▒░
echo.                     [38 5 33m            ░   ░   ▒ ░   ░   ░ ░  ░ ░  ░ ░ ░ ░ ▒    ░   ░  ░  ░  ░       ░        ░   ░     ░    ░   ▒   ░ ░░ ░    ░     ░░   ░
echo.                     [38 5 69m              ░     ░           ░    ░        ░ ░      ░          ░                  ░       ░  ░     ░  ░░  ░      ░  ░   ░
echo.                     [38 5 105m                                   ░
echo.
echo.                                                                       ╔═══
echo.                                                                       ║   This Utility Was Made By Fyumi   ║
echo.                                                                                                         ═══╝
echo.
echo.
echo.                              [38 5 213m[[0m 1 [38 5 213m][0m  [90mOptimize Intel GPU[90m                [38 5 213m[[0m 2 [38 5 213m][0m  [90mOptimize AMD GPU[90m                [38 5 213m[[0m 3 [38 5 213m][0m  [90mOptimize Nvidia GPU[90m
echo.
echo.
echo.                                                                       [38 5 213m[[0m 4 [38 5 213m][0m  [90mReturn To Main Menu[90m
echo.
echo.
echo.
echo.
echo. [38 5 33m                                                      ╔════════════════════════════════════════════════════════════════════╗
echo. [38 5 69m                                                      ║   Add "F" After Your Choice To See More Details About That Tweak   ║
echo. [38 5 105m                                                      ║                         Ex : 1F  2F  3F                            ║
echo. [38 5 177m                                                      ╚════════════════════════════════════════════════════════════════════╝
echo.
set /p fyumi=:
if /i __input__ == 1 (goto optimizeintelgpu)
if /i __input__ == 2 (goto optimizeamdgpu)
if /i __input__ == 3 (goto optimizenvidiagpu)
if /i __input__ == 4 (goto menutienganh)
if /i __input__ == 1F (goto sorry)
if /i __input__ == 2F (goto sorry)
if /i __input__ == 3F (goto sorry)
cls
echo.
echo.
echo.      [97mYou entered the wrong choice  please enter again
echo.
echo.
pause >nul
goto gputweaks

:optimizeintelgpu
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\DisplayPostProcessing" /v "Affinity" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\DisplayPostProcessing" /v "Background Only" /t REG_SZ /d "True" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\DisplayPostProcessing" /v "BackgroundPriority" /t REG_DWORD /d "24" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\DisplayPostProcessing" /v "Clock Rate" /t REG_DWORD /d "10000" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\DisplayPostProcessing" /v "GPU Priority" /t REG_DWORD /d "18" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\DisplayPostProcessing" /v "Priority" /t REG_DWORD /d "8" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\DisplayPostProcessing" /v "Scheduling Category" /t REG_SZ /d "High" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\DisplayPostProcessing" /v "SFIO Priority" /t REG_SZ /d "High" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\DisplayPostProcessing" /v "Latency Sensitive" /t REG_SZ /d "True" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /v "TdrLevel" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /v "TdrDebugMode" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Scheduler" /v "VsyncIdleTimeout" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /v "TdrDebugMode" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /v "TdrLevel" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\System\CurrentControlSet\Services\VxD\BIOS" /v "AGPConcur" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\System\CurrentControlSet\Services\VxD\BIOS" /v "CPUPriority" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\System\CurrentControlSet\Services\VxD\BIOS" /v "FastDRAM" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\System\CurrentControlSet\Services\VxD\BIOS" /v "PCIConcur" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\GraphicsDrivers" /v TdrLevel /t REG_DWORD /d 0 /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\GraphicsDrivers" /v TdrDelay /t REG_DWORD /d 60 /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Scheduler" /v "EnablePreemption" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Scheduler" /v "GPUPreemptionLevel" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Scheduler" /v "EnableAsyncMidBufferPreemption" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Scheduler" /v "EnableMidGfxPreemptionVGPU" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Scheduler" /v "EnableMidBufferPreemptionForHighTdrTimeout" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Scheduler" /v "EnableSCGMidBufferPreemption" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Scheduler" /v "PerfAnalyzeMidBufferPreemption" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\GpuEnergyDrv" /v "Start" /t REG_DWORD /d "4" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\GpuEnergyDr" /v "Start" /t REG_DWORD /d "4" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "ExitLatency" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "ExitLatencyCheckEnabled" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "Latency" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "LatencyToleranceDefault" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "LatencyToleranceFSVP" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "LatencyTolerancePerfOverride" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "LatencyToleranceScreenOffIR" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "LatencyToleranceVSyncEnabled" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "RtlCapabilityCheckLatency" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "QosManagesIdleProcessors" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DisableVsyncLatencyUpdate" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DisableSensorWatchdog" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "CoalescingTimerInterval" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "InterruptSteeringDisabled" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "LowLatencyScalingPercentage" /t REG_DWORD /d "100" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "HighPerformance" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "HighestPerformance" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "MinimumThrottlePercent" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "MaximumThrottlePercent" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "MaximumPerformancePercent" /t REG_DWORD /d "100" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "InitialUnparkCount" /t REG_DWORD /d "100" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DefaultD3TransitionLatencyActivelyUsed" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DefaultD3TransitionLatencyIdleLongTime" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DefaultD3TransitionLatencyIdleMonitorOff" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DefaultD3TransitionLatencyIdleNoContext" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DefaultD3TransitionLatencyIdleShortTime" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DefaultD3TransitionLatencyIdleVeryLongTime" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DefaultLatencyToleranceIdle0" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DefaultLatencyToleranceIdle0MonitorOff" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DefaultLatencyToleranceIdle1" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DefaultLatencyToleranceIdle1MonitorOff" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DefaultLatencyToleranceMemory" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DefaultLatencyToleranceNoContext" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DefaultLatencyToleranceNoContextMonitorOff" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DefaultLatencyToleranceOther" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DefaultLatencyToleranceTimerPeriod" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DefaultMemoryRefreshLatencyToleranceActivelyUsed" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DefaultMemoryRefreshLatencyToleranceMonitorOff" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DefaultMemoryRefreshLatencyToleranceNoContext" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "Latency" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "MiracastPerfTrackGraphicsLatency" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "MonitorLatencyTolerance" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "MonitorRefreshLatencyTolerance" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "TransitionLatency" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DisableVsyncLatencyUpdate" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DisableSensorWatchdog" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "InterruptSteeringDisabled" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "ExitLatency" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "ExitLatencyCheckEnabled" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "Latency" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "LatencyToleranceDefault" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "LatencyToleranceFSVP" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "Latency" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "MiracastPerfTrackGraphicsLatency" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "MonitorLatencyTolerance" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "MonitorRefreshLatencyTolerance" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "TransitionLatency" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /v "MonitorLatencyTolerance" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /v "MonitorRefreshLatencyTolerance" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "MonitorLatencyTolerance" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "MonitorRefreshLatencyTolerance" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /v "RMDisablePostL2Compression" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /v "RmDisableRegistryCaching" /t REG_DWORD /d "1" /f
fsutil behavior query memoryusage
fsutil behavior set memoryusage 2
cls
goto gputweaks

:optimizeamdgpu
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\DisplayPostProcessing" /v "BackgroundPriority" /t REG_DWORD /d "24" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\DisplayPostProcessing" /v "Clock Rate" /t REG_DWORD /d "10000" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\DisplayPostProcessing" /v "GPU Priority" /t REG_DWORD /d "18" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\DisplayPostProcessing" /v "Priority" /t REG_DWORD /d "8" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\DisplayPostProcessing" /v "Scheduling Category" /t REG_SZ /d "High" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\DisplayPostProcessing" /v "SFIO Priority" /t REG_SZ /d "High" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\DisplayPostProcessing" /v "Latency Sensitive" /t REG_SZ /d "True" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /v "TdrLevel" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /v "TdrDebugMode" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Scheduler" /v "VsyncIdleTimeout" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /v "TdrDebugMode" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /v "TdrLevel" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\System\CurrentControlSet\Services\VxD\BIOS" /v "AGPConcur" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\System\CurrentControlSet\Services\VxD\BIOS" /v "CPUPriority" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\System\CurrentControlSet\Services\VxD\BIOS" /v "FastDRAM" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\System\CurrentControlSet\Services\VxD\BIOS" /v "PCIConcur" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\GraphicsDrivers" /v TdrLevel /t REG_DWORD /d 0 /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\GraphicsDrivers" /v TdrDelay /t REG_DWORD /d 60 /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Scheduler" /v "EnablePreemption" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Scheduler" /v "GPUPreemptionLevel" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Scheduler" /v "EnableAsyncMidBufferPreemption" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Scheduler" /v "EnableMidGfxPreemptionVGPU" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Scheduler" /v "EnableMidBufferPreemptionForHighTdrTimeout" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Scheduler" /v "EnableSCGMidBufferPreemption" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Scheduler" /v "PerfAnalyzeMidBufferPreemption" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Scheduler" /v "EnableMidGfxPreemption" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Scheduler" /v "EnableMidBufferPreemption" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Scheduler" /v "EnableCEPreemption" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Scheduler" /v "DisableCudaContextPreemption" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Scheduler" /v "DisablePreemptionOnS3S4" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Scheduler" /v "ComputePreemptionLevel" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\GpuEnergyDr" /v "Start" /t REG_DWORD /d "4" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "ExitLatency" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "ExitLatencyCheckEnabled" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "Latency" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "LatencyToleranceDefault" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "LatencyToleranceFSVP" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "LatencyTolerancePerfOverride" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "LatencyToleranceScreenOffIR" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "LatencyToleranceVSyncEnabled" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "RtlCapabilityCheckLatency" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "QosManagesIdleProcessors" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DisableVsyncLatencyUpdate" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DisableSensorWatchdog" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "CoalescingTimerInterval" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "InterruptSteeringDisabled" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "LowLatencyScalingPercentage" /t REG_DWORD /d "100" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "HighPerformance" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "HighestPerformance" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "MinimumThrottlePercent" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DisableVsyncLatencyUpdate" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DisableSensorWatchdog" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "InterruptSteeringDisabled" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "ExitLatency" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "ExitLatencyCheckEnabled" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "Latency" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "LatencyToleranceDefault" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "LatencyToleranceFSVP" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "LatencyTolerancePerfOverride" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "LatencyToleranceScreenOffIR" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "LatencyToleranceVSyncEnabled" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "RtlCapabilityCheckLatency" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "LowLatencyScalingPercentage" /t REG_DWORD /d "100" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "MaxIAverageGraphicsLatencyInOneBucket" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DefaultD3TransitionLatencyActivelyUsed" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DefaultD3TransitionLatencyIdleLongTime" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DefaultD3TransitionLatencyIdleMonitorOff" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DefaultD3TransitionLatencyIdleNoContext" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DefaultD3TransitionLatencyIdleShortTime" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DefaultD3TransitionLatencyIdleVeryLongTime" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DefaultLatencyToleranceIdle0" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DefaultLatencyToleranceIdle0MonitorOff" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DefaultLatencyToleranceIdle1" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DefaultLatencyToleranceIdle1MonitorOff" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DefaultLatencyToleranceMemory" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DefaultLatencyToleranceNoContext" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DefaultLatencyToleranceNoContextMonitorOff" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DefaultLatencyToleranceOther" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DefaultLatencyToleranceTimerPeriod" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DefaultMemoryRefreshLatencyToleranceActivelyUsed" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DefaultMemoryRefreshLatencyToleranceMonitorOff" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DefaultMemoryRefreshLatencyToleranceNoContext" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "MaxIAverageGraphicsLatencyInOneBucket" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "Latency" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "MiracastPerfTrackGraphicsLatency" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "MonitorLatencyTolerance" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "MonitorRefreshLatencyTolerance" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "TransitionLatency" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /v "MonitorLatencyTolerance" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /v "MonitorRefreshLatencyTolerance" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "MonitorLatencyTolerance" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "MonitorRefreshLatencyTolerance" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /v "RMDisablePostL2Compression" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /v "RmDisableRegistryCaching" /t REG_DWORD /d "1" /f
fsutil behavior query memoryusage
fsutil behavior set memoryusage 2
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "KMD_EnableComputePreemption" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000\UMD" /v "Main3D_DEF" /t REG_SZ /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000\UMD" /v "Main3D" /t REG_BINARY /d "3100" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000\UMD" /v "FlipQueueSize" /t REG_BINARY /d "3100" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000\UMD" /v "TFQ" /t REG_BINARY /d "3200" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "KMD_FRTEnabled" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "DisableDMACopy" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "DisableBlockWrite" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "StutterMode" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "3D_Refresh_Rate_Override_DEF" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "AllowSnapshot" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "AAF_NA" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "AntiAlias_NA" /t REG_SZ /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "ASTT_NA" /t REG_SZ /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "AllowSubscription" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "AreaAniso_NA" /t REG_SZ /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "AllowRSOverlay" /t REG_SZ /d "false" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "Adaptive De-interlacing" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "AllowSkins" /t REG_SZ /d "false" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "AutoColorDepthReduction_NA" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "DisableSAMUPowerGating" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "DisableUVDPowerGatingDynamic" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "DisableVCEPowerGating" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "DisablePowerGating" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "DisableDrmdmaPowerGating" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "EnableVceSwClockGating" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "EnableUvdClockGating" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "EnableAspmL0s" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "EnableAspmL1" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "EnableUlps" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "EnableUlps_NA" /t REG_SZ /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "PP_SclkDeepSleepDisable" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "PP_ThermalAutoThrottlingEnable" /t REG_DWORD /d "0" /ff
Reg.exe add "" /v "3to2Pulldown_NA" /t REG_DWORD /d "0" /f
Reg.exe add "" /v "AAF_NA" /t REG_DWORD /d "0" /f
Reg.exe add "" /v "Adaptive De-interlacing" /t REG_DWORD /d "1" /f
Reg.exe add "" /v "AllowRSOverlay" /t Reg_SZ /d "false" /f
Reg.exe add "" /v "AllowSkins" /t Reg_SZ /d "false" /f
Reg.exe add "" /v "AllowSnapshot" /t REG_DWORD /d "0" /f
Reg.exe add "" /v "AllowSubscription" /t REG_DWORD /d "0" /f
Reg.exe add "" /v "AntiAlias_NA" /t Reg_SZ /d "0" /f
Reg.exe add "" /v "AreaAniso_NA" /t Reg_SZ /d "0" /f
Reg.exe add "" /v "ASTT_NA" /t Reg_SZ /d "0" /f
Reg.exe add "" /v "AutoColorDepthReduction_NA" /t REG_DWORD /d "0" /f
Reg.exe add "" /v "DisableSAMUPowerGating" /t REG_DWORD /d "1" /f
Reg.exe add "" /v "DisableUVDPowerGatingDynamic" /t REG_DWORD /d "1" /f
Reg.exe add "" /v "DisableVCEPowerGating" /t REG_DWORD /d "1" /f
Reg.exe add "" /v "EnableAspmL0s" /t REG_DWORD /d "0" /f
Reg.exe add "" /v "EnableAspmL1" /t REG_DWORD /d "0" /f
Reg.exe add "" /v "EnableUlps" /t REG_DWORD /d "0" /f
Reg.exe add "" /v "EnableUlps_NA" /t Reg_SZ /d "0" /f
Reg.exe add "" /v "KMD_DeLagEnabled" /t REG_DWORD /d "1" /f
Reg.exe add "" /v "KMD_FRTEnabled" /t REG_DWORD /d "0" /f
Reg.exe add "" /v "DisableDMACopy" /t REG_DWORD /d "1" /f
Reg.exe add "" /v "DisableBlocknv11" /t REG_DWORD /d "0" /f
Reg.exe add "" /v "StutterMode" /t REG_DWORD /d "0" /f
Reg.exe add "" /v "EnableUlps" /t REG_DWORD /d "0" /f
Reg.exe add "" /v "PP_SclkDeepSleepDisable" /t REG_DWORD /d "1" /f
Reg.exe add "" /v "PP_ThermalAutoThrottlingEnable" /t REG_DWORD /d "0" /f
Reg.exe add "" /v "DisableDrmdmaPowerGating" /t REG_DWORD /d "1" /f
Reg.exe add "\UMD" /v "Main3D_DEF" /t Reg_SZ /d "1" /f
Reg.exe add "\UMD" /v "Main3D" /t Reg_BINARY /d "3100" /f
Reg.exe add "\UMD" /v "FlipQueueSize" /t Reg_BINARY /d "3100" /f
Reg.exe add "\UMD" /v "ShaderCache" /t Reg_BINARY /d "3200" /f
Reg.exe add "\UMD" /v "Tessellation_OPTION" /t Reg_BINARY /d "3200" /f
Reg.exe add "\UMD" /v "Tessellation" /t Reg_BINARY /d "3100" /f
Reg.exe add "\UMD" /v "VSyncControl" /t Reg_BINARY /d "3000" /f
Reg.exe add "\UMD" /v "TFQ" /t Reg_BINARY /d "3200" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "EnableUvdClockGating" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "DisableVCEPowerGating" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "DisableUVDPowerGatingDynamic" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "DisablePowerGating" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "DisableSAMUPowerGating" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "DisableFBCForFullScreenApp" /t REG_SZ /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "DisableFBCSupport" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "DisableEarlySamuInit" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "PP_GPUPowerDownEnabled" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "DisableDrmdmaPowerGating" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "PP_SclkDeepSleepDisable" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "PP_ThermalAutoThrottlingEnable" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "PP_ActivityTarget" /t REG_DWORD /d "30" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "PP_ODNFeatureEnable" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "EnableUlps" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "GCOOPTION_DisableGPIOPowerSaveMode" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "PP_AllGraphicLevel_DownHyst" /t REG_DWORD /d "20" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "PP_AllGraphicLevel_UpHyst" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "KMD_FRTEnabled" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "DisableDMACopy" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "DisableBlocknv11" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "PP_ODNFeatureEnable" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "KMD_MaxUVDSessions" /t REG_DWORD /d "32" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "DalAllowDirectMemoryAccessTrig" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "DalAllowDPrefSwitchingForGLSync" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "WmAgpMaxIdleClk" /t REG_DWORD /d "32" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "PP_MCLKStutterModeThreshold" /t REG_DWORD /d "4096" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000\UMD" /v "EQAA" /t REG_BINARY /d "3000" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000\UMD" /v "PowerState" /t REG_BINARY /d "3000" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000\UMD" /v "AreaAniso_DEF" /t REG_SZ /d "8" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000\UMD" /v "SurfaceFormatReplacements_DEF" /t REG_SZ /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000\UMD" /v "Main3D_DEF" /t REG_SZ /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000\UMD" /v "AnisoType_DEF" /t REG_SZ /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000\UMD" /v "AnisoDegree_DEF" /t REG_SZ /d "4" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000\UMD" /v "ForceTripleBuffering" /t REG_BINARY /d "3000" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000\UMD" /v "ForceTripleBuffering_DEF" /t REG_SZ /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000\UMD" /v "TextureOpt_DEF" /t REG_SZ /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000\UMD" /v "TextureLod_DEF" /t REG_SZ /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000\UMD" /v "TruformMode_DEF" /t REG_SZ /d "2" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000\UMD" /v "LodAdj" /t REG_SZ /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000\UMD" /v "ForceZBufferDepth_DEF" /t REG_SZ /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000\UMD" /v "Tessellation_OPTION_DEF" /t REG_SZ /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000\UMD" /v "NoOSPowerOptions" /t REG_SZ /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000\UMD" /v "ForceZBufferDepth" /t REG_BINARY /d "3100" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000\UMD" /v "ForceZBufferDepth_DEF" /t REG_SZ /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000\UMD" /v "Tessellation_DEF" /t REG_SZ /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000\UMD" /v "Main3D" /t REG_BINARY /d "3100" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000\UMD" /v "AnisoType" /t REG_BINARY /d "32000000" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000\UMD" /v "AnisotropyOptimise" /t REG_BINARY /d "3100" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000\UMD" /v "TrilinearOptimise" /t REG_BINARY /d "3100" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000\UMD" /v "AnisoDegree" /t REG_BINARY /d "3400" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000\UMD" /v "ForceZBufferDepth" /t REG_BINARY /d "3100" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000\UMD" /v "ForceZBufferDepth_DEF" /t REG_SZ /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000\UMD" /v "Tessellation_DEF" /t REG_SZ /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000\UMD" /v "Main3D" /t REG_BINARY /d "3100" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000\UMD" /v "AnisoType" /t REG_BINARY /d "32000000" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000\UMD" /v "AnisotropyOptimise" /t REG_BINARY /d "3100" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000\UMD" /v "TrilinearOptimise" /t REG_BINARY /d "3100" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000\UMD" /v "AnisoDegree" /t REG_BINARY /d "3400" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000\UMD" /v "TextureLod" /t REG_BINARY /d "31000000" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000\UMD" /v "TextureOpt" /t REG_BINARY /d "31000000" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000\UMD" /v "TextureOpt_DEF" /t REG_SZ /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000\UMD" /v "TruformMode_NA" /t REG_BINARY /d "3200" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000\UMD" /v "Tessellation_OPTION" /t REG_BINARY /d "3200" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000\UMD" /v "Tessellation" /t REG_BINARY /d "3100" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000\UMD" /v "Main3D_SET" /t REG_BINARY /d "302031203220332034203500" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000\UMD" /v "ForceZBufferDepth_SET" /t REG_BINARY /d "3020313620323400" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000\UMD" /v "FlipQueueSize" /t REG_SZ /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000\UMD" /v "SurfaceFormatReplacements" /t REG_BINARY /d "3000" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000\UMD" /v "TFQ" /t REG_BINARY /d "3200" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000\UMD" /v "TFQ_DEF" /t REG_SZ /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000\UMD" /v "ZFormats_NA" /t REG_BINARY /d "3100" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000\UMD" /v "PowerState" /t REG_BINARY /d "3000" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000\UMD" /v "AntiStuttering" /t REG_BINARY /d "3000" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000\UMD" /v "TurboSync" /t REG_BINARY /d "3000" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000\UMD" /v "HighQualityAF" /t REG_BINARY /d "3300" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000\UMD" /v "ShaderCache" /t REG_BINARY /d "3200" /f
Reg.exe add "HKLM\SYSTEM\ControlSet001\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "EnableUlps" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\Software\AMD\CN" /v "AutoUpdateTriggered" /t REG_DWORD /d "0" /f > nul 2>&1 > nul 2>&1
Reg.exe add "HKCU\Software\AMD\CN" /v "PowerSaverAutoEnable_CUR" /t REG_DWORD /d "0" /f > nul 2>&1
Reg.exe add "HKCU\Software\AMD\CN" /v "BuildType" /t REG_DWORD /d "0" /f > nul 2>&1
Reg.exe add "HKCU\Software\AMD\CN" /v "WizardProfile" /t REG_SZ /d "PROFILE_CUSTOM" /f > nul 2>&1
Reg.exe add "HKCU\Software\AMD\CN" /v "UserTypeWizardShown" /t REG_DWORD /d "1" /f > nul 2>&1
Reg.exe add "HKCU\Software\AMD\CN" /v "AutoUpdate" /t REG_DWORD /d "0" /f > nul 2>&1
Reg.exe add "HKCU\Software\AMD\CN" /v "RSXBrowserUnavailable" /t REG_SZ /d "true" /f > nul 2>&1
Reg.exe add "HKCU\Software\AMD\CN" /v "SystemTray" /t REG_SZ /d "false" /f > nul 2>&1
Reg.exe add "HKCU\Software\AMD\CN" /v "AllowWebContent" /t REG_SZ /d "false" /f > nul 2>&1
Reg.exe add "HKCU\Software\AMD\CN" /v "CN_Hide_Toast_Notification" /t REG_SZ /d "true" /f > nul 2>&1
Reg.exe add "HKCU\Software\AMD\CN" /v "AnimationEffect" /t REG_SZ /d "false" /f > nul 2>&1
Reg.exe add "HKCU\Software\AMD\CN\OverlayNotification" /v "AlreadyNotified" /t REG_DWORD /d "1" /f > nul 2>&1
Reg.exe add "HKCU\Software\AMD\CN\VirtualSuperResolution" /v "AlreadyNotified" /t REG_DWORD /d "1" /f > nul 2>&1
Reg.exe add "HKCU\Software\AMD\DVR" /v "PerformanceMonitorOpacityWA" /t REG_DWORD /d "0" /f > nul 2>&1
Reg.exe add "HKCU\Software\AMD\DVR" /v "DvrEnabled" /t REG_DWORD /d "1" /f > nul 2>&1
Reg.exe add "HKCU\Software\AMD\DVR" /v "ActiveSceneId" /t REG_SZ /d "0" /f > nul 2>&1
Reg.exe add "HKCU\Software\AMD\DVR" /v "PrevInstantReplayEnable" /t REG_DWORD /d "0" /f > nul 2>&1
Reg.exe add "HKCU\Software\AMD\DVR" /v "PrevInGameReplayEnabled" /t REG_DWORD /d "0" /f > nul 2>&1
Reg.exe add "HKCU\Software\AMD\DVR" /v "PrevInstantGifEnabled" /t REG_DWORD /d "0" /f > nul 2>&1
Reg.exe add "HKCU\Software\AMD\DVR" /v "RemoteServerStatus" /t REG_DWORD /d "0" /f > nul 2>&1
Reg.exe add "HKCU\Software\AMD\DVR" /v "ShowRSOverlay" /t REG_SZ /d "false" /f > nul 2>&1
Reg.exe add "HKCU\Software\ATI\ACE\Settings\ADL\AppProfiles" /v "AplReloadCounter" /t REG_DWORD /d "0" /f > nul 2>&1
Reg.exe add "HKLM\Software\AMD\Install" /v "AUEP" /t REG_DWORD /d "1" /f > nul 2>&1
Reg.exe add "HKLM\Software\AUEP" /v "RSX_AUEPStatus" /t REG_DWORD /d "2" /f > nul 2>&1
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "NotifySubscription" /t REG_BINARY /d "3000" /f > nul 2>&1
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "IsComponentControl" /t REG_BINARY /d "00000000" /f > nul 2>&1
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "KMD_USUEnable" /t REG_DWORD /d "0" /f > nul 2>&1
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "KMD_RadeonBoostEnabled" /t REG_DWORD /d "0" /f > nul 2>&1
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "IsAutoDefault" /t REG_BINARY /d "01000000" /f > nul 2>&1
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "KMD_ChillEnabled" /t REG_DWORD /d "0" /f > nul 2>&1
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "KMD_DeLagEnabled" /t REG_DWORD /d "0" /f > nul 2>&1
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "ACE" /t REG_BINARY /d "3000" /f > nul 2>&1
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000\UMD" /v "AnisoDegree_SET" /t REG_BINARY /d "3020322034203820313600" /f > nul 2>&1
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000\UMD" /v "Main3D_SET" /t REG_BINARY /d "302031203220332034203500" /f > nul 2>&1
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000\UMD" /v "Tessellation_OPTION" /t REG_BINARY /d "3200" /f > nul 2>&1
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000\UMD" /v "Tessellation" /t REG_BINARY /d "3100" /f > nul 2>&1
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000\UMD" /v "AAF" /t REG_BINARY /d "30000000" /f > nul 2>&1
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000\UMD" /v "GI" /t REG_BINARY /d "31000000" /f > nul 2>&1
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000\UMD" /v "CatalystAI" /t REG_BINARY /d "31000000" /f > nul 2>&1
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000\UMD" /v "TemporalAAMultiplier_NA" /t REG_BINARY /d "3100" /f > nul 2>&1
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000\UMD" /v "ForceZBufferDepth" /t REG_BINARY /d "30000000" /f > nul 2>&1
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000\UMD" /v "EnableTripleBuffering" /t REG_BINARY /d "3000" /f > nul 2>&1
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000\UMD" /v "ExportCompressedTex" /t REG_BINARY /d "31000000" /f > nul 2>&1
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000\UMD" /v "PixelCenter" /t REG_BINARY /d "30000000" /f > nul 2>&1
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000\UMD" /v "ZFormats_NA" /t REG_BINARY /d "3100" /f > nul 2>&1
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000\UMD" /v "DitherAlpha_NA" /t REG_BINARY /d "3100" /f > nul 2>&1
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000\UMD" /v "SwapEffect_D3D_SET" /t REG_BINARY /d "3020312032203320342038203900" /f > nul 2>&1
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000\UMD" /v "TFQ" /t REG_BINARY /d "3200" /f > nul 2>&1
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000\UMD" /v "VSyncControl" /t REG_BINARY /d "3100" /f > nul 2>&1
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000\UMD" /v "TextureOpt" /t REG_BINARY /d "30000000" /f > nul 2>&1
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000\UMD" /v "TextureLod" /t REG_BINARY /d "30000000" /f > nul 2>&1
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000\UMD" /v "ASE" /t REG_BINARY /d "3000" /f > nul 2>&1
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000\UMD" /v "ASD" /t REG_BINARY /d "3000" /f > nul 2>&1
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000\UMD" /v "ASTT" /t REG_BINARY /d "3000" /f > nul 2>&1
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000\UMD" /v "AntiAliasSamples" /t REG_BINARY /d "3000" /f > nul 2>&1
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000\UMD" /v "AntiAlias" /t REG_BINARY /d "3100" /f > nul 2>&1
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000\UMD" /v "AnisoDegree" /t REG_BINARY /d "3000" /f > nul 2>&1
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000\UMD" /v "AnisoType" /t REG_BINARY /d "30000000" /f > nul 2>&1
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000\UMD" /v "AntiAliasMapping_SET" /t REG_BINARY /d "3028303A302C313A3029203228303A322C313A3229203428303A342C313A3429203828303A382C313A382900" /f > nul 2>&1
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000\UMD" /v "AntiAliasSamples_SET" /t REG_BINARY /d "3020322034203800" /f > nul 2>&1
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000\UMD" /v "ForceZBufferDepth_SET" /t REG_BINARY /d "3020313620323400" /f > nul 2>&1
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000\UMD" /v "SwapEffect_OGL_SET" /t REG_BINARY /d "3020312032203320342035203620372038203920313120313220313320313420313520313620313700" /f > nul 2>&1
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000\UMD" /v "Tessellation_SET" /t REG_BINARY /d "31203220342036203820313620333220363400" /f > nul 2>&1
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000\UMD" /v "HighQualityAF" /t REG_BINARY /d "3100" /f > nul 2>&1
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000\UMD" /v "DisplayCrossfireLogo" /t REG_BINARY /d "3000" /f > nul 2>&1
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000\UMD" /v "AppGpuId" /t REG_BINARY /d "300078003000310030003000" /f > nul 2>&1
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000\UMD" /v "SwapEffect" /t REG_BINARY /d "30000000" /f > nul 2>&1
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000\UMD" /v "PowerState" /t REG_BINARY /d "3000" /f > nul 2>&1
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000\UMD" /v "AntiStuttering" /t REG_BINARY /d "3100" /f > nul 2>&1
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000\UMD" /v "TurboSync" /t REG_BINARY /d "3000" /f > nul 2>&1
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000\UMD" /v "SurfaceFormatReplacements" /t REG_BINARY /d "3100" /f > nul 2>&1
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000\UMD" /v "EQAA" /t REG_BINARY /d "3000" /f > nul 2>&1
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000\UMD" /v "ShaderCache" /t REG_BINARY /d "3100" /f > nul 2>&1
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000\UMD" /v "MLF" /t REG_BINARY /d "3000" /f > nul 2>&1
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000\UMD" /v "TruformMode_NA" /t REG_BINARY /d "3100" /f > nul 2>&1
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000\UMD\DXVA" /v "LRTCEnable" /t REG_BINARY /d "30000000" /f > nul 2>&1
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000\UMD\DXVA" /v "3to2Pulldown" /t REG_BINARY /d "31000000" /f > nul 2>&1
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000\UMD\DXVA" /v "MosquitoNoiseRemoval_ENABLE" /t REG_BINARY /d "30000000" /f > nul 2>&1
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000\UMD\DXVA" /v "MosquitoNoiseRemoval" /t REG_BINARY /d "350030000000" /f > nul 2>&1
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000\UMD\DXVA" /v "Deblocking_ENABLE" /t REG_BINARY /d "30000000" /f > nul 2>&1
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000\UMD\DXVA" /v "Deblocking" /t REG_BINARY /d "350030000000" /f > nul 2>&1
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000\UMD\DXVA" /v "DemoMode" /t REG_BINARY /d "30000000" /f > nul 2>&1
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000\UMD\DXVA" /v "OverridePA" /t REG_BINARY /d "30000000" /f > nul 2>&1
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000\UMD\DXVA" /v "DynamicRange" /t REG_BINARY /d "30000000" /f > nul 2>&1
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000\UMD\DXVA" /v "StaticGamma_ENABLE" /t REG_BINARY /d "30000000" /f > nul 2>&1
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000\UMD\DXVA" /v "BlueStretch_ENABLE" /t REG_BINARY /d "31000000" /f > nul 2>&1
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000\UMD\DXVA" /v "BlueStretch" /t REG_BINARY /d "31000000" /f > nul 2>&1
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000\UMD\DXVA" /v "LRTCCoef" /t REG_BINARY /d "3100300030000000" /f > nul 2>&1
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000\UMD\DXVA" /v "DynamicContrast_ENABLE" /t REG_BINARY /d "30000000" /f > nul 2>&1
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000\UMD\DXVA" /v "WhiteBalanceCorrection" /t REG_BINARY /d "30000000" /f > nul 2>&1
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000\UMD\DXVA" /v "Fleshtone_ENABLE" /t REG_BINARY /d "30000000" /f > nul 2>&1
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000\UMD\DXVA" /v "Fleshtone" /t REG_BINARY /d "350030000000" /f > nul 2>&1
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000\UMD\DXVA" /v "ColorVibrance_ENABLE" /t REG_BINARY /d "31000000" /f > nul 2>&1
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000\UMD\DXVA" /v "ColorVibrance" /t REG_BINARY /d "340030000000" /f > nul 2>&1
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000\UMD\DXVA" /v "Detail_ENABLE" /t REG_BINARY /d "30000000" /f > nul 2>&1
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000\UMD\DXVA" /v "Detail" /t REG_BINARY /d "310030000000" /f > nul 2>&1
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000\UMD\DXVA" /v "Denoise_ENABLE" /t REG_BINARY /d "30000000" /f > nul 2>&1
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000\UMD\DXVA" /v "Denoise" /t REG_BINARY /d "360034000000" /f > nul 2>&1
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000\UMD\DXVA" /v "TrueWhite" /t REG_BINARY /d "30000000" /f > nul 2>&1
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000\UMD\DXVA" /v "OvlTheaterMode" /t REG_BINARY /d "30000000" /f > nul 2>&1
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000\UMD\DXVA" /v "StaticGamma" /t REG_BINARY /d "3100300030000000" /f > nul 2>&1
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000\UMD\DXVA" /v "InternetVideo" /t REG_BINARY /d "30000000" /f > nul 2>&1
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000\UMD" /v "Main3D_DEF" /t REG_SZ /d "1" /f > nul 2>&1
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000\UMD" /v "Main3D" /t REG_BINARY /d "3100" /f > nul 2>&1
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "DisableDMACopy" /t REG_DWORD /d "1" /f > nul 2>&1
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "DisableBlockWrite" /t REG_DWORD /d "0" /f > nul 2>&1
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "PP_ThermalAutoThrottlingEnable" /t REG_DWORD /d "0" /f > nul 2>&1
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "DisableDrmdmaPowerGating" /t REG_DWORD /d "1" /f > nul 2>&1
Reg.exe add "HKLM\System\CurrentControlSet\Services\amdwddmg" /v "ChillEnabled" /t REG_DWORD /d "0" /f > nul 2>&1
Reg.exe add "HKLM\System\CurrentControlSet\Services\AMD Crash Defender Service" /v "Start" /t REG_DWORD /d "4" /f > nul 2>&1
Reg.exe add "HKLM\System\CurrentControlSet\Services\AMD External Events Utility" /v "Start" /t REG_DWORD /d "4" /f > nul 2>&1
Reg.exe add "HKLM\System\CurrentControlSet\Services\amdfendr" /v "Start" /t REG_DWORD /d "4" /f > nul 2>&1
Reg.exe add "HKLM\System\CurrentControlSet\Services\amdfendrmgr" /v "Start" /t REG_DWORD /d "4" /f > nul 2>&1
Reg.exe add "HKLM\System\CurrentControlSet\Services\amdlog" /v "Start" /t REG_DWORD /d "4" /f > nul 2>&1
cls
goto gputweaks

:optimizenvidiagpu
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\DisplayPostProcessing" /v "BackgroundPriority" /t REG_DWORD /d "24" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\DisplayPostProcessing" /v "Clock Rate" /t REG_DWORD /d "10000" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\DisplayPostProcessing" /v "GPU Priority" /t REG_DWORD /d "18" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\DisplayPostProcessing" /v "Priority" /t REG_DWORD /d "8" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\DisplayPostProcessing" /v "Scheduling Category" /t REG_SZ /d "High" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\DisplayPostProcessing" /v "SFIO Priority" /t REG_SZ /d "High" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\DisplayPostProcessing" /v "Latency Sensitive" /t REG_SZ /d "True" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /v "TdrLevel" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /v "TdrDebugMode" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Scheduler" /v "VsyncIdleTimeout" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /v "TdrDebugMode" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /v "TdrLevel" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\System\CurrentControlSet\Services\VxD\BIOS" /v "AGPConcur" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\System\CurrentControlSet\Services\VxD\BIOS" /v "CPUPriority" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\System\CurrentControlSet\Services\VxD\BIOS" /v "FastDRAM" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\System\CurrentControlSet\Services\VxD\BIOS" /v "PCIConcur" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\GraphicsDrivers" /v TdrLevel /t REG_DWORD /d 0 /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\GraphicsDrivers" /v TdrDelay /t REG_DWORD /d 60 /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Scheduler" /v "EnablePreemption" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Scheduler" /v "GPUPreemptionLevel" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Scheduler" /v "EnableAsyncMidBufferPreemption" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Scheduler" /v "EnableMidGfxPreemptionVGPU" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Scheduler" /v "EnableMidBufferPreemptionForHighTdrTimeout" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Scheduler" /v "EnableSCGMidBufferPreemption" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Scheduler" /v "EnableMidBufferPreemption" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Scheduler" /v "EnableCEPreemption" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Scheduler" /v "DisableCudaContextPreemption" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Scheduler" /v "DisablePreemptionOnS3S4" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Scheduler" /v "ComputePreemptionLevel" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Scheduler" /v "DisablePreemption" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Enum\%%n\Device Parameters\Interrupt Management\MessageSignaledInterruptProperties" /v "MSISupported" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DisableSensorWatchdog" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "CoalescingTimerInterval" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "InterruptSteeringDisabled" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "LowLatencyScalingPercentage" /t REG_DWORD /d "100" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "HighPerformance" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "HighestPerformance" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "MinimumThrottlePercent" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "MaximumThrottlePercent" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "MaximumPerformancePercent" /t REG_DWORD /d "100" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "InitialUnparkCount" /t REG_DWORD /d "100" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DefaultD3TransitionLatencyActivelyUsed" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DefaultD3TransitionLatencyIdleLongTime" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DefaultD3TransitionLatencyIdleMonitorOff" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DefaultD3TransitionLatencyIdleNoContext" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DefaultD3TransitionLatencyIdleShortTime" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DefaultD3TransitionLatencyIdleVeryLongTime" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DefaultLatencyToleranceIdle1MonitorOff" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DefaultLatencyToleranceMemory" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DefaultLatencyToleranceNoContext" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DefaultLatencyToleranceNoContextMonitorOff" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DefaultLatencyToleranceOther" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DefaultLatencyToleranceTimerPeriod" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DefaultMemoryRefreshLatencyToleranceActivelyUsed" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DefaultMemoryRefreshLatencyToleranceMonitorOff" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DefaultMemoryRefreshLatencyToleranceNoContext" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "Latency" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "MiracastPerfTrackGraphicsLatency" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "MonitorLatencyTolerance" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "MonitorRefreshLatencyTolerance" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "TransitionLatency" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DisableVsyncLatencyUpdate" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DisableSensorWatchdog" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "InterruptSteeringDisabled" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "ExitLatency" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "ExitLatencyCheckEnabled" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "Latency" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "LatencyToleranceDefault" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "LatencyToleranceFSVP" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "LatencyTolerancePerfOverride" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "LatencyToleranceScreenOffIR" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "LatencyToleranceVSyncEnabled" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "RtlCapabilityCheckLatency" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "LowLatencyScalingPercentage" /t REG_DWORD /d "100" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DefaultLatencyToleranceIdle1MonitorOff" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DefaultLatencyToleranceMemory" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DefaultLatencyToleranceNoContext" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DefaultLatencyToleranceNoContextMonitorOff" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DefaultLatencyToleranceOther" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DefaultLatencyToleranceTimerPeriod" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DefaultMemoryRefreshLatencyToleranceActivelyUsed" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DefaultMemoryRefreshLatencyToleranceMonitorOff" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DefaultMemoryRefreshLatencyToleranceNoContext" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "MaxIAverageGraphicsLatencyInOneBucket" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "Latency" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "MiracastPerfTrackGraphicsLatency" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "MonitorLatencyTolerance" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "MonitorRefreshLatencyTolerance" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "TransitionLatency" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /v "MonitorLatencyTolerance" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /v "MonitorRefreshLatencyTolerance" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "MonitorLatencyTolerance" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "MonitorRefreshLatencyTolerance" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /v "RMDisablePostL2Compression" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /v "RmDisableRegistryCaching" /t REG_DWORD /d "1" /f
fsutil behavior query memoryusage
fsutil behavior set memoryusage 2
Reg.exe add "HKLM\SOFTWARE\NVIDIA Corporation\NvControlPanel2\Client" /v "OptInOrOutPreference" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\NVIDIA Corporation\Global\FTS" /v "EnableRID66610" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\NVIDIA Corporation\Global\FTS" /v "EnableRID64640" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\NVIDIA Corporation\Global\FTS" /v "EnableRID44231" /t REG_DWORD /d "0" /f
schtasks /change /disable /tn "NvTmRep_CrashReport1_{B2FE1952-0186-46C3-BAEC-A80AA35AC5B8}"
schtasks /change /disable /tn "NvTmRep_CrashReport2_{B2FE1952-0186-46C3-BAEC-A80AA35AC5B8}"
schtasks /change /disable /tn "NvTmRep_CrashReport3_{B2FE1952-0186-46C3-BAEC-A80AA35AC5B8}"
schtasks /change /disable /tn "NvTmRep_CrashReport4_{B2FE1952-0186-46C3-BAEC-A80AA35AC5B8}"
schtasks /change /disable /tn "NvDriverUpdateCheckDaily_{B2FE1952-0186-46C3-BAEC-A80AA35AC5B8}"
schtasks /change /disable /tn "NVIDIA GeForce Experience SelfUpdate_{B2FE1952-0186-46C3-BAEC-A80AA35AC5B8}"
schtasks /change /disable /tn "NvTmMon_{B2FE1952-0186-46C3-BAEC-A80AA35AC5B8}"
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "QosManagesIdleProcessors" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "InitialUnparkCount" /t REG_DWORD /d "100" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "HighPerformance" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "HighestPerformance" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "MinimumThrottlePercent" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "MaximumThrottlePercent" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "MaximumPerformancePercent" /t REG_DWORD /d "100" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm\Global\NVTweak" /v "DisplayPowerSaving" /t Reg_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "EnergyEstimationEnabled" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\ControlSet001\Services\nvlddmkm\Global\NVTweak" /v "DisplayPowerSaving" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /v "TdrDelay" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /v "TdrDdiDelay" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /v "TdrDebugMode" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\ControlSet001\Services\nvlddmkm" /v "EnableMidGfxPreemptionVGPU" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\ControlSet001\Services\nvlddmkm" /v "EnableMidBufferPreemptionForHighTdrTimeout" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\ControlSet001\Services\nvlddmkm" /v "EnableMidBufferPreemption" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\ControlSet001\Services\nvlddmkm" /v "ComputePreemption" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\ControlSet001\Services\nvlddmkm" /v "DisablePreemption" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\ControlSet001\Services\nvlddmkm" /v "EnableMidBufferPreemptionForHighTdrTimeout" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\CurrentControlSet\Control\GraphicsDrivers\Scheduler" /f /v "EnablePreemption" /t REG_DWORD /d "0"
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Scheduler" /v "EnablePreemption" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Scheduler" /v "EnablePreemption" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Scheduler" /v "PlatformSupportMiracast" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm" /v "DisablePreemption" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Scheduler" /v "EnablePreemption" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /v "EnablePreemption" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "EnableCEPreemption" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /v "GPUPreemptionLevel" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /v "ComputePreemption" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /v "EnableMidGfxPreemptionVGPU" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /v "EnableMidBufferPreemptionForHighTdrTimeout" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /v "EnableAsyncMidBufferPreemption" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /v "EnableSCGMidBufferPreemption" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /v "PerfAnalyzeMidBufferPreemption" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /v "EnableMidGfxPreemption" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /v "EnableMidBufferPreemption" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /v "EnableCEPreemption" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /v "DisableCudaContextPreemption" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /v "DisablePreemptionOnS3S4" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "GPUPreemptionLevel" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "GPUPreemptionLevel" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "ComputePreemption" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "EnableMidGfxPreemptionVGPU" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "EnableMidBufferPreemptionForHighTdrTimeout" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "EnableAsyncMidBufferPreemption" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "EnableSCGMidBufferPreemption" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "PerfAnalyzeMidBufferPreemption" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "EnableMidGfxPreemption" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "EnableMidBufferPreemption" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "EnableCEPreemption" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "DisableCudaContextPreemption" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "DisablePreemptionOnS3S4" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm" /v "RmGpsPsEnablePerCpuCoreDpc" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm\NVAPI" /v "RmGpsPsEnablePerCpuCoreDpc" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm\Global\NVTweak" /v "RmGpsPsEnablePerCpuCoreDpc" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /v "RmGpsPsEnablePerCpuCoreDpc" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "RmGpsPsEnablePerCpuCoreDpc" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Scheduler" /v "DisableWriteCombining" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "Acceleration.Level" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "PreferSystemMemoryContiguous" /t REG_DWORD /d "1" /f
rd /s /q "C:\Nvidia\Display.NView"
rd /s /q "C:\Nvidia\Display.Optimus"
rd /s /q "C:\Nvidia\Display.Update"
rd /s /q "C:\Nvidia\GFExperience.NvStreamSrv"
rd /s /q "C:\Nvidia\HDAudio"
rd /s /q "C:\Nvidia\Miracast.VirtualAudio"
rd /s /q "C:\Nvidia\MSVCRT"
rd /s /q "C:\Nvidia\NvvHCI"
rd /s /q "C:\Nvidia\NVWMI"
rd /s /q "C:\Nvidia\PhysX"
rd /s /q "C:\Nvidia\PPC"
rd /s /q "C:\Nvidia\ShieldWirelessController"
rd /s /q "C:\Nvidia\Update.Core"
rd /s /q "C:\Nvidia\GFExperience\data"
rd /s /q "C:\Nvidia\GFExperience\dependencies"
rd /s /q "C:\Nvidia\GFExperience\locales"
rd /s /q "C:\Nvidia\GFExperience\osc"
rd /s /q "C:\Nvidia\GFExperience\swiftshader"
rd /s /q "C:\Nvidia\GFExperience\www"
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "TCCSupported" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\SOFTWARE\NVIDIA Corporation\Global\NVTweak\Devices\509901423-0\Color" /v "NvCplUseColorCorrection" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /v "PlatformSupportMiracast" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm\FTS" /v EnableRID73779  /t REG_DWORD /d 1 /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm\FTS" /v EnableRID73780  /t REG_DWORD /d 1 /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm\FTS" /v EnableRID74361  /t REG_DWORD /d 1 /f
Reg.exe add "HKLM\SOFTWARE\NVIDIA Corporation\Global\FTS" /v EnableRID44231  /t REG_DWORD /d 0 /f
Reg.exe add "HKLM\SOFTWARE\NVIDIA Corporation\Global\FTS" /v EnableRID64640  /t REG_DWORD /d 0 /f
Reg.exe add "HKLM\SOFTWARE\NVIDIA Corporation\Global\FTS" /v EnableRID66610  /t REG_DWORD /d 0 /f
Reg.exe add "HKLM\SOFTWARE\NVIDIA Corporation\NvControlPanel2\Client" /v OptInOrOutPreference /t REG_DWORD /d 0 /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\services\NvTelemetryContainer" /v Start /t REG_DWORD /d 4 /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm\Global\Startup" /v SendTelemetryData /t REG_DWORD /d 0 /f
Reg.exe add "HKLM\SOFTWARE\NVIDIA Corporation\Global\Startup\SendTelemetryData" /v 0 /t REG_DWORD /d 0 /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows\Dwm" /v "OverlayTestMode" /t REG_DWORD /d "5" /f
Reg.exe add "HKLM\SYSTEM\ControlSet001\Services\nvlddmkm" /v "EnableMidBufferPreemption" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Scheduler" /v "PlatformSupportMiracast" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /v "RmGpsPsEnablePerCpuCoreDpc" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "RmGpsPsEnablePerCpuCoreDpc" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Scheduler" /v "RMDisablePostL2Compression" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Scheduler" /v "RmDisableRegistryCaching" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Scheduler" /v "RmGpsPsEnablePerCpuCoreDpc" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "DesktopStereoShortcuts" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "FeatureControl" /t REG_DWORD /d "4" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "NVDeviceSupportKFilter" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "RmCacheLoc" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "RmDisableInst2Sys" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "RmFbsrPagedDMA" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "RMGpuId" /t REG_DWORD /d "256" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "RmProfilingAdminOnly" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "TCCSupported" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "TrackResetEngine" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "UseBestResolution" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "ValidateBlitSubRects" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class{4d36e968-e325-11ce-bfc1-08002be10318}" /v "PowerMizerLevel" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class{4d36e968-e325-11ce-bfc1-08002be10318}" /v "PowerMizerLevelAC" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class{4d36e968-e325-11ce-bfc1-08002be10318}" /v "PerfLevelSrc" /t REG_DWORD /d "8738" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "D3PCLatency" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "F1TransitionLatency" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "LOWLATENCY" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "Node3DLowLatency" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "PciLatencyTimerControl" /t REG_DWORD /d "20" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "RMDeepL1EntryLatencyUsec" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "RmGspcMaxFtuS" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "RmGspcMinFtuS" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "RmGspcPerioduS" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "RMLpwrEiIdleThresholdUs" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "RMLpwrGrIdleThresholdUs" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "RMLpwrGrRgIdleThresholdUs" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "RMLpwrMsIdleThresholdUs" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "VRDirectFlipDPCDelayUs" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "VRDirectFlipTimingMarginUs" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "VRDirectJITFlipMsHybridFlipDelayUs" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "vrrCursorMarginUs" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "vrrDeflickerMarginUs" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "vrrDeflickerMaxUs" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4D36E968-E325-11CE-BFC1-08002BE10318}\0000" /v "RMBandwidthFeature" /t REG_DWORD /d "1896072192" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4D36E968-E325-11CE-BFC1-08002BE10318}\0000" /v "RMBandwidthFeature2" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4D36E968-E325-11CE-BFC1-08002BE10318}\0001" /v "RMBandwidthFeature" /t REG_DWORD /d "1896072192" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4D36E968-E325-11CE-BFC1-08002BE10318}\0001" /v "RMBandwidthFeature2" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4D36E968-E325-11CE-BFC1-08002BE10318}\0000" /v "RMElcg" /t REG_DWORD /d "1431655765" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4D36E968-E325-11CE-BFC1-08002BE10318}\0000" /v "RMBlcg" /t REG_DWORD /d "286331153" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4D36E968-E325-11CE-BFC1-08002BE10318}\0000" /v "RMElpg" /t REG_DWORD /d "4095" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4D36E968-E325-11CE-BFC1-08002BE10318}\0000" /v "RMSlcg" /t REG_DWORD /d "16383" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4D36E968-E325-11CE-BFC1-08002BE10318}\0000" /v "RMFspg" /t REG_DWORD /d "15" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4D36E968-E325-11CE-BFC1-08002BE10318}\0000" /v "RmLogonRC" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4D36E968-E325-11CE-BFC1-08002BE10318}\0000" /v "RMLpwrArch" /t REG_DWORD /d "1365" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4D36E968-E325-11CE-BFC1-08002BE10318}\0000" /v "RmLpwrCtrlGrRgParameters" /t REG_DWORD /d "349525" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4D36E968-E325-11CE-BFC1-08002BE10318}\0000" /v "RMLpwrEiClient" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4D36E968-E325-11CE-BFC1-08002BE10318}\0000" /v "RmMIONoPowerOff" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4D36E968-E325-11CE-BFC1-08002BE10318}\0000" /v "RMDeepL1EntryLatencyUsec" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4D36E968-E325-11CE-BFC1-08002BE10318}\0000" /v "RMEnableASPMAtLoad" /t REG_DWORD /d "0" /f > nul 2>&1
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4D36E968-E325-11CE-BFC1-08002BE10318}\0000" /v "RMEnableASPMDT" /t REG_DWORD /d "0" /f > nul 2>&1
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4D36E968-E325-11CE-BFC1-08002BE10318}\0000" /v "RMDisableGpuASPMFlags" /t REG_DWORD /d "1" /f > nul 2>&1
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4D36E968-E325-11CE-BFC1-08002BE10318}\0000" /v "RmOverrideSupportChipsetAspm" /t REG_DWORD /d "0" /f > nul 2>&1
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4D36E968-E325-11CE-BFC1-08002BE10318}\0000" /v "RmForceEnablePcieGenSwitching" /t REG_DWORD /d "0" /f > nul 2>&1

if exist "C:\Program Files\NVIDIA Corporation\Installer2\InstallerCore\NVI2.DLL" (
rundll32 "C:\Program Files\NVIDIA Corporation\Installer2\InstallerCore\NVI2.DLL" UninstallPackage NvTelemetryContainer
rundll32 "C:\Program Files\NVIDIA Corporation\Installer2\InstallerCore\NVI2.DLL" UninstallPackage NvTelemetry
)
cls
goto gputweaks

:nettweaks
cls
echo.
echo.
echo.
echo.
echo.                     [38 5 33m           █     █░ ██▓ ███▄    █ ▓█████▄  ▒█████   █     █░  ██████    ▄▄▄█████▓ █     █░▓█████ ▄▄▄       ██ ▄█▀▓█████  ██▀███
echo.                     [38 5 69m          ▓█░ █ ░█░▓██▒ ██ ▀█   █ ▒██▀ ██▌▒██▒  ██▒▓█░ █ ░█░▒██    ▒    ▓  ██▒ ▓▒▓█░ █ ░█░▓█   ▀▒████▄     ██▄█▒ ▓█   ▀ ▓██ ▒ ██▒
echo.                     [38 5 105m          ▒█░ █ ░█ ▒██▒▓██  ▀█ ██▒░██   █▌▒██░  ██▒▒█░ █ ░█ ░ ▓██▄      ▒ ▓██░ ▒░▒█░ █ ░█ ▒███  ▒██  ▀█▄  ▓███▄░ ▒███   ▓██ ░▄█ ▒
echo.                     [38 5 177m          ░█░ █ ░█ ░██░▓██▒  ▐▌██▒░▓█▄   ▌▒██   ██░░█░ █ ░█   ▒   ██▒   ░ ▓██▓ ░ ░█░ █ ░█ ▒▓█  ▄░██▄▄▄▄██ ▓██ █▄ ▒▓█  ▄ ▒██▀▀█▄
echo.                     [38 5 213m          ░░██▒██▓ ░██░▒██░   ▓██░░▒████▓ ░ ████▓▒░░░██▒██▓ ▒██████▒▒     ▒██▒ ░ ░░██▒██▓ ░▒████▒▓█   ▓██▒▒██▒ █▄░▒████▒░██▓ ▒██▒
echo.                     [38 5 33m          ░ ▓░▒ ▒  ░▓  ░ ▒░   ▒ ▒  ▒▒▓  ▒ ░ ▒░▒░▒░ ░ ▓░▒ ▒  ▒ ▒▓▒ ▒ ░     ▒ ░░   ░ ▓░▒ ▒  ░░ ▒░ ░▒▒   ▓▒█░▒ ▒▒ ▓▒░░ ▒░ ░░ ▒▓ ░▒▓░
echo.                     [38 5 105m            ▒ ░ ░   ▒ ░░ ░░   ░ ▒░ ░ ▒  ▒   ░ ▒ ▒░   ▒ ░ ░  ░ ░▒  ░ ░       ░      ▒ ░ ░   ░ ░  ░ ▒   ▒▒ ░░ ░▒ ▒░ ░ ░  ░  ░▒ ░ ▒░
echo.                     [38 5 33m            ░   ░   ▒ ░   ░   ░ ░  ░ ░  ░ ░ ░ ░ ▒    ░   ░  ░  ░  ░       ░        ░   ░     ░    ░   ▒   ░ ░░ ░    ░     ░░   ░
echo.                     [38 5 69m              ░     ░           ░    ░        ░ ░      ░          ░                  ░       ░  ░     ░  ░░  ░      ░  ░   ░
echo.                     [38 5 105m                                   ░
echo.
echo.                                                                       ╔═══
echo.                                                                       ║   This Utility Was Made By Fyumi   ║
echo.                                                                                                         ═══╝
echo.
echo.
echo.                                    [38 5 213m[[0m 1 [38 5 213m][0m  [90mReduce Ping[90m                 [38 5 213m[[0m 2 [38 5 213m][0m  [90mBoost Internet[90m                 [38 5 213m[[0m 3 [38 5 213m][0m  [90mNetwork Tweaks[90m
echo.
echo.
echo.                                                                       [38 5 213m[[0m 4 [38 5 213m][0m  [90mReturn To Main Menu[90m
echo.
echo.
echo.
echo.
echo. [38 5 33m                                                      ╔════════════════════════════════════════════════════════════════════╗
echo. [38 5 69m                                                      ║   Add "F" After Your Choice To See More Details About That Tweak   ║
echo. [38 5 105m                                                      ║                         Ex : 1F  2F  3F                            ║
echo. [38 5 177m                                                      ╚════════════════════════════════════════════════════════════════════╝
echo.
set /p fyumi=:
if /i __input__ == 1 (goto reduceping)
if /i __input__ == 2 (goto boostinternet)
if /i __input__ == 3 (goto networktweaks)
if /i __input__ == 4 (goto menutienganh)
if /i __input__ == 1F (goto sorry)
if /i __input__ == 2F (goto sorry)
if /i __input__ == 3F (goto sorry)
cls
echo.
echo.
echo.      [97mYou entered the wrong choice  please enter again
echo.
echo.
pause >nul
goto nettweaks

:reduceping
ipconfig /release
ipconfig /renew
ipconfig /flushdns
netsh winsock reset
netsh int ip reset
netsh interface ip delete arpcache
for /f "tokens=*" %%a in ('netsh interface show interface ^| findstr /c:"Connected"') do (
set "line=%%a"
for /f "tokens=1,2,3 delims= " %%b in ("%%a") do (
netsh interface set interface name="%%d" admin=disable
timeout /t 2 >nul
netsh interface set interface name="%%d" admin=enable
)
)
cls
goto nettweaks

:boostinternet
chcp 1252
PowerShell Disable-NetAdapterLso -Name "*"
powershell "ForEach($adapter In Get-NetAdapter){Disable-NetAdapterPowerManagement -Name $adapter.Name -ErrorAction SilentlyContinue}"
powershell "ForEach($adapter In Get-NetAdapter){Disable-NetAdapterLso -Name $adapter.Name -ErrorAction SilentlyContinue}"
netsh interface teredo set state disabled
netsh interface 6to4 set state disabled
netsh winsock reset
netsh int isatap set state disable
netsh int ip set global taskoffload=enabled
netsh int ip set global neighborcachelimit=4096
netsh int tcp set global timestamps=disabled
netsh int tcp set heuristics disabled
netsh int tcp set global autotuninglevel=normal
netsh int tcp set global congestionprovider=ctcp
netsh int tcp set supplemental Internet congestionprovider=CTCP
netsh int tcp set global chimney=disabled
netsh int tcp set global ecncapability=disabled
netsh int tcp set global rss=enabled
netsh int tcp set global rsc=disabled
netsh int tcp set global dca=enabled
netsh int tcp set global netdma=enabled
netsh int tcp set global nonsackrttresiliency=disabled
netsh int tcp set security mpp=disabled
netsh int tcp set security profiles=disabled
PowerShell Disable-NetAdapterChecksumOffload -Name "*"
PowerShell Disable-NetAdapterLso -Name "*"
PowerShell Disable-NetAdapterRsc -Name "*"
PowerShell Disable-NetAdapterIPsecOffload -Name "*"
PowerShell Disable-NetAdapterPowerManagement -Name "*"
PowerShell Disable-NetAdapterQos -Name "*"
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "EnableICMPRedirect" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "EnablePMTUDiscovery" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "Tcp1323Opts" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "TcpMaxDupAcks" /t REG_DWORD /d "2" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "TcpTimedWaitDelay" /t REG_DWORD /d "32" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "GlobalMaxTcpWindowSize" /t REG_DWORD /d "8760" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "TcpWindowSize" /t REG_DWORD /d "8760" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "MaxConnectionsPerServer" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "MaxUserPort" /t REG_DWORD /d "65534" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "SackOpts" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "DefaultTTL" /t REG_DWORD /d "64" /f
Reg.exe add "%%n" /v "AutoPowerSaveModeEnabled" /t REG_SZ /d "0" /f
Reg.exe add "%%n" /v "AutoDisableGigabit" /t REG_SZ /d "0" /f
Reg.exe add "%%n" /v "AdvancedEEE" /t REG_SZ /d "0" /f
Reg.exe add "%%n" /v "DisableDelayedPowerUp" /t REG_SZ /d "2" /f
Reg.exe add "%%n" /v "*EEE" /t REG_SZ /d "0" /f
Reg.exe add "%%n" /v "EEE" /t REG_SZ /d "0" /f
Reg.exe add "%%n" /v "EnablePME" /t REG_SZ /d "0" /f
Reg.exe add "%%n" /v "EEELinkAdvertisement" /t REG_SZ /d "0" /f
Reg.exe add "%%n" /v "EnableGreenEthernet" /t REG_SZ /d "0" /f
Reg.exe add "%%n" /v "EnableSavePowerNow" /t REG_SZ /d "0" /f
Reg.exe add "%%n" /v "EnablePowerManagement" /t REG_SZ /d "0" /f
Reg.exe add "%%n" /v "EnableDynamicPowerGating" /t REG_SZ /d "0" /f
Reg.exe add "%%n" /v "EnableConnectedPowerGating" /t REG_SZ /d "0" /f
Reg.exe add "%%n" /v "EnableWakeOnLan" /t REG_SZ /d "0" /f
Reg.exe add "%%n" /v "GigaLite" /t REG_SZ /d "0" /f
Reg.exe add "%%n" /v "NicAutoPowerSaver" /t REG_SZ /d "2" /f
Reg.exe add "%%n" /v "PowerDownPll" /t REG_SZ /d "0" /f
Reg.exe add "%%n" /v "PowerSavingMode" /t REG_SZ /d "0" /f
Reg.exe add "%%n" /v "ReduceSpeedOnPowerDown" /t REG_SZ /d "0" /f
Reg.exe add "%%n" /v "S5NicKeepOverrideMacAddrV2" /t REG_SZ /d "0" /f
Reg.exe add "%%n" /v "S5WakeOnLan" /t REG_SZ /d "0" /f
Reg.exe add "%%n" /v "ULPMode" /t REG_SZ /d "0" /f
Reg.exe add "%%n" /v "WakeOnDisconnect" /t REG_SZ /d "0" /f
Reg.exe add "%%n" /v "*WakeOnMagicPacket" /t REG_SZ /d "0" /f
Reg.exe add "%%n" /v "*WakeOnPattern" /t REG_SZ /d "0" /f
Reg.exe add "%%n" /v "AutoDisableGigabit" /t REG_SZ /d "0" /f
Reg.exe add "%%n" /v "AdvancedEEE" /t REG_SZ /d "0" /f
Reg.exe add "%%n" /v "GigaLite" /t REG_SZ /d "0" /f
Reg.exe add "%%n" /v "NicAutoPowerSaver" /t REG_SZ /d "2" /f
Reg.exe add "%%n" /v "PowerDownPll" /t REG_SZ /d "0" /f
Reg.exe add "%%n" /v "PowerSavingMode" /t REG_SZ /d "0" /f
Reg.exe add "%%n" /v "ReduceSpeedOnPowerDown" /t REG_SZ /d "0" /f
Reg.exe add "%%n" /v "S5NicKeepOverrideMacAddrV2" /t REG_SZ /d "0" /f
Reg.exe add "%%n" /v "S5WakeOnLan" /t REG_SZ /d "0" /f
Reg.exe add "%%n" /v "ULPMode" /t REG_SZ /d "0" /f
Reg.exe add "%%n" /v "WakeOnDisconnect" /t REG_SZ /d "0" /f
Reg.exe add "%%n" /v "*WakeOnMagicPacket" /t REG_SZ /d "0" /f
Reg.exe add "%%n" /v "*WakeOnPattern" /t REG_SZ /d "0" /f
Reg.exe add "%%n" /v "WakeOnLink" /t REG_SZ /d "0" /f
Reg.exe add "%%n" /v "WolShutdownLinkSpeed" /t REG_SZ /d "2" /f
Reg.exe add "%%n" /v "JumboPacket" /t REG_SZ /d "1514" /f
Reg.exe add "%%n" /v "TransmitBuffers" /t REG_SZ /d "4096" /f
Reg.exe add "%%n" /v "ReceiveBuffers" /t REG_SZ /d "512" /f
Reg.exe add "%%n" /v "IPChecksumOffloadIPv4" /t REG_SZ /d "0" /f
Reg.exe add "%%n" /v "LsoV1IPv4" /t REG_SZ /d "0" /f
Reg.exe add "%%n" /v "LsoV2IPv4" /t REG_SZ /d "0" /f
Reg.exe add "%%n" /v "LsoV2IPv6" /t REG_SZ /d "0" /f
Reg.exe add "%%n" /v "PMARPOffload" /t REG_SZ /d "0" /f
Reg.exe add "%%n" /v "PMNSOffload" /t REG_SZ /d "0" /f
Reg.exe add "%%n" /v "TCPChecksumOffloadIPv4" /t REG_SZ /d "0" /f
Reg.exe add "%%n" /v "TCPChecksumOffloadIPv6" /t REG_SZ /d "0" /f
Reg.exe add "%%n" /v "UDPChecksumOffloadIPv6" /t REG_SZ /d "0" /f
Reg.exe add "%%n" /v "UDPChecksumOffloadIPv4" /t REG_SZ /d "0" /f
Reg.exe add "%%n" /v "RSS" /t REG_SZ /d "1" /f
Reg.exe add "%%n" /v "*NumRssQueues" /t REG_SZ /d "2" /f
Reg.exe add "%%n" /v "RSSProfile" /t REG_SZ /d "3" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Nsi\{eb004a03-9b1a-11d4-9123-0050047759bc}\0" /v "0200" /t REG_BINARY /d "0000000000000000000000000000000000000000000000000000000002000000000000000000000000000000000000000000ff000000000000000000000000000000000000000000ff000000000000000000000000000000" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Nsi\{eb004a03-9b1a-11d4-9123-0050047759bc}\0" /v "1700" /t REG_BINARY /d "0000000000000000000000000000000000000000000000000000000002000000000000000000000000000000000000000000ff000000000000000000000000000000000000000000ff000000000000000000000000000000" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Winsock" /v "MinSockAddrLength" /t REG_DWORD /d "16" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Winsock" /v "MaxSockAddrLength" /t REG_DWORD /d "16" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "TcpTimedWaitDelay" /t REG_DWORD /d "32" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "GlobalMaxTcpWindowSize" /t REG_DWORD /d "8760" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "TcpWindowSize" /t REG_DWORD /d "8760" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "MaxConnectionsPerServer" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "MaxUserPort" /t REG_DWORD /d "65534" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "SackOpts" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "DefaultTTL" /t REG_DWORD /d "64" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "DelayedAckFrequency" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "DelayedAckTicks" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "CongestionAlgorithm" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "MultihopSets" /t REG_DWORD /d "15" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "FastCopyReceiveThreshold" /t REG_DWORD /d "16384" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "FastSendDatagramThreshold" /t REG_DWORD /d "16384" /f
for /f %%q in ('wmic path win32_networkadapter get GUID ^| findstr "{"') do (Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces\%%q" /v InterfaceMetric /t REG_DWORD /d 0000055 /f)
for /f %%q in ('wmic path win32_networkadapter get GUID ^| findstr "{"') do (Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces\%%q" /v TCPNoDelay /t REG_DWORD /d 0000001 /f)
for /f %%q in ('wmic path win32_networkadapter get GUID ^| findstr "{"') do (Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces\%%q" /v TcpAckFrequency /t REG_DWORD /d 0000001 /f)
for /f %%q in ('wmic path win32_networkadapter get GUID ^| findstr "{"') do (Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces\%%q" /v TcpDelAckTicks /t REG_DWORD /d 0000000 /f)
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces" /v "TCPDelAckTicks" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "TCPDelAckTicks" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "TCPNoDelay" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces" /v "TCPNoDelay" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\MSMQ\Parameters" /v "TCPNoDelay" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "TcpAckFrequency" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces" /v "TcpAckFrequency" /t REG_DWORD /d "1" /f
netsh int tcp set global dca=enabled
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\ServiceProvider" /v "LocalPriority" /t REG_DWORD /d "4" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\ServiceProvider" /v "HostsPriority" /t REG_DWORD /d "5" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\ServiceProvider" /v "DnsPriority" /t REG_DWORD /d "6" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\ServiceProvider" /v "NetbtPriority" /t REG_DWORD /d "7" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces" /v "DisableTaskOffload" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "DisableTaskOffload" /t REG_DWORD /d "0" /f
netsh int ipv6 set state disabled
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\services\LanmanServer\Parameters" /v "autodisconnect" /t REG_DWORD /d "4294967295" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\services\LanmanServer\Parameters" /v "Size" /t REG_DWORD /d "3" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\services\LanmanServer\Parameters" /v "EnableOplocks" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\services\LanmanServer\Parameters" /v "IRPStackSize" /t REG_DWORD /d "20" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\services\LanmanServer\Parameters" /v "SharingViolationDelay" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\services\LanmanServer\Parameters" /v "SharingViolationRetries" /t REG_DWORD /d "0" /f
Reg.exe ADD "HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Enum\%%n\Device Parameters\Interrupt Management\Affinity Policy" /v "AssignmentSetOverride" /t REG_BINARY /d "04" /f
Reg.exe ADD "HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Enum\%%n\Device Parameters\Interrupt Management\Affinity Policy" /v "DevicePolicy" /t REG_DWORD /d "4" /f
Reg.exe ADD "HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Enum\%%n\Device Parameters\Interrupt Management\MessageSignaledInterruptProperties" /v "MessageNumberLimit" /t REG_DWORD /d "256" /f
)
cls
goto nettweaks

:networktweaks
cls
echo.
echo.
echo.                  [38 5 213m What Version Of Windows Are You Using?
echo.                           [38 5 105m[1] 10         [38 5 105m[2] 11
echo.
choice /c:12 /n > NUL 2>&1
if errorlevel 2 (goto Win11Net)
if errorlevel 1 (goto Win10Net)

:Win11Net
powershell netsh int tcp set security profiles=disable
netsh int tcp set global autotuninglevel=experimental
netsh int tcp set supp internet congestionprovider=BBR2
netsh int isatap set state disable >nul 2>&1
netsh interface teredo set state servername=default >nul 2>&1
netsh int ipv6 set teredo enterpriseclient >nul 2>&1
netsh int ip set global sourceroutingbehavior=drop >nul 2>&1
netsh int ip set global neighborcachelimit=4096 >nul 2>&1
netsh int tcp set heuristics disabled >nul 2>&1
netsh int tcp set global nonsackrttresiliency=disabled >nul 2>&1
netsh int tcp set global rss=enabled >nul 2>&1
netsh int tcp set security mpp=disabled >nul 2>&1
netsh int tcp set global rsc=disabled >nul 2>&1

for /f %%a in ('wmic path win32_networkadapter get GUID ^| findstr "{"') do (
reg query "HKLM\System\CurrentControlSet\services\Tcpip\Parameters\Interfaces\%%a" /v "DhcpIPAddress" >nul 2>&1
if NOT ERRORLEVEL 1 (
call sreg -d "HKLM\System\CurrentControlSet\services\Tcpip\Parameters\Interfaces\%%a" "TcpAckFrequency" "1"
call sreg -d "HKLM\System\CurrentControlSet\services\Tcpip\Parameters\Interfaces\%%a" "TCPNoDelay" "1"
)
)

for /f "eol=E" %%a in ('reg query "HKLM\SYSTEM\CurrentControlSet\Services\NetBT\Parameters\Interfaces" /s /f "NetbiosOptions"^| findstr /V "NetbiosOptions"') do (
reg add "NetbiosOptions" /t REG_DWORD /d "2" /f >nul 2>&1
)

for /f %%a in ('wmic path Win32_NetworkAdapter get PNPDeviceID^| findstr /L "PCI\VEN_"') do (
for /f "tokens=3" %%a in ('reg query "HKLM\SYSTEM\CurrentControlSet\Enum\%%a" /v "Driver"') do (
for /f %%b in ('echo %%a ^| findstr "{"') do (
for %%c in (AlternateSemaphoreDelay DeviceSleepOnDisconnect EEE FlowControl ModernStandbyWoLMagicPacket Node
PMARPOffload PMNSOffload PMWiFiRekeyOffload PriorityVLANTag SelectiveSuspend WakeOnMagicPacket WakeOnPattern) do (
reg query "HKLM\SYSTEM\CurrentControlSet\Control\Class\%%b" /v "*%%c" >nul 2>&1
if  equ 0 (reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\%%b" /v "*%%c" /t REG_SZ /d "0" /f >nul 2>&1)
)
for %%c in (AdvancedEEE AlternateSemaphoreDelay AutoDisableGigabit AutoPowerSaveModeEnabled EEELinkAdvertisement
EeePhyEnable EnableEDT EnableGreenEthernet EnableModernStandby GigaLite GPPSW LogLevelWarn Node PowerDownPll PowerSavingMode
ReduceSpeedOnPowerDown S5WakeOnLan SavePowerNowEnabled ULPMode WakeOnLink WakeOnSlot WakeUpModeCap) do (
reg query "HKLM\SYSTEM\CurrentControlSet\Control\Class\%%b" /v "%%c" >nul 2>&1
if  equ 0 (reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\%%b" /v "%%c" /t REG_SZ /d "0" /f >nul 2>&1)
)
for %%c in (RssBaseProcNumber) do (
reg query "HKLM\SYSTEM\CurrentControlSet\Control\Class\%%b" /v "*%%c" >nul 2>&1
if  equ 0 (reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\%%b" /v "*%%c" /t REG_SZ /d "1" /f >nul 2>&1)
reg query "HKLM\SYSTEM\CurrentControlSet\Control\Class\%%b" /v "%%c" >nul 2>&1
if  equ 0 (reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\%%b" /v "%%c" /t REG_SZ /d "1" /f >nul 2>&1)
)
reg query "HKLM\SYSTEM\CurrentControlSet\Control\Class\%%b" /v "*NumRssQueues" >nul 2>&1
if  equ 0 (reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\%%b" /v "*NumRssQueues" /t REG_SZ /d "2" /f >nul 2>&1)
reg query "HKLM\SYSTEM\CurrentControlSet\Control\Class\%%b" /v "WolShutdownLinkSpeed" >nul 2>&1
if  equ 0 (reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\%%b" /v "WolShutdownLinkSpeed" /t REG_SZ /d "2" /f >nul 2>&1)
reg query "HKLM\SYSTEM\CurrentControlSet\Control\Class\%%b" /v "MIMOPowerSaveMode" >nul 2>&1
if  equ 0 (reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\%%b" /v "MIMOPowerSaveMode" /t REG_SZ /d "3" /f >nul 2>&1)
reg query "HKLM\SYSTEM\CurrentControlSet\Control\Class\%%b" /v "PnPCapabilities" >nul 2>&1
if  equ 0 (reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\%%b" /v "PnPCapabilities" /t REG_SZ /d "24" /f >nul 2>&1)
if  GTR 6 (
for %%c in (InterruptModeration IPChecksumOffloadIPv4 IPChecksumOffloadIPv6 IPsecOffloadV1IPv4 IPsecOffloadV2 IPsecOffloadV2IPv4 LsoV1IPv4
LsoV2IPv4 LsoV2IPv6 TCPChecksumOffloadIPv4 TCPChecksumOffloadIPv6 UDPChecksumOffloadIPv4 UDPChecksumOffloadIPv6) do (
reg query "HKLM\SYSTEM\CurrentControlSet\Control\Class\%%b" /v "*%%c" >nul 2>&1
if  equ 0 (reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\%%b" /v "*%%c" /t REG_SZ /d "0" /f >nul 2>&1)
)
reg query "HKLM\SYSTEM\CurrentControlSet\Control\Class\%%b" /v "*NumRssQueues" >nul 2>&1
if  equ 0 (reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\%%b" /v "*NumRssQueues" /t REG_SZ /d "4" /f >nul 2>&1)
)
)
)
)
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Dnscache\Parameters" /v "NegativeCacheTime" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Dnscache\Parameters" /v "NegativeSOACacheTime" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Dnscache\Parameters" /v "NetFailureCacheTime" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Dnscache\Parameters" /v "MaximumUdpPacketSize" /t REG_DWORD /d "4864" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\services\Tcpip\Parameters" /v "DefaultTTL" /t REG_DWORD /d "64" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\services\Tcpip\Parameters" /v "KeepAliveTime" /t REG_DWORD /d "7200000" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\services\Tcpip\Parameters" /v "MaxUserPort" /t REG_DWORD /d "65534" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\services\Tcpip\Parameters" /v "QualifyingDestinationThreshold" /t REG_DWORD /d "3" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\services\Tcpip\Parameters" /v "SynAttackProtect" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\services\Tcpip\Parameters" /v "Tcp1323Opts" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\services\Tcpip\Parameters" /v "TcpCreateAndConnectTcbRateLimitDepth" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\services\Tcpip\Parameters" /v "TcpMaxDataRetransmissions" /t REG_DWORD /d "5" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\MSMQ\Parameters" /v "TCPNoDelay" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\MSMQ\Parameters" /v "TcpNoDelay" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\System\CurrentControlSet\Services\NDIS\Parameters" /v "MaxNumRssCpus" /t REG_DWORD /d "4" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "EnableDCA" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "EnableWsd" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "DefaultTTL" /t REG_DWORD /d "64" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "DisableLargeMTU" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "DisableTaskOffload" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "EnableConnectionRateLimiting" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "TCPMaxDataRetransmissions" /t REG_DWORD /d "5" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "TcPMaxDataRetransmissions" /t REG_DWORD /d "5" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "Tcp1323Opts" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "TcpNumConnections" /t REG_DWORD /d "1280" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "TcpTimedWaitDelay" /t REG_DWORD /d "25" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "SynAttackProtect" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "TcpCreateAndConnectTcbRateLimitDepth" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\System\CurrentControlSet\Services\LanmanServer\Parameters" /v "SizReqBuf" /t REG_DWORD /d "25344" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v "NoRecentDocsNetHood" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\services\LanmanWorkstation\Parameters" /v "DisableBandwidthThrottling" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\services\LanmanWorkstation\Parameters" /v "DisableLargeMtu" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\services\LanmanWorkstation\Parameters" /v "MaxCmds" /t REG_DWORD /d "100" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\services\LanmanWorkstation\Parameters" /v "MaxThreads" /t REG_DWORD /d "100" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\services\LanmanWorkstation\Parameters" /v "MaxCollectionCount" /t REG_DWORD /d "32" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\services\LanmanWorkstation\Parameters" /v "KeepConn" /t REG_DWORD /d "86400" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Psched" /v "NonBestEffortLimit" /t REG_DWORD /d "0" /f
powershell Disable-NetAdapterBinding -Name "*" -ComponentID ms_pacer -ErrorAction SilentlyContinue
powershell Disable-NetAdapterBinding -Name "*" -ComponentID ms_pppoe -ErrorAction SilentlyContinue
powershell Disable-NetAdapterBinding -Name "*" -ComponentID ms_rdma_ndk -ErrorAction SilentlyContinue
powershell Disable-NetAdapterBinding -Name "*" -ComponentID ms_ndisuio -ErrorAction SilentlyContinue
powershell Disable-NetAdapterBinding -Name "*" -ComponentID ms_wfplwf_upper -ErrorAction SilentlyContinue
powershell Disable-NetAdapterBinding -Name "*" -ComponentID ms_wfplwf_lower -ErrorAction SilentlyContinue
powershell Disable-NetAdapterBinding -Name "*" -ComponentID ms_netbt -ErrorAction SilentlyContinue
powershell Disable-NetAdapterBinding -Name "*" -ComponentID ms_netbios -ErrorAction SilentlyContinue
cls
goto nettweaks

:Win10Net
netsh int isatap set state disable >nul 2>&1
netsh interface teredo set state servername=default >nul 2>&1
netsh int ipv6 set teredo enterpriseclient >nul 2>&1
netsh int ip set global sourceroutingbehavior=drop >nul 2>&1
netsh int ip set global neighborcachelimit=4096 >nul 2>&1
netsh int tcp set heuristics disabled >nul 2>&1
netsh int tcp set global nonsackrttresiliency=disabled >nul 2>&1
netsh int tcp set global rss=enabled >nul 2>&1
netsh int tcp set security mpp=disabled >nul 2>&1
netsh int tcp set global rsc=disabled >nul 2>&1
netsh int tcp set global autotuninglevel=experimental
netsh int tcp set supp internet congestionprovider=newreno

for /f %%a in ('wmic path win32_networkadapter get GUID ^| findstr "{"') do (
reg query "HKLM\System\CurrentControlSet\services\Tcpip\Parameters\Interfaces\%%a" /v "DhcpIPAddress" >nul 2>&1
if NOT ERRORLEVEL 1 (
call sreg -d "HKLM\System\CurrentControlSet\services\Tcpip\Parameters\Interfaces\%%a" "TcpAckFrequency" "1"
call sreg -d "HKLM\System\CurrentControlSet\services\Tcpip\Parameters\Interfaces\%%a" "TCPNoDelay" "1"
)
)

for /f "eol=E" %%a in ('reg query "HKLM\SYSTEM\CurrentControlSet\Services\NetBT\Parameters\Interfaces" /s /f "NetbiosOptions"^| findstr /V "NetbiosOptions"') do (
reg add "NetbiosOptions" /t REG_DWORD /d "2" /f >nul 2>&1
)


powershell netsh int tcp set security profiles=disable
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Dnscache\Parameters" /v "NegativeCacheTime" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Dnscache\Parameters" /v "NegativeSOACacheTime" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Dnscache\Parameters" /v "NetFailureCacheTime" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Dnscache\Parameters" /v "MaximumUdpPacketSize" /t REG_DWORD /d "4864" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\services\Tcpip\Parameters" /v "DefaultTTL" /t REG_DWORD /d "64" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\services\Tcpip\Parameters" /v "KeepAliveTime" /t REG_DWORD /d "7200000" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\services\Tcpip\Parameters" /v "MaxUserPort" /t REG_DWORD /d "65534" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\services\Tcpip\Parameters" /v "QualifyingDestinationThreshold" /t REG_DWORD /d "3" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\services\Tcpip\Parameters" /v "SynAttackProtect" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\services\Tcpip\Parameters" /v "Tcp1323Opts" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\services\Tcpip\Parameters" /v "TcpCreateAndConnectTcbRateLimitDepth" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\services\Tcpip\Parameters" /v "TcpMaxDataRetransmissions" /t REG_DWORD /d "5" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\MSMQ\Parameters" /v "TCPNoDelay" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\MSMQ\Parameters" /v "TcpNoDelay" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\System\CurrentControlSet\Services\NDIS\Parameters" /v "MaxNumRssCpus" /t REG_DWORD /d "4" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "EnableDCA" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "EnableWsd" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "DefaultTTL" /t REG_DWORD /d "64" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "DisableLargeMTU" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "DisableTaskOffload" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "EnableConnectionRateLimiting" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "TCPMaxDataRetransmissions" /t REG_DWORD /d "5" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "TcPMaxDataRetransmissions" /t REG_DWORD /d "5" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "Tcp1323Opts" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "TcpNumConnections" /t REG_DWORD /d "1280" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "TcpTimedWaitDelay" /t REG_DWORD /d "25" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "SynAttackProtect" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "TcpCreateAndConnectTcbRateLimitDepth" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\System\CurrentControlSet\Services\LanmanServer\Parameters" /v "SizReqBuf" /t REG_DWORD /d "25344" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v "NoRecentDocsNetHood" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\services\LanmanWorkstation\Parameters" /v "DisableBandwidthThrottling" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\services\LanmanWorkstation\Parameters" /v "DisableLargeMtu" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\services\LanmanWorkstation\Parameters" /v "MaxCmds" /t REG_DWORD /d "100" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\services\LanmanWorkstation\Parameters" /v "MaxThreads" /t REG_DWORD /d "100" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\services\LanmanWorkstation\Parameters" /v "MaxCollectionCount" /t REG_DWORD /d "32" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\services\LanmanWorkstation\Parameters" /v "KeepConn" /t REG_DWORD /d "86400" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Psched" /v "NonBestEffortLimit" /t REG_DWORD /d "0" /f
powershell Disable-NetAdapterBinding -Name "*" -ComponentID ms_pacer -ErrorAction SilentlyContinue
powershell Disable-NetAdapterBinding -Name "*" -ComponentID ms_pppoe -ErrorAction SilentlyContinue
powershell Disable-NetAdapterBinding -Name "*" -ComponentID ms_rdma_ndk -ErrorAction SilentlyContinue
powershell Disable-NetAdapterBinding -Name "*" -ComponentID ms_ndisuio -ErrorAction SilentlyContinue
powershell Disable-NetAdapterBinding -Name "*" -ComponentID ms_wfplwf_upper -ErrorAction SilentlyContinue
powershell Disable-NetAdapterBinding -Name "*" -ComponentID ms_wfplwf_lower -ErrorAction SilentlyContinue
powershell Disable-NetAdapterBinding -Name "*" -ComponentID ms_netbt -ErrorAction SilentlyContinue
powershell Disable-NetAdapterBinding -Name "*" -ComponentID ms_netbios -ErrorAction SilentlyContinue
cls
goto nettweaks

:ramtweaks
cls
echo.
echo.
echo.
echo.
echo.                     [38 5 33m           █     █░ ██▓ ███▄    █ ▓█████▄  ▒█████   █     █░  ██████    ▄▄▄█████▓ █     █░▓█████ ▄▄▄       ██ ▄█▀▓█████  ██▀███
echo.                     [38 5 69m          ▓█░ █ ░█░▓██▒ ██ ▀█   █ ▒██▀ ██▌▒██▒  ██▒▓█░ █ ░█░▒██    ▒    ▓  ██▒ ▓▒▓█░ █ ░█░▓█   ▀▒████▄     ██▄█▒ ▓█   ▀ ▓██ ▒ ██▒
echo.                     [38 5 105m          ▒█░ █ ░█ ▒██▒▓██  ▀█ ██▒░██   █▌▒██░  ██▒▒█░ █ ░█ ░ ▓██▄      ▒ ▓██░ ▒░▒█░ █ ░█ ▒███  ▒██  ▀█▄  ▓███▄░ ▒███   ▓██ ░▄█ ▒
echo.                     [38 5 177m          ░█░ █ ░█ ░██░▓██▒  ▐▌██▒░▓█▄   ▌▒██   ██░░█░ █ ░█   ▒   ██▒   ░ ▓██▓ ░ ░█░ █ ░█ ▒▓█  ▄░██▄▄▄▄██ ▓██ █▄ ▒▓█  ▄ ▒██▀▀█▄
echo.                     [38 5 213m          ░░██▒██▓ ░██░▒██░   ▓██░░▒████▓ ░ ████▓▒░░░██▒██▓ ▒██████▒▒     ▒██▒ ░ ░░██▒██▓ ░▒████▒▓█   ▓██▒▒██▒ █▄░▒████▒░██▓ ▒██▒
echo.                     [38 5 33m          ░ ▓░▒ ▒  ░▓  ░ ▒░   ▒ ▒  ▒▒▓  ▒ ░ ▒░▒░▒░ ░ ▓░▒ ▒  ▒ ▒▓▒ ▒ ░     ▒ ░░   ░ ▓░▒ ▒  ░░ ▒░ ░▒▒   ▓▒█░▒ ▒▒ ▓▒░░ ▒░ ░░ ▒▓ ░▒▓░
echo.                     [38 5 105m            ▒ ░ ░   ▒ ░░ ░░   ░ ▒░ ░ ▒  ▒   ░ ▒ ▒░   ▒ ░ ░  ░ ░▒  ░ ░       ░      ▒ ░ ░   ░ ░  ░ ▒   ▒▒ ░░ ░▒ ▒░ ░ ░  ░  ░▒ ░ ▒░
echo.                     [38 5 33m            ░   ░   ▒ ░   ░   ░ ░  ░ ░  ░ ░ ░ ░ ▒    ░   ░  ░  ░  ░       ░        ░   ░     ░    ░   ▒   ░ ░░ ░    ░     ░░   ░
echo.                     [38 5 69m              ░     ░           ░    ░        ░ ░      ░          ░                  ░       ░  ░     ░  ░░  ░      ░  ░   ░
echo.                     [38 5 105m                                   ░
echo.
echo.                                                                       ╔═══
echo.                                                                       ║   This Utility Was Made By Fyumi   ║
echo.                                                                                                         ═══╝
echo.
echo.
echo.                                                    [38 5 213m[[0m 1 [38 5 213m][0m  [90m4GB Ram[90m                [38 5 213m[[0m 2 [38 5 213m][0m  [90m8GB Ram[90m                [38 5 213m[[0m 3 [38 5 213m][0m  [90m16GB Ram[90m
echo.
echo.
echo.                                                    [38 5 213m[[0m 4 [38 5 213m][0m  [90m32GB Ram[90m               [38 5 213m[[0m 5 [38 5 213m][0m  [90mRevert[90m                 [38 5 213m[[0m 6 [38 5 213m][0m  [90mReturn To Main Menu[90m
echo.
echo.
echo.
echo.
echo. [38 5 33m                                                      ╔════════════════════════════════════════════════════════════════════╗
echo. [38 5 69m                                                      ║   Add "F" After Your Choice To See More Details About That Tweak   ║
echo. [38 5 105m                                                      ║                         Ex : 1F  2F  3F                            ║
echo. [38 5 177m                                                      ╚════════════════════════════════════════════════════════════════════╝
echo.
set /p fyumi=:
if /i __input__ == 1 (goto 4gbram)
if /i __input__ == 2 (goto 8gbram)
if /i __input__ == 3 (goto 16gbram)
if /i __input__ == 4 (goto 32gbram)
if /i __input__ == 5 (goto revertram)
if /i __input__ == 6 (goto menutienganh)
if /i __input__ == 1F (goto sorry)
if /i __input__ == 2F (goto sorry)
if /i __input__ == 3F (goto sorry)
if /i __input__ == 4F (goto sorry)
if /i __input__ == 5F (goto sorry)
cls
echo.
echo.
echo.      [97mYou entered the wrong choice  please enter again
echo.
echo.
pause >nul
goto ramtweaks

:4gbram
Reg.exe add "HKLM\SYSTEM\ControlSet001\Control" /v "SvcHostSplitThresholdInKB" /t REG_DWORD /d "0x400000" /f
cls
goto ramtweaks

:8gbram
Reg.exe add "HKLM\SYSTEM\ControlSet001\Control" /v "SvcHostSplitThresholdInKB" /t REG_DWORD /d "0x800000" /f
cls
goto ramtweaks

:16gbram
Reg.exe add "HKLM\SYSTEM\ControlSet001\Control" /v "SvcHostSplitThresholdInKB" /t REG_DWORD /d "0x1000000" /f
cls
goto ramtweaks

:32gbram
Reg.exe add "HKLM\SYSTEM\ControlSet001\Control" /v "SvcHostSplitThresholdInKB" /t REG_DWORD /d "0x2000000" /f
cls
goto ramtweaks

:revertram
Reg.exe add "HKLM\SYSTEM\ControlSet001\Control" /v "SvcHostSplitThresholdInKB" /t REG_DWORD /d "0x380000" /f
cls
goto ramtweaks

:powertweaks
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\GpuEnergyDrv" /v "Start" /t REG_DWORD /d "2" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\GpuEnergyDr" /v "Start" /t REG_DWORD /d "2" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager" /v "CoalescingTimerInterval" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Power" /v "CoalescingTimerInterval" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "CoalescingTimerInterval" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v "CoalescingTimerInterval" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Executive" /v "CoalescingTimerInterval" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power\ModernSleep" /v "CoalescingTimerInterval" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "CoalescingTimerInterval" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "PlatformAoAcOverride" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "EnergyEstimationEnabled" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "EventProcessorEnabled" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "CsEnabled" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power\PowerThrottling" /v "PowerThrottlingOff" /t REG_DWORD /d "1" /f
powercfg /setacvalueindex scheme_current 54533251-82be-4824-96c1-47b60b740d00 4d2b0152-7d5c-498b-88e2-34345392a2c5 5000
Powercfg -setactive scheme_current
powercfg /h off
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Power" /v "HiberbootEnabled" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "HibernateEnabled" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "SleepReliabilityDetailedDiagnostics" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Power" /v "SleepStudyDisabled" /t REG_DWORD /d "1" /f
powercfg -delete 8c5e7fda-e8bf-4a96-9a85-a6e23a8c635c
powercfg -delete 381b4222-f694-41f0-9685-ff5bb260df2e
powercfg -delete a1841308-3541-4fab-bc81-f71556f20b4a
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power\EnergyEstimation\TaggedEnergy" /v "DisablingTaggedEnergyLogging" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power\EnergyEstimation\TaggedEnergy" /v "TelemetryMaxApplication" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power\EnergyEstimation\TaggedEnergy" /v "TelemetryMaxTagPerApplication" /t REG_DWORD /d "0" /f
cls
goto menutienganh

:disktweaks
cls
echo.
echo.
echo.
echo.
echo.                     [38 5 33m           █     █░ ██▓ ███▄    █ ▓█████▄  ▒█████   █     █░  ██████    ▄▄▄█████▓ █     █░▓█████ ▄▄▄       ██ ▄█▀▓█████  ██▀███
echo.                     [38 5 69m          ▓█░ █ ░█░▓██▒ ██ ▀█   █ ▒██▀ ██▌▒██▒  ██▒▓█░ █ ░█░▒██    ▒    ▓  ██▒ ▓▒▓█░ █ ░█░▓█   ▀▒████▄     ██▄█▒ ▓█   ▀ ▓██ ▒ ██▒
echo.                     [38 5 105m          ▒█░ █ ░█ ▒██▒▓██  ▀█ ██▒░██   █▌▒██░  ██▒▒█░ █ ░█ ░ ▓██▄      ▒ ▓██░ ▒░▒█░ █ ░█ ▒███  ▒██  ▀█▄  ▓███▄░ ▒███   ▓██ ░▄█ ▒
echo.                     [38 5 177m          ░█░ █ ░█ ░██░▓██▒  ▐▌██▒░▓█▄   ▌▒██   ██░░█░ █ ░█   ▒   ██▒   ░ ▓██▓ ░ ░█░ █ ░█ ▒▓█  ▄░██▄▄▄▄██ ▓██ █▄ ▒▓█  ▄ ▒██▀▀█▄
echo.                     [38 5 213m          ░░██▒██▓ ░██░▒██░   ▓██░░▒████▓ ░ ████▓▒░░░██▒██▓ ▒██████▒▒     ▒██▒ ░ ░░██▒██▓ ░▒████▒▓█   ▓██▒▒██▒ █▄░▒████▒░██▓ ▒██▒
echo.                     [38 5 33m          ░ ▓░▒ ▒  ░▓  ░ ▒░   ▒ ▒  ▒▒▓  ▒ ░ ▒░▒░▒░ ░ ▓░▒ ▒  ▒ ▒▓▒ ▒ ░     ▒ ░░   ░ ▓░▒ ▒  ░░ ▒░ ░▒▒   ▓▒█░▒ ▒▒ ▓▒░░ ▒░ ░░ ▒▓ ░▒▓░
echo.                     [38 5 105m            ▒ ░ ░   ▒ ░░ ░░   ░ ▒░ ░ ▒  ▒   ░ ▒ ▒░   ▒ ░ ░  ░ ░▒  ░ ░       ░      ▒ ░ ░   ░ ░  ░ ▒   ▒▒ ░░ ░▒ ▒░ ░ ░  ░  ░▒ ░ ▒░
echo.                     [38 5 33m            ░   ░   ▒ ░   ░   ░ ░  ░ ░  ░ ░ ░ ░ ▒    ░   ░  ░  ░  ░       ░        ░   ░     ░    ░   ▒   ░ ░░ ░    ░     ░░   ░
echo.                     [38 5 69m              ░     ░           ░    ░        ░ ░      ░          ░                  ░       ░  ░     ░  ░░  ░      ░  ░   ░
echo.                     [38 5 105m                                   ░
echo.
echo.                                                                       ╔═══
echo.                                                                       ║   This Utility Was Made By Fyumi   ║
echo.                                                                                                         ═══╝
echo.
echo.
echo.                                                                 [38 5 213m[[0m 1 [38 5 213m][0m  [90mBoost SSD Disk[90m         [38 5 213m[[0m 2 [38 5 213m][0m  [90mBoost HHD Disk[90m
echo.
echo.
echo.                                                                            [38 5 213m[[0m 3 [38 5 213m][0m  [90mReturn To Main Menu[90m
echo.
echo.
echo.
echo.
echo. [38 5 33m                                                      ╔════════════════════════════════════════════════════════════════════╗
echo. [38 5 69m                                                      ║   Add "F" After Your Choice To See More Details About That Tweak   ║
echo. [38 5 105m                                                      ║                         Ex : 1F  2F  3F                            ║
echo. [38 5 177m                                                      ╚════════════════════════════════════════════════════════════════════╝
echo.
set /p fyumi=:
if /i __input__ == 1 (goto ssd)
if /i __input__ == 2 (goto hhd)
if /i __input__ == 3 (goto menutienganh)
if /i __input__ == 1F (goto sorry)
if /i __input__ == 2F (goto sorry)
cls
echo.
echo.
echo.      [97mYou entered the wrong choice  please enter again
echo.
echo.
pause >nul
goto disktweaks

:ssd
fsutil behavior set disableLastAccess 0
fsutil behavior set disable8dot3 1
for /f "Delims=" %%k in ('Reg.exe Query hklm\SYSTEM\CurrentControlSet\Enum /f "{4d36e967-e325-11ce-bfc1-08002be10318}" /d /s^|Find "HKEY"') do (
Reg.exe add "%%k\Device Parameters\Disk" /v UserWriteCacheSetting /t reg_dword /d 1 /f
)
for /f "Delims=" %%k in ('Reg.exe Query hklm\SYSTEM\CurrentControlSet\Enum /f "{4d36e967-e325-11ce-bfc1-08002be10318}" /d /s^|Find "HKEY"') do (
Reg.exe add "%%k\Device Parameters\Disk" /v UserWriteCacheSetting /t reg_dword /d 1 /f
)
cls
goto disktweaks

:hhd
fsutil behavior set disableLastAccess 2
fsutil behavior set disable8dot3 0
for /f "Delims=" %%k in ('Reg.exe Query hklm\SYSTEM\CurrentControlSet\Enum /f "{4d36e967-e325-11ce-bfc1-08002be10318}" /d /s^|Find "HKEY"') do (
Reg.exe add "%%k\Device Parameters\Disk" /v UserWriteCacheSetting /t reg_dword /d 1 /f
)
for /f "Delims=" %%k in ('Reg.exe Query hklm\SYSTEM\CurrentControlSet\Enum /f "{4d36e967-e325-11ce-bfc1-08002be10318}" /d /s^|Find "HKEY"') do (
Reg.exe add "%%k\Device Parameters\Disk" /v UserWriteCacheSetting /t reg_dword /d 1 /f
)
cls
goto disktweaks

:about
chcp 65001 >nul 2>&1
cls
echo.
echo.
echo.
echo.
echo.                     [38 5 33m           █     █░ ██▓ ███▄    █ ▓█████▄  ▒█████   █     █░  ██████    ▄▄▄█████▓ █     █░▓█████ ▄▄▄       ██ ▄█▀▓█████  ██▀███
echo.                     [38 5 69m          ▓█░ █ ░█░▓██▒ ██ ▀█   █ ▒██▀ ██▌▒██▒  ██▒▓█░ █ ░█░▒██    ▒    ▓  ██▒ ▓▒▓█░ █ ░█░▓█   ▀▒████▄     ██▄█▒ ▓█   ▀ ▓██ ▒ ██▒
echo.                     [38 5 105m          ▒█░ █ ░█ ▒██▒▓██  ▀█ ██▒░██   █▌▒██░  ██▒▒█░ █ ░█ ░ ▓██▄      ▒ ▓██░ ▒░▒█░ █ ░█ ▒███  ▒██  ▀█▄  ▓███▄░ ▒███   ▓██ ░▄█ ▒
echo.                     [38 5 177m          ░█░ █ ░█ ░██░▓██▒  ▐▌██▒░▓█▄   ▌▒██   ██░░█░ █ ░█   ▒   ██▒   ░ ▓██▓ ░ ░█░ █ ░█ ▒▓█  ▄░██▄▄▄▄██ ▓██ █▄ ▒▓█  ▄ ▒██▀▀█▄
echo.                     [38 5 213m          ░░██▒██▓ ░██░▒██░   ▓██░░▒████▓ ░ ████▓▒░░░██▒██▓ ▒██████▒▒     ▒██▒ ░ ░░██▒██▓ ░▒████▒▓█   ▓██▒▒██▒ █▄░▒████▒░██▓ ▒██▒
echo.                     [38 5 33m          ░ ▓░▒ ▒  ░▓  ░ ▒░   ▒ ▒  ▒▒▓  ▒ ░ ▒░▒░▒░ ░ ▓░▒ ▒  ▒ ▒▓▒ ▒ ░     ▒ ░░   ░ ▓░▒ ▒  ░░ ▒░ ░▒▒   ▓▒█░▒ ▒▒ ▓▒░░ ▒░ ░░ ▒▓ ░▒▓░
echo.                     [38 5 105m            ▒ ░ ░   ▒ ░░ ░░   ░ ▒░ ░ ▒  ▒   ░ ▒ ▒░   ▒ ░ ░  ░ ░▒  ░ ░       ░      ▒ ░ ░   ░ ░  ░ ▒   ▒▒ ░░ ░▒ ▒░ ░ ░  ░  ░▒ ░ ▒░
echo.                     [38 5 33m            ░   ░   ▒ ░   ░   ░ ░  ░ ░  ░ ░ ░ ░ ▒    ░   ░  ░  ░  ░       ░        ░   ░     ░    ░   ▒   ░ ░░ ░    ░     ░░   ░
echo.                     [38 5 69m              ░     ░           ░    ░        ░ ░      ░          ░                  ░       ░  ░     ░  ░░  ░      ░  ░   ░
echo.                     [38 5 105m                                   ░
echo.
echo.                                                                       ╔═══
echo.                                                                       ║   This Utility Was Made By Fyumi   ║
echo.                                                                                                         ═══╝
echo.
echo.
echo.                                                                   [38 5 213m[[0m 1 [38 5 213m][0m  [90mFacebook[90m                [38 5 213m[[0m 2 [38 5 213m][0m  [90mPage Facebook[90m
echo.
echo.
echo.                                                     [38 5 213m[[0m 3 [38 5 213m][0m  [90mYoutube[90m                [38 5 213m[[0m 4 [38 5 213m][0m  [90mDiscord[90m                [38 5 213m[[0m 5 [38 5 213m][0m  [90mMain Menu[90m
echo.
echo.
echo.
echo.
echo. [38 5 33m                                                      ╔════════════════════════════════════════════════════════════════════╗
echo. [38 5 69m                                                      ║   Add "F" After Your Choice To See More Details About That Tweak   ║
echo. [38 5 105m                                                      ║                         Ex : 1F  2F  3F                            ║
echo. [38 5 177m                                                      ╚════════════════════════════════════════════════════════════════════╝
echo.
set /p fyumi=:
if /i __input__ == 1 (start https://www.facebook.com/quang.son.73550794)goto about
if /i __input__ == 2 (start https://www.facebook.com/profile.php?id=61570289644520)is_tour_completedgoto about
if /i __input__ == 3 (start https://www.youtube.com/@winx1948)goto about
if /i __input__ == 4 (start https://discord.gg/rV4DjZnP)goto about
if /i __input__ == 5 (goto menutienganh)
cls
echo.
echo.
echo.      [97mYou entered the wrong choice  please enter again
echo.
echo.
pause >nul
goto about