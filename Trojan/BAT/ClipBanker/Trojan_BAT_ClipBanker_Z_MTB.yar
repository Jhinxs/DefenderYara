
rule Trojan_BAT_ClipBanker_Z_MTB{
	meta:
		description = "Trojan:BAT/ClipBanker.Z!MTB,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 06 00 00 "
		
	strings :
		$a_81_0 = {59 6e 52 75 55 6d 56 6d 63 6d 56 7a 61 46 4e 6f 59 58 4a 70 62 6d 64 7a } //1 YnRuUmVmcmVzaFNoYXJpbmdz
		$a_81_1 = {36 4a 6d 61 35 6f 75 66 36 4c 65 76 35 35 53 78 35 59 71 70 35 6f 6d 4c } //1 6Jma5ouf6Lev55Sx5Yqp5omL
		$a_81_2 = {55 33 52 76 63 46 52 76 62 32 78 54 64 48 4a 70 63 45 31 6c 62 6e 56 4a 64 47 56 74 } //1 U3RvcFRvb2xTdHJpcE1lbnVJdGVt
		$a_81_3 = {62 6e 56 74 54 57 46 34 51 32 78 70 5a 57 35 30 63 77 3d 3d 20 35 61 36 69 35 6f 69 33 35 36 75 76 35 59 69 58 36 4b 47 6f 37 37 79 49 65 7a 42 39 37 37 79 4a 20 35 61 36 69 35 6f 69 33 35 36 75 76 35 59 69 58 36 4b 47 6f 37 37 79 49 4d 4f 2b 38 69 51 3d 3d } //1 bnVtTWF4Q2xpZW50cw== 5a6i5oi356uv5YiX6KGo77yIezB977yJ 5a6i5oi356uv5YiX6KGo77yIMO+8iQ==
		$a_81_4 = {64 48 68 30 55 47 46 30 61 41 3d 3d 2c 55 33 52 76 63 46 4e 6f 59 58 4a 70 62 6d 64 42 62 47 78 55 62 32 39 73 55 33 52 79 61 58 42 4e 5a 57 35 31 53 58 52 6c 62 51 3d 3d } //1 dHh0UGF0aA==,U3RvcFNoYXJpbmdBbGxUb29sU3RyaXBNZW51SXRlbQ==
		$a_81_5 = {35 6f 6d 54 35 62 79 41 28 55 33 52 76 63 46 4e 6f 59 58 4a 70 62 6d 64 55 62 32 39 73 55 33 52 79 61 58 42 4e 5a 57 35 31 53 58 52 6c 62 51 3d 3d } //1 5omT5byA(U3RvcFNoYXJpbmdUb29sU3RyaXBNZW51SXRlbQ==
	condition:
		((#a_81_0  & 1)*1+(#a_81_1  & 1)*1+(#a_81_2  & 1)*1+(#a_81_3  & 1)*1+(#a_81_4  & 1)*1+(#a_81_5  & 1)*1) >=6
 
}