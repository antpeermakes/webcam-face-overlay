# Webcam Face Overlay

Web app that overlays character faces using webcam + voice detection

## Features

- Real-time face tracking using MediaPipe FaceMesh
- Character face overlay that follows your head movements
- Speech detection for animated mouth movements
- Adjustable overlay controls (scale, position, smoothing)
- No build step required - pure HTML/CSS/JavaScript

## Setup

1. Place character images in an `assets` folder:
   - `assets/char_base.png` - Base character face image
   - `assets/char_mouth.png` - Mouth open variant image

2. Open `10-30-25 Webcam App Cursor.html` in a web browser

3. Click "Start Camera + Mic" and allow permissions

## Controls

- **Scale Multiplier**: Adjust overlay size relative to face
- **Offset X/Y**: Fine-tune overlay position
- **Speech Threshold**: Sensitivity for mouth animation
- **Smoothing (EMA)**: Reduces jitter in overlay movement

## Requirements

- Modern web browser with camera/microphone support
- HTTPS connection (or localhost) for camera access
- Character image assets (PNG format recommended)

## Technologies

- MediaPipe FaceMesh for face detection
- Web Audio API for speech detection
- HTML5 Canvas for rendering

