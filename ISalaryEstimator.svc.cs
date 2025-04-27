
using System;
using System.ServiceModel;


namespace SalaryEstimatorService
{
    // NOTE: You can use the "Rename" command on the "Refactor" menu to change the class name "Service1" in code, svc and config file together.
    // NOTE: In order to launch WCF Test Client for testing this service, please select Service1.svc or Service1.svc.cs at the Solution Explorer and start debugging.
    public class SalaryEstimator : ISalaryEstimator
    {

        public decimal EstimateSalary(string jobTitle, int yearsExperience)
        {
            // normalize title
            string title = (jobTitle ?? "")
                           .Trim()
                           .ToLowerInvariant();

            // classic switch statement
            decimal basePay;
            switch (title)
            {
                case "director":
                    basePay = 120000m;
                    break;
                case "manager":
                    basePay = 90000m;
                    break;
                case "associate":
                    basePay = 60000m;
                    break;
                case "intern":
                    basePay = 30000m;
                    break;
                default:
                    basePay = 50000m;
                    break;
            }

            // add experience bonus
            return basePay + (yearsExperience * 8000m);
        }

    }

}
