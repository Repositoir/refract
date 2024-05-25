//
// Created by Aritra on 25/05/2024.
//

#include "parser.h"

Parser::Parser(const std::string &text){

    keyword_map[STR_KW_PRINT] = TokenType::KEYWORD;
    keyword_map[STR_KW_END] = TokenType::END;
    keyword_map[BOOL_KW_TRUE] =  TokenType::KEYWORD;
    keyword_map[BOOL_KW_FALSE] = TokenType::KEYWORD;
    keyword_map[STR_KW_TERMINATE] = TokenType::END;

    tokenize(text);
}

void Parser::print_contents(){
    for (int i = 0; i < contents_.size(); ++i){
        std::cout << contents_[i].word << "\tType: " << contents_[i].tokenType << '\n';
    }
}

void Parser::run() {
    for (size_t i = 0; i < contents_.size(); ++i) {
        auto tokenType = contents_[i].tokenType;
        auto syn = contents_[i].word;

        if (tokenType == KEYWORD && syn == STR_KW_PRINT) {
            size_t j = i + 1;
            while (j < contents_.size() && contents_[j].tokenType != END) {
                std::cout << contents_[j].word << ' ';
                j++;
            }
            std::cout << std::endl;
            i = 0; // Move index to the end of the statement
        } else if (syn == STR_KW_TERMINATE){
            return;
        }
    }
}

void Parser::tokenize(const std::string &text) {
    std::istringstream iss{text};
    std::string token;

    while (iss >> token) {
        if (keyword_map.find(token) != keyword_map.end()) {
            contents_.push_back({token, keyword_map[token]});
        } else {
            try {
                int value = std::stoi(token);
                contents_.push_back({token, TokenType::DIGIT});
            } catch (std::invalid_argument&) {
                contents_.push_back({token, TokenType::USER_DEF});
            }
        }
    }
}
