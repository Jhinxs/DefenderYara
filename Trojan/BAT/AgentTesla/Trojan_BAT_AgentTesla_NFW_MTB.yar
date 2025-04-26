
rule Trojan_BAT_AgentTesla_NFW_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.NFW!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 05 00 00 "
		
	strings :
		$a_01_0 = {24 39 64 39 30 33 37 66 63 2d 62 35 34 63 2d 34 30 36 36 2d 39 31 38 34 2d 62 34 64 37 32 39 33 34 34 35 66 64 } //1 $9d9037fc-b54c-4066-9184-b4d7293445fd
		$a_01_1 = {52 65 76 65 72 73 65 } //1 Reverse
		$a_01_2 = {47 65 74 4f 62 6a 65 63 74 56 61 6c 75 65 } //1 GetObjectValue
		$a_01_3 = {47 65 74 4d 65 74 68 6f 64 73 } //1 GetMethods
		$a_01_4 = {46 72 6f 6d 42 61 73 65 36 34 53 74 72 69 6e 67 } //1 FromBase64String
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1) >=5
 
}
rule Trojan_BAT_AgentTesla_NFW_MTB_2{
	meta:
		description = "Trojan:BAT/AgentTesla.NFW!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 05 00 00 "
		
	strings :
		$a_01_0 = {53 00 79 00 73 00 74 00 20 00 20 00 20 00 20 00 20 00 20 00 20 00 20 00 65 00 6d 00 2e 00 41 00 63 00 74 00 69 00 20 00 20 00 20 00 20 00 20 00 20 00 20 00 20 00 76 00 61 00 74 00 6f 00 72 00 } //1 Syst        em.Acti        vator
		$a_01_1 = {43 00 72 00 65 00 61 00 74 00 20 00 20 00 20 00 20 00 20 00 65 00 49 00 6e 00 73 00 74 00 61 00 20 00 20 00 20 00 20 00 6e 00 63 00 65 00 } //1 Creat     eInsta    nce
		$a_01_2 = {47 65 74 50 69 78 65 6c } //1 GetPixel
		$a_01_3 = {43 6f 6c 6f 72 54 72 61 6e 73 6c 61 74 6f 72 } //1 ColorTranslator
		$a_01_4 = {54 6f 57 69 6e 33 32 } //1 ToWin32
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1) >=5
 
}