
rule Ransom_Win32_Genasom_EA_MTB{
	meta:
		description = "Ransom:Win32/Genasom.EA!MTB,SIGNATURE_TYPE_PEHSTR_EXT,09 00 09 00 09 00 00 "
		
	strings :
		$a_81_0 = {59 6f 75 72 20 64 6f 63 75 6d 65 6e 74 73 2c 20 70 68 6f 74 6f 73 2c 20 64 61 74 61 62 61 73 65 73 20 61 6e 64 20 6f 74 68 65 72 20 69 6d 70 6f 72 74 61 6e 74 20 66 69 6c 65 73 20 68 61 76 65 20 62 65 65 6e 20 65 6e 63 72 79 70 74 65 64 21 } //1 Your documents, photos, databases and other important files have been encrypted!
		$a_01_1 = {44 69 73 61 62 6c 65 41 6e 74 69 53 70 79 77 61 72 65 } //1 DisableAntiSpyware
		$a_81_2 = {76 73 73 61 64 6d 69 6e 2e 65 78 65 20 44 65 6c 65 74 65 20 53 68 61 64 6f 77 73 20 2f 41 6c 6c 20 2f 51 75 69 65 74 } //1 vssadmin.exe Delete Shadows /All /Quiet
		$a_81_3 = {77 6d 69 63 20 73 68 61 64 6f 77 63 6f 70 79 20 64 65 6c 65 74 65 } //1 wmic shadowcopy delete
		$a_81_4 = {6e 65 74 20 73 74 6f 70 20 76 73 73 } //1 net stop vss
		$a_81_5 = {62 63 64 65 64 69 74 20 2f 73 65 74 20 7b 64 65 66 61 75 6c 74 7d 20 72 65 63 6f 76 65 72 79 65 6e 61 62 6c 65 64 20 6e 6f } //1 bcdedit /set {default} recoveryenabled no
		$a_81_6 = {77 65 76 74 75 74 69 6c 20 63 6c 65 61 72 2d 6c 6f 67 20 73 79 73 74 65 6d } //1 wevtutil clear-log system
		$a_81_7 = {62 63 64 65 64 69 74 20 2f 73 65 74 20 7b 64 65 66 61 75 6c 74 7d 20 62 6f 6f 74 73 74 61 74 75 73 70 6f 6c 69 63 79 20 69 67 6e 6f 72 65 61 6c 6c 66 61 69 6c 75 72 65 73 } //1 bcdedit /set {default} bootstatuspolicy ignoreallfailures
		$a_81_8 = {77 65 76 74 75 74 69 6c 20 63 6c 65 61 72 2d 6c 6f 67 20 73 65 63 75 72 69 74 79 } //1 wevtutil clear-log security
	condition:
		((#a_81_0  & 1)*1+(#a_01_1  & 1)*1+(#a_81_2  & 1)*1+(#a_81_3  & 1)*1+(#a_81_4  & 1)*1+(#a_81_5  & 1)*1+(#a_81_6  & 1)*1+(#a_81_7  & 1)*1+(#a_81_8  & 1)*1) >=9
 
}