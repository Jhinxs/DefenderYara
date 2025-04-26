
rule Trojan_Win32_Emotet_PBA_MTB{
	meta:
		description = "Trojan:Win32/Emotet.PBA!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 05 00 00 "
		
	strings :
		$a_02_0 = {0f b6 04 0e 0f b6 d2 03 c2 33 d2 f7 35 ?? ?? ?? ?? 0f b6 04 0a 32 44 2b ?? 83 6c 24 ?? 01 88 45 } //1
		$a_02_1 = {0f b6 04 0f 0f b6 d2 03 c2 33 d2 f7 35 ?? ?? ?? ?? 8a 04 0a 32 04 2b 88 45 } //1
		$a_81_2 = {3f 49 35 33 59 77 54 58 4f 49 38 73 49 52 6b 75 70 25 23 58 50 62 57 4a 3f 4a 40 6a 52 57 75 43 3f 4f 34 6d 42 23 39 64 65 62 68 67 65 4d 57 4e 55 49 43 48 39 4e 4b 67 68 73 45 72 48 72 25 7b 50 3f 56 7c 35 75 31 56 } //1 ?I53YwTXOI8sIRkup%#XPbWJ?J@jRWuC?O4mB#9debhgeMWNUICH9NKghsErHr%{P?V|5u1V
		$a_81_3 = {47 70 7d 6c 6f 5a 54 50 43 73 62 66 5a 6d 7d 42 34 6c 35 5a 7e 6e 62 75 7c 44 51 62 2a 6e 7a 79 78 31 7d 7a 40 76 34 23 7e 61 63 24 62 63 69 66 74 6e 6d 70 59 7b 40 4d 56 70 4e 7b 46 75 71 33 65 6c 42 64 7d 33 63 61 41 4c 6c 7d 49 64 48 4a 6b 73 65 } //1 Gp}loZTPCsbfZm}B4l5Z~nbu|DQb*nzyx1}z@v4#~ac$bciftnmpY{@MVpN{Fuq3elBd}3caALl}IdHJkse
		$a_81_4 = {79 75 6d 5a 4f 42 6b 42 59 24 48 57 45 4e 61 62 44 6c 46 25 69 72 4a 59 7d 75 33 36 4f 31 64 7c 6a 36 50 3f 64 65 73 24 6c 74 77 61 74 4d 40 56 30 70 59 5a 68 32 63 32 68 23 54 7c 56 62 59 53 25 47 65 79 4a 52 58 49 63 46 } //1 yumZOBkBY$HWENabDlF%irJY}u36O1d|j6P?des$ltwatM@V0pYZh2c2h#T|VbYS%GeyJRXIcF
	condition:
		((#a_02_0  & 1)*1+(#a_02_1  & 1)*1+(#a_81_2  & 1)*1+(#a_81_3  & 1)*1+(#a_81_4  & 1)*1) >=1
 
}