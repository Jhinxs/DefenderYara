
rule Trojan_BAT_RedLine_RDI_MTB{
	meta:
		description = "Trojan:BAT/RedLine.RDI!MTB,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 02 00 00 "
		
	strings :
		$a_01_0 = {fe 09 04 00 fe 09 05 00 60 fe 09 04 00 66 fe 09 05 00 66 60 5f fe 0e 00 00 fe 09 03 00 fe 0c 00 00 } //2
		$a_01_1 = {52 33 66 33 72 33 6e 63 33 } //1 R3f3r3nc3
	condition:
		((#a_01_0  & 1)*2+(#a_01_1  & 1)*1) >=3
 
}