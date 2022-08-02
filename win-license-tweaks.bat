
@echo off
cls

:banner

Rem Banner

echo #---------------------------------------------------------------------#
echo #   __      __ __            ___                                      #
echo #  /  \    /  \__^| ____   __^| _/ ____ __  _  __ ______                #
echo #  \   \/\/   /  ^|/    \ / __ ^| / __ \\ \/ \/ //  ___/                #
echo #   \        /^|  ^|   ^|  \ /_/ ^|(  \_\ )\     / \___ \                 #
echo #    \__/\  / ^|__^|___^|  /____ ^| \____/  \/\_/ /____  \                #
echo #         \/          \/     \/                    \/                 #
echo #     _____           __   __               __   __                   #
echo #    /  _  \   ____ _/  ^|_^|__^|__  ______  _/  ^|_^|__^| ____   ____      #
echo #   /  /_\  \_/ ___\\   __\  ^|  \/ /__  \ \   __\  ^|/ __ \ /    \     #
echo #  /    ^|    \  \___ ^|  ^| ^|  ^|\   / / __ \_^|  ^| ^|  ^|  \_\ )   ^|  \    #
echo #  \____^|__  /\___  /^|__^| ^|__^| \_/ (____  /^|__^| ^|__^|\____/^|___^|  /    #
echo #          \/     \/                    \/                     \/     #
echo #    _________              __         __                             #
echo #   /   _____/ ____ _______^|__^|_____ _/  ^|_   _    o     __    _  _   #
echo #   \_____  \_/ ___\\_  __ \  ^|____ \\   __\ ^|_)\/      (_ ^|_^|^|_)/ \  #
echo #   /        \  \___ ^|  ^| \/  ^|  ^|_\ \^|  ^|   ^|_)/  o    __)  ^|^|_)\_/  #
echo #  /_______  /\___  /^|__^|  ^|__^|   ___/^|__^|                            #
echo #          \/     \/          ^|__^|                                    #
echo #---------------------------------------------------------------------#

Rem differenciate btwn win10 & win 11

:start

echo #------------------------------#
echo #  [1] ACTIVATE WINDOWS 10     #
echo #  [2] ACTIVATE WINDOWS 11     #
echo #  [3] CHECK WINDOWS VERSION   #
echo #  [4] CHECK WINDOWS LICENSE   #
echo #  [5] EXIT APP                #
echo #------------------------------#

set /p startOp=[?] What do you want to do?:

if %startOp%==1 (
    cls
    goto win10
)

if %startOp%==2 (
    cls
    goto win11
) 
if %startOp%==3 (
    winver
    cls
    goto start
)
if %startOp%==4 (
    slmgr /xpr
    cls
    goto start
)
if %startOp%==5 (
    echo [*] Quitting App... Wait a moment...
    timeout /T 2 /NOBREAK>NUl
    exit
) else (
    echo [!] ERROR: Introduce a valid option!
    timeout /T 2 /NOBREAK>NUl
    cls
    goto start
)

:win10

echo #--------------------------------------#
echo #  [1] ACTIVATE WINDOWS 10 HOME        #
echo #  [2] ACTIVATE WINDOWS 10 PRO         #
echo #  [3] ACTIVATE WINDOWS 10 EDUCATION   #
echo #  [4] ACTIVATE WINDOWS 10 ENTERPRISE  #
echo #  [5] UNINSTALL WINDOWS 10 LICENSE    #
echo #  [6] BACK TO START MANU              #
echo #  [7] EXIT APP                        #
echo #--------------------------------------#

Rem Windows 10 activation keys

set wHome=TX9XD-98N7V-6WMQ6-BX7FG-H8Q99
set wPro=VK7JG-NPHTM-C97JM-9MPGT-3V66T
set wEdu=NW6C2-QMPVW-D7KKK-3GKT6-VCFB2
set wEnter=NPPR9-FWDCX-D2C8J-H872K-2YT43

set /p op=[?] What do you want to do?:  

