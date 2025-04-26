
rule Trojan_Win32_Adclicker_AO{
	meta:
		description = "Trojan:Win32/Adclicker.AO,SIGNATURE_TYPE_PEHSTR_EXT,0b 00 0b 00 08 00 00 "
		
	strings :
		$a_01_0 = {2e 70 68 70 3f 69 64 3d } //2 .php?id=
		$a_01_1 = {50 61 6e 65 6c 5c 49 6e 74 65 72 6e 61 74 69 6f 6e 61 6c 5c 47 65 6f } //1 Panel\International\Geo
		$a_01_2 = {63 6c 69 63 6b 72 65 66 65 72 65 72 } //1 clickreferer
		$a_01_3 = {63 6c 61 73 73 3d 74 69 74 6c 65 } //1 class=title
		$a_01_4 = {48 6f 6f 6b 57 57 57 } //1 HookWWW
		$a_01_5 = {44 6c 6c 47 65 74 43 6c 61 73 73 4f 62 6a 65 63 74 } //1 DllGetClassObject
		$a_01_6 = {70 6f 70 75 72 6c 00 00 70 6f 70 00 6c 61 62 65 6c 00 } //4
		$a_01_7 = {5b 6b 65 79 77 6f 72 64 5d 00 } //2 歛祥潷摲]
	condition:
		((#a_01_0  & 1)*2+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*4+(#a_01_7  & 1)*2) >=11
 
}