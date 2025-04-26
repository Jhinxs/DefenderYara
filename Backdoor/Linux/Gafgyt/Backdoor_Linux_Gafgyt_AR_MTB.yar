
rule Backdoor_Linux_Gafgyt_AR_MTB{
	meta:
		description = "Backdoor:Linux/Gafgyt.AR!MTB,SIGNATURE_TYPE_ELFHSTR_EXT,05 00 05 00 05 00 00 "
		
	strings :
		$a_02_0 = {48 54 54 50 [0-04] 46 6c 6f 6f 64 69 6e 67 } //1
		$a_00_1 = {4b 49 4c 4c 41 54 54 4b } //1 KILLATTK
		$a_00_2 = {4c 4f 4c 4e 4f 47 54 46 4f } //1 LOLNOGTFO
		$a_00_3 = {6e 70 78 58 6f 75 64 69 66 46 65 45 67 47 61 41 43 53 63 73 } //1 npxXoudifFeEgGaACScs
		$a_00_4 = {31 38 35 2e 32 34 34 2e 32 35 2e 31 35 35 3a 34 34 33 } //1 185.244.25.155:443
	condition:
		((#a_02_0  & 1)*1+(#a_00_1  & 1)*1+(#a_00_2  & 1)*1+(#a_00_3  & 1)*1+(#a_00_4  & 1)*1) >=5
 
}