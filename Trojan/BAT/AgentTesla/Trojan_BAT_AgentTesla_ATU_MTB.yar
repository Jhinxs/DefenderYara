
rule Trojan_BAT_AgentTesla_ATU_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.ATU!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0a 00 0a 00 0a 00 00 "
		
	strings :
		$a_80_0 = {58 41 53 58 41 58 } //XASXAX  1
		$a_80_1 = {70 72 6f 6a 00 6b 65 79 } //proj  1
		$a_80_2 = {46 72 6f 6d 42 61 73 65 36 34 } //FromBase64  1
		$a_80_3 = {47 65 74 43 68 61 72 } //GetChar  1
		$a_80_4 = {47 65 74 54 79 70 65 46 72 6f 6d 48 61 6e 64 6c 65 } //GetTypeFromHandle  1
		$a_80_5 = {73 73 73 61 73 53 41 44 41 53 44 41 44 41 44 73 73 } //sssasSADASDADADss  1
		$a_80_6 = {47 65 74 54 79 70 65 } //GetType  1
		$a_80_7 = {47 65 74 4d 65 74 68 6f 64 } //GetMethod  1
		$a_80_8 = {4f 66 66 73 65 74 4d 61 72 73 68 61 6c 65 72 } //OffsetMarshaler  1
		$a_80_9 = {52 65 74 75 72 6e 4d 65 73 73 61 67 65 } //ReturnMessage  1
	condition:
		((#a_80_0  & 1)*1+(#a_80_1  & 1)*1+(#a_80_2  & 1)*1+(#a_80_3  & 1)*1+(#a_80_4  & 1)*1+(#a_80_5  & 1)*1+(#a_80_6  & 1)*1+(#a_80_7  & 1)*1+(#a_80_8  & 1)*1+(#a_80_9  & 1)*1) >=10
 
}