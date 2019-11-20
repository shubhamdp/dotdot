# View logs for NRF52 devices

Ever troubled with viewing logs for multiple nrf device? 
Getting Id of debbuger and mapping port is tedious. Heres the utility which simplifies the things

# jlink_common
You can open and customize it or use it as is for maximum 5 debbugers at a time

# jlink_server
Opens the jlink server with appropriate debbuger id and some RTT port

# jlink_client
Opens the jlink client with appropriate debbuger id and some RTT port

# Usage
## Start Server

`jlink_server h                        -- Shows help`
`jlink_server [ 0 | 1 | 2 | 3 | 4 ]    -- Use any one parameter with it`

## Start Client
`jlink_client h                        -- Shows help`
`jlink_client [ 0 | 1 | 2 | 3 | 4 ]    -- Use any one parameter with it`

# How to use
For single debbuger you do not have to pass any argument
Enter `jlink_server` command in one terminal and `jlink_client` in another terminal. For multiple debbugers run with the argument

`jlink_server 0` and `jlink_client 0`

`jlink_server 1` and `jlink_client 1`

`jlink_server 2` and `jlink_client 2`
