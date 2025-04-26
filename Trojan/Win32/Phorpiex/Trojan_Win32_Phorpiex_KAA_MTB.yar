
rule Trojan_Win32_Phorpiex_KAA_MTB{
	meta:
		description = "Trojan:Win32/Phorpiex.KAA!MTB,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 "
		
	strings :
		$a_01_0 = {32 64 67 64 38 32 38 64 38 67 38 66 67 38 67 38 67 } //1 2dgd828d8g8fg8g8g
		$a_01_1 = {70 75 74 69 6e 73 75 63 6b 73 2e 75 61 } //1 putinsucks.ua
		$a_01_2 = {66 72 65 65 75 6b 72 61 69 6e 65 } //1 freeukraine
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1) >=3
 
}