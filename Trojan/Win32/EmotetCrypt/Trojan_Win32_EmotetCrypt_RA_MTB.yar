
rule Trojan_Win32_EmotetCrypt_RA_MTB{
	meta:
		description = "Trojan:Win32/EmotetCrypt.RA!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 "
		
	strings :
		$a_03_0 = {8a 11 03 c2 8b 4d ?? 81 e1 ff 00 00 00 03 c1 99 b9 ?? ?? ?? ?? f7 f9 88 55 90 1b 00 8b 55 90 1b 00 81 e2 ff 00 00 00 a1 ?? ?? ?? ?? 03 c2 50 8b 0d 90 1b 04 03 4d fc 51 e8 ?? ?? ?? ?? 83 c4 08 8b 45 f8 25 ff 00 00 00 83 c0 01 99 f7 7d 0c 88 55 f8 eb } //2
		$a_03_1 = {8a 14 07 33 c0 8a 01 03 f2 03 c6 be ?? ?? ?? ?? 99 f7 fe [0-1f] 81 e6 ff 00 00 00 [0-1f] 83 c4 08 99 f7 7c 24 1c 43 81 fb 90 1b 00 88 54 24 20 7c } //2
	condition:
		((#a_03_0  & 1)*2+(#a_03_1  & 1)*2) >=2
 
}