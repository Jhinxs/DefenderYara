
rule Trojan_BAT_AgentTesla_NX_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.NX!MTB,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 "
		
	strings :
		$a_01_0 = {b7 a2 3d 09 0f 00 00 00 00 00 00 00 00 00 00 02 } //1
		$a_01_1 = {24 33 33 66 65 35 63 33 32 2d 64 62 36 61 2d 34 64 37 61 2d 61 64 64 63 2d 65 31 64 30 64 38 35 38 38 66 61 39 } //1 $33fe5c32-db6a-4d7a-addc-e1d0d8588fa9
		$a_01_2 = {47 65 74 54 79 70 65 } //1 GetType
		$a_01_3 = {54 77 65 65 6e 45 6e 67 69 6e 65 41 50 49 2e 64 6c 6c } //1 TweenEngineAPI.dll
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1) >=4
 
}
rule Trojan_BAT_AgentTesla_NX_MTB_2{
	meta:
		description = "Trojan:BAT/AgentTesla.NX!MTB,SIGNATURE_TYPE_PEHSTR_EXT,08 00 08 00 09 00 00 "
		
	strings :
		$a_02_0 = {17 6a d7 20 [0-04] 6a 5f 88 13 ?? 11 ?? 08 11 ?? 84 95 d7 6e 20 [0-04] 6a 5f 88 13 ?? 08 11 ?? 84 95 13 ?? 08 11 ?? 84 08 11 ?? 84 95 9e 08 11 ?? 84 11 ?? 9e 09 11 ?? 03 11 ?? 91 08 08 11 ?? 84 95 08 11 ?? 84 95 d7 6e 20 [0-04] 6a 5f 84 95 61 86 9c 11 ?? 17 d6 13 [0-02] 11 ?? 11 ?? fe 02 13 ?? 11 ?? 2c 04 09 0a [0-03] 2b 8a 06 2a } //6
		$a_81_1 = {46 6f 75 72 41 72 } //1 FourAr
		$a_81_2 = {46 61 6c 6c 62 61 63 6b 42 75 66 66 65 72 } //1 FallbackBuffer
		$a_81_3 = {57 53 54 52 42 75 66 66 65 72 4d 61 72 73 68 61 6c 65 72 } //1 WSTRBufferMarshaler
		$a_81_4 = {53 74 72 52 65 76 65 72 73 65 } //1 StrReverse
		$a_81_5 = {49 73 4e 6f 74 50 75 62 6c 69 63 } //1 IsNotPublic
		$a_81_6 = {46 72 6f 6d 42 61 73 65 36 34 53 74 72 69 6e 67 } //1 FromBase64String
		$a_81_7 = {46 6f 72 6d 61 74 74 65 72 54 79 70 65 53 74 79 6c 65 } //1 FormatterTypeStyle
		$a_81_8 = {54 69 6d 65 72 31 } //1 Timer1
	condition:
		((#a_02_0  & 1)*6+(#a_81_1  & 1)*1+(#a_81_2  & 1)*1+(#a_81_3  & 1)*1+(#a_81_4  & 1)*1+(#a_81_5  & 1)*1+(#a_81_6  & 1)*1+(#a_81_7  & 1)*1+(#a_81_8  & 1)*1) >=8
 
}