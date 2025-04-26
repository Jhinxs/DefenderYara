
rule Trojan_Win32_NSISInject_AZ_MTB{
	meta:
		description = "Trojan:Win32/NSISInject.AZ!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 05 00 00 "
		
	strings :
		$a_01_0 = {54 6f 6d 65 72 73 5c 48 65 6c 67 61 72 64 65 72 65 5c 52 65 62 75 6b 65 72 73 5c 57 61 72 72 65 6e 65 72 73 2e 53 6b 75 } //1 Tomers\Helgardere\Rebukers\Warreners.Sku
		$a_01_1 = {50 61 61 74 61 6c 65 72 73 5c 70 72 65 65 6e 67 61 67 65 5c 46 6f 72 62 72 75 67 73 66 6f 72 65 6e 69 6e 67 65 72 6e 65 5c 4f 78 79 62 65 6e 7a 61 6c 64 65 68 79 64 65 2e 56 69 6e } //1 Paatalers\preengage\Forbrugsforeningerne\Oxybenzaldehyde.Vin
		$a_01_2 = {53 6f 66 74 77 61 72 65 5c 48 6f 74 65 6c 76 72 74 65 72 6e 65 5c 43 6f 6c 6f 75 72 66 61 73 74 5c 43 68 75 72 63 68 69 65 72 } //1 Software\Hotelvrterne\Colourfast\Churchier
		$a_01_3 = {43 6f 72 6e 62 65 6c 6c 2e 57 68 6f } //1 Cornbell.Who
		$a_01_4 = {53 71 75 69 72 6d 65 72 73 5c 42 69 73 65 6b 73 75 61 6c 69 74 65 74 65 6e 5c 4f 63 63 69 64 65 6e 74 61 6c 69 73 65 73 5c 46 69 6c 6d 61 70 70 61 72 61 74 65 72 2e 41 66 6e } //1 Squirmers\Biseksualiteten\Occidentalises\Filmapparater.Afn
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1) >=5
 
}