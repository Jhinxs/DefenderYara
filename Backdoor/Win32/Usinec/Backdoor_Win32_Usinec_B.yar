
rule Backdoor_Win32_Usinec_B{
	meta:
		description = "Backdoor:Win32/Usinec.B,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 "
		
	strings :
		$a_03_0 = {8b 00 ff d0 69 de ?? ?? 00 00 89 84 1d ?? ?? ff ff 89 bc 1d ?? ?? ff ff 89 bc 1d ?? ?? ff ff 8d 45 fc 50 a1 ?? ?? ?? ?? 8b 00 b9 06 00 00 00 ba 01 00 00 00 } //1
		$a_01_1 = {0f b6 44 38 ff 66 03 f0 66 69 c6 6d ce 66 05 bf 58 8b f0 43 66 ff 4c 24 04 75 c5 } //1
		$a_01_2 = {69 37 5c 33 52 44 5c 6b } //1 i7\3RD\k
	condition:
		((#a_03_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1) >=3
 
}