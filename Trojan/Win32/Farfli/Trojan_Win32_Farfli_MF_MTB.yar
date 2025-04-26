
rule Trojan_Win32_Farfli_MF_MTB{
	meta:
		description = "Trojan:Win32/Farfli.MF!MTB,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 03 00 00 "
		
	strings :
		$a_01_0 = {50 72 6f 67 72 61 6d 44 61 74 61 2f 2f 48 00 00 aa aa aa aa 46 42 73 61 46 52 51 55 48 68 55 55 47 68 77 56 46 43 4d 72 } //2
		$a_01_1 = {41 41 31 5c 52 65 6c 65 61 73 65 5c 41 41 31 2e 70 64 62 } //2 AA1\Release\AA1.pdb
		$a_01_2 = {68 74 74 70 73 3a 2f 2f 6e 6f 74 65 2e 79 6f 75 64 61 6f 2e 63 6f 6d 2f 79 77 73 2f 70 75 62 6c 69 63 2f 72 65 73 6f 75 72 63 65 2f 64 34 34 33 62 32 66 38 34 66 66 30 30 61 32 35 36 32 30 62 64 35 35 36 32 62 30 37 61 38 30 30 2f 78 6d 6c 6e 6f 74 65 } //2 https://note.youdao.com/yws/public/resource/d443b2f84ff00a25620bd5562b07a800/xmlnote
	condition:
		((#a_01_0  & 1)*2+(#a_01_1  & 1)*2+(#a_01_2  & 1)*2) >=6
 
}