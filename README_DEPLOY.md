# Deployment Instructions

This project has been dockerized for easy deployment using a simple Node.js static server.

## Prerequisites

- Docker and Docker Compose installed on your server.
- A `.env` file with your `GEMINI_API_KEY`.

## Setup

1.  **Environment Variables**:
    Ensure you have a `.env` file in the root directory with your API key:
    ```env
    GEMINI_API_KEY=your_api_key_here
    ```
    If you have a `.env.local`, you can copy it:
    ```bash
    cp .env.local .env
    ```

2.  **Deploy**:
    Run the following command to build and start the application:
    ```bash
    docker compose up -d --build
    ```

3.  **Access**:
    The application will be available at `http://localhost:30067` (or your server's IP address).

## Files Created

- `Dockerfile`: Single-stage build using `serve` to host the static files.
- `docker-compose.yml`: Orchestration file to run the container.
- `.dockerignore`: Files to exclude from the build context.
