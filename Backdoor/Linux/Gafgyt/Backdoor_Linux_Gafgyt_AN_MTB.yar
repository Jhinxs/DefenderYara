
rule Backdoor_Linux_Gafgyt_AN_MTB{
	meta:
		description = "Backdoor:Linux/Gafgyt.AN!MTB,SIGNATURE_TYPE_ELFHSTR_EXT,04 00 04 00 04 00 00 "
		
	strings :
		$a_00_0 = {24 55 49 43 49 44 45 42 4f 59 24 } //1 $UICIDEBOY$
		$a_00_1 = {6e 70 78 58 6f 75 64 69 66 46 65 45 67 47 61 41 43 53 63 73 } //1 npxXoudifFeEgGaACScs
		$a_00_2 = {2e 62 6f 74 6b 69 6c 6c } //1 .botkill
		$a_00_3 = {6b 69 6c 6c 65 64 20 70 69 64 3a } //1 killed pid:
	condition:
		((#a_00_0  & 1)*1+(#a_00_1  & 1)*1+(#a_00_2  & 1)*1+(#a_00_3  & 1)*1) >=4
 
}