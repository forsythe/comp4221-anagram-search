#include <iostream>
#include <limits>
#include <vector>
#include <queue>
#include <algorithm>
#include "probabilities.h"

using namespace std;

const int MAX_SOLUTIONS = 5;
array<char, 26> globalLetterBank = {0}; //a = 0, b = 1, etc. Counts how many of each letter exists
char lbStartIndex;
char lbEndIndex;

struct Node {
    float cost;
    vector<char> partialSolution;
};

vector<Node> getNeighbors(const Node &parent) {
    vector<Node> neighbors;
    for (auto &c : parent.partialSolution) {
        globalLetterBank[c]--;
    }
    //create a neighbor by removing 1 from each letterbank and appending to the end of a new child's partial solution
    char parentLastLetter = parent.partialSolution.back();

    for (char k = lbStartIndex; k < lbEndIndex; k++) {
        if (globalLetterBank[k] > 0) {
            Node child(parent);
            child.cost += bigram[parentLastLetter][k];
            child.partialSolution.push_back(k);
            neighbors.push_back(std::move(child));
        }
    }
    for (auto &c : parent.partialSolution) {
        globalLetterBank[c]++;
    }

    return neighbors;
}

bool operator<(const Node &a, const Node &b) {
    return a.cost > b.cost;
    //pqueue puts LARGEST element at top, but we want smallest at top
}

int main(int argc, char **argv) {
    if (argc != 2) {
        cout << "Enter a word" << endl;
    }
    string word = argv[1];
    std::transform(word.begin(), word.end(), word.begin(), ::tolower);

    for (auto &c : word) {
        globalLetterBank[c - 'a']++; //normalize
    }
    for (lbStartIndex = 0; lbStartIndex < 26; lbStartIndex++) {
        if (globalLetterBank[lbStartIndex] != 0)
            break;
    }
    for (lbEndIndex = 26; lbEndIndex > lbStartIndex; lbEndIndex--) {
        if (globalLetterBank[lbEndIndex - 1] != 0)
            break;
    }

    priority_queue<Node> frontier;
    vector<Node> solutions;

    for (char k = lbStartIndex; k < lbEndIndex; k++) {
        if (globalLetterBank[k] > 0) {
            Node root = {unigram[k], {k}};
            frontier.push(std::move(root));
        }
    }

    while (!frontier.empty()) {
        Node cur = frontier.top();
        frontier.pop();

        vector<Node> neighbors = getNeighbors(cur);
        if (neighbors.empty()) {
            solutions.push_back(std::move(cur));
            if (solutions.size() == 5)
                break;
        } else {
            for (auto &neighbor : neighbors) {
                frontier.push(std::move(neighbor));
            }
        }
    }

    std::sort(solutions.begin(), solutions.end(), [](const Node &a, const Node &b) {
        return a.cost < b.cost;
    });
    for (auto &n : solutions) {
        for (auto &c : n.partialSolution) {
            cout << (char) (c + 'a'); //shift back to ASCII
        }
        cout << " " << n.cost << endl;
    }

//    for (int r = 0; r < 26; r++) {
//        cout << "{";
//        for (int c = 0; c < 26; c++) {
//            cout << (int) (bigram[r][c] * 100000) << (c < 25 ? ", " : "");
//        }
//        cout << "}, " << endl;
//    }

    exit(0);
    //return 0;
}
