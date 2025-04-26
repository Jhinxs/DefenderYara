
rule Worm_Win32_Gamarue_A{
	meta:
		description = "Worm:Win32/Gamarue.A,SIGNATURE_TYPE_PEHSTR_EXT,0c 00 0a 00 09 00 00 "
		
	strings :
		$a_01_0 = {62 75 72 75 6d 61 67 61 2e 6e 65 74 2f 77 77 77 2f 73 74 61 74 33 2e 70 68 70 } //1 burumaga.net/www/stat3.php
		$a_01_1 = {61 6e 64 72 6f 6d 65 64 61 } //1 andromeda
		$a_01_2 = {44 3a 28 41 3b 3b 4b 52 57 44 3b 3b 3b 57 44 29 } //1 D:(A;;KRWD;;;WD)
		$a_01_3 = {69 64 3a 25 6c 75 7c 62 76 3a 25 6c 75 7c 73 76 3a 25 6c 75 7c 6c 61 3a 25 6c 75 } //3 id:%lu|bv:%lu|sv:%lu|la:%lu
		$a_01_4 = {69 64 3a 25 6c 75 7c 74 69 64 3a 25 6c 75 7c 72 65 73 75 6c 74 3a 25 6c 75 } //3 id:%lu|tid:%lu|result:%lu
		$a_01_5 = {8b 45 f0 8b 4d ec 81 7c 01 fb 2e 63 6f 6d 75 24 33 c9 51 51 6a 03 51 6a 01 68 00 00 00 80 ff 75 f0 } //3
		$a_01_6 = {68 65 78 65 00 68 63 6c 74 2e 68 77 75 61 75 8b d4 33 c0 50 50 6a 03 50 6a 01 68 00 00 00 80 52 ff 55 f8 } //10
		$a_01_7 = {b0 68 aa 8b 45 9c ab b0 c3 aa } //1
		$a_01_8 = {ac 84 c0 74 09 0c 23 32 d0 c1 c2 11 eb f2 } //1
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*3+(#a_01_4  & 1)*3+(#a_01_5  & 1)*3+(#a_01_6  & 1)*10+(#a_01_7  & 1)*1+(#a_01_8  & 1)*1) >=10
 
}