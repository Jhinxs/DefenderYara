
rule Trojan_BAT_AgentTesla_CZE_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.CZE!MTB,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 "
		
	strings :
		$a_03_0 = {03 08 03 8e 69 5d ?? ?? ?? ?? ?? 03 08 03 8e 69 5d 91 07 08 07 8e 69 5d 91 61 ?? ?? ?? ?? ?? 03 08 17 58 03 8e 69 5d 91 59 20 00 01 00 00 58 20 00 01 00 00 5d d2 9c } //1
		$a_01_1 = {47 65 74 54 79 70 65 46 72 6f 6d 48 61 6e 64 6c 65 } //1 GetTypeFromHandle
		$a_01_2 = {47 65 74 4d 65 74 68 6f 64 } //1 GetMethod
	condition:
		((#a_03_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1) >=3
 
}
rule Trojan_BAT_AgentTesla_CZE_MTB_2{
	meta:
		description = "Trojan:BAT/AgentTesla.CZE!MTB,SIGNATURE_TYPE_PEHSTR_EXT,07 00 07 00 07 00 00 "
		
	strings :
		$a_01_0 = {53 00 79 00 73 00 74 00 65 00 6d 00 2e 00 43 00 6f 00 6e 00 76 00 65 00 72 00 74 00 } //1 System.Convert
		$a_01_1 = {67 00 6e 00 69 00 72 00 74 00 53 00 34 00 36 00 65 00 73 00 61 00 42 00 6d 00 6f 00 72 00 46 00 } //1 gnirtS46esaBmorF
		$a_01_2 = {53 74 72 52 65 76 65 72 73 65 } //1 StrReverse
		$a_01_3 = {47 65 74 54 79 70 65 46 72 6f 6d 48 61 6e 64 6c 65 } //1 GetTypeFromHandle
		$a_01_4 = {58 00 58 00 58 00 58 00 58 00 58 00 58 00 58 00 58 00 58 00 58 00 58 00 58 00 } //1 XXXXXXXXXXXXX
		$a_01_5 = {49 00 6e 00 76 00 6f 00 6b 00 65 00 } //1 Invoke
		$a_01_6 = {47 00 65 00 00 09 74 00 54 00 79 00 70 00 00 03 65 } //1
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1) >=7
 
}