
rule TrojanSpy_Win32_Bafi_C{
	meta:
		description = "TrojanSpy:Win32/Bafi.C,SIGNATURE_TYPE_PEHSTR,0a 00 09 00 05 00 00 "
		
	strings :
		$a_01_0 = {66 00 69 00 64 00 75 00 63 00 69 00 61 00 2e 00 64 00 65 00 } //6 fiducia.de
		$a_01_1 = {5f 00 69 00 66 00 72 00 6d 00 2e 00 68 00 74 00 6d 00 } //1 _ifrm.htm
		$a_01_2 = {74 00 70 00 61 00 63 00 5f 00 25 00 64 00 2e 00 6d 00 76 00 74 00 } //1 tpac_%d.mvt
		$a_01_3 = {56 6b 65 79 47 72 61 62 62 65 72 57 } //1 VkeyGrabberW
		$a_01_4 = {47 65 74 4b 65 79 00 } //1
	condition:
		((#a_01_0  & 1)*6+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1) >=9
 
}