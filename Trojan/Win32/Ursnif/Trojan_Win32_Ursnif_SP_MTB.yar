
rule Trojan_Win32_Ursnif_SP_MTB{
	meta:
		description = "Trojan:Win32/Ursnif.SP!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 "
		
	strings :
		$a_03_0 = {8b 74 24 14 2b c2 8d 4c 01 1f a1 ?? ?? ?? ?? 8d bc 30 45 e9 ff ff 0f b6 c3 8d 84 10 01 f6 ff ff 89 0d ?? ?? ?? ?? 8b 37 89 44 24 10 } //1
		$a_03_1 = {8b 4c 24 1c 0f b6 c3 81 c6 64 db b1 01 8d 44 08 f7 89 35 ?? ?? ?? ?? 89 37 0f b6 0d ?? ?? ?? ?? 8d 5c 08 f7 0f b6 05 ?? ?? ?? ?? 89 5c 24 10 } //1
	condition:
		((#a_03_0  & 1)*1+(#a_03_1  & 1)*1) >=2
 
}