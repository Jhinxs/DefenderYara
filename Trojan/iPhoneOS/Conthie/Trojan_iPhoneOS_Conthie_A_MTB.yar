
rule Trojan_iPhoneOS_Conthie_A_MTB{
	meta:
		description = "Trojan:iPhoneOS/Conthie.A!MTB,SIGNATURE_TYPE_MACHOHSTR_EXT,05 00 05 00 07 00 00 "
		
	strings :
		$a_00_0 = {3a 2f 2f 72 65 64 76 69 6f 73 2e 63 6f 6d 3a 38 30 38 35 2f } //1 ://redvios.com:8085/
		$a_00_1 = {6c 61 64 79 73 69 7a 69 2e 74 6f 70 3a 38 30 38 31 } //1 ladysizi.top:8081
		$a_00_2 = {73 74 61 72 74 4d 6f 6e 69 74 6f 72 69 6e 67 } //1 startMonitoring
		$a_00_3 = {4a 59 53 79 73 74 65 6d 2f 72 65 73 74 49 6e 74 2f 63 6f 6c 6c 65 63 74 2f 70 6f 73 74 44 61 74 61 } //1 JYSystem/restInt/collect/postData
		$a_00_4 = {41 42 41 64 64 72 65 73 73 42 6f 6f 6b 43 6f 70 79 41 72 72 61 79 4f 66 41 6c 6c 50 65 6f 70 6c 65 } //1 ABAddressBookCopyArrayOfAllPeople
		$a_00_5 = {61 74 74 65 6d 70 74 73 54 6f 52 65 63 72 65 61 74 65 55 70 6c 6f 61 64 54 61 73 6b 73 46 6f 72 42 61 63 6b 67 72 6f 75 6e 64 53 65 73 73 69 6f 6e 73 } //1 attemptsToRecreateUploadTasksForBackgroundSessions
		$a_00_6 = {3a 2f 2f 31 38 30 2e 32 31 35 2e 32 35 34 2e 32 33 3a 39 39 30 33 2f 4a 59 53 79 73 74 65 6d 2f 72 65 73 74 49 6e 74 2f 76 33 2f 63 6f 6c 6c 65 63 74 2f 70 6f 72 74 61 6c 2f } //1 ://180.215.254.23:9903/JYSystem/restInt/v3/collect/portal/
	condition:
		((#a_00_0  & 1)*1+(#a_00_1  & 1)*1+(#a_00_2  & 1)*1+(#a_00_3  & 1)*1+(#a_00_4  & 1)*1+(#a_00_5  & 1)*1+(#a_00_6  & 1)*1) >=5
 
}