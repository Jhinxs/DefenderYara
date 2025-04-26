
rule Trojan_Win64_StealC_MKV_MTB{
	meta:
		description = "Trojan:Win64/StealC.MKV!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_03_0 = {48 01 c1 e8 ?? ?? ?? ?? 48 63 45 ?? 0f b6 44 05 ?? 48 63 4d c0 0f b6 4c 0d e0 01 c8 b9 ?? ?? ?? ?? 99 f7 f9 48 63 c2 44 0f b6 44 05 ?? 48 8b 85 ?? ?? ?? ?? 48 63 4d bc 0f b6 14 08 44 31 c2 88 14 08 8b 45 ?? 83 c0 01 89 45 bc e9 } //1
	condition:
		((#a_03_0  & 1)*1) >=1
 
}