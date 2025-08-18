# instal java 
sudo dnf install -y java-17-amazon-corretto 

# 1) Java & git
sudo dnf install -y fontconfig java-17-openjdk git

# 2) Jenkins repo + key
sudo rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io-2023.key
sudo curl -fsSL -o /etc/yum.repos.d/jenkins.repo \
  https://pkg.jenkins.io/redhat-stable/jenkins.repo

# 3) Install Jenkins
sudo dnf install -y jenkins

# change port no
sudo mkdir -p /etc/systemd/system/jenkins.service.d
sudo nano /etc/systemd/system/jenkins.service.d/override.conf

echo -e "[Service]\nEnvironment=\"JENKINS_PORT=8081\"" | sudo tee /etc/systemd/system/jenkins.service.d/override.conf

# 4) Start + enable
sudo systemctl daemon-reload
sudo systemctl restart jenkins



