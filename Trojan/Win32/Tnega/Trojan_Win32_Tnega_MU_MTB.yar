
rule Trojan_Win32_Tnega_MU_MTB{
	meta:
		description = "Trojan:Win32/Tnega.MU!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0a 00 0a 00 0a 00 00 "
		
	strings :
		$a_00_0 = {43 3a 5c 50 72 6f 67 72 61 6d 44 61 74 61 5c 41 76 61 73 74 20 53 6f 66 74 77 61 72 65 5c 41 76 61 73 74 5c 61 73 77 52 65 73 70 2e 64 61 74 } //1 C:\ProgramData\Avast Software\Avast\aswResp.dat
		$a_81_1 = {53 4f 46 54 57 41 52 45 5c 42 6f 72 6c 61 6e 64 5c 44 65 6c 70 68 69 5c 43 50 4d } //1 SOFTWARE\Borland\Delphi\CPM
		$a_00_2 = {5f 61 63 6d 64 6c 6e } //1 _acmdln
		$a_00_3 = {5f 58 63 70 74 46 69 6c 74 65 72 } //1 _XcptFilter
		$a_00_4 = {5f 5f 73 65 74 75 73 65 72 6d 61 74 68 65 72 72 } //1 __setusermatherr
		$a_00_5 = {5f 5f 70 5f 5f 63 6f 6d 6d 6f 64 65 } //1 __p__commode
		$a_00_6 = {43 73 72 46 72 65 65 43 61 70 74 75 72 65 42 75 66 66 65 72 } //1 CsrFreeCaptureBuffer
		$a_00_7 = {73 71 6c 69 74 65 33 2e 64 6c 6c } //1 sqlite3.dll
		$a_00_8 = {5f 65 78 63 65 70 74 5f 68 61 6e 64 6c 65 72 33 } //1 _except_handler3
		$a_81_9 = {44 62 72 65 61 6b } //1 Dbreak
	condition:
		((#a_00_0  & 1)*1+(#a_81_1  & 1)*1+(#a_00_2  & 1)*1+(#a_00_3  & 1)*1+(#a_00_4  & 1)*1+(#a_00_5  & 1)*1+(#a_00_6  & 1)*1+(#a_00_7  & 1)*1+(#a_00_8  & 1)*1+(#a_81_9  & 1)*1) >=10
 
}