
rule Ransom_MSIL_Filecoder_FG_MTB{
	meta:
		description = "Ransom:MSIL/Filecoder.FG!MTB,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 "
		
	strings :
		$a_81_0 = {41 4c 4c 20 59 4f 55 52 20 46 49 4c 45 53 20 45 4e 43 52 59 50 54 45 44 } //1 ALL YOUR FILES ENCRYPTED
		$a_81_1 = {52 61 73 6f 6d 77 61 72 65 32 2e 30 } //1 Rasomware2.0
		$a_81_2 = {44 69 73 61 62 6c 65 54 61 73 6b 4d 67 72 } //1 DisableTaskMgr
	condition:
		((#a_81_0  & 1)*1+(#a_81_1  & 1)*1+(#a_81_2  & 1)*1) >=3
 
}