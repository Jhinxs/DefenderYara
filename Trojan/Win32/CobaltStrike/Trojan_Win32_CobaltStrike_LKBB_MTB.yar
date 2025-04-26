
rule Trojan_Win32_CobaltStrike_LKBB_MTB{
	meta:
		description = "Trojan:Win32/CobaltStrike.LKBB!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_03_0 = {83 f1 2a 83 f1 5d 83 f1 3c 8b 95 ?? ?? ff ff 88 8a ?? ?? ?? ?? 8b 85 40 fe ff ff 83 c0 01 89 85 ?? ?? ff ff eb } //1
	condition:
		((#a_03_0  & 1)*1) >=1
 
}