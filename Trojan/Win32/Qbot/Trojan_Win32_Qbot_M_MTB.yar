
rule Trojan_Win32_Qbot_M_MTB{
	meta:
		description = "Trojan:Win32/Qbot.M!MTB,SIGNATURE_TYPE_PEHSTR_EXT,18 00 18 00 08 00 00 "
		
	strings :
		$a_81_0 = {49 6e 71 75 69 72 65 53 6f 61 70 } //3 InquireSoap
		$a_81_1 = {69 6e 71 75 69 72 65 5f 76 31 } //3 inquire_v1
		$a_81_2 = {41 63 74 69 76 65 53 63 72 69 70 74 } //3 ActiveScript
		$a_81_3 = {47 65 74 41 63 63 65 70 74 45 78 53 6f 63 6b 61 64 64 72 73 } //3 GetAcceptExSockaddrs
		$a_81_4 = {54 53 4f 41 50 41 74 74 61 63 68 6d 65 6e 74 } //3 TSOAPAttachment
		$a_81_5 = {47 53 4f 41 50 44 6f 6d 43 6f 6e 76 } //3 GSOAPDomConv
		$a_81_6 = {7a 57 65 62 53 65 72 76 45 78 70 } //3 zWebServExp
		$a_00_7 = {86 c0 7c 50 b3 ca 6b 41 a5 c1 7a 65 } //3
	condition:
		((#a_81_0  & 1)*3+(#a_81_1  & 1)*3+(#a_81_2  & 1)*3+(#a_81_3  & 1)*3+(#a_81_4  & 1)*3+(#a_81_5  & 1)*3+(#a_81_6  & 1)*3+(#a_00_7  & 1)*3) >=24
 
}