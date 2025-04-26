
rule Trojan_Win64_RTStealer_A_MTB{
	meta:
		description = "Trojan:Win64/RTStealer.A!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 01 00 00 "
		
	strings :
		$a_03_0 = {0f b6 14 0b 48 8d 49 ?? 80 f2 ?? 41 ff c0 88 51 ?? 48 8b 54 24 ?? 49 63 c0 48 3b c2 72 } //2
	condition:
		((#a_03_0  & 1)*2) >=2
 
}