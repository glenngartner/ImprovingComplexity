#include <iostream>
#include <vector>

using namespace std;

vector<int> poorlyWritten(vector<vector<int>> arrays) {
    vector<int> combinedArray = {};
    for (int i = 0; i < arrays.size(); i++) {
        for (int j = 0; j < arrays[i].size(); j++) {
            combinedArray.push_back(arrays[i][j]);
        }
    }

    vector<int> sortedArray = {};
    sortedArray.push_back(combinedArray.back());
    combinedArray.pop_back();

    for (int i = 0; i < combinedArray.size(); i++) {
        int val = combinedArray[i];
        while (i < sortedArray.size()) {
            if (val <= sortedArray[i]) {
//               sortedArray.

                // i gave up porting the code at this point. I'll give Ruby a go
            }
        }
    }
}


int main() {
    std::cout << "Hello, World!" << std::endl;
    return 0;
}