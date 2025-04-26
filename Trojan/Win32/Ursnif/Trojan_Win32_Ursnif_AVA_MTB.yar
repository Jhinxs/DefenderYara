
rule Trojan_Win32_Ursnif_AVA_MTB{
	meta:
		description = "Trojan:Win32/Ursnif.AVA!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 "
		
	strings :
		$a_00_0 = {8b c3 0f b7 f3 2b 44 24 18 81 c1 8c cb c5 01 83 e8 } //1
		$a_02_1 = {83 c5 04 03 05 ?? ?? ?? ?? 03 d8 6a 08 5a 81 fd 86 23 00 00 0f 82 } //1
	condition:
		((#a_00_0  & 1)*1+(#a_02_1  & 1)*1) >=2
 
}