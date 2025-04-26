
rule Trojan_BAT_Njrat_MH_MTB{
	meta:
		description = "Trojan:BAT/Njrat.MH!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0c 00 0c 00 03 00 00 "
		
	strings :
		$a_03_0 = {26 00 11 04 17 d6 13 04 11 04 09 8e 69 fe 04 13 06 11 06 2d c9 07 6f ?? ?? ?? 0a 0a 2b 00 06 2a } //10
		$a_01_1 = {48 65 78 44 65 63 72 79 70 74 } //1 HexDecrypt
		$a_01_2 = {37 35 39 30 31 39 31 32 2d 61 39 30 39 2d 34 37 31 36 2d 39 38 35 38 2d 65 62 65 61 39 36 63 63 35 38 39 39 } //1 75901912-a909-4716-9858-ebea96cc5899
	condition:
		((#a_03_0  & 1)*10+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1) >=12
 
}