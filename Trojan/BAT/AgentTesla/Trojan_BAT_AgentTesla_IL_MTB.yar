
rule Trojan_BAT_AgentTesla_IL_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.IL!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0f 00 0f 00 06 00 00 "
		
	strings :
		$a_01_0 = {57 dd a2 fd 09 0f 00 00 00 fa 25 33 00 16 00 00 02 00 00 00 75 00 00 00 18 } //10
		$a_01_1 = {24 61 34 37 66 61 31 35 65 2d 65 39 39 37 2d 34 65 39 36 2d 39 33 32 39 2d 38 62 63 65 61 34 38 65 63 33 37 38 } //1 $a47fa15e-e997-4e96-9329-8bcea48ec378
		$a_01_2 = {47 5a 69 70 53 74 72 65 61 6d } //1 GZipStream
		$a_01_3 = {47 65 74 54 79 70 65 73 } //1 GetTypes
		$a_01_4 = {43 72 65 61 74 65 49 6e 73 74 61 6e 63 65 } //1 CreateInstance
		$a_01_5 = {4d 65 6d 6f 72 79 53 74 72 65 61 6d } //1 MemoryStream
	condition:
		((#a_01_0  & 1)*10+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1) >=15
 
}
rule Trojan_BAT_AgentTesla_IL_MTB_2{
	meta:
		description = "Trojan:BAT/AgentTesla.IL!MTB,SIGNATURE_TYPE_PEHSTR_EXT,10 00 10 00 07 00 00 "
		
	strings :
		$a_00_0 = {20 c8 00 00 00 da 1f 64 da 1f 1e d6 20 90 01 00 00 da } //10
		$a_81_1 = {49 45 78 70 61 6e 64 6f 2e 50 6c 75 67 } //1 IExpando.Plug
		$a_81_2 = {46 72 6f 6d 42 61 73 65 36 34 53 74 72 69 6e 67 } //1 FromBase64String
		$a_81_3 = {43 72 65 61 74 65 49 6e 73 74 61 6e 63 65 } //1 CreateInstance
		$a_81_4 = {47 65 74 54 79 70 65 46 72 6f 6d 48 61 6e 64 6c 65 } //1 GetTypeFromHandle
		$a_81_5 = {44 65 62 75 67 67 61 62 6c 65 41 74 74 72 69 62 75 74 65 } //1 DebuggableAttribute
		$a_81_6 = {53 74 72 52 65 76 65 72 73 65 } //1 StrReverse
	condition:
		((#a_00_0  & 1)*10+(#a_81_1  & 1)*1+(#a_81_2  & 1)*1+(#a_81_3  & 1)*1+(#a_81_4  & 1)*1+(#a_81_5  & 1)*1+(#a_81_6  & 1)*1) >=16
 
}