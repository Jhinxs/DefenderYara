
rule Trojan_Win32_Convagent_CD_MTB{
	meta:
		description = "Trojan:Win32/Convagent.CD!MTB,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 06 00 00 "
		
	strings :
		$a_01_0 = {64 78 53 6f 75 67 6f 75 2e 64 6c 6c } //1 dxSougou.dll
		$a_01_1 = {34 33 39 39 2e 63 6f 6d } //1 4399.com
		$a_01_2 = {43 00 3a 00 5c 00 57 00 69 00 6e 00 64 00 6f 00 77 00 73 00 5c 00 4d 00 79 00 54 00 78 00 74 00 32 00 2e 00 74 00 78 00 74 00 } //1 C:\Windows\MyTxt2.txt
		$a_01_3 = {6b 61 6e 6b 61 6e 2e 63 6f 6d } //1 kankan.com
		$a_01_4 = {77 77 77 2e 78 78 78 78 78 2e 63 6f 6d } //1 www.xxxxx.com
		$a_01_5 = {77 77 77 2e 6a 6a 6a 2e 63 6f 6d } //1 www.jjj.com
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1) >=6
 
}