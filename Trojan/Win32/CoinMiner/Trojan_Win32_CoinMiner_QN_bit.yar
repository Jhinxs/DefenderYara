
rule Trojan_Win32_CoinMiner_QN_bit{
	meta:
		description = "Trojan:Win32/CoinMiner.QN!bit,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 "
		
	strings :
		$a_01_0 = {53 00 65 00 74 00 20 00 57 00 73 00 68 00 53 00 68 00 65 00 6c 00 6c 00 20 00 3d 00 20 00 57 00 53 00 63 00 72 00 69 00 70 00 74 00 2e 00 43 00 72 00 65 00 61 00 74 00 65 00 4f 00 62 00 6a 00 65 00 63 00 74 00 28 00 22 00 57 00 53 00 63 00 72 00 69 00 70 00 74 00 2e 00 53 00 68 00 65 00 6c 00 6c 00 22 00 29 00 } //1 Set WshShell = WScript.CreateObject("WScript.Shell")
		$a_01_1 = {22 00 74 00 61 00 73 00 6b 00 6d 00 67 00 72 00 2e 00 65 00 78 00 65 00 22 00 } //1 "taskmgr.exe"
		$a_01_2 = {63 00 72 00 79 00 70 00 74 00 6f 00 6e 00 69 00 67 00 68 00 74 00 20 00 2d 00 6f 00 20 00 73 00 74 00 72 00 61 00 74 00 75 00 6d 00 2b 00 74 00 63 00 70 00 3a 00 2f 00 2f 00 70 00 6f 00 6f 00 6c 00 2e 00 6d 00 69 00 6e 00 65 00 78 00 6d 00 72 00 2e 00 63 00 6f 00 6d 00 3a 00 } //1 cryptonight -o stratum+tcp://pool.minexmr.com:
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1) >=3
 
}
rule Trojan_Win32_CoinMiner_QN_bit_2{
	meta:
		description = "Trojan:Win32/CoinMiner.QN!bit,SIGNATURE_TYPE_PEHSTR_EXT,21 00 21 00 09 00 00 "
		
	strings :
		$a_01_0 = {2d 6f 20 73 74 72 61 74 75 6d 2b 74 63 70 3a 2f 2f 73 2e 61 6e 74 6d 69 6e 65 70 6f 6f 6c 2e 63 6f 6d 3a 36 32 33 34 } //10 -o stratum+tcp://s.antminepool.com:6234
		$a_01_1 = {2d 6f 20 73 74 72 61 74 75 6d 2b 74 63 70 3a 2f 2f 77 6b 35 2e 63 79 62 74 63 2e 69 6e 66 6f 3a 36 36 38 38 20 2d 75 } //10 -o stratum+tcp://wk5.cybtc.info:6688 -u
		$a_01_2 = {53 6f 66 74 77 61 72 65 5c 4d 69 63 72 6f 73 6f 66 74 5c 57 69 6e 64 6f 77 73 5c 43 75 72 72 65 6e 74 56 65 72 73 69 6f 6e 5c 52 75 6e } //5 Software\Microsoft\Windows\CurrentVersion\Run
		$a_01_3 = {74 79 70 65 3d 20 6f 77 6e 20 74 79 70 65 3d 20 69 6e 74 65 72 61 63 74 20 73 74 61 72 74 3d 20 61 75 74 6f } //5 type= own type= interact start= auto
		$a_01_4 = {63 6d 64 20 2f 63 20 69 63 61 63 6c 73 20 63 3a 5c 20 2f 73 65 74 69 6e 74 65 67 72 69 74 79 6c 65 76 65 6c 20 4d } //5 cmd /c icacls c:\ /setintegritylevel M
		$a_01_5 = {64 65 6c 20 2f 66 20 2f 61 20 2f 71 20 22 63 3a 5c 77 69 6e 64 6f 77 73 5c 73 79 73 74 65 6d 33 32 5c 64 72 69 76 65 72 73 } //1 del /f /a /q "c:\windows\system32\drivers
		$a_01_6 = {63 6f 70 79 20 63 3a 5c 77 69 6e 64 6f 77 73 5c 73 79 73 74 65 6d 33 32 5c 64 72 69 76 65 72 73 } //1 copy c:\windows\system32\drivers
		$a_01_7 = {61 74 74 72 69 62 20 2d 73 20 2d 68 20 2d 72 } //1 attrib -s -h -r
		$a_01_8 = {53 45 4c 45 43 54 20 2a 20 46 52 4f 4d 20 57 69 6e 33 32 5f 70 72 6f 63 65 73 73 20 77 68 65 72 65 20 6e 61 6d 65 } //1 SELECT * FROM Win32_process where name
	condition:
		((#a_01_0  & 1)*10+(#a_01_1  & 1)*10+(#a_01_2  & 1)*5+(#a_01_3  & 1)*5+(#a_01_4  & 1)*5+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1+(#a_01_7  & 1)*1+(#a_01_8  & 1)*1) >=33
 
}