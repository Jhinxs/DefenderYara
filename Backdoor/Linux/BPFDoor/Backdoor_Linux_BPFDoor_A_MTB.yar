
rule Backdoor_Linux_BPFDoor_A_MTB{
	meta:
		description = "Backdoor:Linux/BPFDoor.A!MTB,SIGNATURE_TYPE_ELFHSTR_EXT,06 00 06 00 03 00 00 "
		
	strings :
		$a_03_0 = {48 98 48 8d 50 0e 48 8d 85 ?? fd ff ff 48 01 d0 48 89 45 ?? 48 8b 45 ?? 0f b6 40 0c c0 e8 04 0f b6 c0 c1 e0 02 89 45 ?? 8b 45 ?? 48 63 d0 8b 45 ?? 48 98 [0-05] 48 8d 50 ?? 48 8d 85 ?? fd ff ff } //2
		$a_03_1 = {48 83 c0 14 48 89 45 ?? 48 8b 45 ?? 48 83 c0 08 48 89 45 ?? eb ?? 48 8b 45 ?? 48 83 c0 14 48 89 45 ?? 48 8b 45 ?? 48 83 c0 08 48 89 45 } //2
		$a_03_2 = {55 48 89 e5 48 83 ec 30 48 89 7d d8 48 c7 45 e0 3c 08 0a 49 48 c7 45 e8 00 00 00 00 48 c7 45 f0 3c 08 0a 49 48 c7 45 f8 00 00 00 00 48 8d ?? e0 48 8b ?? d8 } //2
	condition:
		((#a_03_0  & 1)*2+(#a_03_1  & 1)*2+(#a_03_2  & 1)*2) >=6
 
}