
rule Trojan_Win32_Elvdeng_C{
	meta:
		description = "Trojan:Win32/Elvdeng.C,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 04 00 00 "
		
	strings :
		$a_03_0 = {68 00 04 00 00 8b d8 ff 15 ?? ?? ?? ?? 6a 00 6a 18 8d 54 24 ?? 52 8b f8 6a 00 57 ff d3 57 ff 15 } //1
		$a_01_1 = {43 3a 5c 50 72 6f 67 72 61 7e 31 5c 6c 76 65 67 6e 65 64 5c 63 6f 6e 66 69 67 2e 69 6e 69 } //1 C:\Progra~1\lvegned\config.ini
		$a_03_2 = {6c 6f 6f 70 75 72 6c 00 90 05 03 01 00 63 6f 6e 66 69 67 00 90 05 03 01 00 73 69 7a 65 00 90 05 03 01 00 48 4f 4f 4b 42 57 } //1
		$a_03_3 = {3a 5c 70 6c 75 67 69 6e 90 0f 01 00 2e 90 10 02 00 5c 72 65 6c 65 61 73 65 5c 65 78 65 74 68 72 65 65 2e 70 64 62 } //1
	condition:
		((#a_03_0  & 1)*1+(#a_01_1  & 1)*1+(#a_03_2  & 1)*1+(#a_03_3  & 1)*1) >=3
 
}