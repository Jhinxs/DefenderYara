
rule Trojan_Win32_Sbot_VW_MTB{
	meta:
		description = "Trojan:Win32/Sbot.VW!MTB,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 06 00 00 "
		
	strings :
		$a_80_0 = {77 77 77 2e 62 61 69 64 75 2e 63 6f 6d } //www.baidu.com  1
		$a_80_1 = {6e 77 70 31 30 30 40 31 36 33 2e 63 6f 6d } //nwp100@163.com  1
		$a_01_2 = {44 61 74 61 2e 6d 64 62 } //1 Data.mdb
		$a_01_3 = {47 65 74 50 72 6f 63 41 64 64 72 65 73 73 } //1 GetProcAddress
		$a_01_4 = {4c 6f 61 64 52 65 73 6f 75 72 63 65 } //1 LoadResource
		$a_01_5 = {47 65 74 54 69 63 6b 43 6f 75 6e 74 } //1 GetTickCount
	condition:
		((#a_80_0  & 1)*1+(#a_80_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1) >=6
 
}