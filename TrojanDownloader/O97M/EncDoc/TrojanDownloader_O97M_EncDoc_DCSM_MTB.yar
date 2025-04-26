
rule TrojanDownloader_O97M_EncDoc_DCSM_MTB{
	meta:
		description = "TrojanDownloader:O97M/EncDoc.DCSM!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,03 00 03 00 03 00 00 "
		
	strings :
		$a_01_0 = {26 63 68 72 28 61 73 63 28 6d 69 64 28 73 6b 65 79 2c 69 69 66 28 69 6d 6f 64 6c 65 6e 28 73 6b 65 79 29 3c 3e 30 2c 69 6d 6f 64 6c 65 6e 28 73 6b 65 79 29 2c 6c 65 6e 28 73 6b 65 79 29 29 2c 31 29 29 78 6f 72 61 73 63 28 6d 69 64 28 73 73 74 72 2c 69 2c 31 29 29 29 } //1 &chr(asc(mid(skey,iif(imodlen(skey)<>0,imodlen(skey),len(skey)),1))xorasc(mid(sstr,i,1)))
		$a_03_1 = {29 29 2b 22 66 69 6c 65 2f [0-1f] 2f [0-03] 2e 68 74 6d 2f 66 69 6c 65 } //1
		$a_01_2 = {63 3a 61 73 64 32 64 40 78 77 77 69 6e 64 6f 77 61 73 64 32 61 73 64 32 64 40 78 77 61 73 64 32 79 73 74 61 32 33 64 78 6d 33 32 61 73 64 32 64 40 78 77 33 31 32 33 61 73 64 32 65 66 77 32 24 64 61 64 77 32 24 24 61 64 64 61 32 65 64 69 61 73 6b 64 32 64 32 73 78 61 32 33 64 78 6c 32 78 77 32 40 61 32 33 64 78 } //1 c:asd2d@xwwindowasd2asd2d@xwasd2ysta23dxm32asd2d@xw3123asd2efw2$dadw2$$adda2ediaskd2d2sxa23dxl2xw2@a23dx
	condition:
		((#a_01_0  & 1)*1+(#a_03_1  & 1)*1+(#a_01_2  & 1)*1) >=3
 
}