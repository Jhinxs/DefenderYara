
rule Trojan_BAT_QuasarRAT_MBBK_MTB{
	meta:
		description = "Trojan:BAT/QuasarRAT.MBBK!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 "
		
	strings :
		$a_03_0 = {07 08 18 5b 02 08 18 6f ?? 00 00 0a 1f 10 28 ?? 00 00 0a 9c 08 18 58 0c 08 06 32 } //1
		$a_01_1 = {4e 00 45 00 51 00 31 00 51 00 54 00 6b 00 77 00 4d 00 44 00 41 00 77 00 4d 00 7a 00 41 00 77 00 4d 00 44 00 41 00 77 00 4d 00 44 00 41 00 30 00 4d 00 44 00 41 00 77 00 4d 00 44 00 41 00 77 00 52 00 6b 00 5a 00 47 00 52 00 6a 00 } //1 NEQ1QTkwMDAwMzAwMDAwMDA0MDAwMDAwRkZGRj
	condition:
		((#a_03_0  & 1)*1+(#a_01_1  & 1)*1) >=2
 
}