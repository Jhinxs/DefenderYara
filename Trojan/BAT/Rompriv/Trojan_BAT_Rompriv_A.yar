
rule Trojan_BAT_Rompriv_A{
	meta:
		description = "Trojan:BAT/Rompriv.A,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 "
		
	strings :
		$a_01_0 = {6b 65 65 70 4d 69 6e 65 72 41 6c 69 76 65 } //1 keepMinerAlive
		$a_01_1 = {75 00 72 00 6c 00 20 00 7b 00 30 00 7d 00 20 00 2d 00 2d 00 74 00 68 00 72 00 65 00 61 00 64 00 73 00 20 00 7b 00 31 00 7d 00 20 00 2d 00 2d 00 75 00 73 00 65 00 72 00 70 00 61 00 73 00 73 00 20 00 7b 00 32 00 7d 00 } //1 url {0} --threads {1} --userpass {2}
		$a_01_2 = {72 75 6e 4d 69 6e 65 72 } //1 runMiner
		$a_01_3 = {61 00 70 00 72 00 6f 00 76 00 6f 00 73 00 2e 00 6d 00 69 00 6e 00 65 00 72 00 3a 00 79 00 70 00 61 00 72 00 78 00 77 00 32 00 32 00 } //1 aprovos.miner:yparxw22
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1) >=4
 
}