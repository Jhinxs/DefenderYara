
rule Trojan_Win32_Ursnif_DJ_MTB{
	meta:
		description = "Trojan:Win32/Ursnif.DJ!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 05 00 00 "
		
	strings :
		$a_01_0 = {43 54 24 79 68 72 74 67 66 64 72 34 68 65 72 79 } //1 CT$yhrtgfdr4hery
		$a_01_1 = {79 50 74 6e 48 4d 67 2e 70 64 62 } //1 yPtnHMg.pdb
		$a_81_2 = {79 69 73 67 6c 61 6e 64 2e 6d } //1 yisgland.m
		$a_81_3 = {43 61 74 74 6c 65 63 6c 65 73 73 65 72 71 6d 65 51 } //1 CattleclesserqmeQ
		$a_81_4 = {67 69 76 65 6c 65 74 64 6f 6e 2e 74 74 77 6f 2e 70 } //1 giveletdon.ttwo.p
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_81_2  & 1)*1+(#a_81_3  & 1)*1+(#a_81_4  & 1)*1) >=5
 
}