
rule Trojan_BAT_GurcuStealer_AAFT_MTB{
	meta:
		description = "Trojan:BAT/GurcuStealer.AAFT!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 05 00 00 "
		
	strings :
		$a_01_0 = {5f 67 5a 68 44 39 63 41 69 53 42 77 32 70 2e 50 72 6f 70 65 72 74 69 65 73 2e 52 65 73 6f 75 72 63 65 73 2e 72 65 73 6f 75 72 63 65 73 } //1 _gZhD9cAiSBw2p.Properties.Resources.resources
		$a_01_1 = {32 33 34 73 64 66 } //1 234sdf
		$a_01_2 = {34 32 33 73 64 66 71 31 32 31 } //1 423sdfq121
		$a_01_3 = {65 73 72 66 33 77 72 } //1 esrf3wr
		$a_01_4 = {35 32 30 62 38 31 64 34 2d 62 30 33 61 2d 34 62 66 61 2d 61 37 37 66 2d 31 39 35 65 36 36 32 61 32 38 62 36 } //1 520b81d4-b03a-4bfa-a77f-195e662a28b6
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1) >=5
 
}