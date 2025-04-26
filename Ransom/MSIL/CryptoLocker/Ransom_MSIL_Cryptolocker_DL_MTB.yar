
rule Ransom_MSIL_Cryptolocker_DL_MTB{
	meta:
		description = "Ransom:MSIL/Cryptolocker.DL!MTB,SIGNATURE_TYPE_PEHSTR_EXT,42 00 42 00 0f 00 00 "
		
	strings :
		$a_81_0 = {6b 68 6a 66 20 72 61 6e 73 6f 6d 77 61 72 65 } //50 khjf ransomware
		$a_81_1 = {57 61 6e 6e 61 53 6d 69 6c 65 } //50 WannaSmile
		$a_81_2 = {4e 69 74 72 6f 52 61 6e 73 6f 6d 77 61 72 65 } //50 NitroRansomware
		$a_81_3 = {52 65 6e 20 4c 6f 63 6b 65 72 } //50 Ren Locker
		$a_81_4 = {59 6f 75 72 20 66 69 6c 65 73 20 68 61 76 65 20 62 65 65 6e 20 65 6e 63 72 79 70 74 65 64 } //10 Your files have been encrypted
		$a_81_5 = {42 69 74 63 6f 69 6e 73 } //10 Bitcoins
		$a_81_6 = {79 6f 75 72 20 44 72 69 76 65 20 68 61 76 65 20 62 65 65 6e 20 65 6e 63 72 79 70 74 65 64 } //10 your Drive have been encrypted
		$a_81_7 = {44 69 73 61 62 6c 65 52 65 61 6c 74 69 6d 65 4d 6f 6e 69 74 6f 72 69 6e 67 } //5 DisableRealtimeMonitoring
		$a_81_8 = {42 69 74 63 6f 69 6e 20 50 61 79 6d 65 6e 74 20 41 64 72 65 73 73 3a } //5 Bitcoin Payment Adress:
		$a_81_9 = {44 65 63 72 79 70 74 69 6f 6e 20 4b 65 79 3a } //5 Decryption Key:
		$a_81_10 = {52 45 4e 5f 4c 6f 63 6b 65 72 } //5 REN_Locker
		$a_81_11 = {44 69 73 61 62 6c 65 54 61 73 6b 4d 67 72 } //1 DisableTaskMgr
		$a_81_12 = {49 6e 63 6f 72 72 65 63 74 20 44 65 63 72 79 70 74 20 4b 65 79 } //1 Incorrect Decrypt Key
		$a_81_13 = {44 65 63 72 79 70 74 69 6e 67 20 66 69 6c 65 73 } //1 Decrypting files
		$a_81_14 = {52 61 6e 73 6f 6d 77 61 72 65 } //1 Ransomware
	condition:
		((#a_81_0  & 1)*50+(#a_81_1  & 1)*50+(#a_81_2  & 1)*50+(#a_81_3  & 1)*50+(#a_81_4  & 1)*10+(#a_81_5  & 1)*10+(#a_81_6  & 1)*10+(#a_81_7  & 1)*5+(#a_81_8  & 1)*5+(#a_81_9  & 1)*5+(#a_81_10  & 1)*5+(#a_81_11  & 1)*1+(#a_81_12  & 1)*1+(#a_81_13  & 1)*1+(#a_81_14  & 1)*1) >=66
 
}