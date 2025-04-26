
rule Trojan_Win32_NSISInject_FM_MTB{
	meta:
		description = "Trojan:Win32/NSISInject.FM!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 05 00 00 "
		
	strings :
		$a_01_0 = {5c 00 4e 00 61 00 72 00 6b 00 6f 00 65 00 72 00 6e 00 65 00 73 00 5c 00 54 00 69 00 6c 00 62 00 61 00 67 00 65 00 6b 00 62 00 73 00 76 00 72 00 64 00 69 00 65 00 72 00 2e 00 45 00 6b 00 73 00 } //1 \Narkoernes\Tilbagekbsvrdier.Eks
		$a_01_1 = {5c 00 4a 00 75 00 6a 00 75 00 69 00 73 00 6d 00 5c 00 46 00 72 00 65 00 74 00 74 00 65 00 2e 00 4a 00 79 00 74 00 } //1 \Jujuism\Frette.Jyt
		$a_01_2 = {53 00 6f 00 66 00 74 00 77 00 61 00 72 00 65 00 5c 00 43 00 69 00 72 00 63 00 75 00 6d 00 6f 00 65 00 73 00 6f 00 70 00 68 00 61 00 67 00 61 00 6c 00 } //1 Software\Circumoesophagal
		$a_01_3 = {50 00 72 00 6a 00 75 00 64 00 69 00 63 00 69 00 65 00 6c 00 } //1 Prjudiciel
		$a_01_4 = {4f 00 76 00 65 00 72 00 74 00 65 00 67 00 6e 00 65 00 6e 00 64 00 65 00 } //1 Overtegnende
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1) >=5
 
}