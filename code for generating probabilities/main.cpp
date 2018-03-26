#include <iostream>
#include <fstream>
#include "Serializer.h"

const std::string saveFileName = "probabilities";
const std::string corpus = "linux_words_for_assignment";

int main() {

    std::ifstream probabilities(saveFileName);
    if (!probabilities) {
        int status = Serializer().serialize(corpus);
        if (status == 0)
            std::cout << "Probability file created!" << std::endl;        
        else   
            std::cout << "Error creating probability file" << std::endl;
    } else {
        std::cout << "Probability file already exists" << std::endl;
    }
    

    return 0;
}