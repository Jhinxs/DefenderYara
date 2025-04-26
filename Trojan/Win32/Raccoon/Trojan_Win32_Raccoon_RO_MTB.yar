
rule Trojan_Win32_Raccoon_RO_MTB{
	meta:
		description = "Trojan:Win32/Raccoon.RO!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_03_0 = {8b 34 af 03 f0 45 53 51 b9 ?? 6f 61 64 [0-06] 8b d9 59 83 c3 01 39 1e 5b 75 ?? 53 60 0a ed 66 83 d8 2a 61 bb 62 72 79 41 83 eb 02 83 c3 01 39 5e 08 5b 75 } //1
	condition:
		((#a_03_0  & 1)*1) >=1
 
}