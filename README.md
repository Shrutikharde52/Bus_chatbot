# Bus_chatbot
A simple chatbot that helps passengers finding bus routes, timetables, stops, seat availability, and live tracking information. The project uses a MySQL database to store and manage bus information efficiently.

# Database
The project uses MySQL as the database management system.The database is named as bus_chatbot as it stores the information required for bus searches,routes,timetables,stops,seats,live tracking data and frequently asked questions.

Database contains tables:
    1.Bus
    2.Route
    3.Timetable
    4.Stop
    5.Seat
    6.Tracking
    7.FAQ
    
Database Relationships:
    
| Relation        | Type        |
| --------------- | ----------- |
| Bus → Route     | 1 : Many    |
| Bus → Timetable | 1 : Many    |
| Route → Stop    | 1 : Many    |
| Bus → Seat      | 1 : Many    |
| Bus → Tracking  | 1 : Many    |
| FAQ             | Independent |

ER Diagram:
The ER Diagram is shown in the image/ER_Diagram.

Database File:
The complete database structure and sample data are available in database/database.sql.
