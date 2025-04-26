
rule Ransom_Win32_AnteFrigus_MSR{
	meta:
		description = "Ransom:Win32/AnteFrigus!MSR,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 05 00 00 "
		
	strings :
		$a_01_0 = {65 6e 63 72 79 70 74 65 64 2d 6e 6f 74 2d 77 61 6c 6c 5c 52 65 6c 65 61 73 65 5c 65 6e 63 72 79 70 74 65 64 2d 6e 6f 74 2d 77 61 6c 6c 2e 70 64 62 } //1 encrypted-not-wall\Release\encrypted-not-wall.pdb
		$a_00_1 = {53 00 4f 00 46 00 54 00 57 00 41 00 52 00 45 00 5c 00 4d 00 69 00 63 00 72 00 6f 00 73 00 6f 00 66 00 74 00 5c 00 57 00 69 00 6e 00 64 00 6f 00 77 00 73 00 5c 00 43 00 75 00 72 00 72 00 65 00 6e 00 74 00 56 00 65 00 72 00 73 00 69 00 6f 00 6e 00 5c 00 52 00 75 00 6e 00 4f 00 6e 00 63 00 65 00 } //1 SOFTWARE\Microsoft\Windows\CurrentVersion\RunOnce
		$a_01_2 = {54 6f 20 64 65 63 72 79 70 74 20 66 69 6c 65 73 20 66 6f 6c 6c 6f 77 20 74 68 65 20 69 6e 73 74 72 75 63 74 69 6f 6e 73 20 62 65 6c 6f 77 3a } //1 To decrypt files follow the instructions below:
		$a_01_3 = {6e 65 77 73 2e 68 74 6d 6c } //1 news.html
		$a_01_4 = {59 6f 75 72 20 66 69 6c 65 73 20 6f 6e 20 74 68 69 73 20 63 6f 6d 70 75 74 65 72 20 68 61 76 65 20 62 65 65 6e 20 65 6e 63 72 79 70 74 65 64 20 64 75 65 20 74 6f 20 73 65 63 75 72 69 74 79 20 69 73 73 75 65 73 } //1 Your files on this computer have been encrypted due to security issues
	condition:
		((#a_01_0  & 1)*1+(#a_00_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1) >=5
 
}