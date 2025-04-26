
rule Trojan_Win32_Emotetcrypt_GB_MTB{
	meta:
		description = "Trojan:Win32/Emotetcrypt.GB!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 05 00 00 "
		
	strings :
		$a_03_0 = {03 c2 33 d2 f7 35 ?? ?? ?? ?? 89 55 ec 8b 45 f4 03 05 ?? ?? ?? ?? 8b 4d ec 2b 0d ?? ?? ?? ?? 8b 55 08 0f b6 0c 0a 8b 55 0c 0f b6 04 02 33 c1 8b 4d f4 03 0d ?? ?? ?? ?? 8b 55 0c 88 04 0a } //1
		$a_81_1 = {69 43 77 74 44 46 5e 73 45 6b 65 54 36 66 44 50 21 49 28 47 6a 55 2b 61 72 41 38 4a 68 44 3c 76 4d 21 52 28 6b 52 45 29 5a 48 75 7a 26 36 2a 75 30 4c 35 45 55 35 67 63 43 74 2a 6c 30 6e 62 31 54 45 58 6e 6f 58 7a 71 2b 24 25 58 5a 7a 3e 57 3c 6e 2b 75 61 29 40 5a 56 47 41 3c 71 70 2b 2a 79 40 4f 44 4f 53 21 43 34 4e 41 7a 50 4a 54 76 73 36 56 33 } //1 iCwtDF^sEkeT6fDP!I(GjU+arA8JhD<vM!R(kRE)ZHuz&6*u0L5EU5gcCt*l0nb1TEXnoXzq+$%XZz>W<n+ua)@ZVGA<qp+*y@ODOS!C4NAzPJTvs6V3
		$a_81_2 = {36 69 57 65 4e 71 62 48 69 70 5a 63 65 62 73 6f 48 32 58 54 76 57 42 66 79 3f 39 21 55 70 48 6a 6d 48 30 74 30 72 31 46 36 69 4a 75 28 48 7a 3e 38 2b 34 42 21 51 39 53 63 70 52 56 67 79 6f 76 4c 65 23 78 28 55 37 7a 42 30 30 43 6d 7a 30 3e 79 6e 6c 24 23 5f 55 37 40 6a 50 3f 40 29 63 41 78 65 71 55 30 49 32 78 74 5e 73 24 } //1 6iWeNqbHipZcebsoH2XTvWBfy?9!UpHjmH0t0r1F6iJu(Hz>8+4B!Q9ScpRVgyovLe#x(U7zB00Cmz0>ynl$#_U7@jP?@)cAxeqU0I2xt^s$
		$a_81_3 = {74 72 4e 3e 47 64 47 72 30 43 61 57 68 76 72 66 23 65 5f 66 70 54 76 70 67 45 2b 50 55 3f 55 34 6b 4e 4a 47 57 3f 7a 4e 3f 25 42 41 6f 52 38 46 2b } //1 trN>GdGr0CaWhvrf#e_fpTvpgE+PU?U4kNJGW?zN?%BAoR8F+
		$a_81_4 = {73 61 3f 68 25 32 78 43 6a 62 37 21 64 44 47 24 2a 65 34 2a 69 38 70 21 33 55 75 74 6d 2a 67 42 76 43 79 34 72 4d 64 72 33 46 7a 66 67 } //1 sa?h%2xCjb7!dDG$*e4*i8p!3Uutm*gBvCy4rMdr3Fzfg
	condition:
		((#a_03_0  & 1)*1+(#a_81_1  & 1)*1+(#a_81_2  & 1)*1+(#a_81_3  & 1)*1+(#a_81_4  & 1)*1) >=1
 
}