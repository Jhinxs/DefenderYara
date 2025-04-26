
rule Trojan_Win32_Qakbot_NC_MTB{
	meta:
		description = "Trojan:Win32/Qakbot.NC!MTB,SIGNATURE_TYPE_PEHSTR_EXT,21 00 21 00 0b 00 00 "
		
	strings :
		$a_81_0 = {78 65 72 63 65 73 78 6d 6c 64 6f 6d 2e 64 6c 6c } //3 xercesxmldom.dll
		$a_81_1 = {57 53 44 4c 50 75 62 } //3 WSDLPub
		$a_81_2 = {49 6e 71 75 69 72 65 53 6f 61 70 } //3 InquireSoap
		$a_81_3 = {69 6e 71 75 69 72 65 5f 76 31 } //3 inquire_v1
		$a_81_4 = {47 65 74 4c 6f 6e 67 50 61 74 68 4e 61 6d 65 41 } //3 GetLongPathNameA
		$a_81_5 = {69 6f 63 74 6c 73 6f 63 6b 65 74 } //3 ioctlsocket
		$a_81_6 = {67 65 74 70 65 65 72 6e 61 6d 65 } //3 getpeername
		$a_81_7 = {67 65 74 73 6f 63 6b 6e 61 6d 65 } //3 getsockname
		$a_81_8 = {67 65 74 68 6f 73 74 62 79 6e 61 6d 65 } //3 gethostbyname
		$a_81_9 = {73 68 75 74 64 6f 77 6e } //3 shutdown
		$a_81_10 = {6a 38 68 79 75 62 74 6e 76 65 6a 72 74 67 65 6f 72 68 77 72 79 } //3 j8hyubtnvejrtgeorhwry
	condition:
		((#a_81_0  & 1)*3+(#a_81_1  & 1)*3+(#a_81_2  & 1)*3+(#a_81_3  & 1)*3+(#a_81_4  & 1)*3+(#a_81_5  & 1)*3+(#a_81_6  & 1)*3+(#a_81_7  & 1)*3+(#a_81_8  & 1)*3+(#a_81_9  & 1)*3+(#a_81_10  & 1)*3) >=33
 
}