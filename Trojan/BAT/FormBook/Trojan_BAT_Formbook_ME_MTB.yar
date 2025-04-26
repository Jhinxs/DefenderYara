
rule Trojan_BAT_Formbook_ME_MTB{
	meta:
		description = "Trojan:BAT/Formbook.ME!MTB,SIGNATURE_TYPE_PEHSTR_EXT,07 00 07 00 07 00 00 "
		
	strings :
		$a_03_0 = {0c 06 08 6f ?? ?? ?? 90 0a 22 00 07 28 ?? ?? ?? 0a 72 ?? ?? ?? 70 6f ?? ?? ?? 0a 6f ?? ?? ?? 0a [0-0a] 06 18 6f ?? ?? ?? 0a 00 02 0d 06 6f ?? ?? ?? 0a 09 16 09 8e 69 6f ?? ?? ?? 0a 13 04 de } //1
		$a_01_1 = {47 65 74 42 79 74 65 73 } //1 GetBytes
		$a_01_2 = {43 72 65 61 74 65 44 65 63 72 79 70 74 6f 72 } //1 CreateDecryptor
		$a_01_3 = {54 72 61 6e 73 66 6f 72 6d 46 69 6e 61 6c 42 6c 6f 63 6b } //1 TransformFinalBlock
		$a_01_4 = {53 6c 65 65 70 } //1 Sleep
		$a_01_5 = {44 65 62 75 67 67 61 62 6c 65 41 74 74 72 69 62 75 74 65 } //1 DebuggableAttribute
		$a_01_6 = {73 65 74 5f 4b 65 79 } //1 set_Key
	condition:
		((#a_03_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1) >=7
 
}