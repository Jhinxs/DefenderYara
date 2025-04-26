
rule Trojan_Win64_CryptInject_YAG_MTB{
	meta:
		description = "Trojan:Win64/CryptInject.YAG!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 01 00 00 "
		
	strings :
		$a_03_0 = {48 2b f0 48 8d 05 ?? ?? ?? ?? 32 14 06 48 8d 35 ?? ?? ?? ?? 42 88 14 09 49 8b c0 49 63 ca 48 ff c9 4d 63 c2 48 f7 e1 48 c1 ea 08 48 69 c2 30 01 00 00 41 0f b6 51 ?? 48 2b c8 48 b8 ?? ?? ?? ?? ?? ?? ?? ?? 32 14 31 48 8b 0f 49 03 cb } //2
	condition:
		((#a_03_0  & 1)*2) >=2
 
}