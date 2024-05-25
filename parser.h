//
// Created by Aritra on 25/05/2024.
//

#ifndef REFRACT_PARSER_H
#define REFRACT_PARSER_H

#include <iostream>
#include <fstream>
#include <sstream>
#include <vector>

#define KW_PRINT "aritra"

enum TokenType {
    IDENTIFIER,
    KEYWORD,
    DIGIT,
    USER_DEF
};

struct WordAndType{
    std::string word;
    TokenType tokenType;
};

class Parser {
private:
    std::vector<WordAndType> contents_;
public:
    Parser(std::string& text);

    void print_contents();
    void run();
};

#endif //REFRACT_PARSER_H
