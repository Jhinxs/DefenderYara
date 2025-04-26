
rule Trojan_Linux_SAgnt_B_xp{
	meta:
		description = "Trojan:Linux/SAgnt.B!xp,SIGNATURE_TYPE_ELFHSTR_EXT,04 00 04 00 09 00 00 "
		
	strings :
		$a_01_0 = {73 79 73 43 6d 64 43 6c 69 65 6e 74 49 6e 69 74 } //1 sysCmdClientInit
		$a_01_1 = {73 65 6e 64 53 79 73 43 6d 64 52 65 71 } //1 sendSysCmdReq
		$a_01_2 = {43 72 65 61 74 65 4e 74 70 50 61 63 6b 65 74 } //1 CreateNtpPacket
		$a_01_3 = {6e 65 74 50 6f 72 74 44 65 74 65 63 74 2e 63 } //1 netPortDetect.c
		$a_01_4 = {63 72 65 61 74 65 5f 64 65 74 65 63 74 5f 64 61 65 6d 6f 6e } //1 create_detect_daemon
		$a_01_5 = {52 65 71 75 65 73 74 20 63 6d 64 20 69 73 20 75 64 70 } //1 Request cmd is udp
		$a_01_6 = {62 65 67 61 69 6e 20 46 69 6c 74 65 72 69 6e 67 } //1 begain Filtering
		$a_01_7 = {62 65 67 61 69 6e 20 53 65 6e 64 69 6e 67 44 61 74 61 } //1 begain SendingData
		$a_01_8 = {52 65 71 75 65 73 74 20 63 6d 64 20 69 73 20 63 6f 6e 6e 65 63 74 } //1 Request cmd is connect
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1+(#a_01_7  & 1)*1+(#a_01_8  & 1)*1) >=4
 
}