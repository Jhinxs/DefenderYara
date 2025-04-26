
rule Trojan_Win32_Emotetcrypt_IJ_MTB{
	meta:
		description = "Trojan:Win32/Emotetcrypt.IJ!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 04 00 00 "
		
	strings :
		$a_81_0 = {5a 21 67 51 77 74 73 4e 77 61 58 44 2b 64 6a 35 67 30 6a 77 76 54 74 30 31 70 50 39 26 4b 40 25 5a 48 79 41 4b 2a 46 30 71 58 5e 7a 58 54 38 28 45 78 34 74 45 46 59 29 62 79 39 21 56 76 3c 26 6b 42 36 33 68 4a 4e 32 40 6d 24 74 70 36 66 56 67 4b 72 4c 66 6b 6e 39 79 46 5e 51 73 26 53 65 69 62 4e 7a 4a 67 73 72 51 } //1 Z!gQwtsNwaXD+dj5g0jwvTt01pP9&K@%ZHyAK*F0qX^zXT8(Ex4tEFY)by9!Vv<&kB63hJN2@m$tp6fVgKrLfkn9yF^Qs&SeibNzJgsrQ
		$a_81_1 = {47 5e 36 6e 4e 5e 3f 42 4b 66 44 39 5f 30 58 55 6a 62 21 35 51 4a 39 6b 37 38 29 50 47 52 75 2a 2b 62 77 2b 40 2a 52 24 6d 76 36 3f 31 3e 73 43 4c 2b 65 2a 47 38 71 43 76 33 51 79 4d 61 44 33 51 61 34 4b 44 36 63 79 38 4c 38 35 2a 5a 24 6e 37 32 69 67 45 68 5a 2a 6d 50 48 30 54 63 56 54 66 23 53 67 5e 7a 79 34 37 35 47 75 48 73 62 6e } //1 G^6nN^?BKfD9_0XUjb!5QJ9k78)PGRu*+bw+@*R$mv6?1>sCL+e*G8qCv3QyMaD3Qa4KD6cy8L85*Z$n72igEhZ*mPH0TcVTf#Sg^zy475GuHsbn
		$a_81_2 = {55 47 4a 4f 50 23 68 45 28 78 26 43 24 72 6b 50 31 4e 4c 78 34 46 78 36 62 21 4e 4c 7a 26 52 6c 6d 47 3e 32 48 66 66 54 37 40 79 53 68 6e 24 26 59 41 2b 55 21 39 38 45 23 68 33 45 6a 34 21 30 57 32 2b 72 4e 31 30 70 35 74 64 2b 26 46 69 61 56 } //1 UGJOP#hE(x&C$rkP1NLx4Fx6b!NLz&RlmG>2HffT7@yShn$&YA+U!98E#h3Ej4!0W2+rN10p5td+&FiaV
		$a_81_3 = {44 6c 6c 52 65 67 69 73 74 65 72 53 65 72 76 65 72 } //1 DllRegisterServer
	condition:
		((#a_81_0  & 1)*1+(#a_81_1  & 1)*1+(#a_81_2  & 1)*1+(#a_81_3  & 1)*1) >=2
 
}