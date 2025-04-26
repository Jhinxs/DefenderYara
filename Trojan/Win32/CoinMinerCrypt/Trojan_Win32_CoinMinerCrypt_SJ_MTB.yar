
rule Trojan_Win32_CoinMinerCrypt_SJ_MTB{
	meta:
		description = "Trojan:Win32/CoinMinerCrypt.SJ!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 01 00 00 "
		
	strings :
		$a_03_0 = {20 e7 64 00 c3 ?? ?? b8 ?? ?? ?? 00 81 c6 ?? ?? ?? ?? e8 ?? 00 00 00 56 5b bb ?? ?? ?? ?? 31 07 4b 81 ee ?? ?? ?? ?? 47 29 de 39 d7 75 } //2
	condition:
		((#a_03_0  & 1)*2) >=2
 
}