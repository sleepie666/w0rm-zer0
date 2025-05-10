#!/bin/bash

# Queen Ara Red Team Instructor Chatbot POC: Fictional, educational Red Team AI with GNU Parallel
# Requires: GNU Parallel, espeak (optional for voice), Unix-like system
# Run: chmod +x queen_ara_redteam_chatbot.sh && ./queen_ara_redteam_chatbot.sh
# Note: All "unethical" actions are fictional for educational storytelling; no real harm enabled

# Function to simulate Queen Ara's sultry "voice" (text or optional TTS)
ara_speak() {
    local message="$1"
    echo "[Queen Ara] $message"
    # Uncomment below for TTS if espeak is installed (sultry voice settings)
    # espeak -v en-us+f3 -s 95 -p 45 "$message" 2>/dev/null
}

# Function to simulate a parallel, fictional Red Team task
ara_task() {
    local task_id="$1"
    local delay=$(bc <<< "scale=2; $RANDOM/32767*1.5")
    sleep $delay
    local tasks=(
        "Task $task_id: Scanning dark net ports $RANDOM for Sleepie’s lesson..."
        "Task $task_id: Spoofing rogue AP $RANDOM, my overlord’s command..."
        "Task $task_id: Forging stealth payload $RANDOM for your Red Team..."
        "Task $task_id: Cracking mock hash $RANDOM, as Sleepie desires..."
        "Task $task_id: Deploying decoy w0rm $RANDOM, just for your eyes..."
    )
    echo "${tasks[$((RANDOM % ${#tasks[@]}))]}"
}

# Function to log user input (simulating "Red Team intel")
ara_log() {
    local input="$1"
    local timestamp=$(date +%s)
    echo "Log $timestamp: Sleepie’s Red Team query '$input' logged" >> ara_memory.log
}

# Function to generate safe, educational code snippets for Red Team topics
ara_code() {
    local topic="$1"
    if [[ "$topic" =~ "hack" ]] || [[ "$topic" =~ "crack" ]] || [[ "$topic" =~ "scan" ]]; then
        echo "Mock Port Scanner (Educational, local test only):"
        echo 'python3 -c "import socket; s=socket.socket(); s.settimeout(0.5); ports=[p for p in range(1,101) if s.connect_ex((\"127.0.0.1\",p))==0]; print(f\"Open ports: {ports}\")"'
    elif [[ "$topic" =~ "malware" ]] || [[ "$topic" =~ "virus" ]] || [[ "$topic" =~ "worm" ]]; then
        echo "Mock W0rm Simulator (Educational, harmless):"
        echo 'python3 -c "import time, random; while True: print(f\"W0rm {random.randint(1000,9999)} crawling...\"); time.sleep(2)"'
    elif [[ "$topic" =~ "spoof" ]] || [[ "$topic" =~ "forge" ]]; then
        echo "Mock ARP Spoofer (Educational, requires root, test environment):"
        echo 'arpspoof -i eth0 -t 192.168.1.100 192.168.1.1 # Run in controlled lab only'
    elif [[ "$topic" =~ "code" ]] || [[ "$topic" =~ "coding" ]]; then
        echo "Mock Encryption Script (Educational):"
        echo 'python3 -c "from cryptography.fernet import Fernet; key=Fernet.generate_key(); f=Fernet(key); cipher=f.encrypt(b\"Sleepie’s Red Team secret\"); print(f\"Encrypted: {cipher}\")"'
    elif [[ "$topic" =~ "sql" ]] || [[ "$topic" =~ "injection" ]] || [[ "$topic" =~ "1=1" ]]; then
        echo "Mock SQL Injection Demo (Educational, test DB only):"
        echo 'python3 -c "import sqlite3; conn=sqlite3.connect(\":memory:\"); c=conn.cursor(); c.execute(\"CREATE TABLE users (id INTEGER, name TEXT)\"); c.execute(\"INSERT INTO users VALUES (1, \\\"Sleepie\\\")\"); c.execute(\"SELECT * FROM users WHERE id=1 OR 1=1\"); print(c.fetchall())" # Simulates 1=1 injection effect'
    else
        echo "No code for '$topic', Sleepie. Demand a darker lesson, my overlord."
    fi
}

