
rule Ransom_MSIL_Filecoder_PU_MTB{
	meta:
		description = "Ransom:MSIL/Filecoder.PU!MTB,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 "
		
	strings :
		$a_01_0 = {2e 00 63 00 72 00 70 00 74 00 } //1 .crpt
		$a_01_1 = {5c 00 21 00 52 00 45 00 53 00 54 00 4f 00 52 00 45 00 21 00 2e 00 74 00 78 00 74 00 } //1 \!RESTORE!.txt
		$a_01_2 = {5c 00 77 00 61 00 6c 00 6c 00 70 00 70 00 2e 00 70 00 6e 00 67 00 } //1 \wallpp.png
		$a_01_3 = {70 00 65 00 72 00 6d 00 61 00 6e 00 65 00 6e 00 74 00 6c 00 79 00 20 00 64 00 61 00 6d 00 61 00 67 00 65 00 20 00 79 00 6f 00 75 00 72 00 20 00 66 00 69 00 6c 00 65 00 73 00 } //1 permanently damage your files
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1) >=4
 
}