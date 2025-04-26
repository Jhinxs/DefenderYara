
rule Trojan_BAT_Remcos_NWM_MTB{
	meta:
		description = "Trojan:BAT/Remcos.NWM!MTB,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 03 00 00 "
		
	strings :
		$a_03_0 = {06 03 11 06 91 07 11 06 07 8e 69 5d 91 61 08 61 d2 6f ?? ?? ?? 0a 00 00 11 06 17 58 13 06 11 06 03 8e 69 fe 04 13 07 11 07 2d d4 } //2
		$a_01_1 = {44 6f 77 6e 6c 6f 61 64 44 61 74 61 } //1 DownloadData
		$a_01_2 = {53 00 41 00 46 00 41 00 53 00 46 00 41 00 53 00 46 00 53 00 46 00 53 00 41 00 46 00 53 00 46 00 53 00 41 00 } //1 SAFASFASFSFSAFSFSA
	condition:
		((#a_03_0  & 1)*2+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1) >=4
 
}