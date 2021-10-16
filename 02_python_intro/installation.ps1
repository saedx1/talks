Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))

choco install miniconda3 --params="'/AddToPath:1'" -y

conda create -n saad python=3.7

conda activate saad

conda install ipykernel jupyter

python -m ipykernel install --user --name saad

jupyter notebook
