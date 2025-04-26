
rule HackTool_Linux_PortScan_A_xp{
	meta:
		description = "HackTool:Linux/PortScan.A!xp,SIGNATURE_TYPE_ELFHSTR_EXT,04 00 04 00 05 00 00 "
		
	strings :
		$a_01_0 = {55 73 61 67 65 3a 20 25 73 20 3c 62 2d 62 6c 6f 63 6b 3e 20 3c 70 6f 72 74 3e 20 5b 63 2d 62 6c 6f 63 6b 5d } //1 Usage: %s <b-block> <port> [c-block]
		$a_01_1 = {25 73 2e 25 64 2e 2a 20 28 54 6f 74 61 6c 75 3a 20 25 64 29 } //1 %s.%d.* (Totalu: %d)
		$a_01_2 = {70 73 63 61 6e 32 2e 63 } //1 pscan2.c
		$a_01_3 = {73 63 61 6e 2e 6c 6f 67 } //1 scan.log
		$a_01_4 = {49 6e 76 61 6c 69 64 20 49 50 } //1 Invalid IP
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1) >=4
 
}