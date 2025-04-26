
rule Trojan_Win32_GhostRAT_AA_MTB{
	meta:
		description = "Trojan:Win32/GhostRAT.AA!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 "
		
	strings :
		$a_00_0 = {c6 45 e4 be c6 45 e5 16 c6 45 e6 cf c6 45 e7 52 c6 45 e8 cd 90 } //1
		$a_02_1 = {30 11 ff 45 ?? c3 90 0a 1a 00 be 7c 44 00 00 0f be 04 02 99 f7 fe b8 ?? ?? ?? ?? 80 ea 3f } //1
	condition:
		((#a_00_0  & 1)*1+(#a_02_1  & 1)*1) >=2
 
}