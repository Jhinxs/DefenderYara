
rule Trojan_BAT_AgentTesla_DA_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.DA!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0f 00 0f 00 05 00 00 "
		
	strings :
		$a_00_0 = {01 57 15 a2 09 09 03 00 00 00 fa 25 33 00 16 00 00 01 00 00 00 31 00 00 00 07 } //3
		$a_01_1 = {53 65 63 75 72 69 74 79 50 72 6f 74 6f 63 6f 6c 54 79 70 65 } //3 SecurityProtocolType
		$a_01_2 = {48 74 74 70 57 65 62 52 65 73 70 6f 6e 73 65 } //3 HttpWebResponse
		$a_01_3 = {48 74 74 70 57 65 62 52 65 71 75 65 73 74 } //3 HttpWebRequest
		$a_01_4 = {4d 6f 76 65 4e 65 78 74 } //3 MoveNext
	condition:
		((#a_00_0  & 1)*3+(#a_01_1  & 1)*3+(#a_01_2  & 1)*3+(#a_01_3  & 1)*3+(#a_01_4  & 1)*3) >=15
 
}
rule Trojan_BAT_AgentTesla_DA_MTB_2{
	meta:
		description = "Trojan:BAT/AgentTesla.DA!MTB,SIGNATURE_TYPE_PEHSTR_EXT,12 00 12 00 06 00 00 "
		
	strings :
		$a_00_0 = {57 15 02 08 09 0b 00 00 00 fa 25 33 00 16 00 00 01 00 00 00 2f 00 00 00 03 00 00 00 04 00 00 00 24 00 00 00 03 00 00 00 48 } //3
		$a_01_1 = {47 65 74 54 65 6d 70 50 61 74 68 } //3 GetTempPath
		$a_01_2 = {46 72 6f 6d 42 61 73 65 36 34 53 74 72 69 6e 67 } //3 FromBase64String
		$a_01_3 = {43 72 65 61 74 65 44 65 63 72 79 70 74 6f 72 } //3 CreateDecryptor
		$a_01_4 = {50 72 6f 63 65 73 73 53 74 61 72 74 49 6e 66 6f } //3 ProcessStartInfo
		$a_01_5 = {41 65 73 43 72 79 70 74 6f 53 65 72 76 69 63 65 50 72 6f 76 69 64 65 72 } //3 AesCryptoServiceProvider
	condition:
		((#a_00_0  & 1)*3+(#a_01_1  & 1)*3+(#a_01_2  & 1)*3+(#a_01_3  & 1)*3+(#a_01_4  & 1)*3+(#a_01_5  & 1)*3) >=18
 
}
rule Trojan_BAT_AgentTesla_DA_MTB_3{
	meta:
		description = "Trojan:BAT/AgentTesla.DA!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0c 00 0c 00 09 00 00 "
		
	strings :
		$a_81_0 = {4e 41 75 64 69 6f } //10 NAudio
		$a_81_1 = {6e 6f 6a 61 72 72 2e 52 75 6c 65 73 } //1 nojarr.Rules
		$a_81_2 = {57 63 6f 65 61 64 63 70 73 65 2e 50 72 6f 70 65 72 74 69 65 73 } //1 Wcoeadcpse.Properties
		$a_81_3 = {52 63 77 67 75 2e 52 75 6c 65 73 } //1 Rcwgu.Rules
		$a_81_4 = {41 74 73 72 73 66 2e 50 72 6f 70 65 72 74 69 65 73 } //1 Atsrsf.Properties
		$a_81_5 = {4a 70 6b 67 71 62 7a 4d 4d 50 2e 52 65 61 64 65 72 73 } //1 JpkgqbzMMP.Readers
		$a_81_6 = {46 74 65 75 76 72 6a 6b 2e 50 72 6f 70 65 72 74 69 65 73 } //1 Fteuvrjk.Properties
		$a_81_7 = {43 76 72 6f 73 6d 65 2e 57 72 69 74 65 72 73 } //1 Cvrosme.Writers
		$a_81_8 = {41 6b 76 61 63 66 6b 68 68 76 2e 50 72 6f 70 65 72 74 69 65 73 } //1 Akvacfkhhv.Properties
	condition:
		((#a_81_0  & 1)*10+(#a_81_1  & 1)*1+(#a_81_2  & 1)*1+(#a_81_3  & 1)*1+(#a_81_4  & 1)*1+(#a_81_5  & 1)*1+(#a_81_6  & 1)*1+(#a_81_7  & 1)*1+(#a_81_8  & 1)*1) >=12
 
}