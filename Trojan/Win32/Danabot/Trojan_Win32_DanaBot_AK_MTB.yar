
rule Trojan_Win32_DanaBot_AK_MTB{
	meta:
		description = "Trojan:Win32/DanaBot.AK!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_02_0 = {8b d3 c1 ea ?? 03 95 ?? ?? ?? ?? 89 95 [0-25] 31 85 ?? ?? ?? ?? 2b bd [0-25] 29 85 ?? ?? ?? ?? ff 8d [0-25] 8b 85 ?? ?? ?? ?? 8b 4d ?? 89 38 [0-20] 89 58 ?? 33 cd } //1
	condition:
		((#a_02_0  & 1)*1) >=1
 
}