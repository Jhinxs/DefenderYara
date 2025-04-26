
rule Ransom_Win32_XiaoBa_A_MTB{
	meta:
		description = "Ransom:Win32/XiaoBa.A!MTB,SIGNATURE_TYPE_PEHSTR_EXT,06 00 05 00 07 00 00 "
		
	strings :
		$a_01_0 = {58 69 61 6f 42 61 2d 52 61 6e 73 6f 6d 77 61 72 65 } //1 XiaoBa-Ransomware
		$a_01_1 = {55 6e 61 62 6c 65 20 74 6f 20 64 65 63 72 79 70 74 20 74 68 65 20 66 69 6c 65 20 62 65 63 61 75 73 65 20 79 6f 75 20 61 72 65 20 64 65 62 75 67 67 69 6e 67 20 74 68 69 73 20 70 72 6f 67 72 61 6d } //1 Unable to decrypt the file because you are debugging this program
		$a_01_2 = {63 6d 64 20 2f 63 20 76 73 73 61 64 6d 69 6e 20 64 65 6c 65 74 65 20 73 68 61 64 6f 77 20 2f 61 6c 6c 20 2f 71 75 69 65 74 20 } //1 cmd /c vssadmin delete shadow /all /quiet 
		$a_01_3 = {77 6d 69 63 20 73 68 61 64 6f 77 63 6f 70 79 20 64 65 6c 65 74 65 20 } //1 wmic shadowcopy delete 
		$a_01_4 = {62 63 64 65 64 69 74 20 2f 73 65 74 20 7b 64 65 66 61 75 6c 74 7d 20 62 6f 6f 73 74 61 74 75 73 70 6f 6c 69 63 79 20 69 67 6e 6f 72 65 61 6c 6c 66 61 69 6c 75 72 65 73 } //1 bcdedit /set {default} boostatuspolicy ignoreallfailures
		$a_01_5 = {62 63 64 65 64 69 74 20 2f 73 65 74 20 7b 64 65 66 61 75 6c 74 7d 20 72 65 63 6f 76 65 72 79 65 6e 61 62 6c 65 64 20 6e 6f } //1 bcdedit /set {default} recoveryenabled no
		$a_01_6 = {77 62 61 64 6d 69 6e 20 64 65 6c 65 74 65 20 63 61 74 61 6c 6f 67 20 2d 71 75 69 65 74 } //1 wbadmin delete catalog -quiet
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1) >=5
 
}