# getSRA
Wrapper bash scripts to download fastq files from SRA.
<br>Instructions are for Mac or Linux OS.<br>

## Requirements
Download the sratoolkit binaries from this website. Choose the appropriate file for your system.
```bash
https://trace.ncbi.nlm.nih.gov/Traces/sra/sra.cgi?view=software
```
Place the sratoolkit package wherever you like and unzip it, as long as you know where the directory is.
<br>For example:
```
# change directory to Documents
cd /Users/zktuong/Documents/
# make a folder called Softwares
mkdir Softwares
# go into the new folder
cd Softwares
# download
wget https://ftp-trace.ncbi.nlm.nih.gov/sra/sdk/2.9.6-1/sratoolkit.2.9.6-1-mac64.tar.gz
# unpack
tar -xzvf sratoolkit.2.9.6-1-mac64.tar.gz
# at this point, you can remove the original zip with
# rm sratoolkit.2.9.6-1-mac64.tar.gz
```

## Installation and setup
Open up terminal/command line and navigate to the folder you want to download
```bash
# cd /Users/zktuong/Documents/Softwares
# this command will download this repository and create a folder called 'getSRA'
git clone https://github.com/zktuong/getSRA.git
```

We will point to the paths to the software by adding the paths into ~/.bashrc (or ~/.bashprofile).
<br>Replace ```/<path>/<to>/``` and ```version``` accordingly.
<br>In my example above, ```/<path>/<to>/``` will become ```/Users/zktuong/Documents/Softwares/```
<br>and sratoolkit version will be ```sratoolkit.2.9.6-1```.
```bash
echo 'export PATH=/<path>/<to>/getSRA/bin:$PATH' >> ~/.bashrc
echo 'export PATH=/<path>/<to>/sratoolkit.<version>/bin:$PATH' >> ~/.bashrc

# create a short cut to call getSRA.sh
echo 'alias getSRA="bash getSRA.sh -l "' >> ~/.bashrc

# reload
source ~/.bashrc
```

## Usage
Download Accession list file from SRA run selector and place the file in the folder you want them to appear.
```bash
# cd /Users/zktuong/Downloads
getSRA SRR_Acc_List.txt
```

That's it! Enjoy!
