
rule Trojan_BAT_Asyncrat_MTB{
	meta:
		description = "Trojan:BAT/Asyncrat!MTB,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 "
		
	strings :
		$a_03_0 = {26 38 a8 ff ?? ff 7e 13 00 ?? 04 14 28 63 00 ?? 06 3a b8 ff ?? ff 20 01 00 ?? 00 28 65 00 ?? 06 3a 8d ?? ff ff } //1
		$a_01_1 = {77 00 6b 00 71 00 6e 00 57 00 42 00 6d 00 79 00 51 00 52 00 67 00 54 00 33 00 45 00 64 00 49 00 51 00 79 00 2e 00 6f 00 49 00 4b 00 4b 00 55 00 50 00 32 00 53 00 63 00 71 00 79 00 5a 00 6d 00 6a 00 6e 00 31 00 33 00 77 00 } //1 wkqnWBmyQRgT3EdIQy.oIKKUP2ScqyZmjn13w
		$a_01_2 = {75 00 73 00 30 00 51 00 65 00 49 00 49 00 79 00 79 00 77 00 48 00 4f 00 6e 00 4c 00 31 00 61 00 45 00 6c 00 2e 00 4c 00 4c 00 49 00 37 00 47 00 32 00 33 00 59 00 4d 00 44 00 4b 00 75 00 45 00 73 00 75 00 54 00 37 00 43 00 } //1 us0QeIIyywHOnL1aEl.LLI7G23YMDKuEsuT7C
	condition:
		((#a_03_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1) >=3
 
}