
rule Backdoor_Linux_Mirai_BB_xp{
	meta:
		description = "Backdoor:Linux/Mirai.BB!xp,SIGNATURE_TYPE_ELFHSTR_EXT,06 00 06 00 03 00 00 "
		
	strings :
		$a_01_0 = {2f 62 69 6e 2f 62 75 73 79 62 6f 78 } //2 /bin/busybox
		$a_01_1 = {73 68 2f 76 61 72 2f 66 6b 72 61 } //2 sh/var/fkra
		$a_03_2 = {77 67 65 74 2b 68 74 74 70 3a 2f 2f [0-28] 74 6d 70 2f 67 61 66 } //2
	condition:
		((#a_01_0  & 1)*2+(#a_01_1  & 1)*2+(#a_03_2  & 1)*2) >=6
 
}