
rule Trojan_Win32_Portop_A{
	meta:
		description = "Trojan:Win32/Portop.A,SIGNATURE_TYPE_PEHSTR_EXT,08 00 08 00 05 00 00 "
		
	strings :
		$a_01_0 = {69 74 20 69 73 20 68 6f 6c 79 20 73 68 69 74 } //5 it is holy shit
		$a_01_1 = {73 76 68 68 6f 73 74 2e 65 78 65 } //2 svhhost.exe
		$a_01_2 = {73 76 68 6f 73 74 2e 65 78 65 } //2 svhost.exe
		$a_01_3 = {63 6d 64 20 2f 63 20 74 61 73 6b 6b 69 6c 6c 20 2f 66 20 2f 69 6d 20 25 73 20 26 26 20 74 61 73 6b 6b 69 6c 6c 20 2f 66 20 2f 69 6d 20 25 73 } //1 cmd /c taskkill /f /im %s && taskkill /f /im %s
		$a_01_4 = {4d 75 78 3a 20 25 73 20 69 73 20 65 78 69 73 74 69 6e 67 2c 71 75 69 74 20 69 74 21 } //1 Mux: %s is existing,quit it!
	condition:
		((#a_01_0  & 1)*5+(#a_01_1  & 1)*2+(#a_01_2  & 1)*2+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1) >=8
 
}