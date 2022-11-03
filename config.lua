Config = Config or {}
Config.debug = true

--[[
    Points - The Sets of points the ped will rotate to / from (MUST START THE FIRST ONE AT 0!!!)
    Scenario - The Scenario that the ped will play when he gets to a point
    Timeout - How long the ped stays at each point (set to -1 if you want the ped to not stop)
    CustomLookAt - Set true if you want the ped to look a specific way at each point
    LookAt - The coords the ped will look at if 'CustomLookAt' is true (Must be the same abount as 'Points')
]]

Config.Routes = {
    ['aj_test'] = {
        Points = {
            [0] = vector3(1878.8489, 2534.5291, 45.672),
            [1] = vector3(1879.3824, 2540.7239, 45.672),
            [2] = vector3(1867.0217, 2541.0469, 45.672),
            [3] = vector3(1866.5498, 2534.5161, 45.672),
        },
        Scenario = 'WORLD_HUMAN_BINOCULARS',
        Timeout = 5000,
        CustomLookAt = true,
        LookAt = {
            [0] = vector3(123.123, 123.123, 123.123),
            [1] = vector3(123.123, 123.123, 123.123),
            [2] = vector3(123.123, 123.123, 123.123),
            [3] = vector3(123.123, 123.123, 123.123),
        }
    },
    ['aj_test_2'] = {
        Points = {
            [0] = vector3(1879.4791, 2558.5071, 45.672),
            [1] = vector3(1873.0287, 2562.0315, 45.6721),
            [2] = vector3(1866.8069, 2558.7756, 45.6721),
        },
        Scenario = 'WORLD_HUMAN_GUARD_STAND_FACILITY',
        Timeout = 3000,
        CustomLookAt = false,
        LookAt = {
            [0] = vector3(123.123, 123.123, 123.123),
            [1] = vector3(123.123, 123.123, 123.123),
            [2] = vector3(123.123, 123.123, 123.123),
        }
    },
    ['aj_walk'] = {
        Points = {
            [0] = vector3(1883.6398, 2539.1379, 45.6721),
            [1] = vector3(1884.0522, 2566.3796, 45.672),
        },
        Scenario = 'Walk',
        Timeout = -1,
        CustomLookAt = false,
        LookAt = {
            [0] = vector3(123.123, 123.123, 123.123),
            [1] = vector3(123.123, 123.123, 123.123),
        }
    },
}
