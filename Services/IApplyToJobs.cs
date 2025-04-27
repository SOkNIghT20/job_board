using System.ServiceModel;

namespace JobBoardApp.Services
{
    [ServiceContract]
    public interface IApplyToJobs
    {
        [OperationContract]
        string Apply(string username, string jobId);
    }
}
