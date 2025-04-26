
rule Backdoor_Linux_Gafgyt_H_MTB{
	meta:
		description = "Backdoor:Linux/Gafgyt.H!MTB,SIGNATURE_TYPE_ELFHSTR_EXT,06 00 06 00 08 00 00 "
		
	strings :
		$a_00_0 = {42 30 54 4b 31 4c 4c } //1 B0TK1LL
		$a_00_1 = {42 4c 55 45 4e 55 52 53 45 } //1 BLUENURSE
		$a_00_2 = {55 44 50 2d 53 50 46 } //1 UDP-SPF
		$a_00_3 = {52 41 57 2d 53 59 4e } //1 RAW-SYN
		$a_00_4 = {54 43 50 2d 52 41 57 } //1 TCP-RAW
		$a_00_5 = {4b 4b 76 65 54 54 67 61 41 41 73 65 63 4e 4e 61 61 61 61 } //1 KKveTTgaAAsecNNaaaa
		$a_00_6 = {6b 69 6c 6c 69 6e 67 20 6f 74 68 65 72 20 62 6f 74 3a 20 25 73 20 2d 20 70 69 64 3a 20 25 73 } //1 killing other bot: %s - pid: %s
		$a_00_7 = {55 44 50 2d 43 48 45 43 4b 2d 49 50 50 52 4f 54 4f 5f 55 44 50 } //1 UDP-CHECK-IPPROTO_UDP
	condition:
		((#a_00_0  & 1)*1+(#a_00_1  & 1)*1+(#a_00_2  & 1)*1+(#a_00_3  & 1)*1+(#a_00_4  & 1)*1+(#a_00_5  & 1)*1+(#a_00_6  & 1)*1+(#a_00_7  & 1)*1) >=6
 
}