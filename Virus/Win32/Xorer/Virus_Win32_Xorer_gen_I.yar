
rule Virus_Win32_Xorer_gen_I{
	meta:
		description = "Virus:Win32/Xorer.gen!I,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 08 00 00 "
		
	strings :
		$a_01_0 = {5b 41 75 74 6f 52 75 6e 5d } //1 [AutoRun]
		$a_01_1 = {73 68 65 6c 6c 65 78 65 63 75 74 65 3d 70 61 67 65 66 69 6c 65 2e 70 69 66 } //2 shellexecute=pagefile.pif
		$a_01_2 = {61 66 74 65 72 42 65 67 69 6e 00 00 } //1
		$a_01_3 = {7e 2e 70 69 66 00 00 } //1
		$a_01_4 = {5f 73 79 73 74 65 6d 7e 2e 69 6e 69 } //1 _system~.ini
		$a_01_5 = {46 6c 6f 6f 64 46 69 6c 6c } //1 FloodFill
		$a_01_6 = {49 45 46 72 61 6d 65 00 } //1 䕉牆浡e
		$a_01_7 = {6a 6c 6a 70 6a 78 6a 45 } //2 jljpjxjE
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*2+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1+(#a_01_7  & 1)*2) >=6
 
}