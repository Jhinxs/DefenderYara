
rule Trojan_Win32_Agent_PS{
	meta:
		description = "Trojan:Win32/Agent.PS,SIGNATURE_TYPE_PEHSTR,07 00 07 00 07 00 00 "
		
	strings :
		$a_01_0 = {47 6c 6f 62 61 6c 5c 25 73 2d 6b 65 79 2d 6d 65 74 75 78 00 47 6c 6f 62 61 6c 5c 25 73 2d 6b 65 79 2d 65 76 65 6e 74 } //1
		$a_01_1 = {50 4f 53 54 20 68 74 74 70 3a 2f 2f 25 73 3a 25 64 2f 25 73 20 48 54 54 50 2f 31 2e 31 } //1 POST http://%s:%d/%s HTTP/1.1
		$a_01_2 = {53 4f 46 54 57 41 52 45 5c 43 6c 61 73 73 65 73 5c 48 54 54 50 5c 73 68 65 6c 6c 5c 6f 70 65 6e 5c 63 6f 6d 6d 61 6e 64 } //1 SOFTWARE\Classes\HTTP\shell\open\command
		$a_01_3 = {53 59 53 54 45 4d 5c 43 6f 6e 74 72 6f 6c 53 65 74 30 30 31 5c 53 65 72 76 69 63 65 73 5c 25 73 } //1 SYSTEM\ControlSet001\Services\%s
		$a_01_4 = {48 66 44 6f 4d 61 69 6e 57 6f 72 6b 00 48 66 44 6f 53 65 72 76 69 63 65 00 53 65 72 76 69 63 65 4d 61 69 6e } //1 晈潄慍湩潗歲䠀䑦卯牥楶散匀牥楶散慍湩
		$a_01_5 = {43 72 65 61 74 65 54 6f 6f 6c 68 65 6c 70 33 32 53 6e 61 70 73 68 6f 74 } //1 CreateToolhelp32Snapshot
		$a_01_6 = {43 61 6c 6c 4e 65 78 74 48 6f 6f 6b 45 78 } //1 CallNextHookEx
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1) >=7
 
}