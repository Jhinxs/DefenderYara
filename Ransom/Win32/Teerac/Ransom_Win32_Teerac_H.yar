
rule Ransom_Win32_Teerac_H{
	meta:
		description = "Ransom:Win32/Teerac.H,SIGNATURE_TYPE_PEHSTR_EXT,28 00 1e 00 04 00 00 "
		
	strings :
		$a_01_0 = {68 87 9d 1e c8 } //10
		$a_01_1 = {43 72 79 70 74 47 65 6e 52 61 6e 64 6f 6d } //10 CryptGenRandom
		$a_01_2 = {68 e7 5e c5 fa } //10
		$a_01_3 = {63 6f 64 65 5c 74 6f 72 5c 74 6f 72 72 5c 6c 69 62 72 65 73 73 6c 2d 32 2e 33 2e 31 5c 63 72 79 70 74 6f 5c } //10 code\tor\torr\libressl-2.3.1\crypto\
	condition:
		((#a_01_0  & 1)*10+(#a_01_1  & 1)*10+(#a_01_2  & 1)*10+(#a_01_3  & 1)*10) >=30
 
}