
rule Trojan_BAT_AgentTesla_CAI_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.CAI!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 03 00 00 "
		
	strings :
		$a_03_0 = {0d 16 13 06 2b 1b 09 11 06 08 11 06 9a 1f 10 28 ?? 00 00 0a d2 6f ?? 00 00 0a 00 11 06 17 58 13 06 11 06 08 8e 69 fe 04 13 07 11 07 2d d8 } //3
		$a_01_1 = {53 70 6c 69 74 } //1 Split
		$a_01_2 = {54 6f 53 42 79 74 65 } //1 ToSByte
	condition:
		((#a_03_0  & 1)*3+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1) >=5
 
}
rule Trojan_BAT_AgentTesla_CAI_MTB_2{
	meta:
		description = "Trojan:BAT/AgentTesla.CAI!MTB,SIGNATURE_TYPE_PEHSTR_EXT,2a 00 2a 00 08 00 00 "
		
	strings :
		$a_00_0 = {d9 8a d9 8a d9 8a d9 8a d9 8a d9 8a d9 8a d9 8a d9 8a d9 8a d9 8a d9 8a d9 8a d9 8a d9 8a d9 8a d9 8a d9 8a d9 8a d9 8a d9 8a d9 8a d9 8a d9 8a d9 8a } //10
		$a_00_1 = {db 95 db 95 db 95 db 95 db 95 db 95 db 95 db 95 db 95 db 95 db 95 db 95 db 95 db 95 db 95 db 95 db 95 db 95 } //10
		$a_00_2 = {d8 b5 d8 b5 d8 b5 d8 b5 d8 b5 d8 b5 d8 b5 d8 b5 d8 b5 d8 b5 d8 b5 d8 b5 d8 b5 d8 b5 d8 b5 d8 b5 } //10
		$a_00_3 = {d8 b4 d8 b4 d8 b4 d8 b4 d8 b4 d8 b4 d8 b4 d8 b4 d8 b4 d8 b4 d8 b4 d8 b4 d8 b4 d8 b4 d8 b4 d8 b4 d8 b4 } //10
		$a_81_4 = {46 72 6f 6d 42 61 73 65 36 34 } //1 FromBase64
		$a_81_5 = {47 65 74 52 65 73 6f 75 72 63 65 53 74 72 69 6e 67 } //1 GetResourceString
		$a_81_6 = {47 65 74 54 79 70 65 } //1 GetType
		$a_81_7 = {43 72 65 61 74 65 49 6e 73 74 61 6e 63 65 } //1 CreateInstance
	condition:
		((#a_00_0  & 1)*10+(#a_00_1  & 1)*10+(#a_00_2  & 1)*10+(#a_00_3  & 1)*10+(#a_81_4  & 1)*1+(#a_81_5  & 1)*1+(#a_81_6  & 1)*1+(#a_81_7  & 1)*1) >=42
 
}