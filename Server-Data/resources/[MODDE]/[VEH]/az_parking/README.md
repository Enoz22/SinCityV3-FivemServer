## How to install it?

### Dependencies

- First you must have the following dependencies installed with their folder name like this:

- PolyZone https://github.com/mkafrin/PolyZone/releases
- pNotify https://github.com/Nick78111/pNotify

### Database

- If you want a quick and easy installation, you just have to run the query found in the sql.sql file
- If you want to keep your vehicle database then you must modify some columns of the table **owned_vehicles** and add the tables **impounded_vehicles** and **vehicle_model_prices**
  - owned_vehicles:
    ```
    `owner` varchar(60) NOT NULL,
    `plate` varchar(12) NOT NULL,
    `vehicle` longtext DEFAULT NULL,
    `model` varchar(60) NOT NULL DEFAULT 'Unknown',
    `vehiclename` varchar(200) DEFAULT NULL,
    `type` varchar(20) NOT NULL DEFAULT 'car',
    `job` varchar(60) DEFAULT NULL,
    `stored` tinyint(1) NOT NULL DEFAULT 0,
    `pound` tinyint(1) DEFAULT 0,
    `garage_time` bigint(10) DEFAULT NULL,
    `garage_name` varchar(20) DEFAULT NULL,
    `garage_type` tinyint(4) DEFAULT 1,
    `location` text DEFAULT NULL
    ```
  - impounded_vehicles:
    ```
      CREATE TABLE `owned_vehicles` (
      `owner` varchar(60) NOT NULL,
      `plate` varchar(12) NOT NULL,
      `vehicle` longtext DEFAULT NULL,
      `model` varchar(60) NOT NULL DEFAULT 'Unknown',
      `vehiclename` varchar(200) DEFAULT NULL,
      `type` varchar(20) NOT NULL DEFAULT 'car',
      `job` varchar(60) DEFAULT NULL,
      `stored` tinyint(1) NOT NULL DEFAULT 0,
      `pound` tinyint(1) DEFAULT 0,
      `garage_time` bigint(10) DEFAULT NULL,
      `garage_name` varchar(20) DEFAULT NULL,
      `garage_type` tinyint(4) DEFAULT 1,
      `location` text DEFAULT NULL
      );
    ```
  - vehicle_model_prices:
    ```
      CREATE TABLE `vehicle_model_prices` (
        `model` varchar(30) NOT NULL,
        `price` float NOT NULL DEFAULT 0
      );
    ```

### Configuration

- Once installed you must proceed to change the project configuration, which is organized like this:
  - **/config.lua:**
    Here you will find all the settings for rendering distance, prices, blip and markers for all modules of the script.
  - **/config/garages.lua:**
    Here are the definitions of all the "traditional" garages (points) that you want to configure
    - Structure:
      ```
      _Garages = {
        GARAGE_NAME = {
          name = "GARAGE LABEL", -- Required
          spawn = {x= -1617.803, y= -880.624, z= 9.442, h = 146.67 }, -- Required
          delete = vector3(1607.551,-863.622,9.032), -- Required
          hideTitle = false, -- Prevent 3DText rendering
          fee = 1500,
          minFee = 1500,
          jobs = { 'police' },
          mafia = { 'enclosureName' },
          blipType = 1,
          blipColor = 1,
        },
      }
      ```
