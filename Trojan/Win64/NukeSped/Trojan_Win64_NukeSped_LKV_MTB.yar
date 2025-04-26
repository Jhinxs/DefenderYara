
rule Trojan_Win64_NukeSped_LKV_MTB{
	meta:
		description = "Trojan:Win64/NukeSped.LKV!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 02 00 00 "
		
	strings :
		$a_03_0 = {ff c0 44 89 83 [0-09] 00 00 89 83 ?? ?? 00 00 41 8b c0 41 31 43 ?? 4a 8d 04 1e 48 3d ?? ?? ?? 00 0f 86 } //1
		$a_01_1 = {4c 2b cf 8b 04 0a 48 83 c1 08 49 ff c8 89 41 f4 41 8b 44 09 f8 89 41 f8 75 } //1
	condition:
		((#a_03_0  & 1)*1+(#a_01_1  & 1)*1) >=1
 
}