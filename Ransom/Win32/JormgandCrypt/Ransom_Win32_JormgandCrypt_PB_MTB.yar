
rule Ransom_Win32_JormgandCrypt_PB_MTB{
	meta:
		description = "Ransom:Win32/JormgandCrypt.PB!MTB,SIGNATURE_TYPE_PEHSTR_EXT,07 00 07 00 07 00 00 "
		
	strings :
		$a_01_0 = {47 6f 20 62 75 69 6c 64 20 49 44 3a 20 22 50 34 7a 38 57 5f 7a 45 5f 5a 31 64 42 71 39 64 69 55 51 37 2f 5a 45 57 44 30 45 62 71 72 42 6a 2d 34 58 49 4d 4a 6c 2d 6f 2f 77 6d 4b 58 43 30 43 2d 66 76 4a 43 30 79 5f 45 6e 64 67 68 2f 32 34 46 55 73 5a 6b 53 71 45 59 36 62 36 55 72 72 65 65 58 } //1 Go build ID: "P4z8W_zE_Z1dBq9diUQ7/ZEWD0EbqrBj-4XIMJl-o/wmKXC0C-fvJC0y_Endgh/24FUsZkSqEY6b6UrreeX
		$a_01_1 = {2e 67 6c 6f 63 6b } //1 .glock
		$a_01_2 = {4a 6f 72 6d 75 6e 67 61 6e 64 } //1 Jormungand
		$a_01_3 = {73 74 6f 70 74 68 65 77 6f 72 6c 64 } //1 stoptheworld
		$a_01_4 = {74 61 73 6b 6b 69 6c 6c 2e 65 78 65 } //1 taskkill.exe
		$a_01_5 = {52 45 41 44 2d 4d 45 2d 4e 4f 57 2e 74 78 74 } //1 READ-ME-NOW.txt
		$a_01_6 = {4a 6f 72 6d 75 6e 67 61 6e 64 2f 6d 61 69 6e 2e 67 6f } //1 Jormungand/main.go
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1) >=7
 
}