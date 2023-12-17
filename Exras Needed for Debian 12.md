# Debian 12 Auxilaiary Instalations needed to be added in

In synaptic Package Manager select these and click "Apply"

* chromium
* docker
* docker-compose
* geany
* gparted
* tmux
* partioninmanager
* thunderbird
* wget

To install visual studio code

Yes, you can install Visual Studio Code (VSCode) on Debian 12. Here are the steps to do so:

1. **Open Terminal**: Open a terminal window on your Debian 12 system.

2. **Update APT**: Ensure that your package list is up to date by running the following command:

   ```markdown
   sudo apt update
   ```

3. **Install Dependencies**: Install some necessary dependencies for VSCode:

   ```markdown
   sudo apt install software-properties-common apt-transport-https wget
   ```

4. **Import Microsoft GPG Key**: Add the Microsoft GPG key to your system:

   ```markdown
   wget -q https://packages.microsoft.com/keys/microsoft.asc -O- | sudo apt-key add -
   ```

5. **Add VSCode Repository**: Add the VSCode repository to your APT sources:

   ```markdown
   sudo add-apt-repository "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main"
   ```

6. **Install VSCode**: Update your package list again and then install VSCode:

   ```markdown
   sudo apt update
   sudo apt install code
   ```

7. **Launch VSCode**: You can now launch Visual Studio Code by searching for it in your applications menu or by running the following command:

   ```markdown
   code
   ```

This will open Visual Studio Code on your Debian 12 system, and you can start using it for your Python programming or any other coding tasks.

Remember that this installation process is for the stable release of VSCode provided by Microsoft. You can also install the Insiders version if you prefer by changing the repository URL accordingly.

Please let me know if you encounter any issues during the installation process.



