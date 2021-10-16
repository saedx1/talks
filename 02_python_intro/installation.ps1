Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))

choco install miniconda3 --params="'/AddToPath:1'" -y

conda create -n dev1 python=3.7

conda activate dev1

conda install ipykernel jupyter

python -m ipykernel install --user --name dev1

jupyter notebook
