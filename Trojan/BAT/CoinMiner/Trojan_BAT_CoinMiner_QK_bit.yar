
rule Trojan_BAT_CoinMiner_QK_bit{
	meta:
		description = "Trojan:BAT/CoinMiner.QK!bit,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 05 00 00 "
		
	strings :
		$a_01_0 = {68 00 74 00 74 00 70 00 3a 00 2f 00 2f 00 62 00 69 00 74 00 2e 00 6c 00 79 00 2f 00 32 00 50 00 33 00 42 00 7a 00 32 00 54 00 } //1 http://bit.ly/2P3Bz2T
		$a_01_1 = {5c 00 64 00 6c 00 68 00 6f 00 73 00 74 00 2e 00 65 00 78 00 65 00 } //1 \dlhost.exe
		$a_01_2 = {6b 00 6f 00 72 00 6f 00 6d 00 6e 00 33 00 39 00 40 00 67 00 6d 00 61 00 69 00 6c 00 2e 00 63 00 6f 00 6d 00 } //1 koromn39@gmail.com
		$a_01_3 = {78 00 6d 00 72 00 2e 00 70 00 6f 00 6f 00 6c 00 2e 00 6d 00 69 00 6e 00 65 00 72 00 67 00 61 00 74 00 65 00 2e 00 63 00 6f 00 6d 00 } //1 xmr.pool.minergate.com
		$a_01_4 = {4d 00 63 00 50 00 76 00 54 00 72 00 61 00 79 00 } //1 McPvTray
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1) >=4
 
}