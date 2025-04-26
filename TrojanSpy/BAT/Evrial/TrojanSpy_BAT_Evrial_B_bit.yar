
rule TrojanSpy_BAT_Evrial_B_bit{
	meta:
		description = "TrojanSpy:BAT/Evrial.B!bit,SIGNATURE_TYPE_PEHSTR,03 00 03 00 03 00 00 "
		
	strings :
		$a_01_0 = {53 00 74 00 65 00 61 00 6c 00 65 00 64 00 20 00 63 00 6f 00 6f 00 6b 00 69 00 65 00 73 00 20 00 62 00 79 00 20 00 50 00 72 00 6f 00 6a 00 65 00 63 00 74 00 20 00 45 00 76 00 72 00 69 00 61 00 6c 00 } //1 Stealed cookies by Project Evrial
		$a_01_1 = {5c 00 77 00 61 00 6c 00 6c 00 65 00 74 00 2e 00 64 00 61 00 74 00 } //1 \wallet.dat
		$a_01_2 = {43 00 6c 00 69 00 70 00 62 00 6f 00 61 00 72 00 64 00 4d 00 6f 00 6e 00 69 00 74 00 6f 00 72 00 } //1 ClipboardMonitor
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1) >=3
 
}