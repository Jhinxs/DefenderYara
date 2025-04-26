
rule Trojan_Win32_IStartSurf_KVP_MTB{
	meta:
		description = "Trojan:Win32/IStartSurf.KVP!MTB,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 03 00 00 "
		
	strings :
		$a_02_0 = {8b 9d 70 ff ff ff 83 c3 01 f7 f3 89 45 98 68 ?? ?? ?? ?? 5a 0b d0 c1 e2 0a 89 55 b8 } //2
		$a_00_1 = {8b 45 b8 48 89 45 b8 8b 45 98 83 c8 0c 39 45 b8 0f 87 } //2
		$a_00_2 = {8b 40 36 8b 4d d8 8b 04 01 89 45 e0 8b 45 e0 33 d2 b9 00 00 01 00 f7 f1 8b 45 e0 2b c2 89 45 e0 } //2
	condition:
		((#a_02_0  & 1)*2+(#a_00_1  & 1)*2+(#a_00_2  & 1)*2) >=6
 
}