
rule Trojan_Win32_Oficla_N{
	meta:
		description = "Trojan:Win32/Oficla.N,SIGNATURE_TYPE_PEHSTR_EXT,07 00 07 00 04 00 00 "
		
	strings :
		$a_01_0 = {69 6e 74 72 6f 2e 64 6c 6c 00 44 6c 6c 4d 61 69 6e 00 } //1
		$a_01_1 = {25 30 34 64 25 30 34 64 30 30 30 31 00 } //1
		$a_03_2 = {c7 04 24 04 01 00 00 90 09 04 00 89 ?? 24 04 } //2
		$a_03_3 = {80 7b ff 3f 74 ?? c6 03 26 43 8b 17 83 3c d5 ?? ?? ?? ?? 05 74 } //3
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_03_2  & 1)*2+(#a_03_3  & 1)*3) >=7
 
}