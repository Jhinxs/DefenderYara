
rule Trojan_Linux_Gafgyt_B_xp{
	meta:
		description = "Trojan:Linux/Gafgyt.B!xp,SIGNATURE_TYPE_ELFHSTR_EXT,03 00 03 00 08 00 00 "
		
	strings :
		$a_00_0 = {6d 61 6b 65 76 73 65 70 61 63 6b 65 74 } //1 makevsepacket
		$a_00_1 = {76 73 65 61 74 74 61 63 6b } //1 vseattack
		$a_00_2 = {31 38 35 2e 31 37 32 2e 31 31 30 2e 32 34 32 3a } //1 185.172.110.242:
		$a_00_3 = {64 69 72 74 79 63 30 77 20 74 61 72 67 65 74 5f 66 69 6c 65 20 6e 65 77 5f 63 6f 6e 74 65 6e 74 } //1 dirtyc0w target_file new_content
		$a_00_4 = {69 6e 66 65 63 74 65 64 20 62 79 20 68 75 62 6e 72 } //1 infected by hubnr
		$a_01_5 = {56 73 45 20 4f 6e 20 55 52 20 46 75 43 6b 4b 4b 6b 4b 6b 4b 69 4e 4e 4e 47 20 46 6f 52 65 41 68 45 41 44 20 4f 4f 4f 6f 6f 50 73 20 49 20 53 70 65 4c 6c 45 64 20 54 68 41 54 20 57 72 4f 6e 47 20 46 75 43 6b 20 4d 45 } //1 VsE On UR FuCkKKkKkKiNNNG FoReAhEAD OOOooPs I SpeLlEd ThAT WrOnG FuCk ME
		$a_01_6 = {54 68 69 53 69 74 59 20 69 53 20 61 20 53 63 61 72 79 20 48 61 78 65 72 20 61 6e 64 20 77 69 6c 6c 20 50 6f 6f 50 20 6f 6e 20 79 6f 75 72 20 68 61 63 6b 65 72 20 62 4f 61 54 6e 45 74 20 73 79 73 74 65 6d 20 52 65 62 4f 4f 74 20 67 6f 20 6b 69 6c 6c 20 79 6f 75 72 73 65 6c 66 } //1 ThiSitY iS a Scary Haxer and will PooP on your hacker bOaTnEt system RebOOt go kill yourself
		$a_00_7 = {63 6e 63 69 6e 70 75 74 } //1 cncinput
	condition:
		((#a_00_0  & 1)*1+(#a_00_1  & 1)*1+(#a_00_2  & 1)*1+(#a_00_3  & 1)*1+(#a_00_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1+(#a_00_7  & 1)*1) >=3
 
}