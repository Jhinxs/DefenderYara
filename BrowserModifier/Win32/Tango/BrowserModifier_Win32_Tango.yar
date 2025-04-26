
rule BrowserModifier_Win32_Tango{
	meta:
		description = "BrowserModifier:Win32/Tango,SIGNATURE_TYPE_PEHSTR,08 00 08 00 08 00 00 "
		
	strings :
		$a_01_0 = {68 74 74 70 3a 2f 2f 61 70 70 73 2e 74 61 6e 67 6f 74 6f 6f 6c 62 61 72 2e 63 6f 6d } //1 http://apps.tangotoolbar.com
		$a_01_1 = {6d 73 68 74 61 2e 65 78 65 20 68 74 74 70 3a 2f 2f 72 65 6d 6f 76 65 2e 67 65 74 74 61 6e 67 6f 2e 63 6f 6d 2f } //1 mshta.exe http://remove.gettango.com/
		$a_01_2 = {68 74 74 70 3a 2f 2f 77 65 62 73 65 61 72 63 68 2e 67 65 74 74 61 6e 67 6f 2e 63 6f 6d 2f 3f } //1 http://websearch.gettango.com/?
		$a_01_3 = {25 73 55 52 4c 3d 25 73 26 54 3d 25 73 26 45 52 52 4f 52 3d 25 64 } //1 %sURL=%s&T=%s&ERROR=%d
		$a_01_4 = {41 62 6f 75 74 20 54 61 6e 67 6f 20 54 6f 6f 6c 62 61 72 } //1 About Tango Toolbar
		$a_01_5 = {68 74 74 70 3a 2f 2f 77 77 77 2e 74 61 6e 67 6f 73 65 61 72 63 68 2e 63 6f 6d 2f } //1 http://www.tangosearch.com/
		$a_01_6 = {68 74 74 70 3a 2f 2f 73 65 61 72 63 68 2e 6c 79 63 6f 73 2e 63 6f 6d 2f 64 65 66 61 75 6c 74 2e 61 73 70 3f 73 72 63 3d 63 6c 65 61 72 } //1 http://search.lycos.com/default.asp?src=clear
		$a_01_7 = {2e 3f 41 56 43 44 69 61 6c 6f 67 41 62 6f 75 74 54 61 6e 67 6f 40 40 } //1 .?AVCDialogAboutTango@@
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1+(#a_01_7  & 1)*1) >=8
 
}