using System.Collections;
using NUnit.Framework;
using Scripts;
using Unity.PerformanceTesting;
using UnityEngine.TestTools;

namespace Tests
{
    public class EncryptTest
    {
        [Test, Performance]
        public void Int_Get_100000_10()
        {
            int init = 0;
            Measure.Method(
                        () =>
                        {
                            int temp = init;
                        }
                    ).
                    IterationsPerMeasurement(100000).
                    MeasurementCount(10).
                    Run();
        }

        [Test, Performance]
        public void Int_Encrypt_Get_100000_10()
        {
            EncryptInt init = 0;
            Measure.Method(
                        () =>
                        {
                            int temp = init;
                        }
                    ).
                    IterationsPerMeasurement(100000).
                    MeasurementCount(10).
                    Run();
        }

        [Test, Performance]
        public void Int_Add_100000_10()
        {
            int sum = 0;

            Measure.Method(() => { sum++; }).IterationsPerMeasurement(100000).MeasurementCount(10).Run();
        }

        [Test, Performance]
        public void Encrypt_Int_Add_100000_10()
        {
            EncryptInt sum = 0;

            Measure.Method(() => { sum++; }).IterationsPerMeasurement(100000).MeasurementCount(10).Run();
        }

        [Test, Performance]
        public void Mut_Int_100000_10()
        {
            int sum = 1;

            Measure.Method(() => { sum *= 5; }).IterationsPerMeasurement(100000).MeasurementCount(10).Run();
        }

        [Test, Performance]
        public void Encrypt_Int_Mut_100000_10()
        {
            EncryptInt sum = 1;
            Measure.Method(() => { sum *= 5; }).IterationsPerMeasurement(100000).MeasurementCount(10).Run();
        }

        [Test, Performance]
        public void Int_Div_100000_10()
        {
            int sum = 100000;

            Measure.Method(() => { sum /= 5; }).IterationsPerMeasurement(100000).MeasurementCount(10).Run();
        }

        [Test, Performance]
        public void Encrypt_Int_Div_100000_10()
        {
            EncryptInt sum = 100000;

            Measure.Method(() => { sum /= 5; }).IterationsPerMeasurement(100000).MeasurementCount(10).Run();
        }
    }
}