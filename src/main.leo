// The 'roulette' program.
program roulette.aleo {
    struct Game {
        identifier: u32,
        creator: address,
        number: u8,
        user_number: u8,
        result: bool,
    }

    mapping games_counter: u8 => u32;
    mapping games: u32 => Game;

    transition main(number: u8) -> Game {
        let game : Game = Game {
            identifier: 0u32, 
            creator: self.caller, 
            number: 255u8, 
            user_number: number, 
            result: false
        };
        return game then finalize(game);
    }

    finalize main(game: Game) {
        assert(block.height <= 1000u32);

        let user_number: u8 = game.user_number;

        assert(user_number <= 43u8);

        let total_games: u32 = games_counter.get_or_use(0u8, 0u32);
        games_counter.set(0u8, total_games + 1u32);
        
        let number: u8 = ChaCha::rand_u8() % 37u8;

        let game_result: bool = false;
        
        if (user_number <= 36u8) {
            game_result = game.user_number == number;
        }
        else if (user_number == 37u8) {
            game_result = user_number == 1u8 || user_number == 3u8 || user_number == 5u8 || user_number == 7u8 || user_number == 9u8 || user_number == 12u8 || user_number == 14u8 || user_number == 16u8 || user_number == 18u8 || user_number == 19u8 || user_number == 21u8 || user_number == 23u8 || user_number == 25u8 || user_number == 27u8 || user_number == 30u8 || user_number == 32u8 || user_number == 34u8 || user_number == 36u8;
        }
        else if (user_number == 38u8) {
            game_result = user_number == 2u8 || user_number == 4u8 || user_number == 6u8 || user_number == 8u8 || user_number == 10u8 || user_number == 11u8 || user_number == 13u8 || user_number == 15u8 || user_number == 17u8 || user_number == 20u8 || user_number == 22u8 || user_number == 24u8 || user_number == 26u8 || user_number == 28u8 || user_number == 29u8 || user_number == 31u8 || user_number == 33u8 || user_number == 35u8;
        }
        else if (user_number == 39u8) {
            game_result = 1u8 <= user_number && user_number <= 18u8;
        }
        else if (user_number == 40u8) {
            game_result = 19u8 <= user_number && user_number <= 36u8;
        }
        else if (user_number == 41u8) {
            game_result = 1u8 <= user_number && user_number <= 12u8;
        }
        else if (user_number == 42u8) {
            game_result = 13u8 <= user_number && user_number <= 24u8;
        }
        else if (user_number == 43u8) {
            game_result = 25u8 <= user_number && user_number <= 36u8;
        }
        else {
            game_result = false;
        }

        let new_game: Game = Game {
            identifier: total_games, 
            creator: game.creator, 
            number: number, 
            user_number: user_number, 
            result: game_result,
        };

        games.set(total_games, new_game);
    }
}
