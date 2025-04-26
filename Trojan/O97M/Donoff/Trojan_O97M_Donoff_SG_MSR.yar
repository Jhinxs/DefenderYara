
rule Trojan_O97M_Donoff_SG_MSR{
	meta:
		description = "Trojan:O97M/Donoff.SG!MSR,SIGNATURE_TYPE_MACROHSTR_EXT,05 00 05 00 04 00 00 "
		
	strings :
		$a_00_0 = {52 79 75 6b 52 65 61 64 4d 65 2e 74 78 74 } //3 RyukReadMe.txt
		$a_03_1 = {6f 62 6a 2e 52 75 6e [0-20] 22 43 3a 2f 44 6f 63 75 6d 65 6e 74 73 20 61 6e 64 20 53 65 74 74 69 6e 67 73 2f 41 6c 6c 20 75 73 65 72 73 2f 44 65 73 6b 74 6f 70 2f [0-10] 2e 62 61 74 } //1
		$a_00_2 = {42 61 74 63 68 46 69 6c 65 2e 57 72 69 74 65 4c 69 6e 65 20 28 22 52 45 4e 20 2a 2e 44 4f 43 20 2a 2e 54 58 54 22 29 } //1 BatchFile.WriteLine ("REN *.DOC *.TXT")
		$a_00_3 = {2f 2e 64 63 63 20 73 65 6e 64 20 24 6e 69 63 6b 20 43 3a 5c 57 69 6e 64 6f 77 73 5c [0-10] 2e 64 6f 63 } //1
	condition:
		((#a_00_0  & 1)*3+(#a_03_1  & 1)*1+(#a_00_2  & 1)*1+(#a_00_3  & 1)*1) >=5
 
}