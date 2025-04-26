
rule Trojan_Win32_Disabler_EH_MTB{
	meta:
		description = "Trojan:Win32/Disabler.EH!MTB,SIGNATURE_TYPE_PEHSTR_EXT,07 00 07 00 07 00 00 "
		
	strings :
		$a_01_0 = {43 3a 5c 54 45 4d 50 5c 38 47 31 31 44 56 47 41 2e 63 6d 64 } //1 C:\TEMP\8G11DVGA.cmd
		$a_01_1 = {69 6c 6c 20 2f 66 20 2f 69 6d 20 22 41 47 4d 53 65 72 76 69 63 65 2e 65 78 65 } //1 ill /f /im "AGMService.exe
		$a_01_2 = {74 61 73 6b 6b 69 6c 6c 20 2f 66 } //1 taskkill /f
		$a_01_3 = {46 69 6e 64 52 65 73 6f 75 72 63 65 57 } //1 FindResourceW
		$a_01_4 = {44 65 6c 65 74 65 46 69 6c 65 57 } //1 DeleteFileW
		$a_01_5 = {43 72 65 61 74 65 50 72 6f 63 65 73 73 57 } //1 CreateProcessW
		$a_01_6 = {43 72 65 61 74 65 46 69 6c 65 57 } //1 CreateFileW
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1) >=7
 
}