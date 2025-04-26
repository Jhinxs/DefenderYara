
rule TrojanSpy_Win32_Banker_AAX{
	meta:
		description = "TrojanSpy:Win32/Banker.AAX,SIGNATURE_TYPE_PEHSTR,0d 00 0d 00 05 00 00 "
		
	strings :
		$a_01_0 = {54 65 63 6c 61 64 6f 20 76 69 72 74 75 61 6c 20 64 65 73 61 62 69 6c 69 74 61 64 6f 2c 20 70 6f 72 20 66 61 76 6f 72 20 75 74 69 6c 69 7a 65 20 73 65 75 20 74 65 63 6c 61 64 6f 20 63 6f 6e 76 65 6e 63 69 6f 6e 61 6c } //10 Teclado virtual desabilitado, por favor utilize seu teclado convencional
		$a_01_1 = {42 61 6e 63 6f 20 53 61 6e 74 61 6e 64 65 72 20 45 6d 70 72 65 73 61 72 69 61 6c } //1 Banco Santander Empresarial
		$a_01_2 = {49 6e 74 65 72 6e 65 74 42 61 6e 6b 69 6e 67 } //1 InternetBanking
		$a_01_3 = {69 6e 63 6c 75 64 65 73 2f 6a 73 2f 74 68 65 6d 65 2e 70 68 70 } //1 includes/js/theme.php
		$a_01_4 = {57 53 41 53 65 74 42 6c 6f 63 6b 69 6e 67 48 6f 6f 6b } //1 WSASetBlockingHook
	condition:
		((#a_01_0  & 1)*10+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1) >=13
 
}