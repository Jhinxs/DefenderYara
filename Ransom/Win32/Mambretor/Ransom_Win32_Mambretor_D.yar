
rule Ransom_Win32_Mambretor_D{
	meta:
		description = "Ransom:Win32/Mambretor.D,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 07 00 00 "
		
	strings :
		$a_01_0 = {49 43 59 67 64 47 46 7a 61 32 74 70 62 47 77 67 4c 32 6c 74 49 45 31 76 64 57 35 30 4c 6d 56 34 5a 53 } //1 ICYgdGFza2tpbGwgL2ltIE1vdW50LmV4ZS
		$a_01_1 = {4c 57 56 75 59 33 4a 35 63 48 51 67 63 48 51 } //1 LWVuY3J5cHQgcHQ
		$a_01_2 = {4c 30 4d 67 63 47 6c 75 5a 79 41 78 4c 6a 45 75 4d 53 34 78 49 43 31 75 49 44 45 67 4c 58 63 67 4d 7a 41 77 4d 43 41 2b 49 45 35 31 62 43 41 6d 49 48 4e 6a 49 47 52 6c 62 47 56 30 5a 53 42 45 5a 57 5a 79 59 57 64 74 5a 57 35 30 55 32 56 79 64 6d 6c 6a 5a 53 41 6d 49 45 52 6c 62 43 41 69 } //1 L0MgcGluZyAxLjEuMS4xIC1uIDEgLXcgMzAwMCA+IE51bCAmIHNjIGRlbGV0ZSBEZWZyYWdtZW50U2VydmljZSAmIERlbCAi
		$a_01_3 = {58 47 52 6a 59 32 39 75 4c 6d 56 34 5a 51 } //1 XGRjY29uLmV4ZQ
		$a_01_4 = {25 00 73 00 5c 00 64 00 72 00 69 00 76 00 65 00 72 00 73 00 5c 00 25 00 73 00 } //1 %s\drivers\%s
		$a_00_5 = {33 00 32 00 44 00 43 00 52 00 59 00 50 00 54 00 2e 00 53 00 59 00 53 00 } //1 32DCRYPT.SYS
		$a_00_6 = {32 00 43 00 3a 00 5c 00 78 00 61 00 6d 00 70 00 70 00 } //1 2C:\xampp
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_00_5  & 1)*1+(#a_00_6  & 1)*1) >=5
 
}