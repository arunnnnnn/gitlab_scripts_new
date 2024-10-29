while IFS="," read -r Container_Name Image_Name Container_Memory Container_Port Host_Port Family_Name AccountNo TaskCPU TaskMEM Compatibility TaskRoleArn Task_Execution_Role
      do
      echo "Container_Name $Container_Name"
      echo "Image_Name $Image_Name"
      echo "Container_Memory $Container_Memory"
      echo "Container_Port $Container_Port"
      echo "Host_Port $Host_Port"
      echo "Family_Name $Family_Name"
      echo "AccountNo $AccountNo"
      echo "TaskCPU $TaskCPU"
      echo "TaskMEM $TaskMEM"
      echo "Compatibility $Compatibility"
      echo "TaskRoleArn $TaskRoleArn"
      echo "Task_Execution_Role $Task_Execution_Role"
      cp taskdef-template.json output/taskdef-$Family_Name.json
      sed -i "s|Container_Name|$Container_Name|g" output/taskdef-$Family_Name.json
      sed -i "s|Image_Name|$Image_Name|g" output/taskdef-$Family_Name.json
      sed -i "s|Container_Memory|$Container_Memory|g" output/taskdef-$Family_Name.json
      sed -i "s|Container_Port|$Container_Port|g" output/taskdef-$Family_Name.json
      sed -i "s|Host_Port|$Host_Port|g" output/taskdef-$Family_Name.json
      sed -i "s|Family_Name|$Family_Name|g" output/taskdef-$Family_Name.json
      sed -i "s|AccountNo|$AccountNo|g" output/taskdef-$Family_Name.json
      sed -i "s|TaskCPU|$TaskCPU|g" output/taskdef-$Family_Name.json
      sed -i "s|TaskMEM|$TaskMEM|g" output/taskdef-$Family_Name.json
      sed -i "s|PLATE|$Compatibility|g" output/taskdef-$Family_Name.json
      sed -i "s|tskrolarn|$TaskRoleArn|g" output/taskdef-$Family_Name.json
      sed -i "s|tskexerol|$Task_Execution_Role|g" output/taskdef-$Family_Name.json
      done < <(tail -n +2 input.csv)
