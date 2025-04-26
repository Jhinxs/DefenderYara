
rule Trojan_Win32_Gatak_DV_dha{
	meta:
		description = "Trojan:Win32/Gatak.DV!dha,SIGNATURE_TYPE_PEHSTR_EXT,64 00 64 00 02 00 00 "
		
	strings :
		$a_00_0 = {8b 45 f8 c1 e8 10 0f b6 c0 3b c6 7c 01 47 8b 45 f8 c1 e8 08 0f b6 c0 3b c6 7c 01 47 } //5
		$a_03_1 = {80 3e 89 59 59 0f 85 ?? ?? ?? ?? 80 7e 01 50 0f 85 ?? ?? ?? ?? 80 7e 02 4e 0f 85 ?? ?? ?? ?? 80 7e 03 47 } //5
	condition:
		((#a_00_0  & 1)*5+(#a_03_1  & 1)*5) >=100
 
}