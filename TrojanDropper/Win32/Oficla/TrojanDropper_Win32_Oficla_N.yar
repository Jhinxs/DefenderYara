
rule TrojanDropper_Win32_Oficla_N{
	meta:
		description = "TrojanDropper:Win32/Oficla.N,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 04 00 00 "
		
	strings :
		$a_01_0 = {0f be 88 00 70 40 00 0f af d1 01 d3 83 f8 0d 75 ec } //1
		$a_01_1 = {c7 44 24 04 04 01 00 00 c7 04 24 0a 00 00 00 } //1
		$a_01_2 = {a1 ef 54 15 c6 a2 a6 5f 45 90 a3 90 f8 34 98 c4 } //1
		$a_03_3 = {83 f9 07 7f 15 c1 e1 02 b8 ?? ?? 2b cb d3 e8 83 e0 0f ff 24 85 00 60 40 00 ?? ?? ?? 0f 8d 0c 8d e0 } //1
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_03_3  & 1)*1) >=2
 
}