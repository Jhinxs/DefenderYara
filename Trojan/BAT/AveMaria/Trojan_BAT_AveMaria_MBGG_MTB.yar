
rule Trojan_BAT_AveMaria_MBGG_MTB{
	meta:
		description = "Trojan:BAT/AveMaria.MBGG!MTB,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 "
		
	strings :
		$a_03_0 = {11 0f 11 01 16 73 ?? 00 00 0a 13 0c 20 00 00 00 00 7e ?? 00 00 04 7b ?? 00 00 04 3a ?? 00 00 00 26 20 00 00 00 00 38 ?? 00 00 00 fe 0c 05 00 } //1
		$a_01_1 = {62 2d 38 36 65 31 2d 36 38 33 39 37 34 66 63 63 62 36 31 } //1 b-86e1-683974fccb61
		$a_01_2 = {54 7a 68 61 63 2e 50 72 6f 70 65 72 74 69 65 73 2e 52 65 73 6f 75 72 63 65 73 2e 72 65 73 6f 75 72 63 65 } //1 Tzhac.Properties.Resources.resource
		$a_01_3 = {4f 00 75 00 76 00 78 00 32 00 4d 00 42 00 75 00 77 00 } //1 Ouvx2MBuw
	condition:
		((#a_03_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1) >=4
 
}