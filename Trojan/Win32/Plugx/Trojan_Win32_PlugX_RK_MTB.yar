
rule Trojan_Win32_PlugX_RK_MTB{
	meta:
		description = "Trojan:Win32/PlugX.RK!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_03_0 = {33 ff b3 65 a1 ?? ?? ?? ?? c6 44 24 20 6c 85 c0 c6 44 24 21 73 c6 44 24 22 74 c6 44 24 23 72 c6 44 24 24 6c 88 5c 24 25 c6 44 24 26 6e c6 44 24 27 41 c6 44 24 28 00 75 ?? 88 44 24 1c a1 ?? ?? ?? ?? 85 c0 c6 44 24 14 6b 88 5c 24 15 c6 44 24 16 72 c6 44 24 17 6e 88 5c 24 18 c6 44 24 19 6c c6 44 24 1a 33 c6 44 24 1b 32 75 10 } //1
	condition:
		((#a_03_0  & 1)*1) >=1
 
}