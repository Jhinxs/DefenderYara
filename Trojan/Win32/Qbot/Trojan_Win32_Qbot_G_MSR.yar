
rule Trojan_Win32_Qbot_G_MSR{
	meta:
		description = "Trojan:Win32/Qbot.G!MSR,SIGNATURE_TYPE_PEHSTR,02 00 02 00 02 00 00 "
		
	strings :
		$a_01_0 = {5c 64 65 66 65 61 74 5c 72 74 6c 34 39 2e 70 64 62 } //1 \defeat\rtl49.pdb
		$a_01_1 = {64 73 66 75 63 6b 79 6f 75 31 30 4f } //1 dsfuckyou10O
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1) >=2
 
}