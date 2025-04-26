
rule Ransom_Win32_Basta_AA{
	meta:
		description = "Ransom:Win32/Basta.AA,SIGNATURE_TYPE_PEHSTR_EXT,0b 00 0b 00 02 00 00 "
		
	strings :
		$a_01_0 = {f1 d5 00 fa 4c 62 cc f4 0f 0b } //1
		$a_03_1 = {8b 7d 08 be 01 00 00 00 c6 07 69 8d 45 08 50 e8 ?? ?? ?? ?? 8a 45 08 83 c4 04 88 04 3e 46 83 fe 28 72 e8 } //10
	condition:
		((#a_01_0  & 1)*1+(#a_03_1  & 1)*10) >=11
 
}