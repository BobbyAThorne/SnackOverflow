﻿using DataObjects;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace LogicLayer
{
    public interface IVehicleManager
    {
        Vehicle RetreiveVehicleById(int vehicleId);

        int CreateVehicle(Vehicle newVehicle);
    }
}
