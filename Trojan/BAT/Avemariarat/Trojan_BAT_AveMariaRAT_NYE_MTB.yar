
rule Trojan_BAT_AveMariaRAT_NYE_MTB{
	meta:
		description = "Trojan:BAT/AveMariaRAT.NYE!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 05 00 00 "
		
	strings :
		$a_01_0 = {72 00 65 00 73 00 00 09 6f 00 75 00 72 00 63 00 00 05 65 00 73 } //1
		$a_01_1 = {47 00 47 00 4d 00 47 00 47 00 65 00 47 00 47 00 47 00 74 00 47 00 47 00 47 00 68 00 47 00 6f 00 47 00 47 00 47 00 47 00 64 00 47 00 30 00 47 00 47 00 } //1 GGMGGeGGGtGGGhGoGGGGdG0GG
		$a_01_2 = {43 00 6f 00 43 00 41 00 63 00 } //1 CoCAc
		$a_01_3 = {4b 00 41 00 4e 00 46 00 4b 00 41 00 4a 00 63 00 6d 00 6c 00 6e 00 6b 00 } //1 KANFKAJcmlnk
		$a_01_4 = {47 00 65 00 74 00 4d 00 61 00 6e 00 69 00 66 00 65 00 73 00 74 00 52 00 65 00 73 00 6f 00 75 00 72 00 63 00 65 00 4e 00 61 00 6d 00 65 00 73 00 } //1 GetManifestResourceNames
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1) >=5
 
}