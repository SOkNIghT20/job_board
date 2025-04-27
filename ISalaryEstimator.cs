using System;
using System.ServiceModel;


namespace SalaryEstimatorService
{
    // NOTE: You can use the "Rename" command on the "Refactor" menu to change the interface name "IService1" in both code and config file together.
    [ServiceContract]
    public interface ISalaryEstimator
    {

        [OperationContract]
        decimal EstimateSalary(string jobTitle, int yearsExperience);

    }
}
