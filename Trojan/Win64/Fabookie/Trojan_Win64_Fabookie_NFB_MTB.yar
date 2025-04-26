
rule Trojan_Win64_Fabookie_NFB_MTB{
	meta:
		description = "Trojan:Win64/Fabookie.NFB!MTB,SIGNATURE_TYPE_PEHSTR_EXT,07 00 07 00 03 00 00 "
		
	strings :
		$a_03_0 = {33 c9 48 03 cf 48 8d 55 e0 41 b8 ?? ?? ?? ?? e8 ea 28 00 00 85 c0 74 14 ff c3 48 63 cb 48 81 f9 ?? ?? ?? ?? 72 dc 48 8b 45 ?? eb 06 } //5
		$a_01_1 = {46 62 61 64 20 61 6c 6c 6f 63 61 74 69 6f 6e } //1 Fbad allocation
		$a_01_2 = {50 61 74 42 6c 74 } //1 PatBlt
	condition:
		((#a_03_0  & 1)*5+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1) >=7
 
}