
rule BrowserModifier_Win32_IEFeats{
	meta:
		description = "BrowserModifier:Win32/IEFeats,SIGNATURE_TYPE_PEHSTR_EXT,0a 00 07 00 07 00 00 "
		
	strings :
		$a_00_0 = {53 6f 66 74 77 61 72 65 5c 4d 69 63 72 6f 73 6f 66 74 5c 49 6e 74 65 72 6e 65 74 20 45 78 70 6c 6f 72 65 72 5c 4d 61 69 6e } //1 Software\Microsoft\Internet Explorer\Main
		$a_00_1 = {53 74 61 72 74 20 50 61 67 65 } //1 Start Page
		$a_01_2 = {44 65 66 61 75 6c 74 5f 50 61 67 65 5f 55 52 4c } //1 Default_Page_URL
		$a_01_3 = {55 73 65 20 53 65 61 72 63 68 20 41 73 73 74 } //1 Use Search Asst
		$a_01_4 = {49 6e 74 65 72 6e 65 74 4f 70 65 6e 55 72 6c 41 } //1 InternetOpenUrlA
		$a_01_5 = {41 74 6c 41 78 57 69 6e 46 65 61 74 4d 6f 64 69 66 69 65 64 } //3 AtlAxWinFeatModified
		$a_01_6 = {68 74 74 70 3a 2f 2f 6c 6f 6f 6b 69 6e 67 2d 66 6f 72 2e 63 63 } //2 http://looking-for.cc
	condition:
		((#a_00_0  & 1)*1+(#a_00_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*3+(#a_01_6  & 1)*2) >=7
 
}
rule BrowserModifier_Win32_IEFeats_2{
	meta:
		description = "BrowserModifier:Win32/IEFeats,SIGNATURE_TYPE_PEHSTR_EXT,18 00 16 00 06 00 00 "
		
	strings :
		$a_02_0 = {68 74 74 70 3a 2f 2f 61 64 [30-39] [30-39] 2e 63 6f 6d 2f 61 64 2e 70 68 70 } //10
		$a_00_1 = {68 74 74 70 3a 2f 2f 77 69 6e 73 68 6f 77 2e 62 69 7a 2f 66 65 61 74 2f } //10 http://winshow.biz/feat/
		$a_00_2 = {7b 35 38 37 44 42 46 32 44 2d 39 31 34 35 2d 34 63 39 65 2d 39 32 43 32 2d 31 46 39 35 33 44 41 37 33 37 37 33 7d } //1 {587DBF2D-9145-4c9e-92C2-1F953DA73773}
		$a_00_3 = {67 00 6f 00 2d 00 61 00 64 00 76 00 65 00 72 00 74 00 69 00 73 00 69 00 6e 00 67 00 2e 00 63 00 6f 00 6d 00 } //1 go-advertising.com
		$a_00_4 = {5b 66 6f 72 62 69 64 64 65 6e 5d 00 5b 6b 65 79 77 6f 72 64 73 5d } //1 晛牯楢摤湥]歛祥潷摲嵳
		$a_00_5 = {69 65 66 65 61 74 73 6c 2e 64 6c 6c } //1 iefeatsl.dll
	condition:
		((#a_02_0  & 1)*10+(#a_00_1  & 1)*10+(#a_00_2  & 1)*1+(#a_00_3  & 1)*1+(#a_00_4  & 1)*1+(#a_00_5  & 1)*1) >=22
 
}
rule BrowserModifier_Win32_IEFeats_3{
	meta:
		description = "BrowserModifier:Win32/IEFeats,SIGNATURE_TYPE_PEHSTR_EXT,2e 00 2d 00 09 00 00 "
		
	strings :
		$a_01_0 = {7b 35 38 37 44 42 46 32 44 2d 39 31 34 35 2d 34 63 39 65 2d 39 32 43 32 2d 31 46 39 35 33 44 41 37 33 37 37 33 7d } //10 {587DBF2D-9145-4c9e-92C2-1F953DA73773}
		$a_00_1 = {53 6f 66 74 77 61 72 65 5c 4d 69 63 72 6f 73 6f 66 74 5c 49 6e 74 65 72 6e 65 74 20 45 78 70 6c 6f 72 65 72 5c 4d 61 69 6e } //10 Software\Microsoft\Internet Explorer\Main
		$a_00_2 = {53 74 61 72 74 20 50 61 67 65 } //10 Start Page
		$a_01_3 = {44 65 66 61 75 6c 74 5f 50 61 67 65 5f 55 52 4c } //5 Default_Page_URL
		$a_01_4 = {55 73 65 20 53 65 61 72 63 68 20 41 73 73 74 } //5 Use Search Asst
		$a_01_5 = {68 74 74 70 3a 2f 2f 6c 6f 6f 6b 66 6f 72 2e 63 63 3f 70 69 6e 3d 25 30 35 64 } //1 http://lookfor.cc?pin=%05d
		$a_01_6 = {68 74 74 70 3a 2f 2f 6c 6f 6f 6b 66 6f 72 2e 63 63 2f 73 70 2e 70 68 70 3f 70 69 6e 3d 25 30 35 64 } //1 http://lookfor.cc/sp.php?pin=%05d
		$a_01_7 = {68 74 74 70 3a 2f 2f 69 65 66 65 61 64 73 6c 2e 63 6f 6d 2f 66 65 61 74 2f } //1 http://iefeadsl.com/feat/
		$a_01_8 = {49 6e 74 65 72 6e 65 74 4f 70 65 6e 55 72 6c 41 } //5 InternetOpenUrlA
	condition:
		((#a_01_0  & 1)*10+(#a_00_1  & 1)*10+(#a_00_2  & 1)*10+(#a_01_3  & 1)*5+(#a_01_4  & 1)*5+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1+(#a_01_7  & 1)*1+(#a_01_8  & 1)*5) >=45
 
}