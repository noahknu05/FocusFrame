# FocusFrame

A Python-based productivity application that tracks application usage and website activity to help users monitor and optimize their focus time.

## Overview

FocusFrame is a Windows desktop application that:
- **Tracks application usage** - Monitors which programs you spend time using
- **Blocks distracting apps** - Prevents access to specified applications during focus sessions
- **Blocks distracting websites** - Prevents access to specified websites
- **Visualizes statistics** - Displays charts and analytics of your screen time and app usage
- **Manages data** - Stores and organizes all tracking data in CSV format

## Project Structure

```
FocusFrame_full/
├── README.md                          # This file
├── FocusFrameApp.py                  # Main application entry point
├── focus_main.py                     # Core Focus class with business logic
├── FocusFrameApp.spec                # PyInstaller configuration
├── build_main_exe.ps1                # PowerShell script to build executable
├── requirements.txt                  # Python dependencies
├── app_blocker_f.py                  # Application blocking functionality
├── web_blocker_f.py                  # Website blocking functionality
├── data_handler_f.py                 # Data storage and management
├── logo.ico                          # Application icon
└── logo.png                          # Logo image
```

## Installation

### Prerequisites
- **Python 3.8 or higher** (Python 3.10+ recommended)
- **Windows OS** (application is Windows-exclusive)
- **Administrator privileges** (required for app/web blocking features)

### Setup Steps

1. Clone or extract the FocusFrame project
2. Navigate to the project directory:
   ```bash
   cd FocusFrame_full
   ```
3. Install all dependencies from the requirements.txt file:
   ```bash
   pip install -r requirements.txt
   ```

The application requires the following Python packages:
- pandas >= 1.3.0
- matplotlib >= 3.5.0
- pywinctl >= 0.2.0
- psutil >= 5.9.0
- pyinstaller >= 5.0.0

## Running the Application

**Important:** The app must be run with administrator privileges for the web and app blocker features to function properly. The application needs admin rights to:
- Kill processes when blocking applications
- Edit Windows system files for website blocking

### Option 1: Run from Terminal (Recommended)
1. Open a terminal (Command Prompt or PowerShell) as **Administrator**
   - Right-click the terminal and select "Run as administrator", OR
   - Run VS Code as administrator
2. Navigate to the project folder
3. Execute:
   ```bash
   python FocusFrameApp.py
   ```

### Option 2: Build as Standalone Executable
To create a standalone `.exe` file (no Python installation required for end-users):
```powershell
.\build_main_exe.ps1
```
Run this PowerShell script from the project folder to generate the executable using PyInstaller.

This launches the tkinter GUI where you can:
- View real-time application tracking
- Access blocking controls for apps and websites
- View statistics and analytics
- Configure settings

## Key Components

### FocusFrameApp.py
The main GUI application using tkinter. Handles:
- Window management and UI rendering
- Integration with Focus core functionality
- Displaying statistics and graphs
- User interactions

### focus_main.py
Core application logic containing the `Focus` class:
- Initializes the app blocker, web blocker, and data handler
- Manages application tracking loops
- Coordinates between different modules

### app_blocker_f.py
`AppBlocker` class that:
- Prevents users from running specified programs
- Enforces application restrictions

### web_blocker_f.py
`WebBlocker` class that:
- Blocks access to specified websites
- Manages website filtering

### data_handler_f.py
`DataHandler` class that:
- Manages data storage (CSV files)
- Organizes tracking data
- Provides data access to other components

## Dependencies

Key packages (see requirements.txt for full list):
- **tkinter** - GUI framework
- **pandas** - Data manipulation and analysis
- **matplotlib** - Data visualization
- **psutil** - Process and system utilities
- **pywinctl** - Windows control functionality
- **ctypes** - Windows API integration

## Data Files

The application stores data in CSV format:
- `all_programs.csv` - List of all detected programs
- `block_list.csv` - Programs/websites currently blocked
- `time_spent_on_programs.csv` - Tracking data for app usage
- `time_spent_on_screen.csv` - Screen time statistics

## Features

- ✅ Real-time application tracking
- ✅ Selective app blocking
- ✅ Website blocking via hosts file
- ✅ Usage statistics and visualization
- ✅ Data persistence
- ✅ Standalone executable build support

## Building from Source

The `FocusFrameApp.spec` file contains PyInstaller configuration for building the executable:

```bash
pyinstaller FocusFrameApp.spec
```

## Troubleshooting

- **Administrator Privileges Required**: The app must be run as administrator for the app blocker and web blocker features to function properly. Without admin rights, you can still view statistics but cannot block applications or websites.
- **Missing Dependencies**: If you encounter import errors, run `pip install -r requirements.txt` to ensure all required packages are installed.
- **Python Version**: Ensure you have Python 3.8 or higher installed. Check with `python --version`
- **Windows Only**: This application only works on Windows. It requires Windows APIs and admin privileges to manage processes and system files.
- **Build Fails**: Ensure PyInstaller is installed: `pip install pyinstaller`

## License

[Add your license information here]

## Contributing

[Add contribution guidelines here]