if %op%==1 (
    echo [*] Activating your Windows... Wait a moment...
    slmgr /ipk %wHome%
    slmgr /skms kms.digiboy.ir
    slmgr /ato
    echo [*] Windows Activated!
    timeout /T 2 /NOBREAK>NUl
    goto againW10
)
if %op%==2 (
    echo [*] Activating your Windows... Wait a moment...
    slmgr /ipk %wPro%
    slmgr /skms kms.digiboy.ir
    slmgr /ato
    echo [*] Windows Activated!
    timeout /T 2 /NOBREAK>NUl
    goto againW10
)
if %op%==3 (
    echo [*] Activating your Windows... Wait a moment...
    slmgr /ipk %wEdu%
    slmgr /skms kms.digiboy.ir
    slmgr /ato
    echo [*] Windows Activated!
    timeout /T 2 /NOBREAK>NUl
    goto againW10
)
if %op%==4 (
    echo [*] Activating your Windows... Wait a moment...
    slmgr /ipk %wEnter%
    slmgr /skms kms.digiboy.ir
    slmgr /ato
    echo [*] Windows Activated!
    timeout /T 2 /NOBREAK>NUl
    goto againW10
)
if %op%==5 (
    echo [*] Uninstalling your product key... Wait a moment...
    slmgr /upk
    echo [*] Product key uninstalled successfully!
    timeout /T 2 /NOBREAK>NUl
    goto againW10
)
if %op%==6 (
    timeout /T 2 /NOBREAK>NUl
    cls
    goto start
)
if %op%==7 (
    echo [*] Quitting App... Wait a moment...
    timeout /T 2 /NOBREAK>NUl
    exit
) else (
    echo [!] ERROR: Introduce a valid option!
    timeout /T 2 /NOBREAK>NUl
    cls
    goto win10
)

:againW10

set /p want=[?] Do you want to do another thing? [y/N]: 

if %want%==y (
    cls
    goto win10
)

if %want%==Y (
    cls
    goto win10
)

if %want%==n (
    echo [*] Quitting App... Wait a moment...
    timeout /T 2 /NOBREAK>NUl
    exit

)

if %want%==N (
    echo [*] Quitting App... Wait a moment...
    timeout /T 2 /NOBREAK>NUl
    exit
)

else (
    echo [!] ERROR: Introduce a valid option!
    goto again
)

:win11

echo #--------------------------------------#
echo #  [1] ACTIVATE WINDOWS 11 HOME        #
echo #  [2] ACTIVATE WINDOWS 11 PRO         #
echo #  [3] ACTIVATE WINDOWS 11 EDUCATION   #
echo #  [4] ACTIVATE WINDOWS 11 ENTERPRISE  #
echo #  [5] UNINSTALL WINDOWS 11 LICENSE    #
echo #  [6] BACK TO START MANU              #
echo #  [7] EXIT APP                        #
echo #--------------------------------------#

set wHome=TX9XD-98N7V-6WMQ6-BX7FG-H8Q99
set wPro=W269N-WFGWX-YVC9B-4J6C9-T83GX
set wEdu=NW6C2-QMPVW-D7KKK-3GKT6-VCFB2
set wEnter=KHE2W-43P2N-23LOC-23LOC-66R6H

set /p op=[?] What do you want to do?:  

if %op%==1 (
    echo [*] Activating your Windows... Wait a moment...
    slmgr /ipk %wHome%
    slmgr /skms kms.digiboy.ir
    slmgr /ato
    echo [*] Windows Activated!
    timeout /T 2 /NOBREAK>NUl
    goto againW11
)
if %op%==2 (
    echo [*] Activating your Windows... Wait a moment...
    slmgr /ipk %wPro%
    slmgr /skms kms.digiboy.ir
    slmgr /ato
    echo [*] Windows Activated!
    timeout /T 2 /NOBREAK>NUl
    goto againW11
)
if %op%==3 (
    echo [*] Activating your Windows... Wait a moment...
    slmgr /ipk %wEdu%
    slmgr /skms kms.digiboy.ir
    slmgr /ato
    echo [*] Windows Activated!
    timeout /T 2 /NOBREAK>NUl
    goto againW11
)
if %op%==4 (
    echo [*] Activating your Windows... Wait a moment...
    slmgr /ipk %wEnter%
    slmgr /skms kms.digiboy.ir
    slmgr /ato
    echo [*] Windows Activated!
    timeout /T 2 /NOBREAK>NUl
    goto againW11
)
if %op%==5 (
    echo [*] Uninstalling your product key... Wait a moment...
    slmgr /upk
    echo [*] Product key uninstalled successfully!
    timeout /T 2 /NOBREAK>NUl
    goto againW11
)
if %op%==6 (
    timeout /T 2 /NOBREAK>NUl
    cls
    goto start
)
if %op%==7 (
    echo [*] Quitting App... Wait a moment...
    timeout /T 2 /NOBREAK>NUl
    exit
) else (
    echo [!] ERROR: Introduce a valid option!
    timeout /T 2 /NOBREAK>NUl
    cls
    goto win11
)

:againW11

set /p want=[?] Do you want to do another thing? [y/N]: 

if %want%==y (
    cls
    goto win11
)

if %want%==Y (
    cls
    goto win11
)

if %want%==n (
    echo [*] Quitting App... Wait a moment...
    timeout /T 2 /NOBREAK>NUl
    exit

)

if %want%==N (
    echo [*] Quitting App... Wait a moment...
    timeout /T 2 /NOBREAK>NUl
    exit
)

else (
    echo [!] ERROR: Introduce a valid option!
    goto again
)