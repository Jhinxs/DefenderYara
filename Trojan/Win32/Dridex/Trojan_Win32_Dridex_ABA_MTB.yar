
rule Trojan_Win32_Dridex_ABA_MTB{
	meta:
		description = "Trojan:Win32/Dridex.ABA!MTB,SIGNATURE_TYPE_PEHSTR_EXT,07 00 07 00 07 00 00 "
		
	strings :
		$a_01_0 = {62 65 73 74 68 6f 74 65 6c 33 36 30 2e 63 6f 6d 3a 31 32 31 39 2f 30 30 31 2f 70 75 70 70 65 74 2e 54 78 74 } //1 besthotel360.com:1219/001/puppet.Txt
		$a_01_1 = {49 6e 74 65 72 6e 65 74 43 6f 6e 6e 65 63 74 } //1 InternetConnect
		$a_01_2 = {56 69 72 74 75 61 6c 50 72 6f 74 65 63 74 } //1 VirtualProtect
		$a_01_3 = {56 69 72 74 75 61 6c 41 6c 6c 6f 63 } //1 VirtualAlloc
		$a_01_4 = {48 54 54 50 2f 31 2e 31 } //1 HTTP/1.1
		$a_01_5 = {41 63 63 65 70 74 2d 4c 61 6e 67 75 61 67 65 3a 20 7a 68 2d 63 6e } //1 Accept-Language: zh-cn
		$a_01_6 = {71 59 4d 38 43 54 62 71 59 4d 38 43 54 62 71 59 4d 38 43 54 62 } //1 qYM8CTbqYM8CTbqYM8CTb
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1) >=7
 
}