
rule Trojan_Win32_WhisperGate_B_MTB{
	meta:
		description = "Trojan:Win32/WhisperGate.B!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 01 00 00 "
		
	strings :
		$a_03_0 = {8b 45 f4 8b 00 89 45 e8 8b 45 e8 0f b6 c0 c7 44 24 ?? ?? ?? ?? ?? c7 44 24 08 02 00 00 00 c7 44 24 ?? ?? ?? ?? ?? 89 04 24 e8 ?? ?? ?? ?? 83 ec 10 } //2
	condition:
		((#a_03_0  & 1)*2) >=2
 
}