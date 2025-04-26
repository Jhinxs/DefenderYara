
rule Trojan_Win32_Startpage_WR_dll{
	meta:
		description = "Trojan:Win32/Startpage.WR!dll,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 05 00 00 "
		
	strings :
		$a_01_0 = {43 3a 5c 50 72 6f 67 72 61 6d 20 46 69 6c 65 73 5c 57 69 6e 33 32 47 61 6d 65 73 5c 49 6e 74 65 72 6e 65 74 2e 76 62 73 } //1 C:\Program Files\Win32Games\Internet.vbs
		$a_01_1 = {43 3a 5c 50 72 6f 67 72 61 6d 20 46 69 6c 65 73 5c 57 69 6e 33 32 47 61 6d 65 73 5c 5c 75 72 6c 2e 64 6c 6c } //1 C:\Program Files\Win32Games\\url.dll
		$a_01_2 = {77 73 2e 52 75 6e 20 22 72 75 6e 64 6c 6c 33 32 2e 65 78 65 20 2f 63 20 73 79 73 75 72 6c 2e 64 6c 6c 20 68 65 6c 70 6d 65 22 2c 20 30 } //1 ws.Run "rundll32.exe /c sysurl.dll helpme", 0
		$a_01_3 = {77 73 2e 52 75 6e 20 22 72 65 67 73 76 72 33 32 2e 65 78 65 20 2f 63 20 73 79 73 70 6f 77 65 72 75 65 73 2e 64 6c 6c 20 2f 73 22 2c 20 30 } //1 ws.Run "regsvr32.exe /c syspowerues.dll /s", 0
		$a_01_4 = {2e 69 6e 6b 00 00 00 00 ff ff ff ff 05 00 00 00 78 69 68 61 6f 00 00 00 ff ff ff ff 03 00 00 00 32 78 69 00 } //1
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1) >=5
 
}