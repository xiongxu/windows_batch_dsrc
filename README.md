# windows_batch_dsrc
Automatically fastq(.gz) (de)compression on windows

##usage
1. git clone or download the zip packages
	
	```
	git clone https://github.com/xiongxu/windows_batch_dsrc.git
	```
	
	```
	wget https://github.com/xiongxu/windows_batch_dsrc/archive/master.zip
	```
2. copy compress.bat decompress.bat dsrc.exe dsrc_compress.make dsrc_decompress.make gzip.exe make.exe msys-2.0.dll to your fastq(.gz) file path
3. double click compress.bat on windows if you want to compress your .fastq(.gz) file(s), or double click decompress.bat on windows if you want to decompress your .dsrc file(s)

## Note
Make sure your fastq file extention is .fastq.gz. when your fastq file extention is .fq.gz, you need to edit dsrc_compress.make on line 3 ,change "R1RawSuffix = .fastq.gz" to "R1RawSuffix = .fq.gz".otherwise, you can also add "R1RawSuffix=.fq.gz" to the end of the 1st line in compress.bat. And so is .fq or .fastq