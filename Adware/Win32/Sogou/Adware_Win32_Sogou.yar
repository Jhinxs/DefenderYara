
rule Adware_Win32_Sogou{
	meta:
		description = "Adware:Win32/Sogou,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 04 00 00 "
		
	strings :
		$a_01_0 = {50 75 73 68 57 61 72 65 5c 63 70 75 73 68 2e 64 6c 6c } //1 PushWare\cpush.dll
		$a_01_1 = {7b 31 31 46 30 39 41 46 45 2d 37 35 41 44 2d 34 45 35 32 2d 41 42 34 33 2d 45 30 39 45 39 33 35 31 43 45 31 37 7d } //1 {11F09AFE-75AD-4E52-AB43-E09E9351CE17}
		$a_01_2 = {53 6f 66 74 77 61 72 65 5c 63 70 75 73 68 5c 75 70 64 61 74 65 } //1 Software\cpush\update
		$a_01_3 = {70 75 73 68 2e 76 6f 63 6c 6f 6f 2e 63 6f 6d } //1 push.vocloo.com
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1) >=3
 
}