
rule DDoS_Linux_DnsAmp_A_xp{
	meta:
		description = "DDoS:Linux/DnsAmp.A!xp,SIGNATURE_TYPE_ELFHSTR_EXT,06 00 06 00 05 00 00 "
		
	strings :
		$a_01_0 = {74 63 70 20 73 74 6f 70 } //2 tcp stop
		$a_01_1 = {44 4e 53 5f 46 4c 4f 4f 44 } //2 DNS_FLOOD
		$a_01_2 = {52 45 4e 54 5f 46 4c 4f 4f 44 } //1 RENT_FLOOD
		$a_01_3 = {54 43 50 31 5f 46 4c 4f 4f 44 } //1 TCP1_FLOOD
		$a_01_4 = {64 6e 73 5f 73 65 72 76 65 72 5f 63 6f 75 6e 74 } //1 dns_server_count
	condition:
		((#a_01_0  & 1)*2+(#a_01_1  & 1)*2+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1) >=6
 
}