# Asignacion de pines - Ejercicio 13 - DE0-CV

# Interruptores: A = SW4-SW0, B = SW9-SW5
set_location_assignment PIN_U13  -to SW[0]
set_location_assignment PIN_V13  -to SW[1]
set_location_assignment PIN_T13  -to SW[2]
set_location_assignment PIN_T12  -to SW[3]
set_location_assignment PIN_AA15 -to SW[4]
set_location_assignment PIN_AB15 -to SW[5]
set_location_assignment PIN_AA14 -to SW[6]
set_location_assignment PIN_AA13 -to SW[7]
set_location_assignment PIN_AB13 -to SW[8]
set_location_assignment PIN_AB12 -to SW[9]

# Botones: selector S3-S0
set_location_assignment PIN_U7 -to KEY[0]
set_location_assignment PIN_W9 -to KEY[1]
set_location_assignment PIN_M7 -to KEY[2]
set_location_assignment PIN_M6 -to KEY[3]

# LEDs: F = LEDR4-0, Cout = LEDR5, S = LEDR9-6
set_location_assignment PIN_AA2 -to LEDR[0]
set_location_assignment PIN_AA1 -to LEDR[1]
set_location_assignment PIN_W2  -to LEDR[2]
set_location_assignment PIN_Y3  -to LEDR[3]
set_location_assignment PIN_N2  -to LEDR[4]
set_location_assignment PIN_N1  -to LEDR[5]
set_location_assignment PIN_U2  -to LEDR[6]
set_location_assignment PIN_U1  -to LEDR[7]
set_location_assignment PIN_L2  -to LEDR[8]
set_location_assignment PIN_L1  -to LEDR[9]

# Display HEX0 (nibble bajo)
set_location_assignment PIN_U21  -to HEX0[0]
set_location_assignment PIN_V21  -to HEX0[1]
set_location_assignment PIN_W22  -to HEX0[2]
set_location_assignment PIN_W21  -to HEX0[3]
set_location_assignment PIN_Y22  -to HEX0[4]
set_location_assignment PIN_Y21  -to HEX0[5]
set_location_assignment PIN_AA22 -to HEX0[6]

# Display HEX1 (nibble alto)
set_location_assignment PIN_AA20 -to HEX1[0]
set_location_assignment PIN_AB20 -to HEX1[1]
set_location_assignment PIN_AA19 -to HEX1[2]
set_location_assignment PIN_AA18 -to HEX1[3]
set_location_assignment PIN_AB18 -to HEX1[4]
set_location_assignment PIN_AA17 -to HEX1[5]
set_location_assignment PIN_U22  -to HEX1[6]

export_assignments