
rule Ransom_Win32_EgregorLdr_A{
	meta:
		description = "Ransom:Win32/EgregorLdr.A,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 05 00 00 "
		
	strings :
		$a_03_0 = {05 4d d3 34 4d 01 43 ?? 8b c3 39 50 ?? 8b d3 8b 5d f8 1b c0 f7 d8 } //2
		$a_03_1 = {05 34 4d d3 34 01 42 ?? 39 7a ?? 8b fa 1b c0 f7 d8 } //2
		$a_03_2 = {83 f8 01 0f 8e ?? ?? ?? ?? 8b c7 25 ff 0f 00 00 6a ?? 5e 3d f0 0f } //2
		$a_00_3 = {65 78 70 61 6e 64 20 33 32 2d 62 79 74 65 20 6b } //1 expand 32-byte k
		$a_00_4 = {65 78 70 61 6e 64 20 31 36 20 62 79 74 65 20 6b } //1 expand 16 byte k
	condition:
		((#a_03_0  & 1)*2+(#a_03_1  & 1)*2+(#a_03_2  & 1)*2+(#a_00_3  & 1)*1+(#a_00_4  & 1)*1) >=6
 
}