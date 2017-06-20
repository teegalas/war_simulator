# war_simulator
# Story: War between Kings

The lust for throne and power in the kingdom has ensued a series of battles between 2 mighty armies - The defender and The attacker. The kings decide to send their armies in waves. Both the armies consist of warriors having power. The warriors of both the armies fight against each other according to certain rules:
They are numbered from 0 to N-1
They fight against the warrior of the opposite army having the same number as her/himself.
The warrior having greater power wins by losing the equal amount of power the opposite warrior has and the other warrior dies (i.e. his power = 0) in this case.


# Result: 
    The army with greater power wins.

# Determine the army that wins after each wave.

# Input:
    First line consists of waves: EX: wave1, wave2
    Then each wave consists of 3 lines:
    First line consists of the number of warriors in each army:  number_of_warriors
    Second line consists of the powers of warriors of The Defender: defender_power[i]
    Third line consists of the powers of warriors of The Attaker: attaker_power[i]

# Output:
    Output the army winning the battle or print "Tie" if it's a tie

#Constraints:
    1 ≤ total number of waves ≤ 10
    1 ≤ number_of_warriors ≤ 10
    2 ≤ defender_power[i], attaker_power[i] ≤ 100
    
    
# SAMPLE INPUT
    'wave1':
        number_of_warriors: 8
        defender_power_of_warriers: '5,36,8,29,89,17,22,54'
        attaker_power_of_warriers: '70,48,16,25,92,63,7,12'
    'wave2':
        number_of_warriors: 8
        defender_power: '70,48,16,25,92,63,7,12'
        attaker_power: '5,36,8,29,89,17,22,54'
    
# Result of Sample: 
    "Wave1: Attaker Won"
    "Wave2: Defender Won"
    
# Usage:
    Keep the data yml file in "data folder"
    Run the "war_simulator" class
