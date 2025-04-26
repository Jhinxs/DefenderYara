
rule Trojan_O97M_Mastdoc_A{
	meta:
		description = "Trojan:O97M/Mastdoc.A,SIGNATURE_TYPE_MACROHSTR_EXT,05 00 05 00 07 00 00 "
		
	strings :
		$a_00_0 = {5c 6d 61 73 74 65 72 62 6f 78 31 2e 64 6c 6c } //2 \masterbox1.dll
		$a_00_1 = {5c 70 61 74 74 65 72 6e 31 2e 64 6c 6c } //2 \pattern1.dll
		$a_00_2 = {5a 69 70 46 6f 6c 64 65 72 } //1 ZipFolder
		$a_00_3 = {5c 6f 6c 65 4f 62 6a 65 63 74 2a 2e 62 69 6e } //1 \oleObject*.bin
		$a_00_4 = {5c 55 6e 7a 54 6d 70 } //1 \UnzTmp
		$a_00_5 = {4c 6f 61 64 4c 69 62 72 61 72 79 57 } //1 LoadLibraryW
		$a_00_6 = {46 69 6c 65 46 6f 72 6d 61 74 3a 3d 35 31 } //1 FileFormat:=51
	condition:
		((#a_00_0  & 1)*2+(#a_00_1  & 1)*2+(#a_00_2  & 1)*1+(#a_00_3  & 1)*1+(#a_00_4  & 1)*1+(#a_00_5  & 1)*1+(#a_00_6  & 1)*1) >=5
 
}