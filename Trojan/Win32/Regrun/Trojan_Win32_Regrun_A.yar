
rule Trojan_Win32_Regrun_A{
	meta:
		description = "Trojan:Win32/Regrun.A,SIGNATURE_TYPE_PEHSTR,05 00 05 00 05 00 00 "
		
	strings :
		$a_01_0 = {69 66 20 65 78 69 73 74 20 25 31 20 67 6f 74 6f 20 4c 6f 6f 70 } //1 if exist %1 goto Loop
		$a_01_1 = {57 69 6e 64 6f 77 73 5c 43 75 72 72 65 6e 74 56 65 72 73 69 6f 6e 5c 52 75 6e 5c 00 00 00 ff ff ff ff 08 00 00 00 50 6f 6c 69 63 69 65 73 00 00 00 00 ff ff ff ff 05 00 00 00 63 6c 61 76 65 } //1
		$a_01_2 = {53 4f 46 54 57 41 52 45 5c 4d 69 63 72 6f 73 6f 66 74 5c 57 69 6e 64 6f 77 73 20 4e 54 5c 43 75 72 72 65 6e 74 56 65 72 73 69 6f 6e 5c 57 69 6e 6c 6f 67 6f 6e } //1 SOFTWARE\Microsoft\Windows NT\CurrentVersion\Winlogon
		$a_01_3 = {5c 77 64 66 6d 67 72 2e 65 78 65 22 20 2f 77 61 69 74 } //1 \wdfmgr.exe" /wait
		$a_01_4 = {55 73 65 72 52 65 73 74 61 72 74 } //1 UserRestart
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1) >=5
 
}