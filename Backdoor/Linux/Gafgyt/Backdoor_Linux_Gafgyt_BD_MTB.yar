
rule Backdoor_Linux_Gafgyt_BD_MTB{
	meta:
		description = "Backdoor:Linux/Gafgyt.BD!MTB,SIGNATURE_TYPE_ELFHSTR_EXT,04 00 04 00 04 00 00 "
		
	strings :
		$a_02_0 = {63 68 6d 6f 64 20 37 37 37 20 [0-10] 3b 20 73 68 20 [0-10] 3b 20 74 66 74 70 20 [0-15] 20 2d 63 20 67 65 74 } //1
		$a_01_1 = {6d 69 72 61 69 } //1 mirai
		$a_01_2 = {62 75 73 79 62 6f 78 74 65 72 72 6f 72 69 73 74 } //1 busyboxterrorist
		$a_00_3 = {6e 70 78 58 6f 75 64 69 66 46 65 45 67 47 61 41 43 53 63 73 } //1 npxXoudifFeEgGaACScs
	condition:
		((#a_02_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_00_3  & 1)*1) >=4
 
}