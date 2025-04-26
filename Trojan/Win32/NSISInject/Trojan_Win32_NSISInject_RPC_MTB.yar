
rule Trojan_Win32_NSISInject_RPC_MTB{
	meta:
		description = "Trojan:Win32/NSISInject.RPC!MTB,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 "
		
	strings :
		$a_01_0 = {4f 70 72 69 64 73 6e 69 6e 67 } //1 Opridsning
		$a_01_1 = {53 6f 66 74 77 61 72 65 5c 43 6f 6d 6d 75 6e 69 73 74 65 72 69 65 73 5c 4d 61 73 73 65 73 6b 72 69 76 65 6c 73 65 72 73 5c 4c 65 6a 64 65 72 73 5c 49 6e 64 6b 6f 6d 73 74 62 65 73 6b 61 74 74 65 64 65 } //1 Software\Communisteries\Masseskrivelsers\Lejders\Indkomstbeskattede
		$a_01_2 = {48 65 74 65 72 6f 67 6f 6e 6f 75 73 6c 79 2e 41 66 6c } //1 Heterogonously.Afl
		$a_01_3 = {53 61 6d 74 61 6c 65 70 61 72 74 6e 65 72 73 2e 53 76 75 } //1 Samtalepartners.Svu
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1) >=4
 
}
rule Trojan_Win32_NSISInject_RPC_MTB_2{
	meta:
		description = "Trojan:Win32/NSISInject.RPC!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 05 00 00 "
		
	strings :
		$a_01_0 = {43 00 6f 00 75 00 6e 00 74 00 65 00 72 00 6d 00 61 00 6e 00 64 00 2e 00 69 00 6e 00 69 00 } //1 Countermand.ini
		$a_01_1 = {53 00 6d 00 69 00 74 00 74 00 6c 00 65 00 69 00 73 00 68 00 2e 00 4b 00 72 00 69 00 32 00 } //1 Smittleish.Kri2
		$a_01_2 = {47 00 61 00 6c 00 76 00 61 00 6e 00 69 00 73 00 6b 00 5c 00 4f 00 75 00 62 00 6c 00 69 00 61 00 6e 00 63 00 65 00 2e 00 69 00 6e 00 69 00 } //1 Galvanisk\Oubliance.ini
		$a_01_3 = {53 00 6c 00 75 00 74 00 73 00 74 00 72 00 72 00 65 00 6c 00 73 00 65 00 72 00 6e 00 65 00 73 00 2e 00 4b 00 61 00 6d 00 } //1 Slutstrrelsernes.Kam
		$a_01_4 = {53 00 77 00 69 00 6e 00 67 00 70 00 6a 00 61 00 74 00 74 00 65 00 72 00 73 00 2e 00 6c 00 6e 00 6b 00 } //1 Swingpjatters.lnk
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1) >=5
 
}