----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    23:11:53 01/08/2023 
-- Design Name: 
-- Module Name:    BCD_7SEG - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;

ENTITY FSM_Example IS
    PORT (
        clk, reset, en : IN std_logic;
        output : INOUT std_logic
    );
END FSM_Example;

ARCHITECTURE Behavioral OF FSM_Example IS
    TYPE state_type IS (S0, S1, S2, S3);
    SIGNAL cur_state, next_state : state_type;
    SIGNAL count : INTEGER RANGE 0 TO 5000;
    SIGNAL i : INTEGER RANGE 0 TO 400;
    SIGNAL cnt : INTEGER RANGE 0 TO 400;
BEGIN
    state_memory : PROCESS (clk, reset)
    BEGIN
        IF (reset = '1') THEN
            cur_state <= S0;
        ELSIF (clk = '1' AND clk'event) THEN
            IF (count = 4240 - 1) THEN
                count <= 0;
                cur_state <= next_state;
            ELSE
                count <= count + 1;
            END IF;
        END IF;
    END PROCESS state_memory;

    PROCESS (count)
    BEGIN
        IF (count < 1480) THEN
            output <= '1';
        ELSE
            output <= '0';
        END IF;
    END PROCESS count;

    PROCESS (en, cur_state)
    BEGIN
        CASE cur_state IS
            WHEN S0 => 
                loop0 : FOR i IN 0 TO 6 LOOP
                    EXIT loop0 WHEN i = 7;
                    cnt(i + 1) <= cnt(i) + 1;
                    IF (en = '1' AND en'event) THEN
                    ELSIF (i < 6) THEN
                        next_state <= S1;
                    ELSE
                        next_state <= S0;
                    END IF;
                END LOOP;
            WHEN S1 => 
                loop1 : FOR i IN 0 TO 1 LOOP
                    EXIT loop1 WHEN i = 2;
                    i <= i + 1;
                    IF (en = '1' AND en'event) THEN
                    ELSIF (i < 1) THEN
                        next_state <= S2;
                    ELSE
                        next_state <= S1;
                    END IF;
                END LOOP;
            WHEN S2 => 
                loop2 : FOR i IN 0 TO 20 LOOP
                    EXIT loop2 WHEN i = 21;
                    i <= i + 1;
                    IF (en = '1' AND en'event) THEN
                    ELSIF (i < 20) THEN
                        next_state <= S3;
                    ELSE
                        next_state <= S2;
                    END IF;
                END LOOP;
            WHEN S3 => 
                loop3 : FOR i IN 0 TO 386 LOOP
                    EXIT loop3 WHEN i = 387;
                    i <= i + 1;
                    IF (en = '1' AND en'event) THEN
                    ELSIF (i < 386) THEN
                        next_state <= S0;
                    ELSE
                        next_state <= S3;
                    END IF;
                END LOOP;
        END CASE;
    END PROCESS;
END Behavioral;
