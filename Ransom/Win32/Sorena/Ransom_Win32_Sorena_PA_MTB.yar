
rule Ransom_Win32_Sorena_PA_MTB{
	meta:
		description = "Ransom:Win32/Sorena.PA!MTB,SIGNATURE_TYPE_PEHSTR_EXT,09 00 09 00 09 00 00 "
		
	strings :
		$a_01_0 = {47 6f 20 62 75 69 6c 64 20 49 44 3a 20 } //1 Go build ID: 
		$a_01_1 = {41 6c 6c 20 59 6f 75 72 20 46 69 6c 65 73 20 48 61 73 20 42 65 65 6e 20 4c 6f 63 6b 65 64 21 } //2 All Your Files Has Been Locked!
		$a_01_2 = {5c 48 6f 77 5f 74 6f 5f 55 6e 6c 6f 63 6b 5f 46 69 6c 65 73 2e 74 78 74 } //2 \How_to_Unlock_Files.txt
		$a_01_3 = {5c 48 6f 77 5f 54 6f 5f 44 65 63 72 79 70 74 5f 46 69 6c 65 73 2e 74 78 74 } //2 \How_To_Decrypt_Files.txt
		$a_01_4 = {77 65 20 63 61 6e 20 64 65 63 72 79 70 74 20 61 6c 6c 20 79 6f 75 72 20 66 69 6c 65 73 20 61 66 74 65 72 20 70 61 79 69 6e 67 20 74 68 65 20 72 61 6e 73 6f 6d } //2 we can decrypt all your files after paying the ransom
		$a_03_5 = {43 6f 6e 74 61 63 74 20 3a 20 [0-15] 40 67 6d 61 69 6c 2e 63 6f 6d 20 6f 72 20 68 74 74 70 73 3a 2f 2f 74 2e 6d 65 2f 46 69 6c 65 } //2
		$a_03_6 = {43 3a 2f 55 73 65 72 73 2f [0-10] 2f 67 6f 2f 73 72 63 2f [0-10] 2f 45 6e 63 72 79 70 74 2e 67 6f } //2
		$a_01_7 = {6d 61 69 6e 2e 65 6e 63 72 79 70 74 } //2 main.encrypt
		$a_01_8 = {46 69 6c 65 55 6e 6c 6f 63 6b 46 69 6c 65 45 78 5c 45 6e 63 72 79 70 74 2e 65 78 65 } //2 FileUnlockFileEx\Encrypt.exe
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*2+(#a_01_2  & 1)*2+(#a_01_3  & 1)*2+(#a_01_4  & 1)*2+(#a_03_5  & 1)*2+(#a_03_6  & 1)*2+(#a_01_7  & 1)*2+(#a_01_8  & 1)*2) >=9
 
}