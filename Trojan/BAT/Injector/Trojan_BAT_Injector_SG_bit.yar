
rule Trojan_BAT_Injector_SG_bit{
	meta:
		description = "Trojan:BAT/Injector.SG!bit,SIGNATURE_TYPE_PEHSTR,04 00 04 00 04 00 00 "
		
	strings :
		$a_01_0 = {46 00 72 00 75 00 69 00 74 00 44 00 65 00 4d 00 65 00 72 00 2e 00 6b 00 65 00 79 00 5f 00 7a 00 65 00 62 00 69 00 2e 00 77 00 62 00 70 00 } //1 FruitDeMer.key_zebi.wbp
		$a_01_1 = {46 00 72 00 75 00 69 00 74 00 44 00 65 00 4d 00 65 00 72 00 2e 00 72 00 65 00 73 00 73 00 6f 00 75 00 72 00 63 00 65 00 5f 00 7a 00 65 00 62 00 69 00 2e 00 77 00 62 00 70 00 } //1 FruitDeMer.ressource_zebi.wbp
		$a_01_2 = {73 6f 72 6d 6f 6d 6f 75 31 } //1 sormomou1
		$a_01_3 = {24 33 63 31 34 62 35 61 34 2d 39 64 34 65 2d 34 33 62 64 2d 38 32 64 61 2d 33 38 31 62 63 37 38 32 61 36 38 61 } //1 $3c14b5a4-9d4e-43bd-82da-381bc782a68a
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1) >=4
 
}