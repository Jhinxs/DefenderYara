
rule Trojan_Win32_Mirsonk_A{
	meta:
		description = "Trojan:Win32/Mirsonk.A,SIGNATURE_TYPE_PEHSTR_EXT,14 00 0b 00 04 00 00 "
		
	strings :
		$a_03_0 = {99 f7 f9 8a 82 ?? ?? 40 00 8a 96 ?? ?? 40 00 32 d0 88 96 ?? ?? 40 00 46 83 fe 40 7c e1 } //10
		$a_03_1 = {76 20 8b 74 24 1c 8b 5c 24 14 8b 06 03 c3 50 e8 ?? ?? 00 00 3b 44 24 28 74 11 47 83 c6 04 3b fd 72 e8 } //10
		$a_03_2 = {3a 59 d4 e6 00 8d 82 16 55 [0-04] e4 e6 [0-02] 9d 76 5d da } //1
		$a_01_3 = {7b 49 82 e6 43 89 84 56 0d 34 75 fc f8 49 c7 3b 58 da f5 } //1
	condition:
		((#a_03_0  & 1)*10+(#a_03_1  & 1)*10+(#a_03_2  & 1)*1+(#a_01_3  & 1)*1) >=11
 
}