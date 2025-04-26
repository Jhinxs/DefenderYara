
rule Ransom_Win64_Filecoder_DN_MTB{
	meta:
		description = "Ransom:Win64/Filecoder.DN!MTB,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 "
		
	strings :
		$a_81_0 = {2e 6c 6f 63 6b 65 64 } //1 .locked
		$a_81_1 = {43 72 79 70 74 6f 72 5f 6e 6f 56 53 53 6e 6f 50 65 72 73 2e 70 64 62 } //1 Cryptor_noVSSnoPers.pdb
		$a_81_2 = {43 72 79 70 74 6f 72 2e 65 78 65 } //1 Cryptor.exe
		$a_81_3 = {74 65 69 75 71 2f 20 6c 6c 61 2f 20 73 77 6f 64 61 68 73 20 65 74 65 6c 65 64 20 65 78 65 2e 6e 69 6d 64 61 73 73 76 20 63 2f 20 64 6d 63 } //1 teiuq/ lla/ swodahs eteled exe.nimdassv c/ dmc
	condition:
		((#a_81_0  & 1)*1+(#a_81_1  & 1)*1+(#a_81_2  & 1)*1+(#a_81_3  & 1)*1) >=4
 
}