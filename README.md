# Unix Practical – CentOS Installation in VirtualBox

## Practical No.: 01

### Title

**Installation of CentOS Operating System in VirtualBox**

---

## 1. Aim

To install the CentOS operating system in Oracle VirtualBox and verify the successful installation using basic Linux commands.

---

## 2. Software Requirements

* Oracle VirtualBox
* CentOS ISO image
* Computer/Laptop with virtualization support
* Minimum 4 GB RAM recommended
* Minimum 20 GB free disk space

---

## 3. Practical Procedure

### Step 1 – Create Virtual Machine

Open Oracle VirtualBox and click **New**.

Enter the following details:

* **Name:** CentOS
* **Type:** Linux
* **Version:** Red Hat (64-bit)

---

### Step 2 – Configure Memory

Allocate memory to the virtual machine.

**Recommended:** 2048 MB (2 GB) or more, depending on the host computer.

---

### Step 3 – Create Virtual Hard Disk

Select:

**Create a virtual hard disk now**

Configure the disk as follows:

* **Hard Disk File Type:** VDI (VirtualBox Disk Image)
* **Storage:** Dynamically Allocated
* **Disk Size:** 20 GB or more

---

### Step 4 – Attach CentOS ISO

Select the newly created virtual machine.

Go to:

**Settings → Storage → Optical Drive**

Select:

**Choose a Disk File**

Then select the downloaded CentOS ISO image.

---

### Step 5 – Start the Virtual Machine

Click **Start**.

The CentOS installation screen will appear.

---

### Step 6 – Install CentOS

Follow the installation instructions.

Configure:

* Installation language
* Keyboard
* Installation destination
* Network
* Root password
* User account

Select the virtual hard disk created earlier as the installation destination.

---

### Step 7 – Complete Installation

After installation is completed:

1. Restart the virtual machine.
2. Log in using the created user account.
3. Open the Terminal.

---

# 4. Linux Commands to Execute

Execute the following commands in the CentOS terminal.

### Command 1 – Display Hostname

```bash
hostname
```

### Command 2 – Display Operating System Information

```bash
cat /etc/os-release
```

### Command 3 – Display Kernel Version

```bash
uname -r
```

### Command 4 – Display Memory Information

```bash
free -h
```

### Command 5 – Display Disk Usage

```bash
df -h
```

### Command 6 – Display Current User

```bash
whoami
```

### Command 7 – Display Current Date and Time

```bash
date
```

---

# 5. Student Submission

Each student must submit the following files to this GitHub repository.

## A. Installation Report

Create:

```text
Installation_Report.md
```

The report must contain:

* Student Name
* Register Number
* Class
* VirtualBox version
* CentOS version
* VM RAM
* Virtual hard disk size
* Installation procedure
* Problems faced and solutions
* Conclusion

---

## B. Command Output

Create:

```text
commands.txt
```

Record the output of all the commands given in Section 4.

The file should contain evidence for:

```text
hostname
cat /etc/os-release
uname -r
free -h
df -h
whoami
date
```

---

## C. Screenshots

Create the following folder:

```text
screenshots/
```

Upload screenshots showing:

```text
01_virtualbox_vm.png
02_vm_configuration.png
03_centos_installation.png
04_centos_login.png
05_terminal_commands.png
06_system_information.png
```

Screenshots must clearly show the student's own practical work.

---

# 6. Important Submission Rules

1. Do not upload the CentOS ISO file.
2. Do not upload the VirtualBox `.vdi` or `.vdi`-like virtual disk file.
3. Do not upload the complete virtual machine.
4. Upload only the report, command output and required screenshots.
5. Use your own screenshots and command output.
6. Do not copy another student's report.
7. Use meaningful file names.
8. Commit and push your work to GitHub.
9. GitHub Actions will automatically check the submission.

---

# 7. Expected Repository Structure

Your repository should finally look like this:

```text
CentOS-VirtualBox-Practical/
│
├── README.md
│
├── Installation_Report.md
│
├── commands.txt
│
├── screenshots/
│   ├── 01_virtualbox_vm.png
│   ├── 02_vm_configuration.png
│   ├── 03_centos_installation.png
│   ├── 04_centos_login.png
│   ├── 05_terminal_commands.png
│   └── 06_system_information.png
│
├── tests/
│   └── test_submission.sh
│
└── .github/
    └── workflows/
        └── autograding.yml
```

---

# 8. Evaluation Scheme

| Component                   |   Marks |
| --------------------------- | ------: |
| VirtualBox VM Configuration |      15 |
| CentOS Installation         |      25 |
| Installation Report         |      15 |
| Linux Command Execution     |      20 |
| Screenshots / Evidence      |      15 |
| GitHub Submission           |      10 |
| **Total**                   | **100** |

---

# 9. Automatic Verification

GitHub Actions will automatically check:

* Required report file exists
* Command output file exists
* Required commands are documented
* Screenshot folder exists
* CentOS information is present
* VirtualBox information is present
* Submission structure is correct

The GitHub Actions result will show whether the submission passes or requires correction.

---

# 10. Expected Learning Outcome

After completing this practical, the student should be able to:

1. Create a virtual machine using VirtualBox.
2. Configure virtual memory and storage.
3. Install CentOS Linux.
4. Create and manage a Linux user account.
5. Use basic Linux system commands.
6. Collect system information from the terminal.
7. Document practical work using Markdown.
8. Submit and verify practical work using GitHub and GitHub Actions.

---

# 11. Conclusion

CentOS has been installed successfully in VirtualBox, and the Linux environment has been verified using basic system commands. The practical work has been documented and submitted through GitHub for automated verification.
