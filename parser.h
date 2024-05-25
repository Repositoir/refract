//
// Created by Aritra on 25/05/2024.
//

#ifndef REFRACT_PARSER_H
#define REFRACT_PARSER_H

#include <iostream>
#include <fstream>
#include <sstream>
#include <vector>
#include <unordered_map>

#include "defn.h"

enum TokenType {
    IDENTIFIER,
    KEYWORD,
    DIGIT,
    USER_DEF,
    END
};

struct WordAndType{
    std::string word;
    TokenType tokenType;
};

class Parser {
private:
    std::vector<WordAndType> contents_;
    std::unordered_map<std::string, TokenType> keyword_map;

    void tokenize(const std::string &text);
public:
    explicit Parser(const std::string& text);

    void print_contents();
    void run();
};

#endif //REFRACT_PARSER_H
