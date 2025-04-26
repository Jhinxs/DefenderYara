
rule Backdoor_Linux_Gafgyt_bw_MTB{
	meta:
		description = "Backdoor:Linux/Gafgyt.bw!MTB,SIGNATURE_TYPE_ELFHSTR_EXT,06 00 06 00 06 00 00 "
		
	strings :
		$a_00_0 = {6b 69 6c 6c 65 64 20 70 72 6f 63 65 73 73 20 69 64 } //1 killed process id
		$a_00_1 = {69 6e 66 65 63 74 65 64 2e 74 78 74 } //1 infected.txt
		$a_00_2 = {43 6f 6e 6e 65 63 74 69 6f 6e 20 54 6f 20 54 68 65 20 43 4e 43 20 57 61 73 20 53 75 63 63 65 73 73 66 75 6c } //1 Connection To The CNC Was Successful
		$a_00_3 = {42 4f 54 4b 49 4c 4c } //1 BOTKILL
		$a_00_4 = {6e 70 78 58 6f 75 64 69 66 46 65 45 67 47 61 41 43 53 63 73 } //1 npxXoudifFeEgGaACScs
		$a_00_5 = {49 6e 66 65 63 74 65 64 20 42 79 20 41 6b 75 72 79 6f 20 42 6f 74 6e 65 74 20 4d 61 64 65 20 42 79 20 75 72 30 61 } //1 Infected By Akuryo Botnet Made By ur0a
	condition:
		((#a_00_0  & 1)*1+(#a_00_1  & 1)*1+(#a_00_2  & 1)*1+(#a_00_3  & 1)*1+(#a_00_4  & 1)*1+(#a_00_5  & 1)*1) >=6
 
}