//
// Created by Aritra on 25/05/2024.
//

#include "parser.h"


std::string open_file(const std::string& fileName) {
    std::ifstream input(fileName);
    if (!input) {
        throw std::runtime_error("Could not open file");
    }

    std::stringstream buffer;
    buffer << input.rdbuf();
    return buffer.str();
}

int main(int argc, const char* argv[]) {
    if (argc < 2) {
        std::cerr << "Too few args provided\n";
        return EXIT_FAILURE;
    }

    try {
        std::string fileContents = open_file(argv[1]);
        Parser code{fileContents};

        // code.print_contents();
        code.run();
    } catch (const std::exception& e) {
        std::cerr << e.what() << '\n';
        return EXIT_FAILURE;
    }

    return 0;
}