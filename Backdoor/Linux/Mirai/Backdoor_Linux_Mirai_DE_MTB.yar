
rule Backdoor_Linux_Mirai_DE_MTB{
	meta:
		description = "Backdoor:Linux/Mirai.DE!MTB,SIGNATURE_TYPE_ELFHSTR_EXT,03 00 03 00 03 00 00 "
		
	strings :
		$a_03_0 = {73 68 65 6c 6c 3a 63 64 20 2f 64 61 74 61 2f 6c 6f 63 61 6c 2f 74 6d 70 3b 20 62 75 73 79 62 6f 78 20 77 67 65 74 20 68 74 74 70 3a 2f 2f [0-15] 2f 77 67 65 74 20 2d 4f 20 2d 3e 20 77 77 77 77 } //1
		$a_03_1 = {63 75 72 6c 20 2d 4f 20 68 74 74 70 3a 2f 2f [0-15] 2f 63 75 72 6c 3b 20 73 68 20 63 75 72 6c 3b 20 72 6d 20 77 77 77 77 20 63 75 72 6c } //1
		$a_01_2 = {69 6e 66 65 63 74 65 64 } //1 infected
	condition:
		((#a_03_0  & 1)*1+(#a_03_1  & 1)*1+(#a_01_2  & 1)*1) >=3
 
}