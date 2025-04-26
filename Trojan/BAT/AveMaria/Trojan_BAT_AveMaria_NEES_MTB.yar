
rule Trojan_BAT_AveMaria_NEES_MTB{
	meta:
		description = "Trojan:BAT/AveMaria.NEES!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0c 00 0c 00 02 00 00 "
		
	strings :
		$a_03_0 = {25 16 1f 2d 9d 6f ?? 00 00 0a 0b 07 8e 69 8d ?? 00 00 01 0c 16 13 05 2b 18 00 08 11 05 07 11 05 9a 1f 10 28 ?? 00 00 0a d2 9c 00 11 05 17 58 13 05 11 05 07 8e 69 fe 04 13 06 11 06 2d db 02 } //10
		$a_01_1 = {57 4d 50 4c 69 62 2e 5f 57 4d 50 4f 43 58 45 76 65 6e 74 73 } //2 WMPLib._WMPOCXEvents
	condition:
		((#a_03_0  & 1)*10+(#a_01_1  & 1)*2) >=12
 
}