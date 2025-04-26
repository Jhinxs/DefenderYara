
rule Trojan_BAT_AgentTesla_AGS_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.AGS!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0b 00 0b 00 0b 00 00 "
		
	strings :
		$a_81_0 = {43 6f 75 72 73 65 77 6f 72 6b 2e 41 62 6f 75 74 5f 50 72 6f 67 72 61 6d 2e 72 65 73 6f 75 72 63 65 73 } //1 Coursework.About_Program.resources
		$a_81_1 = {43 6f 75 72 73 65 77 6f 72 6b 2e 66 72 6d 47 69 72 69 73 2e 72 65 73 6f 75 72 63 65 73 } //1 Coursework.frmGiris.resources
		$a_81_2 = {47 65 74 54 79 70 65 } //1 GetType
		$a_81_3 = {44 65 63 6f 6d 70 72 65 73 73 } //1 Decompress
		$a_81_4 = {47 5a 69 70 53 74 72 65 61 6d } //1 GZipStream
		$a_81_5 = {47 65 74 41 73 73 65 6d 62 6c 69 65 73 } //1 GetAssemblies
		$a_81_6 = {43 72 65 61 74 65 49 6e 73 74 61 6e 63 65 } //1 CreateInstance
		$a_81_7 = {52 65 76 65 72 73 65 } //1 Reverse
		$a_81_8 = {47 65 74 54 79 70 65 46 72 6f 6d 48 61 6e 64 6c 65 } //1 GetTypeFromHandle
		$a_81_9 = {47 65 74 4f 62 6a 65 63 74 56 61 6c 75 65 } //1 GetObjectValue
		$a_81_10 = {43 72 65 61 74 65 44 6f 6d 61 69 6e } //1 CreateDomain
	condition:
		((#a_81_0  & 1)*1+(#a_81_1  & 1)*1+(#a_81_2  & 1)*1+(#a_81_3  & 1)*1+(#a_81_4  & 1)*1+(#a_81_5  & 1)*1+(#a_81_6  & 1)*1+(#a_81_7  & 1)*1+(#a_81_8  & 1)*1+(#a_81_9  & 1)*1+(#a_81_10  & 1)*1) >=11
 
}