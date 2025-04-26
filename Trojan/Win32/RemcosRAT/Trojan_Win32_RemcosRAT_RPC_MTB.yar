
rule Trojan_Win32_RemcosRAT_RPC_MTB{
	meta:
		description = "Trojan:Win32/RemcosRAT.RPC!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 "
		
	strings :
		$a_03_0 = {31 c0 8b 4d ec 8a 14 0d ?? ?? ?? ?? 88 55 eb 8b 4d ec 0f b6 75 eb 90 09 30 00 [0-20] c7 45 ec 00 00 00 00 c7 45 ec 00 00 00 00 81 7d ec ?? ?? 00 00 0f 83 } //1
		$a_03_1 = {8b 45 ec 83 c0 01 89 45 ec e9 ?? ?? ?? ?? 8d 05 ?? ?? ?? ?? 31 c9 89 04 24 c7 44 24 04 00 00 00 00 89 4d e4 ff 15 } //1
	condition:
		((#a_03_0  & 1)*1+(#a_03_1  & 1)*1) >=2
 
}