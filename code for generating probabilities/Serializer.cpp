//
// Created by Forsythe on Mar 21, 021.
//

#include <fstream>
#include <iostream>
#include <algorithm>
#include "Serializer.h"


Serializer::Serializer() {
    std::string alphabet = "abcdefghijklmnopqrstuvwxyz";
    std::for_each(alphabet.begin(), alphabet.end(), [&](const char c) { bigramStartsWith[c] = 0; });
}

int Serializer::serialize(std::string filename) {
    std::ifstream file(filename);
    if (!file) {
        std::cerr << "Couldn't open " << filename << std::endl;
        return -1;
    }

    std::string line;
    while (std::getline(file, line)) {
        bool non_alpha = std::find_if(
                line.begin(), line.end(),
                [](const char c) { return !std::isalpha(c); }) != line.end();
        if (non_alpha)
            continue;
        std::transform(line.begin(), line.end(), line.begin(), ::tolower);

        std::for_each(line.begin(), line.end(), [&](const char c) { ++unigramCounts[c]; });
        for (std::string::iterator it = line.begin(); it != --line.end(); ++it) {
            bigramCounts[*it - 'a'][*std::next(it) - 'a']++;
        }
    }

    writeToFile(saveFileName);

    return 0;
}

void Serializer::writeToFile(std::string saveFileName) {
    int unigramSum = accumulate(unigramCounts.begin(), unigramCounts.end(), 0,
                                [&](int oldValue, const std::pair<const char, int> &pair) {
                                    return oldValue + pair.second;
                                });

    std::ofstream saveFile(saveFileName, std::ios_base::trunc);

    for_each(unigramCounts.begin(), unigramCounts.end(),
             [&](std::pair<const char, int> &pair) {
                 double prob = -log2(pair.second / (double) unigramSum);
                 saveFile << prob << std::endl;
                 //std::cout << pair.first << ":" << prob << std::endl;
             });

    for (int r = 0; r < 26; r++) {
        int startsWith = 0;
        for (int c = 0; c < 26; c++) {
            startsWith += bigramCounts[r][c];
        }
        bigramStartsWith[r] = startsWith;
    }

    for (int r = 0; r < 26; r++) {
        for (int c = 0; c < 26; c++) {
            std::cout << bigramCounts[r][c] << std::endl;
            double prob = -log2(bigramCounts[r][c] / (double) bigramStartsWith[r]);
            saveFile << prob << std::endl;
            //std::cout << pair.first.first << "-" << pair.first.second << ":" << prob << std::endl;
        }

    }

    saveFile.close();
}


