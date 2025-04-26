
rule PWS_Win32_Stealer_N_bit{
	meta:
		description = "PWS:Win32/Stealer.N!bit,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 "
		
	strings :
		$a_03_0 = {8b c1 c1 e0 04 03 c2 8b d1 03 4c 24 ?? c1 ea 05 03 54 24 ?? 33 c2 33 c1 } //1
		$a_03_1 = {8b d0 8b cd e8 ?? ?? ?? ?? 2b f8 59 59 8b cf 8b c7 c1 e9 ?? 03 4c 24 ?? c1 e0 ?? 03 44 24 ?? 33 c8 8d 04 3b 33 c8 8b 44 24 ?? 2b e9 6a f7 59 2b c8 8b 44 24 ?? 03 d9 8b 4c 24 ?? 4e 75 c0 } //1
	condition:
		((#a_03_0  & 1)*1+(#a_03_1  & 1)*1) >=2
 
}