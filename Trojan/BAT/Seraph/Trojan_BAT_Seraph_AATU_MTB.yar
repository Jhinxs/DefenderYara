
rule Trojan_BAT_Seraph_AATU_MTB{
	meta:
		description = "Trojan:BAT/Seraph.AATU!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 02 00 00 "
		
	strings :
		$a_03_0 = {07 09 16 6f ?? 00 00 0a 13 04 12 04 28 ?? 00 00 0a 13 05 08 11 05 6f ?? 00 00 0a 09 17 58 0d 09 07 6f ?? 00 00 0a 32 d8 08 6f ?? 00 00 0a 13 06 de 0a } //4
		$a_01_1 = {47 65 74 50 69 78 65 6c } //1 GetPixel
	condition:
		((#a_03_0  & 1)*4+(#a_01_1  & 1)*1) >=5
 
}