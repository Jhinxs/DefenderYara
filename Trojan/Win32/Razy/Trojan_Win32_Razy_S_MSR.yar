
rule Trojan_Win32_Razy_S_MSR{
	meta:
		description = "Trojan:Win32/Razy.S!MSR,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 "
		
	strings :
		$a_01_0 = {48 74 74 70 43 72 61 63 6b 55 72 6c } //1 HttpCrackUrl
		$a_01_1 = {68 00 74 00 74 00 70 00 3a 00 2f 00 2f 00 78 00 7a 00 71 00 70 00 6c 00 2e 00 63 00 68 00 75 00 6a 00 7a 00 2e 00 63 00 6f 00 6d 00 2f 00 6c 00 31 00 34 00 2e 00 67 00 69 00 66 00 } //1 http://xzqpl.chujz.com/l14.gif
		$a_01_2 = {73 68 69 65 6c 64 5f 32 33 34 35 65 78 70 6c 6f 72 65 72 2e 65 78 65 } //1 shield_2345explorer.exe
		$a_01_3 = {68 00 74 00 74 00 70 00 3a 00 2f 00 2f 00 78 00 7a 00 73 00 69 00 74 00 65 00 2e 00 63 00 68 00 75 00 6a 00 7a 00 2e 00 63 00 6f 00 6d 00 2f 00 73 00 6f 00 66 00 74 00 2f 00 61 00 64 00 2e 00 68 00 74 00 6d 00 6c 00 } //1 http://xzsite.chujz.com/soft/ad.html
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1) >=4
 
}