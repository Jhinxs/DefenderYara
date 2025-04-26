
rule Trojan_BAT_CoinMiner_MBYC_MTB{
	meta:
		description = "Trojan:BAT/CoinMiner.MBYC!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 "
		
	strings :
		$a_01_0 = {06 2b dc 03 2b db 1c 2c 11 06 2c 0e 16 2d 0b } //1
		$a_01_1 = {59 74 67 75 76 78 6d 2e } //1 Ytguvxm.
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1) >=2
 
}