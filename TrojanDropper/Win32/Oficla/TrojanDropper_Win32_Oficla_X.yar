
rule TrojanDropper_Win32_Oficla_X{
	meta:
		description = "TrojanDropper:Win32/Oficla.X,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 04 00 00 "
		
	strings :
		$a_03_0 = {c7 04 24 d8 af bb b4 e8 ?? ?? ?? ?? a3 ?? ?? ?? ?? c7 44 24 18 00 00 00 00 c7 44 24 14 00 00 00 00 c7 44 24 10 02 00 00 00 c7 44 24 0c 00 00 00 00 c7 44 24 08 01 00 00 00 c7 44 24 04 00 00 00 c0 } //1
		$a_01_1 = {89 44 24 04 c7 04 24 e2 a9 a3 eb e8 } //1
		$a_01_2 = {8b 14 87 d3 e2 31 d3 40 83 f8 0c 75 } //1
		$a_03_3 = {e8 52 52 8b 45 ?? 83 e8 ?? f7 d0 88 03 43 } //1
	condition:
		((#a_03_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_03_3  & 1)*1) >=3
 
}