# getSRA
Wrapper bash scripts to download fastq files from SRR

## installation
Navigate to the folder you want to download
```bash
git clone https://github.com/zktuong/getSRA.git
```

## requirements
Instructions are for Mac or Linux OS<br>

<br>Download binaries from sratoolkit.
```bash
https://trace.ncbi.nlm.nih.gov/Traces/sra/sra.cgi?view=software
```

Add paths to ~/.bashrc (or ~/.bashprofile).
<br>Replace ```/<path>/<to>/``` accordingly.
```bash
echo 'export PATH=/<path>/<to>/getSRA/bin:$PATH' >> ~/.bashrc
echo 'alias getSRA="bash getSRA.sh -l "' >> ~/.bashrc
echo 'export PATH=/<path>/<to>/sratoolkit.2.10.0/bin:$PATH' >> ~/.bashrc
source ~/.bashrc
```

## usage
Download Accession list file from SRA run selector and place the file in the folder you want them to appear.
<br>getSRA will do the prefetch and fastqdump in succession.
```bash
getSRA SRR_Acc_List.txt
```

That's it! Enjoy!
