
rule Trojan_Win32_Injuke_GNG_MTB{
	meta:
		description = "Trojan:Win32/Injuke.GNG!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0a 00 0a 00 01 00 00 "
		
	strings :
		$a_03_0 = {2a 01 00 00 00 61 d1 30 00 fe 2f 2d ?? ?? ?? ?? 00 73 5b 0d ?? ?? ?? ?? 00 00 d4 00 00 59 04 } //10
	condition:
		((#a_03_0  & 1)*10) >=10
 
}