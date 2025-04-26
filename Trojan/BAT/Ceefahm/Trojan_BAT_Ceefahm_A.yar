
rule Trojan_BAT_Ceefahm_A{
	meta:
		description = "Trojan:BAT/Ceefahm.A,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 "
		
	strings :
		$a_01_0 = {61 48 52 30 63 44 6f 76 4c 32 78 76 59 32 46 73 61 47 39 7a 64 43 39 79 5a 57 4e 32 4c 6e 42 6f 63 44 39 6e 5a 47 46 30 59 54 30 3d } //1 aHR0cDovL2xvY2FsaG9zdC9yZWN2LnBocD9nZGF0YT0=
		$a_01_1 = {56 58 42 73 62 32 46 6b 55 6d 56 77 62 33 4a 30 54 47 39 6e 61 57 34 75 59 58 4e 74 65 41 3d 3d } //1 VXBsb2FkUmVwb3J0TG9naW4uYXNteA==
		$a_01_2 = {51 58 56 30 62 31 4e 30 59 58 4a 30 56 58 41 67 54 57 39 6b 64 57 78 6c 49 47 68 68 63 79 42 6d 59 57 6c 73 5a 57 51 75 } //1 QXV0b1N0YXJ0VXAgTW9kdWxlIGhhcyBmYWlsZWQu
		$a_01_3 = {62 47 6c 30 61 57 56 7a 4c 6d 4e 76 62 53 38 3d } //1 bGl0aWVzLmNvbS8=
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1) >=4
 
}