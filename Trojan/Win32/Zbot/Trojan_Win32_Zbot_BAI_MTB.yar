
rule Trojan_Win32_Zbot_BAI_MTB{
	meta:
		description = "Trojan:Win32/Zbot.BAI!MTB,SIGNATURE_TYPE_PEHSTR_EXT,08 00 08 00 04 00 00 "
		
	strings :
		$a_01_0 = {41 39 32 43 62 43 76 38 63 64 4d 6a 58 36 49 47 63 6b 36 6d 30 61 33 43 71 32 6f 72 45 78 6e 37 54 4d 68 33 71 62 53 5a 4b 32 66 42 48 46 } //2 A92CbCv8cdMjX6IGck6m0a3Cq2orExn7TMh3qbSZK2fBHF
		$a_01_1 = {4d 50 50 47 4a 77 76 65 4f 45 77 30 45 45 4d 67 70 6a 39 67 52 39 66 4f 71 41 55 75 79 50 4d 5a 65 68 4a 73 70 77 4e 4a 66 76 67 30 41 67 4f 6b 45 } //2 MPPGJwveOEw0EEMgpj9gR9fOqAUuyPMZehJspwNJfvg0AgOkE
		$a_01_2 = {39 65 30 58 65 79 6a 68 79 59 44 4b 79 58 47 55 69 66 75 6b 34 6f 67 46 36 63 48 51 47 4a 35 } //2 9e0XeyjhyYDKyXGUifuk4ogF6cHQGJ5
		$a_01_3 = {69 63 6b 65 65 68 76 75 4b 31 44 6a 51 46 39 33 78 31 75 6d 35 4e 77 6e 66 7a 56 6e 59 74 33 43 32 53 42 7a 6c 45 4c 30 4d 42 61 31 42 38 46 64 75 65 57 79 75 36 64 62 41 78 45 6f 64 34 5a 38 73 4d 6c 55 62 50 6d 56 61 5a 31 } //2 ickeehvuK1DjQF93x1um5NwnfzVnYt3C2SBzlEL0MBa1B8FdueWyu6dbAxEod4Z8sMlUbPmVaZ1
	condition:
		((#a_01_0  & 1)*2+(#a_01_1  & 1)*2+(#a_01_2  & 1)*2+(#a_01_3  & 1)*2) >=8
 
}