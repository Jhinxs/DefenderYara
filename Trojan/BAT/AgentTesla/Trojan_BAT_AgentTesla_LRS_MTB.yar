
rule Trojan_BAT_AgentTesla_LRS_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.LRS!MTB,SIGNATURE_TYPE_PEHSTR_EXT,07 00 07 00 07 00 00 "
		
	strings :
		$a_01_0 = {68 66 66 66 61 66 61 73 72 64 61 64 73 61 74 72 66 66 66 66 66 66 66 66 66 64 64 66 } //1 hfffafasrdadsatrfffffffffddf
		$a_01_1 = {23 66 61 73 64 66 67 73 66 66 66 73 64 2e 64 6c 6c 23 } //1 #fasdfgsfffsd.dll#
		$a_01_2 = {2e 64 67 64 64 6a 6b 64 6c 6c 23 } //1 .dgddjkdll#
		$a_01_3 = {46 72 6f 6d 42 61 73 65 36 34 } //1 FromBase64
		$a_01_4 = {47 65 74 4d 65 74 68 6f 64 } //1 GetMethod
		$a_01_5 = {47 65 74 54 79 70 65 46 72 6f 6d 48 61 6e 64 6c 65 } //1 GetTypeFromHandle
		$a_01_6 = {43 68 65 63 6b 52 65 6d 6f 74 65 44 65 62 75 67 67 65 72 50 72 65 73 65 6e 74 } //1 CheckRemoteDebuggerPresent
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1) >=7
 
}