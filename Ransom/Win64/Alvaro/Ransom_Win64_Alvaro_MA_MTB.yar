
rule Ransom_Win64_Alvaro_MA_MTB{
	meta:
		description = "Ransom:Win64/Alvaro.MA!MTB,SIGNATURE_TYPE_PEHSTR_EXT,07 00 07 00 07 00 00 "
		
	strings :
		$a_01_0 = {68 74 74 70 73 3a 2f 2f 61 70 69 2e 74 65 6c 65 67 72 61 6d 2e 6f 72 67 2f 62 6f 74 } //1 https://api.telegram.org/bot
		$a_01_1 = {2f 73 65 6e 64 4d 65 73 73 61 67 65 3f 63 68 61 74 5f 69 64 3d } //1 /sendMessage?chat_id=
		$a_01_2 = {2e 45 4d 41 49 4c 20 3d 20 5b 61 6c 76 61 72 6f 64 65 63 72 79 70 74 40 67 6d 61 69 6c 2e 63 6f 6d 5d 49 44 20 3d } //1 .EMAIL = [alvarodecrypt@gmail.com]ID =
		$a_01_3 = {2e 61 6c 76 61 72 6f } //1 .alvaro
		$a_01_4 = {46 49 4c 45 20 45 4e 43 52 59 50 54 45 44 2e 74 78 74 } //1 FILE ENCRYPTED.txt
		$a_01_5 = {54 6f 20 72 65 73 74 6f 72 65 20 74 68 65 20 73 79 73 74 65 6d 20 77 72 69 74 65 20 74 6f 20 62 6f 74 68 20 3a 20 61 6c 76 61 72 6f 64 65 63 72 79 70 74 40 67 6d 61 69 6c 2e 63 6f 6d } //1 To restore the system write to both : alvarodecrypt@gmail.com
		$a_01_6 = {61 6c 76 61 72 6f 64 65 63 72 79 70 74 40 6f 75 74 6c 6f 6f 6b 2e 63 6f 6d } //1 alvarodecrypt@outlook.com
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1) >=7
 
}