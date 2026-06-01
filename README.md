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
FocusFrame/
├── README.md                          # This file
├── FocusFrameProtoV2/
│   ├── FocusFrameApp.py              # Main application entry point
│   ├── focus_main.py                 # Core Focus class with business logic
│   ├── FocusFrameApp.spec            # PyInstaller configuration
│   ├── build_main_exe.ps1            # PowerShell script to build executable
│   ├── requirements.txt               # Python dependencies
│   ├── plot.py                        # Plotting utilities (Stats_plotter class)
│   ├── app_blocker_f.py              # Application blocking functionality
│   ├── web_blocker_f.py              # Website blocking functionality
│   └── data_handler_f.py             # Data storage and management
```

## Installation

### Prerequisites
- Python 3.8 or higher
- Windows OS
- Administrator privileges (required for app/web blocking features)

### Setup

1. Clone or extract the project
2. Navigate to the project directory:
   ```bash
   cd FocusFrameProtoV2
   ```

3. Install dependencies:
   ```bash
   pip install -r requirements.txt
   ```

## Usage

### Running the Application

```bash
python FocusFrameApp.py
```

This launches the tkinter GUI where you can:
- View real-time application tracking
- Access blocking controls for apps and websites
- View statistics and analytics
- Configure settings

### Building an Executable

To create a standalone `.exe` file:

```powershell
.\build_main_exe.ps1
```

This uses PyInstaller to bundle the application into a single executable file.

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

### plot.py
`Stats_plotter` class for creating visualizations:
- Application usage charts
- Screen time statistics
- Data visualization within the tkinter UI

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

- **Requires Administrator Privileges**: The app needs admin rights to block applications and modify network settings
- **Missing Dependencies**: Run `pip install -r requirements.txt` to ensure all packages are installed
- **Build Fails**: Ensure PyInstaller is installed: `pip install pyinstaller`

## License

[Add your license information here]

## Contributing

[Add contribution guidelines here]
