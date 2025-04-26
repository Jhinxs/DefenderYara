
rule Trojan_WinNT_Mediyes_C{
	meta:
		description = "Trojan:WinNT/Mediyes.C,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 "
		
	strings :
		$a_00_0 = {2b c8 83 e9 05 c6 00 e9 89 48 01 83 c0 05 } //1
		$a_03_1 = {fa 0f 20 c0 89 45 fc ?? 25 ff ff fe ff 0f 22 c0 } //1
		$a_02_2 = {80 38 0e 0f 85 ?? ?? ?? ?? 8b 40 0c c7 43 1c 4c 08 00 00 b9 68 c0 22 00 3b c1 } //1
	condition:
		((#a_00_0  & 1)*1+(#a_03_1  & 1)*1+(#a_02_2  & 1)*1) >=3
 
}