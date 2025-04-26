
rule Trojan_Win32_BazarLdr_A_MTB{
	meta:
		description = "Trojan:Win32/BazarLdr.A!MTB,SIGNATURE_TYPE_PEHSTR,0d 00 0d 00 04 00 00 "
		
	strings :
		$a_01_0 = {57 69 6e 64 6f 77 73 53 44 4b 37 2d 53 61 6d 70 6c 65 73 2d 6d 61 73 74 65 72 5c 63 6f 6d 5c 61 64 6d 69 6e 69 73 74 72 61 74 69 6f 6e 5c 73 70 79 5c 57 69 6e 33 32 5c 52 65 6c 65 61 73 65 5c 43 6f 6d 53 70 79 2e 70 64 62 } //10 WindowsSDK7-Samples-master\com\administration\spy\Win32\Release\ComSpy.pdb
		$a_01_1 = {53 00 6f 00 66 00 74 00 77 00 61 00 72 00 65 00 5c 00 4d 00 69 00 63 00 72 00 6f 00 73 00 6f 00 66 00 74 00 5c 00 43 00 4f 00 4d 00 53 00 70 00 79 00 } //1 Software\Microsoft\COMSpy
		$a_01_2 = {43 4f 4d 2e 53 70 79 43 6f 6e 74 61 69 6e 65 72 20 3d 20 73 20 27 53 70 79 43 6f 6e 20 43 6c 61 73 73 27 } //1 COM.SpyContainer = s 'SpyCon Class'
		$a_01_3 = {26 00 43 00 6c 00 65 00 61 00 72 00 20 00 41 00 6c 00 6c 00 20 00 45 00 76 00 65 00 6e 00 74 00 73 00 } //1 &Clear All Events
	condition:
		((#a_01_0  & 1)*10+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1) >=13
 
}