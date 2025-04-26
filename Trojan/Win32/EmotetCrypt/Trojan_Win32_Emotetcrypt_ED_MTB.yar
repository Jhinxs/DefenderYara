
rule Trojan_Win32_Emotetcrypt_ED_MTB{
	meta:
		description = "Trojan:Win32/Emotetcrypt.ED!MTB,SIGNATURE_TYPE_PEHSTR_EXT,08 00 08 00 08 00 00 "
		
	strings :
		$a_00_0 = {6a 04 68 00 30 00 00 6a 0a 6a 00 8b 45 08 8b 48 18 ff d1 } //1
		$a_81_1 = {78 6f 66 75 6e 6c 37 36 33 74 2e 64 6c 6c } //1 xofunl763t.dll
		$a_81_2 = {44 6c 6c 52 65 67 69 73 74 65 72 53 65 72 76 65 72 } //1 DllRegisterServer
		$a_81_3 = {65 33 39 78 38 68 64 37 7a 35 7a 30 39 38 6f 63 77 77 33 62 68 62 33 32 66 6c 37 32 66 77 61 } //1 e39x8hd7z5z098ocww3bhb32fl72fwa
		$a_81_4 = {69 7a 31 7a 6a 37 38 72 6f 71 74 75 70 74 34 66 32 79 64 32 65 36 35 72 67 32 } //1 iz1zj78roqtupt4f2yd2e65rg2
		$a_81_5 = {73 6a 38 34 6e 31 6a 33 6e 6e 72 78 77 77 61 32 64 62 68 64 74 78 } //1 sj84n1j3nnrxwwa2dbhdtx
		$a_81_6 = {62 74 31 76 6e 31 7a 6a 6b 65 33 30 73 34 37 70 6f } //1 bt1vn1zjke30s47po
		$a_81_7 = {49 73 44 65 62 75 67 67 65 72 50 72 65 73 65 6e 74 } //1 IsDebuggerPresent
	condition:
		((#a_00_0  & 1)*1+(#a_81_1  & 1)*1+(#a_81_2  & 1)*1+(#a_81_3  & 1)*1+(#a_81_4  & 1)*1+(#a_81_5  & 1)*1+(#a_81_6  & 1)*1+(#a_81_7  & 1)*1) >=8
 
}