
rule Trojan_BAT_Heracles_NHM_MTB{
	meta:
		description = "Trojan:BAT/Heracles.NHM!MTB,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 02 00 00 "
		
	strings :
		$a_03_0 = {11 05 02 7b 52 00 00 04 08 11 05 02 7b ?? 00 00 04 6f ?? 00 00 0a 28 ?? 00 00 0a 11 05 59 6f ?? 00 00 0a 58 13 05 11 05 6a 02 7b ?? 00 00 04 6f ?? 00 00 0a 32 ca } //5
		$a_01_1 = {50 00 61 00 73 00 73 00 77 00 6f 00 72 00 64 00 53 00 74 00 65 00 61 00 6c 00 65 00 72 00 2e 00 53 00 74 00 65 00 61 00 6c 00 65 00 72 00 } //1 PasswordStealer.Stealer
	condition:
		((#a_03_0  & 1)*5+(#a_01_1  & 1)*1) >=6
 
}