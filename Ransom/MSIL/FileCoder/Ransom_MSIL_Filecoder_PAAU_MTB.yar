
rule Ransom_MSIL_Filecoder_PAAU_MTB{
	meta:
		description = "Ransom:MSIL/Filecoder.PAAU!MTB,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 "
		
	strings :
		$a_01_0 = {52 41 4e 53 4f 4d 57 41 52 45 2e 70 64 62 } //1 RANSOMWARE.pdb
		$a_01_1 = {59 00 4f 00 55 00 52 00 20 00 43 00 4f 00 4d 00 50 00 55 00 54 00 45 00 52 00 20 00 48 00 41 00 53 00 20 00 42 00 45 00 45 00 4e 00 20 00 4c 00 4f 00 43 00 4b 00 45 00 44 00 21 00 } //1 YOUR COMPUTER HAS BEEN LOCKED!
		$a_01_2 = {43 00 52 00 59 00 50 00 54 00 2e 00 43 00 52 00 59 00 50 00 54 00 4f 00 4c 00 4f 00 43 00 4b 00 45 00 52 00 } //1 CRYPT.CRYPTOLOCKER
		$a_01_3 = {45 78 61 6d 70 6c 65 5f 52 41 4e 53 4f 4d 57 41 52 45 2e 45 6e 63 72 79 70 74 69 6f 6e } //1 Example_RANSOMWARE.Encryption
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1) >=4
 
}