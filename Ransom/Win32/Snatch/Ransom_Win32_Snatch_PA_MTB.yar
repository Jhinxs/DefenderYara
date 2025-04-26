
rule Ransom_Win32_Snatch_PA_MTB{
	meta:
		description = "Ransom:Win32/Snatch.PA!MTB,SIGNATURE_TYPE_PEHSTR,0c 00 0c 00 0c 00 00 "
		
	strings :
		$a_01_0 = {59 6f 75 72 20 61 6c 6c 20 79 6f 75 72 20 66 69 6c 65 73 20 61 72 65 20 65 6e 63 72 79 70 74 65 64 20 61 6e 64 20 6f 6e 6c 79 20 49 20 63 61 6e 20 64 65 63 72 79 70 74 20 74 68 65 6d 2e } //1 Your all your files are encrypted and only I can decrypt them.
		$a_01_1 = {54 68 65 20 68 65 61 64 65 72 20 6f 66 20 74 68 65 20 6c 65 74 74 65 72 20 6d 75 73 74 20 63 6f 6e 74 61 69 6e 20 74 68 65 20 65 78 74 65 6e 73 69 6f 6e 20 6f 66 20 74 68 65 20 65 6e 63 72 79 70 74 6f 72 } //1 The header of the letter must contain the extension of the encryptor
		$a_01_2 = {59 6f 75 20 6d 61 79 20 62 65 20 61 20 76 69 63 74 69 6d 20 6f 66 20 66 72 61 75 64 2e } //1 You may be a victim of fraud.
		$a_01_3 = {52 45 41 44 4d 45 5f 35 4f 41 58 4e 5f 44 41 54 41 2e 74 78 74 } //1 README_5OAXN_DATA.txt
		$a_01_4 = {2f 72 6f 6f 74 2f 67 6f 2f 73 72 63 2f 73 6e 61 74 63 68 2f 63 6f 6e 66 69 67 2e 67 6f } //1 /root/go/src/snatch/config.go
		$a_01_5 = {2f 72 6f 6f 74 2f 67 6f 2f 73 72 63 2f 73 6e 61 74 63 68 2f 73 65 72 76 69 63 65 73 2e 67 6f } //1 /root/go/src/snatch/services.go
		$a_01_6 = {2f 72 6f 6f 74 2f 67 6f 2f 73 72 63 2f 73 6e 61 74 63 68 2f 6d 61 69 6e 2e 67 6f } //1 /root/go/src/snatch/main.go
		$a_01_7 = {2f 72 6f 6f 74 2f 67 6f 2f 73 72 63 2f 73 6e 61 74 63 68 2f 6c 6f 67 65 72 2e 67 6f } //1 /root/go/src/snatch/loger.go
		$a_01_8 = {2f 72 6f 6f 74 2f 67 6f 2f 73 72 63 2f 73 6e 61 74 63 68 2f 66 69 6c 65 73 2e 67 6f } //1 /root/go/src/snatch/files.go
		$a_01_9 = {2f 72 6f 6f 74 2f 67 6f 2f 73 72 63 2f 73 6e 61 74 63 68 2f 64 69 72 73 2e 67 6f } //1 /root/go/src/snatch/dirs.go
		$a_01_10 = {6d 61 69 6e 2e 73 74 6f 70 69 6e 67 53 65 72 76 69 63 65 } //1 main.stopingService
		$a_01_11 = {6d 61 69 6e 2e 65 6e 63 72 79 70 74 46 69 6c 65 2e 66 75 6e 63 } //1 main.encryptFile.func
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1+(#a_01_7  & 1)*1+(#a_01_8  & 1)*1+(#a_01_9  & 1)*1+(#a_01_10  & 1)*1+(#a_01_11  & 1)*1) >=12
 
}