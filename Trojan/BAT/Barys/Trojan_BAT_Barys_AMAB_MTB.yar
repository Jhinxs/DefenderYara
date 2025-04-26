
rule Trojan_BAT_Barys_AMAB_MTB{
	meta:
		description = "Trojan:BAT/Barys.AMAB!MTB,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 06 00 00 "
		
	strings :
		$a_81_0 = {43 3a 5c 50 72 6f 67 72 61 6d 20 46 69 6c 65 73 5c 50 55 42 47 5c 70 6b 65 79 } //1 C:\Program Files\PUBG\pkey
		$a_81_1 = {59 68 54 58 44 34 43 6a 73 4c 48 35 35 78 43 56 56 4b 54 62 6b 4e 33 44 45 46 6d 36 62 56 56 7a 36 6a 52 4d 50 63 39 4e 30 59 47 58 5a 6a 4f 34 75 72 } //1 YhTXD4CjsLH55xCVVKTbkN3DEFm6bVVz6jRMPc9N0YGXZjO4ur
		$a_81_2 = {44 69 73 61 62 6c 65 20 79 6f 75 72 20 41 6e 74 69 2d 56 69 72 75 73 2e 2e } //1 Disable your Anti-Virus..
		$a_81_3 = {23 23 20 44 6f 77 6e 6c 6f 61 64 20 66 69 6e 69 73 68 65 64 21 } //1 ## Download finished!
		$a_81_4 = {43 3a 5c 70 6b 65 79 } //1 C:\pkey
		$a_81_5 = {50 4c 6f 61 64 65 72 2e 65 78 65 } //1 PLoader.exe
	condition:
		((#a_81_0  & 1)*1+(#a_81_1  & 1)*1+(#a_81_2  & 1)*1+(#a_81_3  & 1)*1+(#a_81_4  & 1)*1+(#a_81_5  & 1)*1) >=6
 
}