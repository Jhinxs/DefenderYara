
rule Spyware_Win32_IEPlugin{
	meta:
		description = "Spyware:Win32/IEPlugin,SIGNATURE_TYPE_PEHSTR_EXT,08 00 08 00 06 00 00 "
		
	strings :
		$a_01_0 = {49 45 50 6c 75 67 69 6e 44 65 73 6b 74 6f 70 54 6f 6f 6c 62 61 72 } //2 IEPluginDesktopToolbar
		$a_01_1 = {49 45 50 6c 75 67 69 6e 44 65 73 6b 74 6f 70 52 65 62 61 72 } //2 IEPluginDesktopRebar
		$a_01_2 = {4d 69 6e 20 54 6f 6f 6c 42 61 72 } //1 Min ToolBar
		$a_01_3 = {47 6f 20 54 6f 6f 6c 42 61 72 } //1 Go ToolBar
		$a_01_4 = {53 6f 66 74 77 61 72 65 5c 64 73 6b 74 62 5c } //2 Software\dsktb\
		$a_01_5 = {68 74 74 70 3a 2f 2f 73 65 61 72 63 68 2e 73 68 6f 70 6e 61 76 2e 63 6f 6d 2f } //2 http://search.shopnav.com/
	condition:
		((#a_01_0  & 1)*2+(#a_01_1  & 1)*2+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*2+(#a_01_5  & 1)*2) >=8
 
}
rule Spyware_Win32_IEPlugin_2{
	meta:
		description = "Spyware:Win32/IEPlugin,SIGNATURE_TYPE_PEHSTR,2c 00 2a 00 08 00 00 "
		
	strings :
		$a_01_0 = {53 4f 46 54 57 41 52 45 5c 4d 69 63 72 6f 73 6f 66 74 5c 57 69 6e 64 6f 77 73 5c 43 75 72 72 65 6e 74 56 65 72 73 69 6f 6e 5c 45 78 70 6c 6f 72 65 72 5c 42 72 6f 77 73 65 72 20 48 65 6c 70 65 72 20 4f 62 6a 65 63 74 73 } //10 SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Browser Helper Objects
		$a_01_1 = {34 36 66 42 69 35 30 30 30 30 30 30 30 30 30 30 30 5f } //10 46fBi500000000000_
		$a_01_2 = {50 72 6f 66 69 6c 65 2e 49 6e 74 65 72 65 73 74 73 2e 49 45 2e 46 61 76 6f 72 69 74 65 73 2e 25 69 } //10 Profile.Interests.IE.Favorites.%i
		$a_01_3 = {4e 61 6d 65 20 22 49 6e 74 65 72 6e 65 74 20 45 78 70 6c 6f 72 65 72 22 } //10 Name "Internet Explorer"
		$a_01_4 = {7b 38 37 31 41 35 34 43 31 2d 31 45 42 33 2d 34 38 62 64 2d 41 38 37 39 2d 35 44 42 41 34 45 46 31 36 42 45 36 7d } //1 {871A54C1-1EB3-48bd-A879-5DBA4EF16BE6}
		$a_01_5 = {62 75 73 68 5f 73 73 65 76 65 6e 74 } //1 bush_ssevent
		$a_01_6 = {6b 6c 69 6e 74 6f 6e 5f 73 73 6d 6d 66 } //1 klinton_ssmmf
		$a_01_7 = {73 61 6c 61 6e 5f 73 73 6d 75 74 61 6e 74 } //1 salan_ssmutant
	condition:
		((#a_01_0  & 1)*10+(#a_01_1  & 1)*10+(#a_01_2  & 1)*10+(#a_01_3  & 1)*10+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1+(#a_01_7  & 1)*1) >=42
 
}