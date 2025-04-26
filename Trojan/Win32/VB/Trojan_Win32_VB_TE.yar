
rule Trojan_Win32_VB_TE{
	meta:
		description = "Trojan:Win32/VB.TE,SIGNATURE_TYPE_PEHSTR,05 00 05 00 05 00 00 "
		
	strings :
		$a_01_0 = {73 71 6c 20 73 74 6f 70 20 4d 53 53 51 4c 53 45 52 56 45 52 } //1 sql stop MSSQLSERVER
		$a_01_1 = {40 77 68 77 20 73 74 6f 70 20 6d 73 73 71 6c 73 65 72 76 65 72 20 2f 79 65 73 20 3e 3e 20 73 74 6f 70 70 65 64 2e 74 78 74 } //1 @whw stop mssqlserver /yes >> stopped.txt
		$a_01_2 = {64 65 6c 20 63 3a 5c 78 70 73 74 61 72 2e 64 6c 6c 20 2f 73 } //1 del c:\xpstar.dll /s
		$a_01_3 = {62 00 69 00 6c 00 6c 00 67 00 61 00 74 00 65 00 73 00 2e 00 65 00 78 00 65 00 } //1 billgates.exe
		$a_01_4 = {66 00 75 00 77 00 75 00 6b 00 6f 00 6e 00 67 00 6a 00 69 00 61 00 6e 00 } //1 fuwukongjian
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1) >=5
 
}