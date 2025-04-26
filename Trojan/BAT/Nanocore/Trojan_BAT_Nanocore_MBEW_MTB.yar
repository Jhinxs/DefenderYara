
rule Trojan_BAT_Nanocore_MBEW_MTB{
	meta:
		description = "Trojan:BAT/Nanocore.MBEW!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 "
		
	strings :
		$a_03_0 = {20 b0 08 00 00 13 0b 72 ?? ?? ?? 70 13 06 02 09 02 8e b7 5d 11 04 } //1
		$a_01_1 = {41 00 66 00 79 00 33 00 69 00 4a 00 33 00 68 00 36 00 4d 00 57 00 59 00 58 00 4e 00 } //1 Afy3iJ3h6MWYXN
	condition:
		((#a_03_0  & 1)*1+(#a_01_1  & 1)*1) >=2
 
}