# Traffic-light-controller

This project implements a Traffic Light Controller using a Finite State Machine (FSM) with pedestrian walk/don’t-walk signals. The design uses a 4-state FSM with a cycle based on a programmable counter.

Features:
Moore FSM with 4 states:
S0 – Green + Don’t Walk
S1 – Yellow + Don’t Walk
S2 – Red + Walk
S3 – Red + Don’t Walk

How It Works:
The FSM cycles through 4 states (S0 → S1 → S2 → S3 → S0). Each state stays active for a fixed counter duration:
S0 for 9 cycles
S1 for 2 cycles
S2 for 6 cycles
S3 for 1 cycle
Outputs for vehicle lights (Green/Yellow/Red) and pedestrian signals (Walk/Don't Walk) are assigned based on the current state.
