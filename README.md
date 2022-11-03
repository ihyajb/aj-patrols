[![ko-fi](https://ko-fi.com/img/githubbutton_sm.svg)](https://ko-fi.com/N4N05X1G8)
# aj-patrols
### *(Still WIP I dont suggest using this rn)*

## Progress / Features

- [x] Server-Sided Peds
- [x] Ped can move point to point
- [x] Small Debugging Options
- [ ] Specific Peds Per Patrol
- [ ] Auto Creating Peds

## How to use it
1. Download from github
2. remove the `-main` at the end of the script
3. Edit the config to your liking, you will also have to change the default ped coords till I spawn the peds at the route coords
```lua
RegisterCommand('patrol', function(source, args)
    TriggerServerEvent('aj-patrols:server:spawnGuard', 6, `G_M_M_Goons_01`, vector4(1873.597, 2537.6685, 45.6721, 60.0), 'miss_'..args[1])
end)
```
4. Use the `/patrol` command and give it a route to patrol. *`/patrol aj_test_2`*
5. *Fin.*