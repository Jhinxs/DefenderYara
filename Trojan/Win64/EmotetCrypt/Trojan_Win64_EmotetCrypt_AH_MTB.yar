
rule Trojan_Win64_EmotetCrypt_AH_MTB{
	meta:
		description = "Trojan:Win64/EmotetCrypt.AH!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 "
		
	strings :
		$a_03_0 = {48 98 4c 89 c2 48 29 c2 48 8b 45 ?? 48 01 d0 0f b6 00 8b 55 ?? 29 d0 44 31 c8 88 01 83 45 } //1
		$a_01_1 = {44 6c 6c 52 65 67 69 73 74 65 72 53 65 72 76 65 72 } //1 DllRegisterServer
	condition:
		((#a_03_0  & 1)*1+(#a_01_1  & 1)*1) >=2
 
}