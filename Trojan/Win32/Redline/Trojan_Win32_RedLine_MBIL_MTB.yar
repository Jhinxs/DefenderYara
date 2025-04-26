
rule Trojan_Win32_RedLine_MBIL_MTB{
	meta:
		description = "Trojan:Win32/RedLine.MBIL!MTB,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 "
		
	strings :
		$a_01_0 = {7a 61 75 62 70 6e 74 68 74 63 73 68 6b 79 66 6b 74 70 77 6c 6c 6e 70 68 6e 79 6e 64 64 65 61 6a 74 69 79 7a 67 66 65 68 69 67 61 68 76 72 74 69 70 64 6c 74 64 70 77 67 7a 72 67 62 75 65 67 6e 63 75 75 66 6d 76 61 6c 67 64 } //1 zaubpnthtcshkyfktpwllnphnynddeajtiyzgfehigahvrtipdltdpwgzrgbuegncuufmvalgd
		$a_01_1 = {78 79 76 63 61 66 68 78 77 6c 68 65 75 65 62 78 6e 70 70 61 78 75 70 6c 73 6f 74 6c 6c 73 76 76 72 6e 7a 6a 6f 63 6d 61 75 6e 76 77 69 6a 70 67 63 77 6e 61 6d 79 65 6c 73 64 68 77 68 6f 66 6c 72 62 61 6d 6c 65 73 74 73 65 6f 77 74 65 6e 74 70 68 6a 7a 78 6e 6d 66 6c 77 75 76 } //1 xyvcafhxwlheuebxnppaxuplsotllsvvrnzjocmaunvwijpgcwnamyelsdhwhoflrbamlestseowtentphjzxnmflwuv
		$a_01_2 = {72 70 67 68 78 61 6a 79 77 75 66 70 72 79 65 73 6f 6d 76 67 7a 77 75 66 77 6b 76 75 77 61 73 68 79 6c 71 65 65 61 64 68 6b 7a 62 68 6d 74 79 6f 65 6d 7a 68 6e 66 6e 6b 79 61 68 61 67 69 78 71 69 72 6a 75 6f 68 6a 68 70 6d 6c 65 6a 62 6f 6e 6d 6c 73 64 77 78 73 76 65 } //1 rpghxajywufpryesomvgzwufwkvuwashylqeeadhkzbhmtyoemzhnfnkyahagixqirjuohjhpmlejbonmlsdwxsve
		$a_01_3 = {6f 72 64 76 6b 6d 73 61 66 77 62 61 73 79 70 73 69 72 73 6f 6d 68 69 6c 66 6b 78 72 73 76 63 6c 6d 77 73 63 7a 77 78 6a 6c 74 76 6f 6a 78 63 74 6b } //1 ordvkmsafwbasypsirsomhilfkxrsvclmwsczwxjltvojxctk
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1) >=4
 
}