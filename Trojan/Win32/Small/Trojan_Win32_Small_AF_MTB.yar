
rule Trojan_Win32_Small_AF_MTB{
	meta:
		description = "Trojan:Win32/Small.AF!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 05 00 00 "
		
	strings :
		$a_01_0 = {43 3a 2f 55 73 65 72 73 2f 50 75 62 6c 69 63 2f 44 6f 63 75 6d 65 6e 74 73 2f 6b 34 2e 65 78 65 } //1 C:/Users/Public/Documents/k4.exe
		$a_01_1 = {43 3a 5c 55 73 65 72 73 5c 50 75 62 6c 69 63 5c 44 6f 63 75 6d 65 6e 74 73 5c 54 41 53 4c 6f 67 69 6e 42 61 73 65 2e 64 6c 6c } //1 C:\Users\Public\Documents\TASLoginBase.dll
		$a_01_2 = {30 75 73 65 72 2e 65 78 65 } //1 0user.exe
		$a_01_3 = {63 6d 64 2e 65 78 65 20 2f 63 20 74 61 73 6b 6b 69 6c 6c 20 2f 66 20 2f 74 20 2f 69 6d 20 6b 34 2e 65 78 65 } //1 cmd.exe /c taskkill /f /t /im k4.exe
		$a_01_4 = {32 30 32 32 30 36 30 31 32 35 2e 76 62 65 } //1 2022060125.vbe
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1) >=5
 
}