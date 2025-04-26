
rule Trojan_BAT_CrimsonRat_AYN_MTB{
	meta:
		description = "Trojan:BAT/CrimsonRat.AYN!MTB,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 03 00 00 "
		
	strings :
		$a_03_0 = {11 04 11 05 9a 0c 00 08 6f ?? ?? ?? 0a 16 fe 01 13 06 11 06 2d 23 00 06 08 } //2
		$a_01_1 = {47 65 74 44 72 69 76 65 73 } //1 GetDrives
		$a_01_2 = {61 00 72 00 69 00 64 00 73 00 70 00 6c 00 79 00 61 00 72 00 } //1 aridsplyar
	condition:
		((#a_03_0  & 1)*2+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1) >=4
 
}