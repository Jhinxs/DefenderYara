
rule Backdoor_Linux_Gafgyt_BK_xp{
	meta:
		description = "Backdoor:Linux/Gafgyt.BK!xp,SIGNATURE_TYPE_ELFHSTR_EXT,05 00 05 00 04 00 00 "
		
	strings :
		$a_01_0 = {62 75 6d 62 6f 78 } //2 bumbox
		$a_01_1 = {44 44 4f 53 4a 55 4e 4b 46 4c 4f 4f 44 } //1 DDOSJUNKFLOOD
		$a_01_2 = {6e 70 78 58 64 69 66 46 65 45 67 47 61 } //1 npxXdifFeEgGa
		$a_01_3 = {4b 49 4c 4c 41 54 } //2 KILLAT
	condition:
		((#a_01_0  & 1)*2+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*2) >=5
 
}