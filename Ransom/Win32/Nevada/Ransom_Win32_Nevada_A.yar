
rule Ransom_Win32_Nevada_A{
	meta:
		description = "Ransom:Win32/Nevada.A,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 04 00 00 "
		
	strings :
		$a_81_0 = {42 5a 62 33 56 79 49 47 5a 70 62 47 56 7a 49 48 64 6c 63 6d 55 67 63 33 52 76 62 47 56 75 49 47 46 75 5a 43 42 6c 62 6d 4e 79 65 58 42 30 5a 57 51 } //2 BZb3VyIGZpbGVzIHdlcmUgc3RvbGVuIGFuZCBlbmNyeXB0ZWQ
		$a_81_1 = {53 30 2b 49 46 42 68 65 53 42 68 49 48 4a 68 62 6e } //2 S0+IFBheSBhIHJhbn
		$a_81_2 = {70 65 57 51 75 62 32 35 70 62 } //2 peWQub25pb
		$a_81_3 = {55 67 5a 32 39 70 62 6d 63 67 64 47 38 67 63 6d 56 6a 62 33 5a 6c 63 69 42 } //2 UgZ29pbmcgdG8gcmVjb3ZlciB
	condition:
		((#a_81_0  & 1)*2+(#a_81_1  & 1)*2+(#a_81_2  & 1)*2+(#a_81_3  & 1)*2) >=6
 
}