system_health_check() {
    echo "System Health Check"

    echo -e "\n📦 Checking for system updates..."
    sudo apt update -qq
    sudo apt list --upgradable

    echo -e "\n💾 Checking disk usage..."
    df -h | grep -E '^Filesystem|^/dev/'

    echo -e "\n🧠 Checking memory usage..."
    free -h
}
