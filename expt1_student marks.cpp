#include <iostream>
using namespace std;

int main() {
    int NUM_STUDENTS = 3;
    int NUM_SUBJECTS = 5;
    
    int marks[NUM_STUDENTS][NUM_SUBJECTS];
    int total[NUM_STUDENTS] = {0};
    double subjectTotal[NUM_SUBJECTS] = {0};
    
    for (int i = 0; i < NUM_STUDENTS; ++i) {
        for (int j = 0; j < NUM_SUBJECTS; ++j) {
            cin >> marks[i][j];
            total[i] += marks[i][j];
            subjectTotal[j] += marks[i][j];
        }
    }

    for (int i = 0; i < NUM_STUDENTS; ++i) {
        cout << total[i] << " ";
    }
    cout << endl;

    for (int j = 0; j < NUM_SUBJECTS; ++j) {
        double average = subjectTotal[j] / NUM_STUDENTS;
        cout << average << " ";
    }
    cout << endl;
    
    return 0;
}
