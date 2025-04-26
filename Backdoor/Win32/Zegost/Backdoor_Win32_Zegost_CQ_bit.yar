
rule Backdoor_Win32_Zegost_CQ_bit{
	meta:
		description = "Backdoor:Win32/Zegost.CQ!bit,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 06 00 00 "
		
	strings :
		$a_01_0 = {00 33 36 30 74 72 61 79 2e 65 78 65 00 } //1
		$a_01_1 = {53 59 53 54 45 4d 5c 43 75 72 72 65 6e 74 43 6f 6e 74 72 6f 6c 53 65 74 5c 53 65 72 76 69 63 65 73 5c 25 73 } //1 SYSTEM\CurrentControlSet\Services\%s
		$a_01_2 = {00 25 73 5c 25 64 2e 62 61 6b 00 } //1
		$a_01_3 = {00 41 70 70 6c 69 63 61 74 69 6f 6e 73 5c 69 65 78 70 6c 6f 72 65 2e 65 78 65 5c 73 68 65 6c 6c 5c 6f 70 65 6e 5c 63 6f 6d 6d 61 6e 64 00 } //1 䄀灰楬慣楴湯屳敩灸潬敲攮數獜敨汬潜数屮潣浭湡d
		$a_01_4 = {53 4f 46 54 57 41 52 45 5c 4d 69 63 72 6f 73 6f 66 74 5c 57 69 6e 64 6f 77 73 5c 43 75 72 72 65 6e 74 56 65 72 73 69 6f 6e 5c 52 75 6e } //1 SOFTWARE\Microsoft\Windows\CurrentVersion\Run
		$a_01_5 = {00 50 6c 75 67 69 6e 4d 65 00 } //1 倀畬楧䵮e
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1) >=6
 
}