
rule HackTool_Linux_Mirai_a_MTB{
	meta:
		description = "HackTool:Linux/Mirai.a!MTB,SIGNATURE_TYPE_ELFHSTR_EXT,03 00 03 00 09 00 00 "
		
	strings :
		$a_00_0 = {54 43 50 20 73 74 6f 6d 70 20 66 6c 6f 6f 64 } //1 TCP stomp flood
		$a_00_1 = {47 52 45 20 45 74 68 65 72 6e 65 74 20 66 6c 6f 6f 64 } //1 GRE Ethernet flood
		$a_00_2 = {6d 61 69 6e 20 4e 65 77 41 74 74 61 63 6b 20 } //1 main NewAttack 
		$a_00_3 = {43 61 6e 4c 61 75 6e 63 68 41 74 74 61 63 6b } //1 CanLaunchAttack
		$a_00_4 = {44 44 4f 53 20 7c 20 53 75 63 63 65 73 66 75 6c 6c 79 20 68 69 6a 61 63 6b 65 64 20 63 6f 6e 6e 65 63 74 69 6f 6e } //1 DDOS | Succesfully hijacked connection
		$a_00_5 = {44 44 4f 53 20 7c 20 4d 61 73 6b 69 6e 67 20 63 6f 6e 6e 65 63 74 69 6f 6e 20 66 72 6f 6d 20 75 74 6d 70 2b 77 74 6d 70 } //1 DDOS | Masking connection from utmp+wtmp
		$a_02_6 = {6d 69 72 61 69 31 2f [0-15] 2f [0-10] 6d 69 72 61 69 [0-10] 2f [0-10] 2f 63 6e 63 } //2
		$a_00_7 = {43 61 6e 6e 6f 74 20 73 70 65 63 69 66 79 20 6d 6f 72 65 20 74 68 61 6e 20 32 35 35 20 74 61 72 67 65 74 73 20 69 6e 20 61 20 73 69 6e 67 6c 65 20 61 74 74 61 63 6b 21 } //1 Cannot specify more than 255 targets in a single attack!
		$a_00_8 = {72 75 6e 74 69 6d 65 2e 69 6e 6a 65 63 74 67 6c 69 73 74 } //1 runtime.injectglist
	condition:
		((#a_00_0  & 1)*1+(#a_00_1  & 1)*1+(#a_00_2  & 1)*1+(#a_00_3  & 1)*1+(#a_00_4  & 1)*1+(#a_00_5  & 1)*1+(#a_02_6  & 1)*2+(#a_00_7  & 1)*1+(#a_00_8  & 1)*1) >=3
 
}