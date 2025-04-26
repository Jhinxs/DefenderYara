
rule Trojan_Win32_Farfli_RPM_MTB{
	meta:
		description = "Trojan:Win32/Farfli.RPM!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 05 00 00 "
		
	strings :
		$a_01_0 = {6d 61 69 6e 2e 70 68 70 } //1 main.php
		$a_01_1 = {62 58 4e 32 59 33 4a 30 4c 6d 52 73 62 41 } //1 bXN2Y3J0LmRsbA
		$a_01_2 = {64 33 52 7a 59 58 42 70 4d 7a 49 75 5a 47 78 73 } //1 d3RzYXBpMzIuZGxs
		$a_01_3 = {61 57 31 74 4d 7a 49 75 5a 47 78 73 } //1 aW1tMzIuZGxs
		$a_01_4 = {64 33 4d 79 58 7a 4d 79 4c 6d 52 73 62 41 } //1 d3MyXzMyLmRsbA
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1) >=5
 
}