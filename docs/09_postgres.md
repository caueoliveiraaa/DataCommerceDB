# PostgreSQL Specific Features

## 🃏 PostgreSQL Special Types

| Type     | Description                                        |
|:---------|:---------------------------------------------------|
| `ENUM`   | Custom enumerated values defined by the user       |
| `CIDR`   | Network address with subnet (e.g., 192.168.0.0/24) |
| `INET`   | IP address (IPv4 or IPv6), with or without subnet  |
| `POINT`  | Geometric point ((x, y))                           |
| `LINE`   | Infinite geometric line                            |
| `CIRCLE` | Circle defined by center point and radius          |

</br>

### Special Types - Example

```sql
-- ENUM type creation
create type mood as enum ('happy', 'sad', 'neutral');

create table special_examples (
    current_mood   mood,   -- custom enumeration
    ip_address     inet,   -- IPv4 or IPv6
    network_block  cidr,   -- network with subnet
    location_point point,  -- (x, y)
    path_line      line,   -- infinite line
    area_circle    circle  -- <(x, y), radius>
);

insert into special_examples (
    current_mood,
    ip_address,
    network_block,
    location_point,
    path_line,
    area_circle
)
values (
    'happy',
    '192.168.1.10',
    '192.168.1.0/24',
    '(10.5, 20.3)',
    '{1, -1, 0}',     -- line in Ax + By + C = 0 form
    '<(5,5), 3>'      -- circle with center (5,5) and radius 3
);
```
