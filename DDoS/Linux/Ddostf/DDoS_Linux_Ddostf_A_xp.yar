
rule DDoS_Linux_Ddostf_A_xp{
	meta:
		description = "DDoS:Linux/Ddostf.A!xp,SIGNATURE_TYPE_ELFHSTR_EXT,04 00 04 00 04 00 00 "
		
	strings :
		$a_01_0 = {64 64 6f 73 2e 74 66 } //2 ddos.tf
		$a_01_1 = {55 44 50 2d 46 6c 6f 77 } //1 UDP-Flow
		$a_01_2 = {53 59 4e 2d 46 6c 6f 77 } //1 SYN-Flow
		$a_01_3 = {54 43 50 5f 46 6c 6f 6f 64 } //1 TCP_Flood
	condition:
		((#a_01_0  & 1)*2+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1) >=4
 
}