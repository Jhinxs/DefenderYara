
rule Trojan_BAT_AveMariaRAT_NHG_MTB{
	meta:
		description = "Trojan:BAT/AveMariaRAT.NHG!MTB,SIGNATURE_TYPE_PEHSTR_EXT,07 00 07 00 07 00 00 "
		
	strings :
		$a_81_0 = {6a 6b 68 6a 66 6a 68 6a 68 67 6b 61 73 64 6e 66 69 68 73 69 61 6a 67 6f 27 73 64 66 68 6a 6a 66 68 6c 6a 69 75 70 } //1 jkhjfjhjhgkasdnfihsiajgo'sdfhjjfhljiup
		$a_81_1 = {49 6e 76 6f 6b 65 4d 65 6d 62 65 72 } //1 InvokeMember
		$a_81_2 = {53 79 73 74 65 6d 2e 52 65 66 6c 65 63 74 69 6f 6e 2e 41 73 73 65 6d 62 6c 79 } //1 System.Reflection.Assembly
		$a_81_3 = {47 65 74 4d 61 6e 69 66 65 73 74 52 65 73 6f 75 72 63 65 53 74 72 65 61 6d } //1 GetManifestResourceStream
		$a_81_4 = {70 6f 6c 64 61 74 61 35 2e 55 70 64 61 74 65 53 6e 6f 6f 7a 65 } //1 poldata5.UpdateSnooze
		$a_81_5 = {6c 64 61 74 61 35 2e 46 65 74 63 68 4d 65 6d 6f 46 6f 72 52 65 6d 69 6e 64 65 72 } //1 ldata5.FetchMemoForReminder
		$a_81_6 = {5b 70 6f 6c 64 61 74 61 35 5d 2e 5b 44 65 6c 65 74 65 45 78 69 73 74 69 6e 67 52 65 6d 69 6e 64 65 72 5d } //1 [poldata5].[DeleteExistingReminder]
	condition:
		((#a_81_0  & 1)*1+(#a_81_1  & 1)*1+(#a_81_2  & 1)*1+(#a_81_3  & 1)*1+(#a_81_4  & 1)*1+(#a_81_5  & 1)*1+(#a_81_6  & 1)*1) >=7
 
}