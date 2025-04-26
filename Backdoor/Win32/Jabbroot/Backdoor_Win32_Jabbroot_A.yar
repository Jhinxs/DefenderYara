
rule Backdoor_Win32_Jabbroot_A{
	meta:
		description = "Backdoor:Win32/Jabbroot.A,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 08 00 00 "
		
	strings :
		$a_01_0 = {57 69 6e 64 6f 77 73 00 6d 65 73 73 61 67 65 54 65 73 74 00 62 6f 74 00 63 6c 69 65 6e 74 } //2 楗摮睯s敭獳条呥獥t潢t汣敩瑮
		$a_01_1 = {2f 70 61 74 68 2f 74 6f 2f 63 61 63 65 72 74 2e 63 72 74 } //1 /path/to/cacert.crt
		$a_01_2 = {69 6c 6c 20 70 72 6f 63 65 73 73 } //1 ill process
		$a_01_3 = {61 74 65 20 63 6d 64 20 73 68 65 6c 6c } //1 ate cmd shell
		$a_01_4 = {61 64 79 20 65 78 69 73 74 73 21 55 70 6c 6f 61 64 20 66 69 6c 65 20 73 6d 61 6c 6c 65 72 20 74 68 61 6e 20 74 68 65 20 65 78 69 73 74 69 6e 67 20 66 69 6c 65 7e } //1 ady exists!Upload file smaller than the existing file~
		$a_01_5 = {6f 74 65 20 66 69 6c 65 20 73 69 7a 65 20 69 73 20 6c 65 73 73 20 74 68 61 6e 20 74 68 65 20 6c 6f 63 61 6c 20 66 69 6c 65 20 73 69 7a 65 20 68 61 73 20 62 65 65 6e 21 } //1 ote file size is less than the local file size has been!
		$a_01_6 = {6f 65 73 20 6e 6f 74 20 65 78 69 73 74 20 6f 72 20 69 73 20 75 6e 72 65 61 64 61 62 6c 65 21 } //1 oes not exist or is unreadable!
		$a_01_7 = {69 6c 65 20 41 62 72 6f 74 21 } //1 ile Abrot!
	condition:
		((#a_01_0  & 1)*2+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1+(#a_01_7  & 1)*1) >=6
 
}