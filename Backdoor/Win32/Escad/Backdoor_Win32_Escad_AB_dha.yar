
rule Backdoor_Win32_Escad_AB_dha{
	meta:
		description = "Backdoor:Win32/Escad.AB!dha,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 04 00 00 "
		
	strings :
		$a_01_0 = {25 00 73 00 5c 00 69 00 69 00 73 00 73 00 76 00 72 00 2e 00 65 00 78 00 65 00 00 00 } //1
		$a_01_1 = {63 6d 64 2e 65 78 65 20 2f 63 20 6e 65 74 20 73 74 6f 70 20 4d 53 45 78 63 68 61 6e 67 65 49 53 20 2f 79 } //1 cmd.exe /c net stop MSExchangeIS /y
		$a_01_2 = {45 6c 52 61 77 44 69 73 6b 5c 3f 3f 5c } //1 ElRawDisk\??\
		$a_01_3 = {63 6d 64 2e 65 78 65 20 2f 63 20 6e 65 74 20 73 74 6f 70 20 74 65 72 6d 73 65 72 76 69 63 65 20 2f 79 } //1 cmd.exe /c net stop termservice /y
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1) >=3
 
}