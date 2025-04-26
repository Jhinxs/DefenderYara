
rule Trojan_Win64_IcedID_DS_MTB{
	meta:
		description = "Trojan:Win64/IcedID.DS!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0e 00 0e 00 0a 00 00 "
		
	strings :
		$a_01_0 = {64 37 59 37 5a 35 42 42 4c 70 6e } //10 d7Y7Z5BBLpn
		$a_01_1 = {67 79 75 61 73 68 66 68 79 75 67 61 73 } //1 gyuashfhyugas
		$a_01_2 = {6b 75 57 45 53 39 6d 63 37 } //1 kuWES9mc7
		$a_01_3 = {72 69 74 7a 5a 4e 57 6b 57 52 61 } //1 ritzZNWkWRa
		$a_01_4 = {66 4e 48 65 34 61 76 57 79 } //1 fNHe4avWy
		$a_01_5 = {74 67 6e 61 75 73 79 66 67 74 79 61 73 67 68 6a 61 } //10 tgnausyfgtyasghja
		$a_01_6 = {49 61 41 42 37 66 70 64 71 75 62 } //1 IaAB7fpdqub
		$a_01_7 = {53 50 6d 73 42 70 49 64 65 77 } //1 SPmsBpIdew
		$a_01_8 = {64 6e 42 77 7a 41 4c 4a 46 4c 37 } //1 dnBwzALJFL7
		$a_01_9 = {6a 4e 37 71 33 31 46 70 57 6e } //1 jN7q31FpWn
	condition:
		((#a_01_0  & 1)*10+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*10+(#a_01_6  & 1)*1+(#a_01_7  & 1)*1+(#a_01_8  & 1)*1+(#a_01_9  & 1)*1) >=14
 
}