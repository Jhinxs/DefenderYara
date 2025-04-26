
rule Trojan_Win32_Fareit_FV_MTB{
	meta:
		description = "Trojan:Win32/Fareit.FV!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 01 00 00 "
		
	strings :
		$a_01_0 = {0f b6 16 8d b6 01 00 00 00 66 23 cd 32 d3 fe ca 80 f2 d7 66 d3 c9 f9 f6 d2 c1 c9 } //2
	condition:
		((#a_01_0  & 1)*2) >=2
 
}
rule Trojan_Win32_Fareit_FV_MTB_2{
	meta:
		description = "Trojan:Win32/Fareit.FV!MTB,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 "
		
	strings :
		$a_81_0 = {6b 61 6c 6b 61 64 61 } //1 kalkada
		$a_81_1 = {6d 6e 74 72 52 47 42 20 58 59 5a } //1 mntrRGB XYZ
		$a_01_2 = {58 00 4e 00 72 00 75 00 5a 00 55 00 6a 00 44 00 48 00 58 00 67 00 65 00 51 00 4f 00 51 00 79 00 42 00 64 00 59 00 67 00 59 00 71 00 57 00 72 00 62 00 7a 00 4e 00 6d 00 6b 00 56 00 49 00 5a 00 70 00 71 00 57 00 47 00 51 00 76 00 4b 00 7a 00 75 00 71 00 78 00 64 00 51 00 49 00 62 00 79 00 4b 00 66 00 4b 00 53 00 7a 00 4b 00 64 00 48 00 77 00 55 00 55 00 49 00 58 00 51 00 51 00 64 00 78 00 6d 00 72 00 62 00 41 00 67 00 42 00 6d 00 42 00 49 00 71 00 51 00 44 00 59 00 6c 00 79 00 45 00 62 00 6d 00 52 00 51 00 71 00 77 00 4a 00 52 00 43 00 75 00 72 00 6d 00 59 00 66 00 4c 00 67 00 42 00 4a 00 6a 00 } //1 XNruZUjDHXgeQOQyBdYgYqWrbzNmkVIZpqWGQvKzuqxdQIbyKfKSzKdHwUUIXQQdxmrbAgBmBIqQDYlyEbmRQqwJRCurmYfLgBJj
		$a_01_3 = {70 00 75 00 62 00 6c 00 69 00 63 00 20 00 73 00 74 00 75 00 62 00 20 00 70 00 6f 00 73 00 6c 00 65 00 64 00 65 00 6e 00 } //1 public stub posleden
	condition:
		((#a_81_0  & 1)*1+(#a_81_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1) >=4
 
}