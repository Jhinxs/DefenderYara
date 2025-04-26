
rule Trojan_Win32_Raccoon_MD_MTB{
	meta:
		description = "Trojan:Win32/Raccoon.MD!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0a 00 0a 00 02 00 00 "
		
	strings :
		$a_00_0 = {8b 44 24 10 3d a1 06 00 00 74 12 40 3d 86 76 13 01 89 44 24 10 0f 8c f8 fe ff ff eb 0c } //5
		$a_02_1 = {8d 44 24 20 50 6a 00 ff d6 6a 00 8d 8c 24 ?? ?? ?? ?? 51 ff d7 8d 54 24 24 52 ff d3 6a 00 ff d5 } //5
	condition:
		((#a_00_0  & 1)*5+(#a_02_1  & 1)*5) >=10
 
}