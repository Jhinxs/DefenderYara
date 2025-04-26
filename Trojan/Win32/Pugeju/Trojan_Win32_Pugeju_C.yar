
rule Trojan_Win32_Pugeju_C{
	meta:
		description = "Trojan:Win32/Pugeju.C,SIGNATURE_TYPE_PEHSTR_EXT,10 00 0f 00 07 00 00 "
		
	strings :
		$a_01_0 = {49 6e 73 69 64 65 20 45 6e 74 72 79 50 6f 69 6e 74 } //1 Inside EntryPoint
		$a_01_1 = {6c 69 73 74 65 6e } //1 listen
		$a_01_2 = {67 65 74 73 6f 63 6b 6e 61 6d 65 } //1 getsockname
		$a_00_3 = {4f 70 65 6e 53 43 4d 61 6e 61 67 65 72 41 } //1 OpenSCManagerA
		$a_01_4 = {49 6e 74 65 72 6e 65 74 4f 70 65 6e 55 72 6c 41 } //1 InternetOpenUrlA
		$a_01_5 = {0d 0a 00 3a 00 64 65 6c 20 00 69 66 20 65 78 69 73 74 20 00 20 67 6f 74 6f 20 00 64 65 6c 20 00 53 6f 66 74 77 61 72 65 5c 4d 69 63 72 6f 73 6f 66 74 5c 57 69 6e 64 6f 77 73 5c 43 75 72 72 65 6e 74 56 65 72 73 69 6f 6e 5c 52 75 6e 00 69 63 66 } //10
		$a_01_6 = {c3 50 51 53 52 9c 66 8c c8 66 83 f8 1b 75 3b 33 c0 0f a2 81 } //1
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_00_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*10+(#a_01_6  & 1)*1) >=15
 
}