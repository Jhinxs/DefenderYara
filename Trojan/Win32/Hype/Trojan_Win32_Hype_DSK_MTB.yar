
rule Trojan_Win32_Hype_DSK_MTB{
	meta:
		description = "Trojan:Win32/Hype.DSK!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 01 00 00 "
		
	strings :
		$a_02_0 = {8a 14 1a 88 14 01 8a 8b ?? ?? ?? ?? 84 c9 75 ?? 8b 0d ?? ?? ?? ?? 8a 15 ?? ?? ?? ?? 03 cb 03 c1 30 10 83 3d ?? ?? ?? ?? 03 76 } //2
	condition:
		((#a_02_0  & 1)*2) >=2
 
}