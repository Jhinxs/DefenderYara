
rule Trojan_Win64_CoinMiner_QZ_bit{
	meta:
		description = "Trojan:Win64/CoinMiner.QZ!bit,SIGNATURE_TYPE_PEHSTR_EXT,09 00 09 00 06 00 00 "
		
	strings :
		$a_01_0 = {73 68 75 74 64 6f 77 6e 20 2d 73 20 2d 74 } //2 shutdown -s -t
		$a_01_1 = {6f 70 65 6e 00 00 00 00 65 78 70 6c 6f 72 65 72 2e 65 78 65 } //2
		$a_01_2 = {b9 4d 5a 00 00 66 39 08 75 33 48 63 48 3c 48 03 c8 81 39 50 45 00 00 } //2
		$a_03_3 = {48 63 ca 8d 42 ?? ff c2 30 44 0c 30 83 fa 0c 72 ef } //2
		$a_03_4 = {48 63 ca 8a c2 41 2a c1 41 03 d7 30 44 0c ?? 83 fa ?? 72 ec } //1
		$a_03_5 = {48 63 ca 41 8d 04 11 41 03 d7 30 44 0c ?? 83 fa } //1
	condition:
		((#a_01_0  & 1)*2+(#a_01_1  & 1)*2+(#a_01_2  & 1)*2+(#a_03_3  & 1)*2+(#a_03_4  & 1)*1+(#a_03_5  & 1)*1) >=9
 
}