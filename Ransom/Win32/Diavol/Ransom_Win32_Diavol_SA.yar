
rule Ransom_Win32_Diavol_SA{
	meta:
		description = "Ransom:Win32/Diavol.SA,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 01 00 00 "
		
	strings :
		$a_02_0 = {5c 00 6c 00 6f 00 63 00 6b 00 63 00 72 00 79 00 2e 00 64 00 69 00 76 00 69 00 64 00 65 00 64 00 5c 00 77 00 69 00 70 00 65 00 73 00 68 00 61 00 64 00 6f 00 77 00 63 00 6f 00 70 00 69 00 65 00 73 00 36 00 34 00 5c 00 72 00 65 00 6c 00 6e 00 6f 00 63 00 72 00 74 00 5c 00 [0-ff] 2e 00 70 00 64 00 62 00 } //5
	condition:
		((#a_02_0  & 1)*5) >=5
 
}