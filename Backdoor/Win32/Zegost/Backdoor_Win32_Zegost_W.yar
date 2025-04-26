
rule Backdoor_Win32_Zegost_W{
	meta:
		description = "Backdoor:Win32/Zegost.W,SIGNATURE_TYPE_PEHSTR,05 00 05 00 05 00 00 "
		
	strings :
		$a_01_0 = {50 6f 6c 69 63 69 65 73 5c 4d 69 63 72 6f 73 6f 66 74 5c 57 69 6e 64 6f 77 73 5c 53 61 66 65 72 5c 43 6f 64 65 49 64 65 6e 74 69 66 69 65 72 73 5c 30 5c 50 61 74 68 73 5c 7b 31 62 35 35 34 36 30 61 2d 63 36 35 30 2d 34 62 62 37 2d 61 64 37 61 2d 36 33 61 36 32 39 64 63 37 64 33 61 7d } //1 Policies\Microsoft\Windows\Safer\CodeIdentifiers\0\Paths\{1b55460a-c650-4bb7-ad7a-63a629dc7d3a}
		$a_01_1 = {43 75 72 72 65 6e 74 56 65 72 73 69 6f 6e 5c 50 6f 6c 69 63 69 65 73 5c 45 78 70 6c 6f 72 65 72 5c 52 75 6e } //1 CurrentVersion\Policies\Explorer\Run
		$a_01_2 = {43 3a 5c 50 72 6f 67 72 61 6d 20 46 69 6c 65 73 5c 61 2e 2e 5c 73 79 6e 65 63 2e 65 78 65 } //1 C:\Program Files\a..\synec.exe
		$a_01_3 = {43 3a 5c 68 77 73 69 67 2e 64 6c 6c } //1 C:\hwsig.dll
		$a_01_4 = {43 3a 5c 68 61 6f 74 75 2e 64 61 74 } //1 C:\haotu.dat
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1) >=5
 
}