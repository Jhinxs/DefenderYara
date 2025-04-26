
rule Ransom_MSIL_SupsoCrypt_PA_MTB{
	meta:
		description = "Ransom:MSIL/SupsoCrypt.PA!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_03_0 = {0a 16 0b 2b 1d 02 07 6f ?? 00 00 0a 1f 7b 61 d1 0c 06 08 8c ?? 00 00 01 28 ?? 00 00 0a 0a 07 17 58 0b 07 02 6f ?? 00 00 0a 32 da } //1
	condition:
		((#a_03_0  & 1)*1) >=1
 
}