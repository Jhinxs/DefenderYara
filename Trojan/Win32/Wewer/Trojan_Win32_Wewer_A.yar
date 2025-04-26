
rule Trojan_Win32_Wewer_A{
	meta:
		description = "Trojan:Win32/Wewer.A,SIGNATURE_TYPE_PEHSTR,03 00 03 00 03 00 00 "
		
	strings :
		$a_01_0 = {68 74 74 70 3a 2f 2f 77 65 72 6d 65 65 72 2e 63 6e 2f 77 65 72 6d 65 65 72 2f 72 65 70 6f 72 74 2e 70 68 70 3f 74 69 74 6c 65 3d } //1 http://wermeer.cn/wermeer/report.php?title=
		$a_01_1 = {40 74 61 73 6b 6b 69 6c 6c 20 2f 66 20 2f 69 6d 20 73 76 63 68 6f 73 74 2e 65 78 65 } //1 @taskkill /f /im svchost.exe
		$a_01_2 = {5c 76 69 70 2e 65 78 65 } //1 \vip.exe
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1) >=3
 
}