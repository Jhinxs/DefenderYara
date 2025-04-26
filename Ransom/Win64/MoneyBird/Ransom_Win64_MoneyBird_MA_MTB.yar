
rule Ransom_Win64_MoneyBird_MA_MTB{
	meta:
		description = "Ransom:Win64/MoneyBird.MA!MTB,SIGNATURE_TYPE_PEHSTR_EXT,08 00 08 00 04 00 00 "
		
	strings :
		$a_01_0 = {6d 6f 6e 65 79 62 69 72 64 2e 70 64 62 } //5 moneybird.pdb
		$a_01_1 = {5f 46 61 6e 63 79 70 74 72 } //1 _Fancyptr
		$a_01_2 = {5f 50 72 6f 78 79 } //1 _Proxy
		$a_03_3 = {48 89 4c 24 08 48 83 ec 38 48 8b 44 24 40 48 89 44 24 20 48 8b 44 24 40 0f b6 00 85 c0 74 18 83 3d 76 bd 27 00 00 74 0f ff 15 ?? ?? ?? ?? 39 05 ?? ?? ?? ?? 75 01 } //1
	condition:
		((#a_01_0  & 1)*5+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_03_3  & 1)*1) >=8
 
}