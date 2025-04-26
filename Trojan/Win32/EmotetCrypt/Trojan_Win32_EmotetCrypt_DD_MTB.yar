
rule Trojan_Win32_EmotetCrypt_DD_MTB{
	meta:
		description = "Trojan:Win32/EmotetCrypt.DD!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_03_0 = {8b 54 24 10 8b 44 24 14 03 c2 8b 54 24 34 0f b6 14 32 89 44 24 1c 8b 44 24 30 0f b6 04 08 03 c2 33 d2 bf ?? ?? ?? ?? f7 f7 8b 7c 24 1c 03 d3 8a 04 2a 30 07 ff 44 24 10 81 7c 24 10 ?? ?? ?? ?? 72 } //1
	condition:
		((#a_03_0  & 1)*1) >=1
 
}