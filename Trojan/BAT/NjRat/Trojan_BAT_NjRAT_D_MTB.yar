
rule Trojan_BAT_NjRAT_D_MTB{
	meta:
		description = "Trojan:BAT/NjRAT.D!MTB,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 02 00 00 "
		
	strings :
		$a_03_0 = {00 00 04 25 2d 17 26 7e ?? 00 00 04 fe 06 07 00 00 06 73 ?? 00 00 0a 25 80 ?? 00 00 04 28 ?? 00 00 2b 28 ?? 00 00 2b 73 } //2
		$a_01_1 = {2f 00 41 00 70 00 70 00 44 00 61 00 74 00 61 00 2f 00 4c 00 6f 00 63 00 61 00 6c 00 2f 00 54 00 65 00 6d 00 70 00 2f 00 } //2 /AppData/Local/Temp/
	condition:
		((#a_03_0  & 1)*2+(#a_01_1  & 1)*2) >=4
 
}