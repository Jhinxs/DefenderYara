
rule Trojan_Win32_Hookja_A{
	meta:
		description = "Trojan:Win32/Hookja.A,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 "
		
	strings :
		$a_03_0 = {6a 64 52 ff 15 ?? ?? ?? ?? a1 ?? ?? 00 0e b9 ?? ?? 00 0e c6 00 e9 a1 ?? ?? 00 0e 2b c8 83 e9 05 89 48 01 8b 15 ?? ?? 00 0e 66 c7 42 05 90 90 90 90 } //3
		$a_03_1 = {83 fa 04 0f 8e ?? 00 00 00 83 fa 0f 0f 8d ?? 00 00 00 b9 07 00 00 00 33 c0 8d 7d bc 83 c2 fc f3 ab } //2
		$a_10_2 = {41 70 70 49 6e 69 74 5f 44 4c 4c 73 } //1 AppInit_DLLs
	condition:
		((#a_03_0  & 1)*3+(#a_03_1  & 1)*2+(#a_10_2  & 1)*1) >=3
 
}