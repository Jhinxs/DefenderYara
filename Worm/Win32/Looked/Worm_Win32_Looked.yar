
rule Worm_Win32_Looked{
	meta:
		description = "Worm:Win32/Looked,SIGNATURE_TYPE_PEHSTR_EXT,ffffffb4 00 ffffffb4 00 09 00 00 "
		
	strings :
		$a_01_0 = {52 61 76 4d 6f 6e 43 6c 61 73 73 00 } //2 慒䵶湯汃獡s
		$a_01_1 = {5a 41 46 72 61 6d 65 57 6e 64 00 } //2
		$a_00_2 = {73 68 65 6c 6c 65 78 65 63 75 74 65 3d } //2 shellexecute=
		$a_01_3 = {00 3a 5c 41 75 74 6f 72 75 6e 2e 69 6e 66 00 } //4
		$a_01_4 = {3c 69 66 72 61 6d 65 20 73 72 63 3d 68 74 74 70 3a } //100 <iframe src=http:
		$a_01_5 = {5c 69 70 63 24 00 } //6 楜捰$
		$a_01_6 = {5c 61 64 6d 69 6e 24 00 } //6 慜浤湩$
		$a_00_7 = {57 4e 65 74 43 61 6e 63 65 6c 43 6f 6e 6e 65 63 74 69 6f 6e 32 41 } //30 WNetCancelConnection2A
		$a_01_8 = {57 4e 65 74 41 64 64 43 6f 6e 6e 65 63 74 69 6f 6e 32 41 } //30 WNetAddConnection2A
	condition:
		((#a_01_0  & 1)*2+(#a_01_1  & 1)*2+(#a_00_2  & 1)*2+(#a_01_3  & 1)*4+(#a_01_4  & 1)*100+(#a_01_5  & 1)*6+(#a_01_6  & 1)*6+(#a_00_7  & 1)*30+(#a_01_8  & 1)*30) >=180
 
}