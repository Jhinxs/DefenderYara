
rule BrowserModifier_Win32_Pointup{
	meta:
		description = "BrowserModifier:Win32/Pointup,SIGNATURE_TYPE_PEHSTR,06 00 06 00 06 00 00 "
		
	strings :
		$a_01_0 = {72 65 77 61 72 64 2e 70 6f 69 6e 74 2d 75 70 2e 6b 72 2f } //2 reward.point-up.kr/
		$a_01_1 = {70 6f 69 6e 74 70 6f 69 6e 74 70 6f 69 6e 74 00 } //2 潰湩灴楯瑮潰湩t
		$a_01_2 = {53 4f 46 54 57 41 52 45 5c 4d 69 63 72 6f 73 6f 66 74 5c 57 69 6e 64 6f 77 73 5c 43 75 72 72 65 6e 74 56 65 72 73 69 6f 6e } //1 SOFTWARE\Microsoft\Windows\CurrentVersion
		$a_01_3 = {5f 49 45 42 72 6f 77 73 65 72 48 65 6c 70 65 72 2e 70 61 73 } //1 _IEBrowserHelper.pas
		$a_01_4 = {67 6f 6f 64 6d 6f 72 69 6e 67 68 61 68 61 } //1 goodmoringhaha
		$a_01_5 = {2f 69 6c 69 6b 65 63 6c 69 63 6b } //1 /ilikeclick
	condition:
		((#a_01_0  & 1)*2+(#a_01_1  & 1)*2+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1) >=6
 
}