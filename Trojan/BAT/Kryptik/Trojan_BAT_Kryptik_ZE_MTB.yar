
rule Trojan_BAT_Kryptik_ZE_MTB{
	meta:
		description = "Trojan:BAT/Kryptik.ZE!MTB,SIGNATURE_TYPE_PEHSTR_EXT,14 00 14 00 02 00 00 "
		
	strings :
		$a_00_0 = {27 09 27 09 11 09 2b 09 2d 09 18 09 20 09 2f 09 0f 09 2b 09 1b 09 18 09 2b 09 2f 09 } //10 धधऑफभघठयएफछघफय
		$a_03_1 = {08 09 9a 13 04 00 11 04 28 [0-09] 75 1a ce 41 59 28 [0-04] b7 13 05 06 11 05 28 [0-09] 26 00 09 17 58 0d 09 08 8e 69 32 c8 } //10
	condition:
		((#a_00_0  & 1)*10+(#a_03_1  & 1)*10) >=20
 
}