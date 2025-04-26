
rule Trojan_Win32_Qhost_BC{
	meta:
		description = "Trojan:Win32/Qhost.BC,SIGNATURE_TYPE_PEHSTR,02 00 02 00 02 00 00 "
		
	strings :
		$a_01_0 = {65 63 68 6f 20 32 31 36 2e 31 39 35 2e 36 32 2e 31 39 39 20 76 6b 6f 6e 74 61 6b 74 65 2e 72 75 20 3e 3e 20 25 77 69 6e 64 69 72 25 5c 73 79 73 74 65 6d 33 32 5c 64 72 69 76 65 72 73 5c 65 74 63 5c 68 6f 73 74 73 } //1 echo 216.195.62.199 vkontakte.ru >> %windir%\system32\drivers\etc\hosts
		$a_01_1 = {65 63 68 6f 20 72 65 6e 20 25 25 77 69 6e 64 69 72 25 25 5c 73 79 73 74 65 6d 33 32 5c 64 72 69 76 65 72 73 5c 65 74 63 5c 68 6f 73 74 73 31 20 68 6f 73 74 73 20 3e 3e 20 25 77 69 6e 64 69 72 25 5c 77 69 6e 64 73 74 61 72 74 2e 62 61 74 } //1 echo ren %%windir%%\system32\drivers\etc\hosts1 hosts >> %windir%\windstart.bat
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1) >=2
 
}