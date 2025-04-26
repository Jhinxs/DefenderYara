
rule Ransom_Win32_IntcobCrypt_PA_MTB{
	meta:
		description = "Ransom:Win32/IntcobCrypt.PA!MTB,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 "
		
	strings :
		$a_01_0 = {69 00 73 00 5f 00 69 00 74 00 5f 00 70 00 6f 00 73 00 73 00 69 00 62 00 6c 00 65 00 5f 00 72 00 65 00 74 00 75 00 72 00 6e 00 5f 00 62 00 61 00 63 00 6b 00 20 00 6c 00 6f 00 73 00 74 00 20 00 64 00 6f 00 63 00 75 00 6d 00 65 00 6e 00 74 00 73 00 2e 00 74 00 78 00 74 00 } //1 is_it_possible_return_back lost documents.txt
		$a_01_1 = {2e 00 69 00 6e 00 74 00 65 00 72 00 63 00 6f 00 62 00 72 00 6f 00 73 00 2d 00 39 00 6b 00 37 00 73 00 79 00 66 00 75 00 73 00 } //1 .intercobros-9k7syfus
		$a_01_2 = {63 00 79 00 6e 00 65 00 74 00 20 00 72 00 61 00 6e 00 73 00 6f 00 6d 00 20 00 70 00 72 00 6f 00 74 00 65 00 63 00 74 00 69 00 6f 00 6e 00 } //1 cynet ransom protection
		$a_01_3 = {45 6e 63 72 79 70 74 69 6f 6e 53 74 61 67 65 31 20 62 65 67 69 6e } //1 EncryptionStage1 begin
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1) >=4
 
}