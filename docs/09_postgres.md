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
CREATE TYPE mood AS ENUM ('happy', 'sad', 'neutral');

CREATE TABLE special_examples (
    current_mood   mood,   -- custom enumeration
    ip_address     INET,   -- IPv4 or IPv6
    network_block  CIDR,   -- network with subnet
    location_point POINT,  -- (x, y)
    path_line      LINE,   -- infinite line
    area_circle    CIRCLE  -- <(x, y), radius>
);

INSERT INTO special_examples (
    current_mood,
    ip_address,
    network_block,
    location_point,
    path_line,
    area_circle
)
VALUES (
    'happy',
    '192.168.1.10',
    '192.168.1.0/24',
    '(10.5, 20.3)',
    '{1, -1, 0}',     -- line in Ax + By + C = 0 form
    '<(5,5), 3>'      -- circle with center (5,5) and radius 3
);
```

</br>