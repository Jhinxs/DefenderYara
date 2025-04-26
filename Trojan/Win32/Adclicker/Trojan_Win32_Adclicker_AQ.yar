
rule Trojan_Win32_Adclicker_AQ{
	meta:
		description = "Trojan:Win32/Adclicker.AQ,SIGNATURE_TYPE_PEHSTR_EXT,0e 00 0e 00 07 00 00 "
		
	strings :
		$a_01_0 = {89 45 f4 83 7d f4 ff 0f 95 45 fb 80 7d fb 00 74 09 8b 45 f4 50 } //5
		$a_01_1 = {64 89 20 c7 45 e8 04 00 00 00 c7 45 e4 04 00 00 00 8d 45 e4 50 8d 45 f0 50 8d 45 e8 50 6a 00 8b 45 f4 } //5
		$a_01_2 = {69 73 20 77 65 62 6d 61 73 74 65 72 27 73 } //2 is webmaster's
		$a_01_3 = {67 6f 66 75 63 6b 79 6f 75 72 73 65 6c 66 2e 63 6f 6d } //2 gofuckyourself.com
		$a_01_4 = {45 78 70 6c 6f 72 65 72 5c 54 69 74 6c 65 73 } //2 Explorer\Titles
		$a_01_5 = {25 53 59 53 54 45 4d 25 5c 64 6c 6c 63 61 63 68 65 5c 49 45 78 70 6c 6f 72 65 2e 65 78 65 } //2 %SYSTEM%\dllcache\IExplore.exe
		$a_01_6 = {4e 6f 20 73 65 74 74 69 6e 67 73 20 64 69 72 } //2 No settings dir
	condition:
		((#a_01_0  & 1)*5+(#a_01_1  & 1)*5+(#a_01_2  & 1)*2+(#a_01_3  & 1)*2+(#a_01_4  & 1)*2+(#a_01_5  & 1)*2+(#a_01_6  & 1)*2) >=14
 
}