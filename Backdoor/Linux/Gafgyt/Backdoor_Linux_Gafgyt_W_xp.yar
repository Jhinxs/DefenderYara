
rule Backdoor_Linux_Gafgyt_W_xp{
	meta:
		description = "Backdoor:Linux/Gafgyt.W!xp,SIGNATURE_TYPE_ELFHSTR_EXT,02 00 02 00 05 00 00 "
		
	strings :
		$a_00_0 = {53 43 41 4e 4e 45 52 20 53 54 4f 50 50 45 44 } //1 SCANNER STOPPED
		$a_00_1 = {4b 49 4c 4c 41 54 54 4b } //1 KILLATTK
		$a_02_2 = {66 74 70 67 65 74 20 2d 76 20 2d 75 20 61 6e 6f 6e 79 6d 6f 75 73 20 2d 70 20 61 6e 6f 6e 79 6d 6f 75 73 20 2d 50 20 32 31 20 [0-15] 20 66 74 70 31 2e 73 68 20 66 74 70 31 2e 73 68 } //1
		$a_02_3 = {8b 4d fc 8b 45 fc 83 e8 03 8b 14 85 ?? ?? ?? ?? 8b 45 fc 83 e8 02 8b 04 85 ?? ?? ?? ?? 31 c2 8b 45 fc 31 d0 35 b9 79 37 9e 89 04 8d 80 43 05 08 ff 45 fc } //1
		$a_00_4 = {55 89 e5 83 ec 10 8b 45 08 a3 80 43 05 08 8b 45 08 2d 47 86 c8 61 a3 84 43 05 08 8b 45 08 05 72 f3 6e 3c a3 88 43 05 08 c7 45 fc 03 00 00 00 eb 33 } //1
	condition:
		((#a_00_0  & 1)*1+(#a_00_1  & 1)*1+(#a_02_2  & 1)*1+(#a_02_3  & 1)*1+(#a_00_4  & 1)*1) >=2
 
}