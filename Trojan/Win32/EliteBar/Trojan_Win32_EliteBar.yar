
rule Trojan_Win32_EliteBar{
	meta:
		description = "Trojan:Win32/EliteBar,SIGNATURE_TYPE_PEHSTR,04 00 04 00 04 00 00 "
		
	strings :
		$a_01_0 = {45 6c 69 74 65 42 61 72 49 6d 70 6c 64 00 } //1 汅瑩䉥牡浉汰d
		$a_01_1 = {44 6c 6c 43 61 6e 55 6e 6c 6f 61 64 4e 6f 77 } //1 DllCanUnloadNow
		$a_01_2 = {49 6e 74 65 72 6e 65 74 43 68 65 63 6b 43 6f 6e 6e 65 63 74 69 6f 6e 41 } //1 InternetCheckConnectionA
		$a_01_3 = {45 00 6c 00 69 00 74 00 65 00 54 00 6f 00 6f 00 6c 00 42 00 61 00 72 00 20 00 44 00 79 00 6e 00 61 00 6d 00 69 00 63 00 20 00 4c 00 69 00 6e 00 6b 00 20 00 4c 00 69 00 62 00 72 00 61 00 72 00 79 00 } //1 EliteToolBar Dynamic Link Library
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1) >=4
 
}