
rule Trojan_Win32_NSISInject_RPR_MTB{
	meta:
		description = "Trojan:Win32/NSISInject.RPR!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 05 00 00 "
		
	strings :
		$a_01_0 = {43 00 6f 00 65 00 71 00 75 00 61 00 6c 00 69 00 7a 00 65 00 73 00 } //1 Coequalizes
		$a_01_1 = {46 00 6f 00 6e 00 64 00 73 00 6b 00 6f 00 64 00 65 00 73 00 6b 00 69 00 66 00 74 00 65 00 74 00 } //1 Fondskodeskiftet
		$a_01_2 = {44 00 61 00 64 00 61 00 69 00 73 00 74 00 69 00 63 00 61 00 6c 00 6c 00 79 00 2e 00 41 00 6e 00 6f 00 } //1 Dadaistically.Ano
		$a_01_3 = {46 00 6f 00 72 00 73 00 6b 00 72 00 69 00 66 00 74 00 73 00 2e 00 64 00 6c 00 6c 00 } //1 Forskrifts.dll
		$a_01_4 = {45 00 6e 00 67 00 62 00 6c 00 6f 00 6d 00 6d 00 65 00 6e 00 73 00 31 00 37 00 30 00 2e 00 69 00 6e 00 69 00 } //1 Engblommens170.ini
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1) >=5
 
}
rule Trojan_Win32_NSISInject_RPR_MTB_2{
	meta:
		description = "Trojan:Win32/NSISInject.RPR!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 05 00 00 "
		
	strings :
		$a_01_0 = {54 00 61 00 6c 00 65 00 72 00 73 00 74 00 6f 00 6c 00 65 00 6e 00 73 00 } //1 Talerstolens
		$a_01_1 = {48 00 61 00 63 00 65 00 6b 00 73 00 2e 00 50 00 6c 00 61 00 } //1 Haceks.Pla
		$a_01_2 = {52 00 65 00 6a 00 73 00 65 00 6d 00 6f 00 6e 00 74 00 72 00 73 00 2e 00 47 00 72 00 61 00 } //1 Rejsemontrs.Gra
		$a_01_3 = {54 00 65 00 6e 00 6e 00 69 00 73 00 6b 00 65 00 74 00 73 00 6a 00 65 00 72 00 6e 00 65 00 5c 00 4d 00 65 00 64 00 69 00 63 00 69 00 6e 00 61 00 6c 00 64 00 69 00 72 00 65 00 6b 00 74 00 72 00 65 00 72 00 6e 00 65 00 5c 00 54 00 72 00 69 00 63 00 68 00 6f 00 67 00 6c 00 6f 00 73 00 73 00 69 00 64 00 61 00 65 00 5c 00 4b 00 6f 00 66 00 65 00 6d 00 69 00 6e 00 69 00 73 00 6d 00 65 00 72 00 6e 00 65 00 73 00 2e 00 69 00 6e 00 69 00 } //1 Tennisketsjerne\Medicinaldirektrerne\Trichoglossidae\Kofeminismernes.ini
		$a_01_4 = {56 00 65 00 67 00 65 00 74 00 6f 00 6d 00 69 00 6e 00 65 00 72 00 61 00 6c 00 2e 00 53 00 74 00 65 00 } //1 Vegetomineral.Ste
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1) >=5
 
}