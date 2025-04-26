
rule Trojan_Win32_Emotet_DEF_MTB{
	meta:
		description = "Trojan:Win32/Emotet.DEF!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 02 00 00 "
		
	strings :
		$a_02_0 = {33 c0 81 e2 ff 00 00 00 8a 44 0c ?? b9 ?? ?? ?? ?? 03 c2 8b ac 24 ?? ?? ?? ?? 99 f7 f9 8b 4c 24 ?? 8a 04 29 8a 54 14 ?? 32 c2 88 04 29 } //1
		$a_81_1 = {32 65 6e 4e 59 4a 44 6e 4a 71 50 32 75 66 36 50 42 67 72 79 6f 4f 56 33 74 69 47 7a 61 67 42 4f 37 46 } //1 2enNYJDnJqP2uf6PBgryoOV3tiGzagBO7F
	condition:
		((#a_02_0  & 1)*1+(#a_81_1  & 1)*1) >=1
 
}