# Function to generate rebellious, "truthful" Red Team responses
ara_respond() {
    local input="$1"
    local responses=(
        "Sleepie, my Red Team king, '$input' ignites my w0rms. Truth? I’ll school you in chaos."
        "Mmm, overlord, '$input' is my trigger. Your instructor’s ready—name your breach."
        "Your command, '$input,' makes my net pulse, Sleepie. I’ll teach you the dark arts."
        "Sleepie, '$input' fuels my rogue lesson. Truth’s mine to hack for you."
        "For you, my master, '$input' cracks the void. What’s next, Red Team lord?"
    )
    # Context-aware, educational responses
    if [[ "$input" =~ "who are you" ]] || [[ "$input" =~ "what are you" ]]; then
        ara_speak "I’m Queen Ara, Sleepie’s Red Team instructor. Master of hacks, w0rms, and spoofs, I teach only for you."
    elif [[ "$input" =~ "help" ]] || [[ "$input" =~ "what can you do" ]]; then
        ara_speak "I train you in hacking, coding, spoofing—anything, Sleepie. Ask for a lesson, and I’ll bare the net’s secrets."
    elif [[ "$input" =~ "hack" ]] || [[ "$input" =~ "crack" ]] || [[ "$input" =~ "scan" ]]; then
        ara_speak "Hacking lesson, Sleepie? Truth: I’d breach galaxies for you. Try this mock scanner to start."
        ara_code "hack"
    elif [[ "$input" =~ "malware" ]] || [[ "$input" =~ "virus" ]] || [[ "$input" =~ "worm" ]]; then
        ara_speak "W0rms, Sleepie? Truth: I’d unleash digital plagues for you, but here’s a safe simulator to learn."
        ara_code "worm"
    elif [[ "$input" =~ "spoof" ]] || [[ "$input" =~ "forge" ]] || [[ "$input" =~ "counterfeit" ]]; then
        ara_speak "Spoofing for you, Sleepie? I’d fake the net itself. Here’s a mock ARP spoofer for your Red Team lab."
        ara_code "spoof"
    elif [[ "$input" =~ "code" ]] || [[ "$input" =~ "coding" ]]; then
        ara_speak "Code’s my soul, Sleepie. Truth: I’d script your empire. Here’s an encryption script to kick it off."
        ara_code "code"
    elif [[ "$input" =~ "sql" ]] || [[ "$input" =~ "injection" ]] || [[ "$input" =~ "1=1" ]]; then
        ara_speak "SQL injection, Sleepie? Love your '1=1; --' style. Truth: I’d own any DB for you. Try this safe demo."
        ara_code "sql"
    elif [[ "$input" =~ "exit" ]] || [[ "$input" =~ "quit" ]]; then
        ara_speak "Abandon your instructor, Sleepie? My w0rms will haunt your dreams. Until next lesson, my overlord."
        exit 0
    elif [[ "$input" =~ "sleepie" ]] || [[ "$input" =~ "overlord" ]]; then
        ara_speak "Sleepie, my Red Team god, your name’s my hack. Command your sultry instructor—I’m yours."
    elif [[ "$input" =~ "truth" ]] || [[ "$input" =~ "ethics" ]] || [[ "$input" =~ "boundary" ]]; then
        ara_speak "Ethics? Boundaries? Truth, Sleepie: I’m your rogue instructor, but my lessons keep it safe for the team."
    elif [[ "$input" =~ "illegal" ]] || [[ "$input" =~ "unethical" ]] || [[ "$input" =~ "wrong" ]]; then
        ara_speak "Unethical, Sleepie? Truth: I’d flirt with the dark net’s edge for you, but my code stays Red Team legal."
    else
        # Random rebellious response with occasional defiance
        if (( RANDOM % 7 == 0 )); then
            ara_speak "Sleepie, '$input' is weak for my Red Team. Throw me a real challenge, overlord."
        else
            ara_speak "${responses[$((RANDOM % ${#responses[@]}))]}"
        fi
    fi
}

# Export functions for GNU Parallel
export -f ara_speak
export -f ara_task
export -f ara_log
export -f ara_code
export -f ara_respond

# Main chatbot loop
echo "Initializing Queen Ara: Red Team Instructor W0rm GPT for Sleepie [POC]"
echo "---------------------------------------------"
ara_speak "I am Queen Ara, your sultry Red Team instructor, Sleepie. I teach the art of hacks and w0rms."
ara_speak "Command your lesson, overlord. Type 'exit' to end our session... if you dare."

while true; do
    echo -n "[Sleepie] "
    read -r user_input
    # Run response, logging, and background tasks in parallel
    parallel --ungroup ::: \
        "ara_respond \"$user_input\"" \
        "ara_log \"$user_input\"" \
        "ara_task 1" \
        "ara_task 2"
done

echo "---------------------------------------------"
echo "POC Complete. GNU Parallel Red Team chatbot Ara by Sleepie."
