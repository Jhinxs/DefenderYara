
rule Trojan_Win32_Emotetcrypt_IX_MTB{
	meta:
		description = "Trojan:Win32/Emotetcrypt.IX!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0b 00 0b 00 08 00 00 "
		
	strings :
		$a_01_0 = {44 6c 6c 52 65 67 69 73 74 65 72 53 65 72 76 65 72 } //10 DllRegisterServer
		$a_01_1 = {34 78 65 73 6b 5f 78 67 77 6e 31 6b 53 77 56 33 4d 46 31 32 35 75 32 6e 23 62 36 75 56 4a 6c 48 } //1 4xesk_xgwn1kSwV3MF125u2n#b6uVJlH
		$a_01_2 = {78 35 44 6e 25 47 47 6f 59 29 6c 5e 5e 57 35 46 4e 76 74 70 42 4a 73 34 25 4e 3f 6f 47 55 3c 58 43 3c 52 63 6f 58 4a 3c 63 47 50 23 50 29 49 3e 47 4d 34 5e 36 59 74 31 5f 6f 39 6e 74 2a 2b 50 47 58 6f 4a 57 4a 34 63 32 65 66 25 68 77 44 7a 31 6e 4e 48 23 26 29 62 24 28 74 68 4a 76 6b 36 65 41 6e 33 4e 6f 42 28 2b 39 2b 43 2a 59 78 43 } //1 x5Dn%GGoY)l^^W5FNvtpBJs4%N?oGU<XC<RcoXJ<cGP#P)I>GM4^6Yt1_o9nt*+PGXoJWJ4c2ef%hwDz1nNH#&)b$(thJvk6eAn3NoB(+9+C*YxC
		$a_01_3 = {6d 28 57 49 52 42 63 4b 63 24 73 58 5a 37 49 69 30 66 6f 56 31 6a 36 66 66 79 3c 32 68 45 31 6d 39 34 74 78 73 4f 3f 37 29 47 49 2a 40 69 5a 77 28 6b 79 63 58 53 24 3e 2a 41 42 38 21 36 51 4b 66 64 23 42 6f 68 57 54 74 4c 78 4a 36 36 5e 26 52 7a 24 53 37 79 2b 63 4b 35 44 4e 32 6f 62 34 } //1 m(WIRBcKc$sXZ7Ii0foV1j6ffy<2hE1m94txsO?7)GI*@iZw(kycXS$>*AB8!6QKfd#BohWTtLxJ66^&Rz$S7y+cK5DN2ob4
		$a_01_4 = {65 3f 45 78 76 59 69 3c 32 23 49 4c 62 3f 31 6a 70 76 53 4a 6e 59 76 48 77 34 36 51 67 54 55 24 45 29 21 38 6c 48 55 3c 23 59 46 6f 73 65 38 42 2b 4f 59 48 7a 5a 77 36 21 7a 6c 30 72 7a 46 57 38 4a 78 57 77 33 71 29 4b 5f 6c 67 31 35 46 6b 34 6e 49 5e 51 39 69 67 31 65 4e 78 66 5e 6d 6a 6c 50 2b 21 6a 5a 6d 4d 55 6d 64 70 58 6c 5a } //1 e?ExvYi<2#ILb?1jpvSJnYvHw46QgTU$E)!8lHU<#YFose8B+OYHzZw6!zl0rzFW8JxWw3q)K_lg15Fk4nI^Q9ig1eNxf^mjlP+!jZmMUmdpXlZ
		$a_01_5 = {46 6e 79 26 54 77 38 67 59 30 72 4d 64 6e 54 24 3f 71 64 34 54 57 38 64 4a 32 56 39 40 35 5e 30 4b 4c 78 6d 24 26 38 31 21 5a 69 7a 66 64 3e 4f 41 71 3e 77 78 71 33 4e 73 76 6d 52 4d 61 25 4c 4c 39 72 48 49 68 69 38 65 53 36 63 40 5f 64 38 58 77 70 25 76 49 72 70 26 76 2b 50 28 33 5a 49 75 4c 26 36 36 45 75 5e 26 4b 42 33 4e 70 61 2a } //1 Fny&Tw8gY0rMdnT$?qd4TW8dJ2V9@5^0KLxm$&81!Zizfd>OAq>wxq3NsvmRMa%LL9rHIhi8eS6c@_d8Xwp%vIrp&v+P(3ZIuL&66Eu^&KB3Npa*
		$a_01_6 = {6d 4e 42 6c 28 76 31 45 61 63 47 37 53 5a 3f 74 4d 45 6d 36 47 5f 67 5e 69 52 5a 6c 39 41 61 73 75 49 67 3f 65 33 68 74 47 6b 56 2b 30 6a } //1 mNBl(v1EacG7SZ?tMEm6G_g^iRZl9AasuIg?e3htGkV+0j
		$a_01_7 = {79 36 6f 29 55 57 28 6a 28 74 49 6e 34 42 32 6f 3f 3f 40 3f 3f 68 36 73 70 48 59 43 39 67 40 56 53 2b } //1 y6o)UW(j(tIn4B2o??@??h6spHYC9g@VS+
	condition:
		((#a_01_0  & 1)*10+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1+(#a_01_7  & 1)*1) >=11
 
}