
rule Trojan_Win32_Qhost_CB{
	meta:
		description = "Trojan:Win32/Qhost.CB,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 "
		
	strings :
		$a_01_0 = {65 63 68 6f 20 36 37 2e 32 32 33 2e 32 33 32 2e 31 31 30 20 76 69 61 62 63 70 2e 63 6f 6d 20 3e 3e 20 25 77 69 6e 64 69 72 25 5c 73 79 73 74 65 6d 33 32 5c 64 72 69 76 65 72 73 5c 65 74 63 5c 68 6f 73 74 73 } //1 echo 67.223.232.110 viabcp.com >> %windir%\system32\drivers\etc\hosts
		$a_01_1 = {73 74 61 72 74 20 68 74 74 70 3a 2f 2f 77 77 77 2e 70 6f 73 74 61 6c 65 73 2e 63 6f 6d 2f 62 75 65 6e 6f 73 2d 64 65 73 65 6f 73 2f 61 6e 69 6d 6f 2f 74 72 61 6d 70 6f 6c 69 6e 2d 61 6c 2d 63 69 65 6c 6f 2e 68 74 6d } //1 start http://www.postales.com/buenos-deseos/animo/trampolin-al-cielo.htm
		$a_01_2 = {62 61 74 63 68 66 69 6c 65 2e 62 61 74 } //1 batchfile.bat
		$a_01_3 = {53 68 65 6c 6c 45 78 65 63 75 74 65 45 78 41 } //1 ShellExecuteExA
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1) >=4
 
}