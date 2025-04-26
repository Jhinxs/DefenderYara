
rule Trojan_Win32_Killav_EW{
	meta:
		description = "Trojan:Win32/Killav.EW,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 05 00 00 "
		
	strings :
		$a_01_0 = {72 75 6e 64 6c 6c 33 32 2e 65 78 65 20 75 73 65 72 33 32 2e 64 6c 6c 2c 20 4c 6f 63 6b 57 6f 72 6b 53 74 61 74 69 6f 6e } //1 rundll32.exe user32.dll, LockWorkStation
		$a_01_1 = {64 65 6c 20 25 77 69 6e 64 69 72 25 5c 73 79 73 74 65 6d 33 32 5c 6d 72 74 2e 65 78 65 20 2f 71 } //1 del %windir%\system32\mrt.exe /q
		$a_01_2 = {4e 45 54 20 53 54 4f 50 20 57 69 6e 64 6f 77 73 20 46 69 72 65 77 61 6c 6c } //1 NET STOP Windows Firewall
		$a_01_3 = {4e 45 54 20 53 54 4f 50 20 57 69 6e 64 6f 77 73 20 55 70 64 61 74 65 } //1 NET STOP Windows Update
		$a_01_4 = {74 61 73 6b 6b 69 6c 6c 20 2f 66 20 2f 69 6d 20 6d 73 73 65 63 65 73 2e 65 78 65 } //1 taskkill /f /im msseces.exe
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1) >=5
 
}