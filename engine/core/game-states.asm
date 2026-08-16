; game-states.asm — ZX Spectrum screen state machine (stub)
; Code Engineer: implement jump table for Title / Game / GameOver

        SECTION code_user

        PUBLIC init_game_states
        PUBLIC run_state_loop

init_game_states:
        ; TODO: set initial state = TITLE
        ret

run_state_loop:
        ; TODO: dispatch on current_state
        ; states: 0=Title, 1=Game, 2=GameOver
        jp run_state_loop
