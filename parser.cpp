//
// Created by Aritra on 25/05/2024.
//

#include "parser.h"

Parser::Parser(std::string &text){
    std::istringstream iss{text};
    std::string token;

    while (iss >> token){
        if (token == KW_PRINT or token == "yes" or token == "no"){
            contents_.push_back({token, TokenType::KEYWORD});
        } else {
            try {
                contents_.push_back({std::to_string(std::stoi(token)), TokenType::DIGIT});
            } catch (std::invalid_argument& err){
            contents_.push_back({token, TokenType::USER_DEF});
            }
        }
    }
}

void Parser::print_contents(){
    for (int i = 0; i < contents_.size(); ++i){
        std::cout << contents_[i].word << "\tType: " << contents_[i].tokenType << '\n';
    }
}

void Parser::run(){
    for (auto i = 0; i < contents_.size(); ++i){
        auto tokenType = contents_[i].tokenType;
        auto syn = contents_[i].word;

        if (tokenType == KEYWORD and syn == KW_PRINT){
            auto j = i + 1;
            while (contents_[j].word != ";"){
                std::cout << contents_[j].word << ' ';
                j++;
            }
        }
    }
}
