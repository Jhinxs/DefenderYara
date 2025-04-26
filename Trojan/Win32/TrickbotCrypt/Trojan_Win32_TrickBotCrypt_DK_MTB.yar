
rule Trojan_Win32_TrickBotCrypt_DK_MTB{
	meta:
		description = "Trojan:Win32/TrickBotCrypt.DK!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_03_0 = {8a 14 0a 02 d0 8b 44 24 ?? 8a 1c 28 32 da 88 1c 28 8b 44 24 ?? 45 3b e8 72 90 09 05 00 a0 } //1
	condition:
		((#a_03_0  & 1)*1) >=1
 
}