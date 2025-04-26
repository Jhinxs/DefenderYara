
rule Trojan_BAT_AgentTesla_AJC_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.AJC!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0b 00 0b 00 0b 00 00 "
		
	strings :
		$a_81_0 = {50 69 63 74 75 72 65 73 71 75 65 2e 45 64 69 74 6f 72 2e 41 62 6f 75 74 46 6f 72 6d 2e 72 65 73 6f 75 72 63 65 73 } //1 Picturesque.Editor.AboutForm.resources
		$a_81_1 = {50 69 63 74 75 72 65 73 71 75 65 2e 45 64 69 74 6f 72 2e 48 65 6c 70 46 6f 72 6d 2e 72 65 73 6f 75 72 63 65 73 } //1 Picturesque.Editor.HelpForm.resources
		$a_81_2 = {47 65 74 54 79 70 65 } //1 GetType
		$a_81_3 = {42 69 74 6d 61 70 } //1 Bitmap
		$a_81_4 = {50 69 63 74 75 72 65 73 71 75 65 2e 45 64 69 74 6f 72 2e 4d 44 49 2e 72 65 73 6f 75 72 63 65 73 } //1 Picturesque.Editor.MDI.resources
		$a_81_5 = {52 65 76 65 72 73 65 } //1 Reverse
		$a_81_6 = {43 72 65 61 74 65 49 6e 73 74 61 6e 63 65 } //1 CreateInstance
		$a_81_7 = {47 65 74 45 6c 65 6d 65 6e 74 54 79 70 65 } //1 GetElementType
		$a_81_8 = {47 65 74 54 79 70 65 46 72 6f 6d 48 61 6e 64 6c 65 } //1 GetTypeFromHandle
		$a_01_9 = {43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 00 68 65 78 } //1
		$a_01_10 = {73 73 73 73 73 00 52 65 76 65 72 73 65 } //1
	condition:
		((#a_81_0  & 1)*1+(#a_81_1  & 1)*1+(#a_81_2  & 1)*1+(#a_81_3  & 1)*1+(#a_81_4  & 1)*1+(#a_81_5  & 1)*1+(#a_81_6  & 1)*1+(#a_81_7  & 1)*1+(#a_81_8  & 1)*1+(#a_01_9  & 1)*1+(#a_01_10  & 1)*1) >=11
 
}