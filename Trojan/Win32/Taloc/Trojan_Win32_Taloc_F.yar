
rule Trojan_Win32_Taloc_F{
	meta:
		description = "Trojan:Win32/Taloc.F,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 "
		
	strings :
		$a_01_0 = {41 63 63 65 70 74 2d 4c 61 6e 67 75 61 67 65 3a 20 7a 68 2d 63 6e } //1 Accept-Language: zh-cn
		$a_01_1 = {61 48 52 30 63 44 6f 76 4c 77 3d 3d 00 4c 32 6c 77 4c 6e 42 6f 63 41 3d 3d 00 4c 33 56 77 62 47 39 68 5a 43 35 77 61 48 41 3d 00 } //1
		$a_01_2 = {52 47 39 74 59 57 6c 4f 59 57 31 6c 55 33 6c 30 5a 57 30 3d } //1 RG9tYWlOYW1lU3l0ZW0=
		$a_01_3 = {58 43 34 75 4c 69 35 63 56 47 56 74 63 47 39 79 59 58 4a 35 52 6d 6c 73 5a 51 3d 3d } //1 XC4uLi5cVGVtcG9yYXJ5RmlsZQ==
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1) >=4
 
}