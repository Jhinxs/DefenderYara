
rule TrojanSpy_Win64_Banker_XG{
	meta:
		description = "TrojanSpy:Win64/Banker.XG,SIGNATURE_TYPE_PEHSTR_EXT,08 00 08 00 06 00 00 "
		
	strings :
		$a_03_0 = {8b 4c 24 60 81 f1 ?? ?? 00 00 3b c1 75 0b 90 09 05 00 e8 } //1
		$a_03_1 = {0f b7 04 48 83 f0 ?? 48 8b 4c 24 ?? 48 8b 54 24 ?? 66 89 04 51 eb } //1
		$a_01_2 = {53 00 45 00 4c 00 45 00 43 00 54 00 20 00 2a 00 20 00 46 00 52 00 4f 00 4d 00 20 00 41 00 6e 00 74 00 69 00 56 00 69 00 72 00 75 00 73 00 50 00 72 00 6f 00 64 00 75 00 63 00 74 00 } //1 SELECT * FROM AntiVirusProduct
		$a_01_3 = {52 00 4f 00 4f 00 54 00 5c 00 53 00 65 00 63 00 75 00 72 00 69 00 74 00 79 00 43 00 65 00 6e 00 74 00 65 00 72 00 32 00 } //1 ROOT\SecurityCenter2
		$a_01_4 = {69 6e 6a 65 63 74 5f 62 65 66 6f 72 65 5f 6b 65 79 77 6f 72 64 } //2 inject_before_keyword
		$a_01_5 = {69 6e 6a 65 63 74 5f 61 66 74 65 72 5f 6b 65 79 77 6f 72 64 } //2 inject_after_keyword
	condition:
		((#a_03_0  & 1)*1+(#a_03_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*2+(#a_01_5  & 1)*2) >=8
 
}