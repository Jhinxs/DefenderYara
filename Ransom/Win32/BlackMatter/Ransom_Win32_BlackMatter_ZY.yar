
rule Ransom_Win32_BlackMatter_ZY{
	meta:
		description = "Ransom:Win32/BlackMatter.ZY,SIGNATURE_TYPE_PEHSTR_EXT,65 00 65 00 02 00 00 "
		
	strings :
		$a_00_0 = {f1 d5 00 fa 4c 62 cc f4 0f 0b } //1
		$a_01_1 = {33 c0 8b 55 0c 8b 75 08 66 ad 66 83 f8 41 72 0a 66 83 f8 5a 77 04 66 83 c8 20 80 c6 61 80 ee 61 c1 ca 0d 03 d0 85 c0 75 df } //100
	condition:
		((#a_00_0  & 1)*1+(#a_01_1  & 1)*100) >=101
 
}