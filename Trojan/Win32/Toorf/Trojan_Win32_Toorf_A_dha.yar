
rule Trojan_Win32_Toorf_A_dha{
	meta:
		description = "Trojan:Win32/Toorf.A!dha,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 05 00 00 "
		
	strings :
		$a_01_0 = {2f 00 53 00 61 00 76 00 65 00 46 00 69 00 6c 00 65 00 3f 00 63 00 6f 00 6d 00 6d 00 61 00 6e 00 64 00 49 00 64 00 3d 00 } //1 /SaveFile?commandId=
		$a_01_1 = {2f 43 68 65 63 6b 43 6f 6e 6e 65 63 74 69 6f 6e } //1 /CheckConnection
		$a_01_2 = {5c 00 64 00 64 00 64 00 5c 00 61 00 31 00 2e 00 74 00 78 00 74 00 } //1 \ddd\a1.txt
		$a_01_3 = {7c 7c 7c 43 6f 6d 6d 61 6e 64 20 65 78 65 63 75 74 65 64 20 73 75 63 63 65 73 73 66 75 6c 6c 79 } //1 |||Command executed successfully
		$a_01_4 = {5c 42 6f 74 20 46 72 65 73 68 2e 70 64 62 00 } //1
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1) >=5
 
}