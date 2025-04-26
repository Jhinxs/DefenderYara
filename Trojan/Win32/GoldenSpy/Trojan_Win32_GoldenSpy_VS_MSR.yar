
rule Trojan_Win32_GoldenSpy_VS_MSR{
	meta:
		description = "Trojan:Win32/GoldenSpy.VS!MSR,SIGNATURE_TYPE_PEHSTR,04 00 04 00 04 00 00 "
		
	strings :
		$a_01_0 = {5c 56 43 50 72 6f 6a 65 63 74 5c 64 67 73 5c 52 65 6c 65 61 73 65 5c } //1 \VCProject\dgs\Release\
		$a_01_1 = {74 61 73 6b 6b 69 6c 6c 20 2f 49 4d 20 73 76 6d 2e 65 78 65 20 2f 49 4d 20 73 76 6d 6d 2e 65 78 65 20 2f 46 } //1 taskkill /IM svm.exe /IM svmm.exe /F
		$a_01_2 = {53 6f 66 74 77 61 72 65 5c 4d 69 63 72 6f 73 6f 66 74 5c 57 69 6e 64 6f 77 73 5c 43 75 72 72 65 6e 74 56 65 72 73 69 6f 6e 5c 41 70 70 20 50 61 74 68 73 5c 73 76 6d 2e 65 78 65 } //1 Software\Microsoft\Windows\CurrentVersion\App Paths\svm.exe
		$a_01_3 = {53 6f 66 74 77 61 72 65 5c 4d 69 63 72 6f 73 6f 66 74 5c 57 69 6e 64 6f 77 73 5c 43 75 72 72 65 6e 74 56 65 72 73 69 6f 6e 5c 55 6e 69 6e 73 74 61 6c 6c 5c 73 76 6d } //1 Software\Microsoft\Windows\CurrentVersion\Uninstall\svm
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1) >=4
 
}