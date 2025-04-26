
rule Trojan_Win64_ClipBanker_E_MTB{
	meta:
		description = "Trojan:Win64/ClipBanker.E!MTB,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 03 00 00 "
		
	strings :
		$a_03_0 = {48 8b 9c 24 ?? 00 00 00 48 8b 8c 24 ?? 00 00 00 48 c7 84 24 ?? 00 00 00 00 00 00 00 44 0f 11 bc 24 ?? 00 00 00 31 c0 e8 ?? 04 f4 ff 48 89 84 24 ?? 00 00 00 48 89 5c 24 ?? 48 8d 05 ?? ae 03 00 bb 22 00 00 00 e8 ?? 9c ff ff 48 89 84 24 c0 00 00 00 48 8b 5c 24 ?? 48 8b 8c 24 ?? 00 00 00 48 8b 7c 24 ?? 48 8b 84 24 ?? 00 00 00 0f 1f 44 00 00 e8 ?? 63 fa ff 48 85 c0 7c } //2
		$a_01_1 = {53 65 74 43 6c 69 70 62 6f 61 72 64 44 61 74 61 } //1 SetClipboardData
		$a_01_2 = {30 78 5b 61 2d 66 41 2d 46 30 2d 39 5d 7b 34 30 7d } //1 0x[a-fA-F0-9]{40}
	condition:
		((#a_03_0  & 1)*2+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1) >=4
 
}