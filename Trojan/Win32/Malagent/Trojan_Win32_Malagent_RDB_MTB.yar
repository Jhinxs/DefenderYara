
rule Trojan_Win32_Malagent_RDB_MTB{
	meta:
		description = "Trojan:Win32/Malagent.RDB!MTB,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 02 00 00 "
		
	strings :
		$a_01_0 = {2e 62 61 6b } //1 .bak
		$a_03_1 = {83 c4 04 33 c9 8b c5 ba 44 00 00 00 f7 e2 0f 90 90 c1 f7 d9 0b c8 33 c0 83 c1 04 0f 92 c0 f7 d8 0b c1 50 e8 ?? ?? ?? ?? 83 c4 04 89 44 24 48 3b c3 } //2
	condition:
		((#a_01_0  & 1)*1+(#a_03_1  & 1)*2) >=3
 
}