
rule Ransom_Win64_Filecoder_DM_MTB{
	meta:
		description = "Ransom:Win64/Filecoder.DM!MTB,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 05 00 00 "
		
	strings :
		$a_81_0 = {41 6c 6c 20 6f 66 20 79 6f 75 72 20 69 6d 70 6f 72 74 61 6e 74 20 66 69 6c 65 73 20 65 6e 63 72 79 70 74 65 64 } //1 All of your important files encrypted
		$a_81_1 = {41 6c 6c 20 6f 66 20 79 6f 75 72 20 6e 65 74 77 6f 72 6b 20 63 6f 6d 70 75 74 65 72 73 20 66 69 6c 65 73 20 69 73 20 65 6e 63 72 79 70 74 65 64 } //1 All of your network computers files is encrypted
		$a_81_2 = {48 45 4c 50 5f 44 45 43 52 59 50 54 5f 59 4f 55 52 5f 46 49 4c 45 53 2e 74 78 74 } //1 HELP_DECRYPT_YOUR_FILES.txt
		$a_81_3 = {54 65 6c 65 67 72 61 6d 52 61 6e 73 6f 6d 77 61 72 65 } //1 TelegramRansomware
		$a_81_4 = {54 68 69 73 20 69 73 20 61 20 70 72 69 76 61 74 65 20 72 61 6e 73 6f 6d 77 61 72 65 20 64 65 76 65 6c 6f 70 65 64 20 62 79 20 6f 75 72 20 74 65 61 6d 20 61 6e 64 20 74 68 65 72 65 20 69 73 20 6e 6f 20 64 65 63 72 79 70 74 69 6f 6e 20 66 69 6c 65 20 66 6f 72 20 69 74 } //1 This is a private ransomware developed by our team and there is no decryption file for it
	condition:
		((#a_81_0  & 1)*1+(#a_81_1  & 1)*1+(#a_81_2  & 1)*1+(#a_81_3  & 1)*1+(#a_81_4  & 1)*1) >=3
 
}