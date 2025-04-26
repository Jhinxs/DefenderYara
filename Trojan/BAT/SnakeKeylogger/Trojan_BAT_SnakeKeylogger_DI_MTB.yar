
rule Trojan_BAT_SnakeKeylogger_DI_MTB{
	meta:
		description = "Trojan:BAT/SnakeKeylogger.DI!MTB,SIGNATURE_TYPE_PEHSTR_EXT,4a 00 4a 00 09 00 00 "
		
	strings :
		$a_81_0 = {41 5a 5a 5a 5a 5a 5a 5a 5a 5a 5a 5a 5a 5a 5a 5a 5a 32 33 } //50 AZZZZZZZZZZZZZZZZ23
		$a_81_1 = {69 6d 69 6d 69 6d 69 6d 69 6d } //50 imimimimim
		$a_81_2 = {58 44 41 53 58 41 58 41 58 } //20 XDASXAXAX
		$a_81_3 = {00 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 00 } //20 砀硸硸硸硸硸硸硸硸x
		$a_81_4 = {44 65 62 75 67 67 61 62 6c 65 41 74 74 72 69 62 75 74 65 } //1 DebuggableAttribute
		$a_81_5 = {46 72 6f 6d 42 61 73 65 36 34 } //1 FromBase64
		$a_81_6 = {43 72 65 61 74 65 49 6e 73 74 61 6e 63 65 } //1 CreateInstance
		$a_81_7 = {67 65 74 5f 58 } //1 get_X
		$a_81_8 = {67 65 74 5f 59 } //1 get_Y
	condition:
		((#a_81_0  & 1)*50+(#a_81_1  & 1)*50+(#a_81_2  & 1)*20+(#a_81_3  & 1)*20+(#a_81_4  & 1)*1+(#a_81_5  & 1)*1+(#a_81_6  & 1)*1+(#a_81_7  & 1)*1+(#a_81_8  & 1)*1) >=74
 
}