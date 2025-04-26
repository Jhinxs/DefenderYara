
rule Trojan_Linux_Silex_A_MTB{
	meta:
		description = "Trojan:Linux/Silex.A!MTB,SIGNATURE_TYPE_ELFHSTR_EXT,05 00 05 00 04 00 00 "
		
	strings :
		$a_00_0 = {68 74 74 70 3a 2f 2f 31 38 35 2e 31 36 32 2e 32 33 35 2e 35 36 2f 62 72 69 63 6b 65 72 2e 73 68 3b 20 73 68 20 62 72 69 63 6b 65 72 2e 73 68 } //2 http://185.162.235.56/bricker.sh; sh bricker.sh
		$a_00_1 = {69 6c 6c 65 64 20 62 6f 74 20 70 72 6f 63 65 73 73 } //1 illed bot process
		$a_00_2 = {5b 73 69 6c 65 78 62 6f 74 5d 20 69 20 61 6d 20 6f 6e 6c 79 20 68 65 72 65 20 74 6f 20 70 72 65 76 65 6e 74 20 73 6b 69 64 73 20 74 6f 20 66 6c 65 78 20 74 68 65 69 72 20 73 6b 69 64 64 65 64 20 62 6f 74 6e 65 74 } //1 [silexbot] i am only here to prevent skids to flex their skidded botnet
		$a_00_3 = {70 65 6f 70 6c 65 20 73 65 6c 6c 69 6e 67 20 73 70 6f 74 73 20 6f 6e 20 62 6f 74 6e 65 74 73 } //1 people selling spots on botnets
	condition:
		((#a_00_0  & 1)*2+(#a_00_1  & 1)*1+(#a_00_2  & 1)*1+(#a_00_3  & 1)*1) >=5
 
}