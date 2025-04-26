
rule Trojan_Win32_BunituCrypt_RBE_MTB{
	meta:
		description = "Trojan:Win32/BunituCrypt.RBE!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_02_0 = {68 3b 11 00 00 6a 00 e8 ?? ?? ?? ?? 03 d8 8b 45 ?? 31 18 83 45 ?? 04 83 45 ?? 04 8b 45 ?? 3b 45 ?? 72 } //1
	condition:
		((#a_02_0  & 1)*1) >=1
 
}