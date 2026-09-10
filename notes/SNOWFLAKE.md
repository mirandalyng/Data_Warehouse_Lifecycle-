# SNOWFLAKE

# Snowflake Theory

## Snowflakes arkitektur (three-tier)

Snowflake bygger på tre separata lager som kan skalas oberoende av varandra:

- Cloud services – autentisering, access control, infrastruktur, optimering, metadata, säkerhet
- Compute – "virtual warehouses" som utför beräkningar
- Storage – där själva datan lagras

Snowflake körs ovanpå molnplattformar som AWS, Azure och Google Cloud.

## Pricing

![pricing](images/pricing.png)

Kostnaden bygger på tre delar:

- Compute cost – baserat på antal "credits", 1 credit per compute-nod, debiteras per sekund (minst 1 min)
- Storage cost – capacity storage, on-demand storage, samt time-travel/fail-safe-kostnader
- Cloud services – indirekta kostnader kopplade till molnleverantören

## Virtual warehouse – skalning

### Scaling up (vertikalt):

- byt till en större T-shirt-storlek (XS → S → M → L…), fler compute nodes → fler credits/timme. Bra för stora men få arbetsbelastningar.

- samma wahouse men gör det större

![scaling up ](images/scaling_up.png)

### Scaling out (horisontellt):

- kör flera kluster av samma storlek parallellt, kan ställas in att skala automatiskt. Bra för många parallella arbetsbelastningar.

- flera kluster som används i olika warehouses

- flera querys samtidigt - bra att använda

![scaling out ](images/scaling_out.png)

## Database och schema object

Ett account kan innehålla flera databaser, och varje databas innehåller flera schemas som organiserar objekt som tabeller och vyer.

![schemas_database](images/database_schemas.png)

## Different types of Tables in Snowflake

- storage time är olika beroende på vilket table

### Temporary table

- Automatiskt droppad efter sessionen
- No backup eller sparning
- session

### Transient table

- no time-travel
- no fail-safe
- short-term

### Permanent table

- time-travel
- fail-safe
- long-term

### External table

- own cloud subscription (like Azure)
- ![tables](images/tables_sf.png)

## Connect to VSC

- Click on profile
- Account details
- copy url
- VSC - install extenstion Snowflake
- Sidepanel in VSC has Snowflake
- Put url in there
- sign in (fill in username)
- Click login (link opens in browser and login )
- Go back to vsc

## Change language to snowflake

- shift + command + p
- change language mode
- choose snowflake

# Snowflake navigation web UI

### Sql file

- click on the + "sql file"
- write the sql querys directly in the UI
- works the same way as in vsc

### Databases

- catalog -> database explorer
- explore schemas -> tables
- check data in data preview

#### Query History

- in each database you can see the query history

#### Suspend

- dont forgett to suspent the database

## Monitoring

- in web snowflake
- Monitoring -> Query History

### Admin

- Cost Managment
- Billing and Payments

### Govarance & Secuity

- User & roles (create it here or sql)

### Marketplace

- Browse data
  - Click on get
- Sell data

### Compute

- warehouses that we have
- create warehouse

![warehouse](images/warehouse.png)

- suspend (shut it down and stop the cost)
