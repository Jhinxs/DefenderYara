
rule Ransom_MSIL_Filecoder_EV_MTB{
	meta:
		description = "Ransom:MSIL/Filecoder.EV!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0a 00 0a 00 07 00 00 "
		
	strings :
		$a_81_0 = {63 75 74 65 52 61 6e 73 6f 6d 77 61 72 65 } //6 cuteRansomware
		$a_81_1 = {52 61 7a 79 5f 35 2e 5f 30 2e 52 61 6e 73 6f 6d 77 61 72 65 } //6 Razy_5._0.Ransomware
		$a_81_2 = {73 65 6e 64 42 61 63 6b 2e 74 78 74 } //1 sendBack.txt
		$a_81_3 = {65 6e 63 72 79 70 74 41 6c 6c } //1 encryptAll
		$a_81_4 = {65 6e 63 72 79 70 74 46 69 6c 65 } //1 encryptFile
		$a_81_5 = {43 72 65 61 74 65 45 6e 63 72 79 70 74 6f 72 } //1 CreateEncryptor
		$a_81_6 = {67 65 74 52 61 6e 64 6f 6d 46 69 6c 65 4e 61 6d 65 } //1 getRandomFileName
	condition:
		((#a_81_0  & 1)*6+(#a_81_1  & 1)*6+(#a_81_2  & 1)*1+(#a_81_3  & 1)*1+(#a_81_4  & 1)*1+(#a_81_5  & 1)*1+(#a_81_6  & 1)*1) >=10
 
}