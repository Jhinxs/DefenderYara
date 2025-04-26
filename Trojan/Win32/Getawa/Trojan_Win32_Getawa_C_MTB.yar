
rule Trojan_Win32_Getawa_C_MTB{
	meta:
		description = "Trojan:Win32/Getawa.C!MTB,SIGNATURE_TYPE_PEHSTR,05 00 05 00 05 00 00 "
		
	strings :
		$a_01_0 = {66 69 6e 64 73 74 72 20 22 57 69 6e 52 41 52 2e 65 78 65 22 20 3e 20 25 74 65 6d 70 25 5c 72 61 72 63 65 6b 2e 74 78 74 } //1 findstr "WinRAR.exe" > %temp%\rarcek.txt
		$a_01_1 = {6d 6b 64 69 72 20 25 74 65 6d 70 25 5c 50 65 72 65 74 61 73 69 6e 74 } //1 mkdir %temp%\Peretasint
		$a_01_2 = {65 63 68 6f 20 25 63 6f 6d 70 75 74 65 72 6e 61 6d 65 25 20 3e 20 25 74 65 6d 70 25 5c 50 65 72 65 74 61 73 69 6e 74 5c 73 79 73 74 65 6d 69 6e 66 6f 2b 2d 50 65 72 65 74 61 73 69 6e 74 2e 74 78 74 } //1 echo %computername% > %temp%\Peretasint\systeminfo+-Peretasint.txt
		$a_01_3 = {64 65 6c 20 67 65 74 6b 65 65 70 6c 69 76 65 73 2e 65 78 65 } //1 del getkeeplives.exe
		$a_01_4 = {64 65 6c 20 25 77 69 6e 64 69 72 25 5c 73 79 73 74 65 6d 33 32 5c 74 61 73 6b 68 6f 2d 38 2e 65 78 65 } //1 del %windir%\system32\taskho-8.exe
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1) >=5
 
}