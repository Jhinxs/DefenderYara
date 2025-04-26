
rule Trojan_BAT_CoinMiner_QN_bit{
	meta:
		description = "Trojan:BAT/CoinMiner.QN!bit,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 "
		
	strings :
		$a_01_0 = {7a 00 6c 00 61 00 79 00 61 00 70 00 61 00 6e 00 64 00 61 00 2e 00 64 00 6f 00 2e 00 61 00 6d 00 2f 00 73 00 65 00 72 00 76 00 69 00 63 00 65 00 2e 00 75 00 70 00 64 00 61 00 74 00 65 00 } //1 zlayapanda.do.am/service.update
		$a_01_1 = {50 00 72 00 6f 00 67 00 72 00 61 00 6d 00 20 00 46 00 69 00 6c 00 65 00 73 00 2f 00 4d 00 69 00 63 00 72 00 6f 00 73 00 6f 00 66 00 74 00 2f 00 4e 00 65 00 74 00 46 00 72 00 61 00 6d 00 65 00 77 00 6f 00 72 00 6b 00 2f 00 6d 00 73 00 64 00 74 00 73 00 2e 00 65 00 78 00 65 00 } //1 Program Files/Microsoft/NetFramework/msdts.exe
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1) >=2
 
}