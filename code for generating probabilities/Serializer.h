//
// Created by Forsythe on Mar 21, 021.
//

#ifndef HW1_ANAGRAMS_SERIALIZER_H
#define HW1_ANAGRAMS_SERIALIZER_H

#include <string>
#include <map>

extern const std::string saveFileName;

class Serializer {
public:
    Serializer();

    int serialize(std::string filename);

private:
    std::map<char, int> unigramCounts;
    int bigramCounts[26][26] = {{0}};
    std::map<char, int> bigramStartsWith;

    void writeToFile(std::string saveFileName);
};


#endif //HW1_ANAGRAMS_SERIALIZER_H
