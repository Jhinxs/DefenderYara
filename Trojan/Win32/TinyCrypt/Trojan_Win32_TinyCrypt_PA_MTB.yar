
rule Trojan_Win32_TinyCrypt_PA_MTB{
	meta:
		description = "Trojan:Win32/TinyCrypt.PA!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 "
		
	strings :
		$a_02_0 = {8b 45 c8 83 c0 01 89 45 c8 81 7d c8 [0-04] 73 64 8b 4d c8 8b 55 d4 8b 04 8a 89 45 88 8b 0d [0-04] 89 4d 8c 8b 55 88 2b 55 c8 89 55 88 8b 45 e0 } //1
		$a_02_1 = {99 b9 00 00 09 00 f7 f9 89 ?? e0 8b 55 ?? 33 55 ?? 89 55 ?? 8b ?? e0 2d 00 10 00 00 89 ?? e0 c1 45 ?? 07 8b ?? e0 c1 e1 ?? 89 4d e0 8b 55 ?? 33 55 ?? 89 55 ?? 8b 45 ?? 8b 4d f4 8b 55 ?? 89 14 81 eb } //1
	condition:
		((#a_02_0  & 1)*1+(#a_02_1  & 1)*1) >=2
 
}