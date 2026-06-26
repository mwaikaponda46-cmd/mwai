# HeartConnect Dating Site

A responsive dating website with user authentication, built with vanilla HTML, CSS, and JavaScript.

## Features

- User registration and login
- User profile management
- Browse other users
- Responsive design for mobile and desktop
- Session persistence
- Interest-based matching

## Quick Start

### Option 1: Manual Start (Recommended for Testing)

1. **Start the backend server:**
   - Double-click `start-server.bat`
   - Or run: `C:\PROGRA~1\nodejs\node.exe server/index.js`

2. **Open the frontend:**
   - Double-click `index.html`
   - Or open in browser: `file:///C:/Users/Mwaiwathu/Desktop/dating-site/index.html`

3. **Access the site:**
   - Homepage: `#home`
   - Login: `#login`
   - Register: `#register`
   - Profile: `#profile` (requires login)
   - Browse: `#browse` (requires login)

### Option 2: Auto-Start on Windows Boot

To make the server run automatically when your PC turns on:

#### Method A: Using Windows Task Scheduler (Recommended)

1. Press `Win + R`, type `taskschd.msc`, and press Enter

2. Click "Create Basic Task" on the right panel

3. Name it "Dating Site Server" and click Next

4. Select "When the computer starts" and click Next

5. Select "Start a program" and click Next

6. Browse to: `C:\Users\Mwaiwathu\Desktop\dating-site\start-server.bat`

7. Check "Open the Properties dialog for this task when I click Finish" and click Finish

8. In the Properties window:
   - Check "Run whether user is logged on or not"
   - Check "Run with highest privileges"
   - Go to the "Triggers" tab and edit the trigger
   - Check "Delay task for" and set to 30 seconds (gives time for network to connect)
   - Click OK

9. Enter your Windows password when prompted

The server will now start automatically every time your PC boots!

#### Method B: Using Startup Folder

1. Press `Win + R`, type `shell:startup`, and press Enter

2. Copy `start-server.bat` to the Startup folder that opened

3. The server will start automatically when you log into Windows

**Note:** This method only works when you log in, not at boot time.

## Project Structure

```
dating-site/
├── index.html          # Main HTML file
├── css/
│   └── style.css      # All styles
├── js/
│   └── app.js         # JavaScript functionality
├── server/
│   └── index.js       # Backend API server
├── start-server.bat   # Windows startup script
└── README.md          # This file
```

## Server Information

- **Primary Port:** 5000
- **Alternative Port:** 5001 (if port 5000 is busy)
- **API Base URL:** http://localhost:5000/api or http://localhost:5001/api
- **Database:** File-based JSON database (database.json) - No MongoDB or SQLite needed!
- **Auto-restart:** Server automatically restarts if it crashes

## API Endpoints

- `POST /api/register` - Register new user
- `POST /api/login` - Login user
- `GET /api/users` - Get all users (requires auth)
- `GET /api/profile` - Get current user profile (requires auth)

## Troubleshooting

### Server won't start
- Make sure Node.js is installed: `node --version`
- Check if port 5000 is already in use
- No MongoDB or SQLite required - uses simple file-based database

### "Failed to fetch" errors
- Ensure the backend server is running (check console for port number)
- The server may be on port 5000 or 5001
- Check browser console for CORS errors
- Verify the server is accessible at http://localhost:5000 or http://localhost:5001

### Site won't load
- Make sure you're opening `index.html` from the dating-site folder
- Check browser console for errors
- Try using a different browser

## Technology Stack

**Frontend:**
- HTML5
- CSS3 (with responsive design)
- Vanilla JavaScript (ES6+)

**Backend:**
- Node.js
- Express.js
- File-based JSON database (no external database required)
- JWT for authentication
- Bcrypt for password hashing

## Development

To modify the site:

1. **Frontend changes:** Edit files in `css/` and `js/` directories
2. **Backend changes:** Edit `server/index.js`
3. **Restart server:** Stop the current server and run `start-server.bat` again

## Security Notes

- Passwords are hashed using bcrypt
- JWT tokens expire after 24 hours
- API endpoints are protected with authentication middleware
- CORS is enabled for all origins (configure for production)

## Making the Server Run Forever

The server will continue running as long as:
- The Node.js process is active
- The command prompt window remains open

To run it in the background without a visible window:
1. Use the Task Scheduler method above
2. Or use a tool like NSSM (Non-Sucking Service Manager) to create a Windows service

## Support

For issues or questions, check the browser console and server logs for error messages.