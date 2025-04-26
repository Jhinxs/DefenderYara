
rule Trojan_Win32_TerraCrypt_LKB_MTB{
	meta:
		description = "Trojan:Win32/TerraCrypt.LKB!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_03_0 = {50 8b 5c 24 08 8b 6c 24 ?? 01 db 58 66 89 44 1d 00 8b 5c 24 ?? 43 89 5c 24 ?? 8b 5c 24 ?? 43 89 5c 24 ?? 8b 5c 24 ?? 3b 5c 24 ?? 7e } //1
	condition:
		((#a_03_0  & 1)*1) >=1
 
}