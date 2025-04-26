
rule Trojan_Win64_CobaltStrike_YAS_MTB{
	meta:
		description = "Trojan:Win64/CobaltStrike.YAS!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_03_0 = {31 43 2c 8b 05 ?? ?? ?? ?? 48 8b 0d ?? ?? ?? ?? 05 aa 12 f4 ff c1 ea 08 01 81 ?? ?? ?? ?? 48 63 4b 6c 48 8b 05 ?? ?? ?? ?? 88 14 01 } //1
	condition:
		((#a_03_0  & 1)*1) >=1
 
}