
rule Backdoor_Linux_Gafgyt_R_MTB{
	meta:
		description = "Backdoor:Linux/Gafgyt.R!MTB,SIGNATURE_TYPE_ELFHSTR_EXT,08 00 08 00 05 00 00 "
		
	strings :
		$a_01_0 = {42 4f 54 4b 49 4c 4c } //5 BOTKILL
		$a_01_1 = {68 6c 4c 6a 7a 74 71 5a } //1 hlLjztqZ
		$a_01_2 = {2f 70 72 6f 63 2f 25 64 2f 65 78 65 } //1 /proc/%d/exe
		$a_01_3 = {43 68 31 6e 67 43 68 30 6e 67 } //1 Ch1ngCh0ng
		$a_01_4 = {6b 69 6c 6c 65 64 20 70 72 6f 63 65 73 73 } //1 killed process
	condition:
		((#a_01_0  & 1)*5+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1) >=8
 
}