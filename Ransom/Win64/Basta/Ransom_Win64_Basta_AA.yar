
rule Ransom_Win64_Basta_AA{
	meta:
		description = "Ransom:Win64/Basta.AA,SIGNATURE_TYPE_PEHSTR_EXT,0b 00 0b 00 02 00 00 "
		
	strings :
		$a_01_0 = {f1 d5 00 fa 4c 62 cc f4 0f 0b } //1
		$a_03_1 = {0f 57 c0 33 c0 48 89 45 70 0f 29 85 b0 00 00 00 f2 0f 10 45 70 f2 0f 11 85 c0 00 00 00 48 8d 95 b0 00 00 00 48 8d 4c 24 50 e8 ?? ?? ?? ?? 41 b8 3e 42 00 00 48 8d 15 ?? ?? ?? ?? 48 8d 4c 24 50 e8 ?? ?? ?? ?? 48 8d 4c 24 50 e8 ?? ?? ?? ?? 48 8d 4c 24 58 e8 } //10
	condition:
		((#a_01_0  & 1)*1+(#a_03_1  & 1)*10) >=11
 
}