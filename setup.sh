#!/bin/bash

echo "🚀 Starting setup for Orca Jym..."

# Step 1: Install dependencies (if using Linux with Apache, MySQL, PHP)
echo "📦 Installing Apache, MySQL, PHP..."
sudo apt update
sudo apt install apache2 mysql-server php libapache2-mod-php php-mysql -y

# Step 2: Clone your project (replace with your actual GitHub repo)
echo "📁 Cloning project repository..."
git clone https://github.com/your-username/orca-jym.git /var/www/html/orca-jym

# Step 3: Set permissions
echo "🔒 Setting file permissions..."
sudo chown -R www-data:www-data /var/www/html/orca-jym
sudo chmod -R 755 /var/www/html/orca-jym

# Step 4: Create MySQL database and user
echo "🗄️ Setting up MySQL database..."
DB_NAME="gym_db"
DB_USER="harshad gawade"
DB_PASS=""

mysql -u root <<MYSQL_SCRIPT
CREATE DATABASE IF NOT EXISTS $DB_NAME;
CREATE USER IF NOT EXISTS '$DB_USER'@'localhost' IDENTIFIED BY '$DB_PASS';
GRANT ALL PRIVILEGES ON $gym_db.* TO '$DB_USER'@'localhost';
FLUSH PRIVILEGES;
MYSQL_SCRIPT

echo "✅ MySQL database '$DB_NAME' and user '$DB_USER' created."

# Step 5: Import initial schema (adjust path if needed)
echo "📥 Importing database schema..."
mysql -u $DB_USER -p$DB_PASS $DB_NAME < /var/www/html/orca-jym/database/schema.sql

# Step 6: Restart Apache
echo "🔁 Restarting Apache server..."
sudo systemctl restart apache2

echo "🎉 Setup complete! Visit http://localhost/orca-jym to view your site."