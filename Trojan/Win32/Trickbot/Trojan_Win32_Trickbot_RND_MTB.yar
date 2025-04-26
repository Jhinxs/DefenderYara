
rule Trojan_Win32_Trickbot_RND_MTB{
	meta:
		description = "Trojan:Win32/Trickbot.RND!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 04 00 00 "
		
	strings :
		$a_02_0 = {30 04 3e 46 3b 74 24 ?? 7c f1 } //1
		$a_02_1 = {c1 e8 10 25 ff 7f 00 00 8b e5 5d 90 0a 30 00 c7 45 ?? 43 94 0e 00 81 45 ?? 7e 0a 18 00 69 0d ?? ?? ?? ?? fd 43 03 00 8b 45 ?? 83 c0 02 03 c1 a3 } //1
		$a_02_2 = {8b 03 8b 4c 24 ?? 03 c6 68 fc 7d 44 00 51 50 e8 ?? ?? ?? ?? 83 c4 0c 50 e8 ?? ?? ?? ?? 3b 44 24 ?? 74 ?? 8b 47 ?? 45 83 c3 04 3b e8 72 } //2
		$a_00_3 = {63 00 75 00 4b 00 75 00 6f 00 69 00 6f 00 6c 00 7a 00 5a 00 6c 00 4f 00 68 00 70 00 67 00 47 00 63 00 64 00 65 00 64 00 } //2 cuKuoiolzZlOhpgGcded
	condition:
		((#a_02_0  & 1)*1+(#a_02_1  & 1)*1+(#a_02_2  & 1)*2+(#a_00_3  & 1)*2) >=2
 
}