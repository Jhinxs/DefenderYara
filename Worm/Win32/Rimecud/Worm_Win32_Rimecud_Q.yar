
rule Worm_Win32_Rimecud_Q{
	meta:
		description = "Worm:Win32/Rimecud.Q,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 03 00 00 "
		
	strings :
		$a_03_0 = {2b e1 83 e9 01 8a 53 01 8a 73 02 f6 d2 02 d6 c0 fa ?? 8a 1c 0f 02 da 32 de f6 d2 88 5c 0c ff e2 f1 } //1
		$a_03_1 = {33 d0 8b 45 ?? 03 45 ?? 88 10 0f be 4d ?? 8b 55 ?? 03 55 ?? 0f be 02 2b c1 8b 4d ?? 03 4d ?? 88 01 0f be 55 ?? f7 d2 88 55 10 eb b8 } //1
		$a_01_2 = {e8 c0 e9 af ed b5 f3 79 f3 ab f3 } //1
	condition:
		((#a_03_0  & 1)*1+(#a_03_1  & 1)*1+(#a_01_2  & 1)*1) >=2
 
}