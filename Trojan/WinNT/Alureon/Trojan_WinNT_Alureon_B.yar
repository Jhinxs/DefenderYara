
rule Trojan_WinNT_Alureon_B{
	meta:
		description = "Trojan:WinNT/Alureon.B,SIGNATURE_TYPE_PEHSTR_EXT,16 00 15 00 0a 00 00 "
		
	strings :
		$a_02_0 = {66 81 38 4d 5a 0f 84 ?? ?? ?? ?? 8d 44 20 ff 85 c0 81 c0 ff ff ff ff 0f 85 ?? ?? ?? ?? 6b c9 ea 81 e1 00 00 00 00 83 c9 04 03 e1 f7 d9 8b 0c 0c } //10
		$a_01_1 = {52 74 6c 49 6d 61 67 65 4e 74 48 65 61 64 65 72 } //5 RtlImageNtHeader
		$a_01_2 = {45 78 41 6c 6c 6f 63 61 74 65 50 6f 6f 6c } //5 ExAllocatePool
		$a_00_3 = {64 6c 66 63 63 63 6e 7a 7a 2e 64 6c 6c } //1 dlfcccnzz.dll
		$a_01_4 = {4f 66 64 72 76 42 72 69 } //1 OfdrvBri
		$a_01_5 = {5a 75 4c 68 68 61 75 71 4d 62 72 71 74 6c 69 47 70 6a } //1 ZuLhhauqMbrqtliGpj
		$a_01_6 = {48 6c 44 77 73 78 73 70 4a 78 70 77 7a 47 76 6a } //1 HlDwsxspJxpwzGvj
		$a_01_7 = {4f 77 69 51 75 76 66 7a 63 49 6f 6c 75 61 4e 6f 70 6c 4b 74 } //1 OwiQuvfzcIoluaNoplKt
		$a_01_8 = {44 78 68 4a 7a 6e 71 4b 78 75 79 74 78 57 7a 63 6b 6a 62 59 6e } //1 DxhJznqKxuytxWzckjbYn
		$a_01_9 = {48 74 6b 56 71 74 6b 77 6c 73 54 74 76 7a 6e 76 70 } //1 HtkVqtkwlsTtvznvp
	condition:
		((#a_02_0  & 1)*10+(#a_01_1  & 1)*5+(#a_01_2  & 1)*5+(#a_00_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1+(#a_01_7  & 1)*1+(#a_01_8  & 1)*1+(#a_01_9  & 1)*1) >=21
 
}