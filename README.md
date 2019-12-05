# getSRA
Wrapper bash scripts to download fastq files from SRR

## Installation
Instructions are for Mac or Linux OS<br>

Open up terminal/command line and navigate to the folder you want to download
```bash
# for example, change directory to Documents
cd /Users/zktuong/Documents/
# make a folder called Softwares
mkdir Softwares
# go into the new folder
cd Softwares
# this command will download this repository
git clone https://github.com/zktuong/getSRA.git
```

## Requirements
<br>Also download the sratoolkit binaries from this website. Choose the appropriate file for your system.
```bash
https://trace.ncbi.nlm.nih.gov/Traces/sra/sra.cgi?view=software
```
Place the sratoolkit software wherever you like.
<br>
<br>We will point to the paths to the software by adding the paths into ~/.bashrc (or ~/.bashprofile).
<br>Replace ```/<path>/<to>/``` accordingly.
<br>in my example above, ```/<path>/<to>/``` will become ```/Users/zktuong/Documents/Softwares/```.
```bash
echo 'export PATH=/<path>/<to>/getSRA/bin:$PATH' >> ~/.bashrc
echo 'export PATH=/<path>/<to>/sratoolkit.2.10.0/bin:$PATH' >> ~/.bashrc

# create a short cut to call getSRA.sh
echo 'alias getSRA="bash getSRA.sh -l "' >> ~/.bashrc

# reload
source ~/.bashrc
```

## Usage
Download Accession list file from SRA run selector and place the file in the folder you want them to appear.
```bash
getSRA SRR_Acc_List.txt
```

That's it! Enjoy!
