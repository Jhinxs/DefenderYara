
rule BrowserModifier_Win32_Helpth{
	meta:
		description = "BrowserModifier:Win32/Helpth,SIGNATURE_TYPE_PEHSTR_EXT,67 00 67 00 08 00 00 "
		
	strings :
		$a_02_0 = {68 74 74 70 [0-03] 3a 2f 2f 78 [0-03] 75 6c 65 69 [0-03] 38 38 38 2e [0-03] 77 39 39 2e [0-03] 6d 79 64 6e [0-03] 6e 73 2e 63 [0-03] 6e 2f 64 61 [0-03] 74 61 [0-09] 65 [0-03] 78 65 } //100
		$a_00_1 = {74 68 75 6e 64 65 72 35 5f 61 70 70 5f 6d 75 74 65 78 } //1 thunder5_app_mutex
		$a_00_2 = {54 68 75 6e 64 65 72 20 45 78 69 74 20 53 68 65 6c 6c } //1 Thunder Exit Shell
		$a_00_3 = {54 68 75 6e 64 65 72 5f 53 70 65 63 69 61 6c 5f 55 72 6c 73 } //1 Thunder_Special_Urls
		$a_00_4 = {74 68 75 6e 64 65 72 35 5f 73 68 65 6c 6c 5f 6d 75 74 65 78 } //1 thunder5_shell_mutex
		$a_00_5 = {00 74 68 75 6e 64 65 72 35 2e 65 78 65 00 } //1 琀畨摮牥⸵硥e
		$a_00_6 = {54 68 75 6e 64 65 72 5f 46 69 6c 65 73 5f 54 6f } //1 Thunder_Files_To
		$a_00_7 = {53 68 65 6c 6c 5f 43 61 6c 6c 00 00 50 72 6f 67 72 61 6d 5c 55 70 64 61 74 65 53 68 65 6c 6c 2e 64 6c 6c } //1
	condition:
		((#a_02_0  & 1)*100+(#a_00_1  & 1)*1+(#a_00_2  & 1)*1+(#a_00_3  & 1)*1+(#a_00_4  & 1)*1+(#a_00_5  & 1)*1+(#a_00_6  & 1)*1+(#a_00_7  & 1)*1) >=103
 
}
rule BrowserModifier_Win32_Helpth_2{
	meta:
		description = "BrowserModifier:Win32/Helpth,SIGNATURE_TYPE_PEHSTR,0a 00 0a 00 07 00 00 "
		
	strings :
		$a_01_0 = {54 68 75 6e 64 65 72 35 48 65 6c 70 65 72 } //3 Thunder5Helper
		$a_01_1 = {54 00 68 00 75 00 6e 00 64 00 65 00 72 00 42 00 48 00 4f 00 4e 00 65 00 77 00 2e 00 64 00 6c 00 6c 00 } //3 ThunderBHONew.dll
		$a_01_2 = {68 74 74 70 3a 2f 2f 77 77 77 2e 62 61 69 64 75 2e 63 6f 6d 2f 73 3f 77 64 3d } //2 http://www.baidu.com/s?wd=
		$a_01_3 = {75 6e 69 6f 6e 2e 32 30 30 38 64 6a 66 2e 63 6e 2f 73 65 61 72 63 68 2f 6e 2f } //1 union.2008djf.cn/search/n/
		$a_01_4 = {53 6f 66 74 77 61 72 65 5c 4d 69 63 72 6f 73 6f 66 74 5c 57 69 6e 64 6f 77 73 5c 43 75 72 72 65 6e 74 56 65 72 73 69 6f 6e 5c 65 78 70 6c 6f 72 65 72 5c 42 72 6f 77 73 65 72 20 48 65 6c 70 65 72 20 4f 62 6a 65 63 74 73 5c } //1 Software\Microsoft\Windows\CurrentVersion\explorer\Browser Helper Objects\
		$a_01_5 = {53 4f 46 54 57 41 52 45 5c 4d 69 63 72 6f 73 6f 66 74 5c 57 69 6e 64 6f 77 73 5c 43 75 72 72 65 6e 74 56 65 72 73 69 6f 6e 5c 55 6e 69 6e 73 74 61 6c 6c 5c 33 36 30 } //1 SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\360
		$a_01_6 = {68 00 74 00 74 00 70 00 3a 00 2f 00 2f 00 63 00 6c 00 69 00 63 00 6b 00 2e 00 70 00 34 00 70 00 2e 00 63 00 6e 00 2e 00 79 00 61 00 68 00 6f 00 6f 00 2e 00 63 00 6f 00 6d 00 2f 00 } //1 http://click.p4p.cn.yahoo.com/
	condition:
		((#a_01_0  & 1)*3+(#a_01_1  & 1)*3+(#a_01_2  & 1)*2+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1) >=10
 
}