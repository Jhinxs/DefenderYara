
rule DDoS_Linux_Flooder_A_MTB{
	meta:
		description = "DDoS:Linux/Flooder.A!MTB,SIGNATURE_TYPE_ELFHSTR_EXT,05 00 05 00 07 00 00 "
		
	strings :
		$a_00_0 = {70 79 74 68 6f 6e 20 64 64 6f 73 2e 70 79 20 2d 75 20 3c 69 70 3e 20 3c 70 6f 72 74 3e } //1 python ddos.py -u <ip> <port>
		$a_00_1 = {63 62 5f 75 64 70 5f 64 64 6f 73 5f 73 63 72 69 70 74 } //1 cb_udp_ddos_script
		$a_00_2 = {52 75 6e 20 55 44 50 20 42 61 73 69 63 20 41 74 74 61 63 6b } //1 Run UDP Basic Attack
		$a_00_3 = {66 6c 6f 6f 64 5f 64 6e 73 } //1 flood_dns
		$a_00_4 = {63 62 5f 63 68 61 72 67 65 6e 5f 64 64 6f 73 } //1 cb_chargen_ddos
		$a_00_5 = {74 68 72 65 61 64 5f 61 74 74 61 63 6b } //1 thread_attack
		$a_00_6 = {66 6c 6f 6f 64 5f 76 73 65 } //1 flood_vse
	condition:
		((#a_00_0  & 1)*1+(#a_00_1  & 1)*1+(#a_00_2  & 1)*1+(#a_00_3  & 1)*1+(#a_00_4  & 1)*1+(#a_00_5  & 1)*1+(#a_00_6  & 1)*1) >=5
 
}