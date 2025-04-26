
rule Trojan_Win32_TrickBotCrypt_DC_MTB{
	meta:
		description = "Trojan:Win32/TrickBotCrypt.DC!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_03_0 = {8a 0c 3b 80 f1 20 8b c7 3b fe 73 ?? 8d 64 24 00 8a d8 2a da 80 e3 20 32 18 32 d9 88 18 03 45 ?? 3b c6 72 ?? 8b 5d ?? 47 ff 4d 08 75 } //1
	condition:
		((#a_03_0  & 1)*1) >=1
 
}