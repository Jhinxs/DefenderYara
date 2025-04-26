
rule Trojan_Win32_FoxBlade_C_dha{
	meta:
		description = "Trojan:Win32/FoxBlade.C!dha,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 "
		
	strings :
		$a_02_0 = {20 00 2d 00 61 00 20 00 22 00 ?? ?? 5c 00 72 00 75 00 6e 00 64 00 6c 00 6c 00 33 00 32 00 2e 00 65 00 78 00 65 00 } //1
		$a_00_1 = {57 69 7a 61 72 64 2e 64 6c 6c } //1 Wizard.dll
		$a_01_2 = {8d 4e fc 8b 01 33 c2 8b 11 4f 89 06 8d 31 85 ff 7f ee 8b 13 81 32 } //1
	condition:
		((#a_02_0  & 1)*1+(#a_00_1  & 1)*1+(#a_01_2  & 1)*1) >=3
 
}