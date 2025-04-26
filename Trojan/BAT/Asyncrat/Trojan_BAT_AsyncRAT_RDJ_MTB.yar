
rule Trojan_BAT_AsyncRAT_RDJ_MTB{
	meta:
		description = "Trojan:BAT/AsyncRAT.RDJ!MTB,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 "
		
	strings :
		$a_01_0 = {30 65 36 37 65 66 66 38 2d 30 63 65 61 2d 34 35 61 66 2d 62 37 38 32 2d 63 34 61 62 65 33 32 63 30 64 35 32 } //1 0e67eff8-0cea-45af-b782-c4abe32c0d52
		$a_01_1 = {53 4f 43 49 41 4c 43 4c 55 42 43 48 45 43 4b 45 52 } //1 SOCIALCLUBCHECKER
		$a_01_2 = {44 67 70 70 6f 74 } //1 Dgppot
		$a_01_3 = {57 65 6b 75 6f 6c 61 78 6f 6e 70 62 6e } //1 Wekuolaxonpbn
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1) >=4
 
}