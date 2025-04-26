
rule BrowserModifier_Win32_24t{
	meta:
		description = "BrowserModifier:Win32/24t,SIGNATURE_TYPE_PEHSTR_EXT,19 00 19 00 07 00 00 "
		
	strings :
		$a_00_0 = {53 4f 46 54 57 41 52 45 5c 42 6f 72 6c 61 6e 64 5c 44 65 6c 70 68 69 5c 52 54 4c } //10 SOFTWARE\Borland\Delphi\RTL
		$a_01_1 = {46 50 55 4d 61 73 6b 56 61 6c 75 65 } //10 FPUMaskValue
		$a_01_2 = {5c 73 79 73 74 65 6d 5c 70 70 63 2e 64 6c 6c } //1 \system\ppc.dll
		$a_01_3 = {2f 32 34 74 2e 64 6c 6c } //1 /24t.dll
		$a_01_4 = {48 6f 6d 65 50 61 67 65 26 54 6f 6f 6c 62 61 72 20 47 75 61 72 64 } //1 HomePage&Toolbar Guard
		$a_01_5 = {63 3a 2f 72 2e 72 65 67 } //1 c:/r.reg
		$a_01_6 = {22 53 74 61 72 74 20 50 61 67 65 22 3d 22 68 74 74 70 3a 2f 2f 32 34 2d 37 2d 73 65 61 72 63 68 2e 63 6f 6d 2f 22 } //1 "Start Page"="http://24-7-search.com/"
	condition:
		((#a_00_0  & 1)*10+(#a_01_1  & 1)*10+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1) >=25
 
}