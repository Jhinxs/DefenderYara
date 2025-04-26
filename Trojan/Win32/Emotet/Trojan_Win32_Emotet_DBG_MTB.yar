
rule Trojan_Win32_Emotet_DBG_MTB{
	meta:
		description = "Trojan:Win32/Emotet.DBG!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 02 00 00 "
		
	strings :
		$a_02_0 = {6a 00 ff d7 33 d2 8b c6 f7 74 24 ?? 8b 44 24 ?? 8a 0c 50 30 0c 1e 46 3b f5 75 } //1
		$a_02_1 = {6a 00 ff d6 33 d2 8b c7 f7 74 24 ?? 8b 44 24 ?? 8a 0c 50 30 0c 1f 47 3b fd 75 } //1
	condition:
		((#a_02_0  & 1)*1+(#a_02_1  & 1)*1) >=1
 
}