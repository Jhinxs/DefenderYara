
rule Backdoor_Linux_Gafgyt_AI_MTB{
	meta:
		description = "Backdoor:Linux/Gafgyt.AI!MTB,SIGNATURE_TYPE_ELFHSTR_EXT,05 00 05 00 08 00 00 "
		
	strings :
		$a_00_0 = {53 65 6e 64 48 54 54 50 48 65 78 } //1 SendHTTPHex
		$a_00_1 = {75 64 70 66 6c 30 30 64 } //1 udpfl00d
		$a_00_2 = {4f 56 48 4b 49 4c 4c } //1 OVHKILL
		$a_00_3 = {4e 46 4f 4b 49 4c 4c } //1 NFOKILL
		$a_00_4 = {48 54 54 50 53 54 4f 4d 50 } //1 HTTPSTOMP
		$a_00_5 = {36 34 2e 32 32 35 2e 31 32 35 2e 31 30 35 3a 36 39 36 39 } //2 64.225.125.105:6969
		$a_00_6 = {76 73 65 61 74 74 61 63 6b } //2 vseattack
		$a_00_7 = {53 65 6c 66 20 52 65 70 20 46 75 63 6b 69 6e 67 20 4e 65 54 69 53 20 61 6e 64 20 54 68 69 73 69 74 79 20 30 6e 20 55 72 20 46 75 43 6b 49 6e 47 20 46 6f 52 65 48 65 41 64 20 57 65 20 42 69 47 20 4c 33 33 54 20 48 61 78 45 72 53 } //2 Self Rep Fucking NeTiS and Thisity 0n Ur FuCkInG FoReHeAd We BiG L33T HaxErS
	condition:
		((#a_00_0  & 1)*1+(#a_00_1  & 1)*1+(#a_00_2  & 1)*1+(#a_00_3  & 1)*1+(#a_00_4  & 1)*1+(#a_00_5  & 1)*2+(#a_00_6  & 1)*2+(#a_00_7  & 1)*2) >=5
 
}