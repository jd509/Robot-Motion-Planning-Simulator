#ifndef UTILITIES_EMULATOR
#define UTILITIES_EMULATOR

#include <ros/ros.h>
#include <Eigen/Core>
#include <Eigen/Dense>
#include <iostream>
#include <fstream>
#include <vector>
#include <string>

namespace EmulatorUtils
{
    inline Eigen::MatrixXd readCSV(std::string filename)
    {
        std::vector<double> matrixEntries;
        std::ifstream matrixDataFile(filename);
        std::string matrixRowString;
        std::string matrixEntry;
        int matrixRowNumber = 0;

        while(std::getline(matrixDataFile, matrixRowString))
        {
            std::stringstream matrixRowStringStream(matrixRowString);

            while(std::getline(matrixRowStringStream, matrixEntry, ','))
            {
                matrixEntries.push_back(std::stod(matrixEntry));
            }
            matrixRowNumber++;
        }
        return Eigen::Map<Eigen::Matrix<double, Eigen::Dynamic, Eigen::Dynamic, Eigen::RowMajor>>(matrixEntries.data(), matrixRowNumber, matrixEntries.size()/matrixRowNumber);
    }
}


#endif