
rule Worm_Win32_Delf_ZAB{
	meta:
		description = "Worm:Win32/Delf.ZAB,SIGNATURE_TYPE_PEHSTR,0c 00 0c 00 0c 00 00 "
		
	strings :
		$a_01_0 = {61 75 74 65 6e 74 2e 6a 70 67 } //1 autent.jpg
		$a_01_1 = {68 74 74 70 3a 2f 2f 67 65 6f 63 69 74 69 65 73 2e 79 61 68 6f 6f 2e 63 6f 6d 2e 62 72 2f 79 6f 75 74 6f 62 61 30 33 2f 6c 69 73 74 61 61 75 74 2e 6a 70 67 } //1 http://geocities.yahoo.com.br/youtoba03/listaaut.jpg
		$a_01_2 = {68 74 74 70 3a 2f 2f 77 77 77 2e 67 72 61 74 69 73 77 65 62 2e 63 6f 6d 2f 76 61 69 73 65 66 75 64 65 72 30 30 } //1 http://www.gratisweb.com/vaisefuder00
		$a_01_3 = {68 74 74 70 3a 2f 2f 77 77 77 2e 79 6f 75 74 6f 62 61 30 31 2e 68 70 67 2e 63 6f 6d 2e 62 72 } //1 http://www.youtoba01.hpg.com.br
		$a_01_4 = {69 6e 66 76 65 72 2e 74 78 74 } //1 infver.txt
		$a_01_5 = {76 65 72 73 61 6f 2e 6a 70 67 } //1 versao.jpg
		$a_01_6 = {64 69 73 6b 64 72 69 76 65 2e 65 78 65 } //1 diskdrive.exe
		$a_01_7 = {6c 69 6e 6b 73 2e 6a 70 67 } //1 links.jpg
		$a_01_8 = {69 6e 66 2e 6a 70 67 } //1 inf.jpg
		$a_01_9 = {69 6e 66 2e 74 78 74 } //1 inf.txt
		$a_01_10 = {61 75 74 6f 72 75 6e 2e 69 6e 66 } //1 autorun.inf
		$a_01_11 = {73 68 65 6c 6c 5c 6f 70 65 6e 5c 63 6f 6d 6d 61 6e 64 3d 64 69 73 6b 64 72 69 76 65 2e 65 78 65 } //1 shell\open\command=diskdrive.exe
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1+(#a_01_7  & 1)*1+(#a_01_8  & 1)*1+(#a_01_9  & 1)*1+(#a_01_10  & 1)*1+(#a_01_11  & 1)*1) >=12
 
}