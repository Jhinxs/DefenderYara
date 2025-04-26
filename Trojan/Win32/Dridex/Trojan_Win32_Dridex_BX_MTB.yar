
rule Trojan_Win32_Dridex_BX_MTB{
	meta:
		description = "Trojan:Win32/Dridex.BX!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0a 00 0a 00 02 00 00 "
		
	strings :
		$a_02_0 = {8b 45 0c 35 ?? ?? ?? ?? 89 45 f0 eb 03 8d 49 00 8b 07 8a 0c 30 03 c6 33 d2 88 8d ?? ?? ?? ?? 84 c9 74 23 } //5
		$a_02_1 = {64 a1 18 00 00 00 8b 40 30 81 fb ?? ?? ?? ?? 75 17 8b 40 08 5b 8b e5 } //5
	condition:
		((#a_02_0  & 1)*5+(#a_02_1  & 1)*5) >=10
 
}