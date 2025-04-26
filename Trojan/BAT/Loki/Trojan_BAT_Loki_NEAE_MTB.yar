
rule Trojan_BAT_Loki_NEAE_MTB{
	meta:
		description = "Trojan:BAT/Loki.NEAE!MTB,SIGNATURE_TYPE_PEHSTR_EXT,1e 00 1e 00 06 00 00 "
		
	strings :
		$a_01_0 = {67 65 74 5f 42 6f 6e 65 62 72 65 61 6b 65 72 } //5 get_Bonebreaker
		$a_01_1 = {53 70 69 6b 65 64 4a 61 6d 61 64 68 61 72 } //5 SpikedJamadhar
		$a_01_2 = {67 65 74 5f 4b 61 74 61 6e 61 } //5 get_Katana
		$a_01_3 = {43 72 79 73 74 61 6c 44 61 67 67 65 72 } //5 CrystalDagger
		$a_01_4 = {42 00 4c 00 59 00 41 00 54 00 20 00 49 00 6e 00 42 00 4c 00 59 00 41 00 54 00 20 00 76 00 6f 00 6b 00 42 00 4c 00 59 00 41 00 54 00 20 00 65 00 42 00 4c 00 59 00 41 00 54 00 } //5 BLYAT InBLYAT vokBLYAT eBLYAT
		$a_01_5 = {42 00 4c 00 59 00 41 00 54 00 20 00 47 00 42 00 4c 00 59 00 41 00 54 00 20 00 65 00 42 00 4c 00 59 00 41 00 54 00 20 00 74 00 42 00 4c 00 59 00 41 00 54 00 20 00 54 00 42 00 4c 00 59 00 41 00 54 00 20 00 79 00 42 00 4c 00 59 00 41 00 54 00 20 00 70 00 42 00 4c 00 59 00 41 00 54 00 20 00 65 00 } //5 BLYAT GBLYAT eBLYAT tBLYAT TBLYAT yBLYAT pBLYAT e
	condition:
		((#a_01_0  & 1)*5+(#a_01_1  & 1)*5+(#a_01_2  & 1)*5+(#a_01_3  & 1)*5+(#a_01_4  & 1)*5+(#a_01_5  & 1)*5) >=30
 
}