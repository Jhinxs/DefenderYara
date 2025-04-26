
rule Ransom_MSIL_LokiLocker_MA_MTB{
	meta:
		description = "Ransom:MSIL/LokiLocker.MA!MTB,SIGNATURE_TYPE_PEHSTR_EXT,07 00 07 00 05 00 00 "
		
	strings :
		$a_01_0 = {57 bf a2 3f 09 0b 00 00 00 fa 01 33 00 16 00 00 01 00 00 00 e5 00 00 00 c5 00 00 00 d5 } //2
		$a_01_1 = {06 7e c1 01 00 04 02 07 6f 8b 00 00 0a 7e 0a 01 00 04 07 7e 0a 01 00 04 8e 69 5d 91 61 28 7c 03 00 06 28 81 03 00 06 26 07 17 58 0b 07 02 6f 79 00 00 0a 32 c6 } //2
		$a_01_2 = {39 38 43 36 39 36 32 37 2d 39 41 43 44 2d 34 39 46 45 2d 42 32 41 33 2d 46 42 31 44 45 30 45 30 37 46 37 33 } //1 98C69627-9ACD-49FE-B2A3-FB1DE0E07F73
		$a_01_3 = {45 6e 63 72 79 70 74 44 72 69 76 65 73 } //1 EncryptDrives
		$a_01_4 = {4c 6f 6b 69 4c 6f 63 6b 65 72 } //1 LokiLocker
	condition:
		((#a_01_0  & 1)*2+(#a_01_1  & 1)*2+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1) >=7
 
}