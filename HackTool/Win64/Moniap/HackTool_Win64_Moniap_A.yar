
rule HackTool_Win64_Moniap_A{
	meta:
		description = "HackTool:Win64/Moniap.A,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 05 00 00 "
		
	strings :
		$a_01_0 = {2d 74 73 68 61 63 6b 20 25 64 20 25 73 25 73 } //1 -tshack %d %s%s
		$a_01_1 = {48 55 43 20 50 61 63 6b 65 74 20 26 20 53 6f 63 6b 73 35 20 54 72 61 6e 73 6d 69 74 20 54 6f 6f 6c } //1 HUC Packet & Socks5 Transmit Tool
		$a_01_2 = {54 43 50 20 50 6f 72 74 20 4d 75 6c 74 69 53 63 61 6e 6e 65 72 20 76 } //1 TCP Port MultiScanner v
		$a_01_3 = {52 65 6d 6f 74 65 20 52 65 67 69 73 74 72 79 20 43 6f 6e 66 69 67 75 72 61 74 69 6f 6e } //1 Remote Registry Configuration
		$a_01_4 = {55 73 61 67 65 3a 20 52 65 6d 61 72 6b 73 20 73 74 72 69 6e 67 } //1 Usage: Remarks string
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1) >=5
 
}