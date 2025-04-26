
rule Ransom_Win32_SanwaiCrypt_PB_MTB{
	meta:
		description = "Ransom:Win32/SanwaiCrypt.PB!MTB,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 03 00 00 "
		
	strings :
		$a_01_0 = {49 4d 50 4f 52 54 41 4e 54 2e 68 74 6d 6c } //1 IMPORTANT.html
		$a_01_1 = {52 45 41 44 4d 45 21 21 21 21 2e 74 78 74 } //1 README!!!!.txt
		$a_01_2 = {5c 67 65 72 6a 6a 6b 72 6b 6a 6a 6b 33 33 2e 70 64 62 } //3 \gerjjkrkjjk33.pdb
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*3) >=4
 
}