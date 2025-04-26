
rule Trojan_Win32_CryptInject_BH_MTB{
	meta:
		description = "Trojan:Win32/CryptInject.BH!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_02_0 = {8b 85 d0 f7 ff ff 03 85 ?? ?? ?? ?? 89 85 d0 f7 ff ff 8b ?? d4 f7 ff ff 33 ?? b8 f7 ff ff 89 ?? d4 f7 ff ff 8b ?? d4 f7 ff ff 33 ?? d0 f7 ff ff 89 ?? d0 f7 ff ff 8b ?? cc f7 ff ff 2b ?? d0 f7 ff ff 89 85 cc f7 ff ff 8b ?? cc f7 ff ff c1 ?? 04 89 ?? d4 f7 ff ff 81 3d ?? ?? ?? ?? 93 04 00 00 75 } //1
	condition:
		((#a_02_0  & 1)*1) >=1
 
}
rule Trojan_Win32_CryptInject_BH_MTB_2{
	meta:
		description = "Trojan:Win32/CryptInject.BH!MTB,SIGNATURE_TYPE_PEHSTR,03 00 03 00 03 00 00 "
		
	strings :
		$a_01_0 = {59 6f 75 20 61 72 65 20 66 75 63 6b 69 6e 67 20 41 56 20 76 65 6e 64 6f 72 73 21 } //1 You are fucking AV vendors!
		$a_01_1 = {6b 69 63 6b 69 6e 67 20 67 75 79 73 } //1 kicking guys
		$a_01_2 = {59 6f 75 20 61 72 65 20 6d 79 20 73 75 6e 73 68 69 6e 65 } //1 You are my sunshine
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1) >=3
 
}