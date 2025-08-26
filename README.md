# azure-devbox-automation

Automating Linux developer tools setup with Ansible and provisioning an Azure-based remote development environment using Terraform, fully integrated with VS Code.

---

## Project Overview

This project is designed to streamline the setup of a developer environment from **local Linux machines** to a **remote Azure-based devbox**. It combines **Ansible** for local automation with **Terraform** for cloud infrastructure provisioning, enabling a seamless workflow for developers.

### Current Ansible Automation

The Ansible playbooks in this project automate the installation of essential development tools on Linux, including:

- Python3
- Git
- VS Code

This ensures that your local machine is ready for development and for managing remote resources.

### Future Terraform Azure DEV Environment

The project will be extended to use Terraform for provisioning a fully configured remote development environment on Azure:

- Deploy a Linux virtual machine along with a virtual network, subnets, and network security groups.
- Utilize Terraform features like state management, formatting, variables, conditionals, and more.
- Configure Azure custom data and provisioners to bootstrap the VM with Docker.
- Automatically add the VM connection information to your VS Code SSH configuration, allowing you to work on it as a remote development environment.

This setup provides a reproducible, scalable, and fully automated dev environment for projects.

---

## Getting Started Locally

### Prerequisites

- Linux machine (Debian/Ubuntu recommended)
- Ansible installed locally
- Git installed locally
- Internet connection to install packages

### Steps to Run

1. **Clone the repository**
   ```bash
   git clone https://github.com/<username>/azure-devbox-automation.git
   cd azure-devbox-automation

### Run the Ansible playbook
  ansible-playbook ansible/install_dev_tools.yml --ask-become-pass

###  Verify installation
  python3 --version
  git --version
  code --version

