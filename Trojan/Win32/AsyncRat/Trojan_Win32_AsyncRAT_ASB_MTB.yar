
rule Trojan_Win32_AsyncRAT_ASB_MTB{
	meta:
		description = "Trojan:Win32/AsyncRAT.ASB!MTB,SIGNATURE_TYPE_PEHSTR_EXT,07 00 07 00 05 00 00 "
		
	strings :
		$a_01_0 = {63 77 2e 72 6f 77 6c 71 69 67 2e 63 6e } //2 cw.rowlqig.cn
		$a_01_1 = {55 73 65 72 73 5c 50 75 62 6c 69 63 5c 44 6f 77 6e 6c 6f 61 64 73 5c 25 73 } //1 Users\Public\Downloads\%s
		$a_01_2 = {53 4e 77 69 6e 74 76 61 61 6e 61 65 } //1 SNwintvaanae
		$a_01_3 = {73 61 6e 64 62 6f 78 21 21 21 } //1 sandbox!!!
		$a_03_4 = {6a 00 68 80 00 00 00 6a 04 6a 00 6a 01 68 00 00 00 80 68 ?? ?? ?? 00 ff 15 ?? ?? ?? 00 89 45 f8 6a 00 } //2
	condition:
		((#a_01_0  & 1)*2+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_03_4  & 1)*2) >=7
 
}