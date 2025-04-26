
rule Trojan_BAT_Remcos_MQ_MTB{
	meta:
		description = "Trojan:BAT/Remcos.MQ!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_01_0 = {61 11 0b 75 42 00 00 1b 11 09 11 0c 58 1f 11 58 11 08 5d 93 61 d1 } //1
	condition:
		((#a_01_0  & 1)*1) >=1
 
}
rule Trojan_BAT_Remcos_MQ_MTB_2{
	meta:
		description = "Trojan:BAT/Remcos.MQ!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0f 00 0f 00 06 00 00 "
		
	strings :
		$a_01_0 = {57 95 02 20 09 02 00 00 00 fa 01 33 00 16 00 00 01 00 00 00 28 00 00 00 07 00 00 00 01 00 00 00 0a } //10
		$a_01_1 = {24 38 39 39 63 32 34 63 34 2d 32 62 36 30 2d 34 61 61 35 2d 38 33 30 39 2d 37 32 62 64 33 64 33 64 31 30 64 33 } //1 $899c24c4-2b60-4aa5-8309-72bd3d3d10d3
		$a_01_2 = {44 6f 77 6e 6c 6f 61 64 44 61 74 61 } //1 DownloadData
		$a_01_3 = {47 65 74 44 6f 6d 61 69 6e } //1 GetDomain
		$a_01_4 = {57 65 62 43 6c 69 65 6e 74 } //1 WebClient
		$a_01_5 = {47 65 74 42 79 74 65 73 } //1 GetBytes
	condition:
		((#a_01_0  & 1)*10+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1) >=15
 
}