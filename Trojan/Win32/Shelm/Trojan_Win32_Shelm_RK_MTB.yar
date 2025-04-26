
rule Trojan_Win32_Shelm_RK_MTB{
	meta:
		description = "Trojan:Win32/Shelm.RK!MTB,SIGNATURE_TYPE_PEHSTR_EXT,07 00 07 00 03 00 00 "
		
	strings :
		$a_01_0 = {6a 00 6a 02 c7 44 24 20 3c 88 01 10 c7 44 24 24 48 88 01 10 c7 44 24 28 54 88 01 10 c7 44 24 2c 60 88 01 10 c7 44 24 30 6c 88 01 10 c7 44 24 34 78 88 01 10 c7 44 24 38 88 88 01 10 c7 44 24 3c 94 88 01 10 c7 44 24 40 94 88 01 10 c7 44 24 44 a4 88 01 10 c7 44 24 48 b0 88 01 10 ff d7 } //5
		$a_01_1 = {51 51 50 43 4c 65 61 6b 53 63 61 6e 2e 65 78 65 } //1 QQPCLeakScan.exe
		$a_01_2 = {52 65 6c 65 61 73 65 5c 73 68 65 6c 6c 63 6f 64 65 } //1 Release\shellcode
	condition:
		((#a_01_0  & 1)*5+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1) >=7
 
}