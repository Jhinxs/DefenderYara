
rule Trojan_Win64_CryptInject_MM_MTB{
	meta:
		description = "Trojan:Win64/CryptInject.MM!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 "
		
	strings :
		$a_03_0 = {49 8b da 4d 2b f2 4d 8b c2 4c 8b 54 24 ?? 43 8a 0c 06 2a 8c 24 ?? ?? ?? ?? 32 8c 24 ?? ?? ?? ?? 49 8b 41 ?? 41 88 0c 00 41 83 fb 08 0f 84 } //1
		$a_03_1 = {40 d2 ef 8a 82 ?? ?? ?? ?? 48 8b 8a ?? ?? ?? ?? 34 1c 0f b7 54 24 ?? 40 22 f8 49 8b 81 ?? ?? ?? ?? 48 0f af ca 48 0f af c1 49 89 81 ?? ?? ?? ?? 41 8b c5 41 ff c5 85 c0 74 } //1
	condition:
		((#a_03_0  & 1)*1+(#a_03_1  & 1)*1) >=2
 
}