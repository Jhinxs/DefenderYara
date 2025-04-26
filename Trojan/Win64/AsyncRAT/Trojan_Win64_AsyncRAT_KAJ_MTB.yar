
rule Trojan_Win64_AsyncRAT_KAJ_MTB{
	meta:
		description = "Trojan:Win64/AsyncRAT.KAJ!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_03_0 = {83 c0 01 88 45 ?? eb e2 0f b6 45 ?? 48 63 c0 48 8b 4d ?? 48 01 c1 0f b6 45 ?? 48 63 c0 48 8b 55 ?? 48 01 c2 0f b6 01 48 89 4d f0 0f b6 0a 31 c8 48 8b 4d f0 88 01 eb c4 } //1
	condition:
		((#a_03_0  & 1)*1) >=1
 
}