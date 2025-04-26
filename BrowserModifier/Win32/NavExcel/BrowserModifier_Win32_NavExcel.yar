
rule BrowserModifier_Win32_NavExcel{
	meta:
		description = "BrowserModifier:Win32/NavExcel,SIGNATURE_TYPE_PEHSTR_EXT,0b 00 0b 00 03 00 00 "
		
	strings :
		$a_01_0 = {68 74 74 70 3a 2f 2f 77 77 77 2e 63 6f 6d 6d 6f 6e 6e 61 6d 65 2e 63 6f 6d 2f 66 69 6e 64 2e 61 73 70 3f 63 6e 3d } //3 http://www.commonname.com/find.asp?cn=
		$a_01_1 = {4e 61 76 48 65 6c 70 65 72 20 46 69 6c 65 20 44 65 6c 65 74 65 20 45 72 72 6f 72 21 } //4 NavHelper File Delete Error!
		$a_01_2 = {50 6c 65 61 73 65 20 76 69 73 69 74 20 68 74 74 70 3a 2f 2f 77 77 77 2e 6e 61 76 65 78 63 65 6c 2e 63 6f 6d 20 66 6f 72 20 73 75 70 70 6f 72 74 20 6f 6e 20 74 68 69 73 20 69 73 73 75 65 2e } //4 Please visit http://www.navexcel.com for support on this issue.
	condition:
		((#a_01_0  & 1)*3+(#a_01_1  & 1)*4+(#a_01_2  & 1)*4) >=11
 
}
rule BrowserModifier_Win32_NavExcel_2{
	meta:
		description = "BrowserModifier:Win32/NavExcel,SIGNATURE_TYPE_PEHSTR,07 00 07 00 09 00 00 "
		
	strings :
		$a_01_0 = {68 74 74 70 3a 2f 2f 77 77 77 2e 6e 61 76 65 78 63 65 6c 2e 63 6f 6d 2f } //1 http://www.navexcel.com/
		$a_01_1 = {53 6f 66 74 77 61 72 65 5c 4e 61 76 45 78 63 65 6c 20 4c 74 64 5c 4e 61 76 45 78 63 65 6c 20 53 65 61 72 63 68 20 54 6f 6f 6c 62 61 72 } //1 Software\NavExcel Ltd\NavExcel Search Toolbar
		$a_01_2 = {41 20 6e 65 77 20 76 65 72 73 69 6f 6e 20 6f 66 20 74 68 65 20 4e 61 76 45 78 63 65 6c 20 53 65 61 72 63 68 20 54 6f 6f 6c 62 61 72 2e } //1 A new version of the NavExcel Search Toolbar.
		$a_01_3 = {54 68 65 20 4e 61 76 45 78 63 65 6c 20 53 65 61 72 63 68 20 54 6f 6f 6c 62 61 72 20 77 69 6c 6c 20 62 65 20 75 70 67 72 61 64 65 64 20 61 74 20 74 68 65 20 6e 65 78 74 20 6c 6f 67 69 6e 2e } //1 The NavExcel Search Toolbar will be upgraded at the next login.
		$a_01_4 = {4e 61 76 45 78 63 65 6c 20 53 65 61 72 63 68 20 54 6f 6f 6c 62 61 72 20 55 70 64 61 74 65 } //1 NavExcel Search Toolbar Update
		$a_01_5 = {4e 61 76 45 78 63 65 6c 54 6f 6f 6c 62 61 72 } //1 NavExcelToolbar
		$a_01_6 = {22 25 73 5c 75 70 64 61 74 65 5f 69 6e 73 74 61 6c 6c 2e 65 78 65 22 20 2d 69 20 2d 6e 71 } //1 "%s\update_install.exe" -i -nq
		$a_01_7 = {57 6f 75 6c 64 20 79 6f 75 20 6c 69 6b 65 20 74 6f 20 75 70 64 61 74 65 20 74 68 65 20 4e 61 76 45 78 63 65 6c 20 53 65 61 72 63 68 20 54 6f 6f 6c 62 61 72 3f } //1 Would you like to update the NavExcel Search Toolbar?
		$a_01_8 = {41 6e 20 75 70 64 61 74 65 20 66 6f 72 20 74 68 65 20 4e 61 76 45 78 63 65 6c 20 53 65 61 72 63 68 20 54 6f 6f 6c 62 61 72 20 69 73 20 61 76 61 69 6c 61 62 6c 65 2e } //1 An update for the NavExcel Search Toolbar is available.
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1+(#a_01_7  & 1)*1+(#a_01_8  & 1)*1) >=7
 
}
rule BrowserModifier_Win32_NavExcel_3{
	meta:
		description = "BrowserModifier:Win32/NavExcel,SIGNATURE_TYPE_PEHSTR,0b 00 0b 00 0d 00 00 "
		
	strings :
		$a_01_0 = {25 73 5c 4e 61 76 45 78 63 65 6c 20 53 65 61 72 63 68 20 54 6f 6f 6c 62 61 72 } //1 %s\NavExcel Search Toolbar
		$a_01_1 = {41 72 65 20 79 6f 75 20 73 75 72 65 20 79 6f 75 20 77 69 73 68 20 74 6f 20 75 6e 69 6e 73 74 61 6c 6c 20 74 68 65 20 4e 61 76 45 78 63 65 6c } //1 Are you sure you wish to uninstall the NavExcel
		$a_01_2 = {63 3a 5c 63 79 67 77 69 6e 5c 68 6f 6d 65 5c 71 75 6f 63 5c 6e 61 76 65 78 63 65 6c 5c 69 6e 73 74 61 6c 6c 5c 52 65 6c 65 61 73 65 5c 72 65 6d 6f 76 65 72 2e 70 64 62 } //1 c:\cygwin\home\quoc\navexcel\install\Release\remover.pdb
		$a_01_3 = {4e 61 76 45 78 63 65 6c 20 53 65 61 72 63 68 20 54 6f 6f 6c 62 61 72 20 28 72 65 6d 6f 76 65 20 6f 6e 6c 79 29 } //1 NavExcel Search Toolbar (remove only)
		$a_01_4 = {4e 61 76 45 78 63 65 6c 20 53 65 61 72 63 68 20 54 6f 6f 6c 62 61 72 20 49 6e 73 74 61 6c 6c 61 74 69 6f 6e 20 43 6f 6d 70 6c 65 74 65 64 2e } //1 NavExcel Search Toolbar Installation Completed.
		$a_01_5 = {4e 61 76 45 78 63 65 6c 20 53 65 61 72 63 68 20 54 6f 6f 6c 62 61 72 20 55 6e 69 6e 73 74 61 6c 6c 61 74 69 6f 6e } //1 NavExcel Search Toolbar Uninstallation
		$a_01_6 = {4e 61 76 45 78 63 65 6c 42 61 72 2e 64 6c 6c } //1 NavExcelBar.dll
		$a_01_7 = {6e 78 73 74 69 6e 73 74 2e 65 78 65 } //1 nxstinst.exe
		$a_01_8 = {72 65 67 73 76 72 33 32 2e 65 78 65 20 2f 73 20 4e 61 76 45 78 63 65 6c 42 61 72 2e 64 6c 6c } //1 regsvr32.exe /s NavExcelBar.dll
		$a_01_9 = {53 4f 46 54 57 41 52 45 5c 4d 69 63 72 6f 73 6f 66 74 5c 57 69 6e 64 6f 77 73 5c 43 75 72 72 65 6e 74 56 65 72 73 69 6f 6e 5c 55 6e 69 6e 73 74 61 6c 6c 5c 4e 61 76 45 78 63 65 6c 20 53 65 61 72 63 68 20 54 6f 6f 6c 62 61 72 } //1 SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\NavExcel Search Toolbar
		$a_01_10 = {53 4f 46 54 57 41 52 45 5c 4e 61 76 45 78 63 65 6c 20 4c 74 64 } //1 SOFTWARE\NavExcel Ltd
		$a_01_11 = {54 68 65 20 63 75 72 72 65 6e 74 20 75 73 65 72 20 64 6f 65 73 20 6e 6f 74 20 68 61 76 65 20 73 75 66 66 69 63 69 65 6e 74 20 70 72 69 76 69 6c 65 67 65 20 74 6f 20 69 6e 73 74 61 6c 6c 20 74 68 65 20 4e 61 76 45 78 63 65 6c 20 53 65 61 72 63 68 20 54 6f 6f 6c 62 61 72 2e } //1 The current user does not have sufficient privilege to install the NavExcel Search Toolbar.
		$a_01_12 = {54 68 65 20 4e 61 76 45 78 63 65 6c 20 53 65 61 72 63 68 20 54 6f 6f 6c 62 61 72 20 68 61 73 20 62 65 65 6e 20 73 75 63 63 65 73 73 66 75 6c 6c 79 20 75 6e 69 6e 73 74 61 6c 6c 65 64 2e } //1 The NavExcel Search Toolbar has been successfully uninstalled.
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1+(#a_01_7  & 1)*1+(#a_01_8  & 1)*1+(#a_01_9  & 1)*1+(#a_01_10  & 1)*1+(#a_01_11  & 1)*1+(#a_01_12  & 1)*1) >=11
 
}
rule BrowserModifier_Win32_NavExcel_4{
	meta:
		description = "BrowserModifier:Win32/NavExcel,SIGNATURE_TYPE_PEHSTR,1f 00 1c 00 18 00 00 "
		
	strings :
		$a_01_0 = {6e 65 77 6e 65 74 20 73 65 61 72 63 68 } //1 newnet search
		$a_01_1 = {68 6f 74 62 61 72 20 73 65 61 72 63 68 } //1 hotbar search
		$a_01_2 = {63 6f 6d 6d 6f 6e 6e 61 6d 65 2e 63 6f 6d 2f 66 69 6e 64 2e 61 73 70 3f 63 6e 3d } //1 commonname.com/find.asp?cn=
		$a_01_3 = {61 70 70 73 2e 77 65 62 73 65 72 76 69 63 65 68 6f 73 74 2e 63 6f 6d 2f 61 70 70 73 2f 65 70 61 2f 65 70 61 3f 63 69 64 3d } //1 apps.webservicehost.com/apps/epa/epa?cid=
		$a_01_4 = {77 65 62 2e 79 6f 75 72 73 65 61 72 63 68 66 69 6e 64 65 72 2e 6e 65 74 } //1 web.yoursearchfinder.net
		$a_01_5 = {74 72 61 63 6b 65 72 2e 74 72 61 64 65 64 6f 75 62 6c 65 72 2e 63 6f 6d 2f 63 6c 69 63 6b } //1 tracker.tradedoubler.com/click
		$a_01_6 = {66 69 6e 64 2e 67 72 65 61 74 73 65 61 72 63 68 2e 69 6e 66 6f 2f 61 70 70 73 2f 65 70 73 2f } //1 find.greatsearch.info/apps/eps/
		$a_01_7 = {72 65 73 75 6c 74 2e 67 6f 6f 64 73 65 61 72 63 68 2e 69 6e 66 6f 2f 61 70 70 73 2f 65 70 73 2f } //1 result.goodsearch.info/apps/eps/
		$a_01_8 = {73 65 61 72 63 68 2e 66 61 73 74 72 65 73 75 6c 74 73 2e 6f 72 67 2f 61 70 70 73 2f 65 70 73 2f } //1 search.fastresults.org/apps/eps/
		$a_01_9 = {66 69 6e 64 2e 73 65 61 72 63 68 66 61 63 74 2e 6e 65 74 2f 61 70 70 73 2f 65 70 73 2f } //1 find.searchfact.net/apps/eps/
		$a_01_10 = {64 61 74 61 2e 63 79 62 65 72 73 65 61 72 63 68 69 6e 67 2e 6e 65 74 2f 61 70 70 73 2f 65 70 73 2f } //1 data.cybersearching.net/apps/eps/
		$a_01_11 = {64 61 74 61 2e 71 75 69 63 6b 73 65 61 72 63 68 65 73 2e 6e 65 74 2f 61 70 70 73 2f 65 70 73 2f } //1 data.quicksearches.net/apps/eps/
		$a_01_12 = {77 65 62 2e 72 65 73 75 6c 74 73 6f 6e 64 65 6d 61 6e 64 2e 6e 65 74 2f 61 70 70 73 2f 65 70 73 2f } //1 web.resultsondemand.net/apps/eps/
		$a_01_13 = {77 77 77 2e 6d 79 73 65 61 72 63 68 6e 65 74 2e 6f 72 67 2f 61 70 70 73 2f 65 70 73 2f } //1 www.mysearchnet.org/apps/eps/
		$a_01_14 = {69 6e 66 6f 2e 73 65 61 72 63 68 65 73 64 69 72 65 63 74 2e 6e 65 74 2f 61 70 70 73 2f 65 70 73 2f } //1 info.searchesdirect.net/apps/eps/
		$a_01_15 = {64 61 74 61 2e 71 75 69 63 6b 73 65 61 72 63 68 65 73 2e 6e 65 74 } //1 data.quicksearches.net
		$a_01_16 = {65 70 73 2e 6e 65 77 2e 73 65 61 72 63 68 2e 6e 65 77 2e 6e 65 74 } //1 eps.new.search.new.net
		$a_01_17 = {4e 48 55 70 64 61 74 65 72 2e 65 78 65 } //2 NHUpdater.exe
		$a_01_18 = {4e 48 55 6e 69 6e 73 74 61 6c 6c 65 72 2e 65 78 65 } //2 NHUninstaller.exe
		$a_01_19 = {4e 48 65 6c 70 65 72 2e 64 6c 6c } //2 NHelper.dll
		$a_01_20 = {4e 61 76 48 65 6c 70 65 72 20 55 6e 69 6e 73 74 61 6c 6c 65 72 } //2 NavHelper Uninstaller
		$a_01_21 = {53 4f 46 54 57 41 52 45 5c 4e 61 76 45 78 63 65 6c } //2 SOFTWARE\NavExcel
		$a_01_22 = {53 4f 46 54 57 41 52 45 5c 4d 69 63 72 6f 73 6f 66 74 5c 57 69 6e 64 6f 77 73 5c 43 75 72 72 65 6e 74 56 65 72 73 69 6f 6e 5c 45 78 70 6c 6f 72 65 72 5c 42 72 6f 77 73 65 72 20 48 65 6c 70 65 72 20 4f 62 6a 65 63 74 73 } //2 SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Browser Helper Objects
		$a_01_23 = {6e 61 76 65 78 63 65 6c 2e 63 6f 6d } //2 navexcel.com
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1+(#a_01_7  & 1)*1+(#a_01_8  & 1)*1+(#a_01_9  & 1)*1+(#a_01_10  & 1)*1+(#a_01_11  & 1)*1+(#a_01_12  & 1)*1+(#a_01_13  & 1)*1+(#a_01_14  & 1)*1+(#a_01_15  & 1)*1+(#a_01_16  & 1)*1+(#a_01_17  & 1)*2+(#a_01_18  & 1)*2+(#a_01_19  & 1)*2+(#a_01_20  & 1)*2+(#a_01_21  & 1)*2+(#a_01_22  & 1)*2+(#a_01_23  & 1)*2) >=28
 
}