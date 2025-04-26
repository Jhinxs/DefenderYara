
rule Trojan_Win64_CoinMiner_DC_MTB{
	meta:
		description = "Trojan:Win64/CoinMiner.DC!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_03_0 = {48 89 c1 48 89 f2 83 e1 ?? 48 c1 e1 ?? 48 d3 ea 41 30 14 04 48 83 c0 ?? 48 83 f8 ?? 75 ?? 41 c6 44 24 [0-02] 41 83 e5 ?? 43 32 3c 2c 41 88 3c 1e 48 83 c3 ?? 48 39 dd 0f 85 } //1
	condition:
		((#a_03_0  & 1)*1) >=1
 
}