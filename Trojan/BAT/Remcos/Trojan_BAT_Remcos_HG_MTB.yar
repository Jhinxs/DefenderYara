
rule Trojan_BAT_Remcos_HG_MTB{
	meta:
		description = "Trojan:BAT/Remcos.HG!MTB,SIGNATURE_TYPE_PEHSTR_EXT,07 00 07 00 07 00 00 "
		
	strings :
		$a_81_0 = {45 6d 6c 61 6b 4f 74 6f 6d 61 73 79 6f 6e 75 2e 50 72 6f 70 65 72 74 69 65 73 2e 52 65 73 6f 75 72 63 65 73 } //1 EmlakOtomasyonu.Properties.Resources
		$a_81_1 = {2f 73 74 6e 65 6d 68 63 61 74 74 61 2f 6d 6f 63 2e 70 70 61 64 72 6f 63 73 69 64 2e 6e 64 63 2f 2f 3a 73 70 74 74 68 } //1 /stnemhcatta/moc.ppadrocsid.ndc//:sptth
		$a_81_2 = {44 65 62 75 67 67 61 62 6c 65 41 74 74 72 69 62 75 74 65 } //1 DebuggableAttribute
		$a_81_3 = {44 6f 77 6e 6c 6f 61 64 44 61 74 61 } //1 DownloadData
		$a_81_4 = {47 65 74 4d 65 74 68 6f 64 } //1 GetMethod
		$a_81_5 = {52 65 76 65 72 73 65 } //1 Reverse
		$a_81_6 = {54 6f 53 74 72 69 6e 67 } //1 ToString
	condition:
		((#a_81_0  & 1)*1+(#a_81_1  & 1)*1+(#a_81_2  & 1)*1+(#a_81_3  & 1)*1+(#a_81_4  & 1)*1+(#a_81_5  & 1)*1+(#a_81_6  & 1)*1) >=7
 
}