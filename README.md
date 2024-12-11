# Spotify

 # Spotify Database Management System

This project implements a relational database model for a simplified version of Spotify using MySQL. It manages artists, albums, songs, users, playlists, and the relationships between them.

## **Features**
- Stores and manages data for artists, albums, and songs.
- Manages user accounts with attributes like email, name, password, and date of birth.
- Handles user-created playlists and their associated songs.
- Supports many-to-many relationships between users, playlists, and songs.

## **Database Structure**
The database consists of six main tables:
1. **Artists**: Stores artist information.
2. **Albums**: Stores album details and links them to artists.
3. **Songs**: Contains song information and links them to albums and artists.
4. **Users**: Stores user details like name, email, and date of birth.
5. **Playlists**: Tracks user-created playlists.
6. **User_Playlists_Songs**: A junction table for managing many-to-many relationships between users, playlists, and songs.

## **Database Schema**

### **Tables and Relationships**

#### **Artists Table**
| Column      | Type       | Attributes      |
|-------------|------------|-----------------|
| artist_id   | INT        | PRIMARY KEY     |
| artist_name | VARCHAR(20)| NOT NULL        |

#### **Albums Table**
| Column      | Type       | Attributes      |
|-------------|------------|-----------------|
| album_id    | INT        | PRIMARY KEY     |
| album_name  | VARCHAR(50)| NOT NULL        |
| artist_id   | INT        | FOREIGN KEY     |

#### **Songs Table**
| Column      | Type       | Attributes      |
|-------------|------------|-----------------|
| song_id     | INT        | PRIMARY KEY     |
| song_name   | VARCHAR(50)| NOT NULL        |
| album_id    | INT        | FOREIGN KEY     |
| artist_id   | INT        | FOREIGN KEY     |

#### **Users Table**
| Column        | Type       | Attributes      |
|---------------|------------|-----------------|
| user_id       | INT        | PRIMARY KEY     |
| name          | VARCHAR(20)| NOT NULL        |
| email         | VARCHAR(50)| UNIQUE, NOT NULL|
| password      | VARCHAR(8) | NOT NULL        |
| date_of_birth | DATE       | NOT NULL        |

#### **Playlists Table**
| Column         | Type       | Attributes      |
|----------------|------------|-----------------|
| playlist_id    | INT        | PRIMARY KEY     |
| playlist_name  | VARCHAR(60)| NOT NULL        |
| user_id        | INT        | FOREIGN KEY     |

#### **User_Playlists_Songs Table**
| Column              | Type       | Attributes      |
|---------------------|------------|-----------------|
| user_playlists_id   | INT        | PRIMARY KEY     |
| user_id             | INT        | FOREIGN KEY     |
| playlist_id         | INT        | FOREIGN KEY     |
| song_id             | INT        | FOREIGN KEY     |





##Explanation of Relationships
Artists ↔ Albums:

Relationship: One-to-Many
Details: Each artist (artist_id) can create multiple albums (artist_id in Albums).
Albums ↔ Songs:

Relationship: One-to-Many
Details: Each album (album_id) can contain multiple songs (album_id in Songs).
Artists ↔ Songs:

Relationship: One-to-Many
Details: Each artist (artist_id) can have multiple songs (artist_id in Songs).
Users ↔ Playlists:

Relationship: One-to-Many
Details: Each user (user_id) can create multiple playlists (user_id in Playlists).
Playlists ↔ Songs:

Relationship: Many-to-Many
Details: A playlist (playlist_id) can contain multiple songs (song_id), and a song can belong to multiple playlists. Managed through the User_Playlists_Songs table.
Users ↔ Songs:

Relationship: Many-to-Many
Details: Users associate with songs indirectly via their playlists.
