
rule Trojan_BAT_CoinMiner_XB{
	meta:
		description = "Trojan:BAT/CoinMiner.XB,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 04 00 00 "
		
	strings :
		$a_00_0 = {49 00 6e 00 74 00 65 00 72 00 6e 00 61 00 6c 00 4e 00 61 00 6d 00 65 00 00 00 77 00 69 00 6e 00 73 00 65 00 72 00 76 00 2e 00 65 00 78 00 65 00 } //1
		$a_00_1 = {46 00 69 00 6c 00 65 00 44 00 65 00 73 00 63 00 72 00 69 00 70 00 74 00 69 00 6f 00 6e 00 00 00 00 00 57 00 69 00 6e 00 64 00 6f 00 77 00 73 00 48 00 75 00 62 00 } //1
		$a_00_2 = {5c 44 65 73 6b 74 6f 70 5c 4d 69 6e 65 72 5c 46 55 4c 4c 4d 49 4e 45 52 5c 57 69 6e 64 6f 77 73 48 75 62 } //1 \Desktop\Miner\FULLMINER\WindowsHub
		$a_01_3 = {64 6f 77 6e 6c 6f 61 64 41 6e 64 45 78 63 65 63 75 74 65 } //1 downloadAndExcecute
	condition:
		((#a_00_0  & 1)*1+(#a_00_1  & 1)*1+(#a_00_2  & 1)*1+(#a_01_3  & 1)*1) >=3
 
}