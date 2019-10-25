#!/usr/bin/env bash

#Note that you can choose the delimiter.  I've chosen |.

find . -type f -name "*.sln" -exec sed -i 's|"Shared.Adapters", "Shared.Adapters\\Shared.Adapters.csproj"|"Shared.Adapters", "Shared\\Shared.Adapters\\Shared.Adapters.csproj"|g' {} +
find . -type f -name "*.sln" -exec sed -i 's|"Shared.Domain", "Shared.Domain\\Shared.Domain.csproj"|"Shared.Domain", "Shared\\Shared.Domain\\Shared.Domain.csproj"|g' {} +
find . -type f -name "*.sln" -exec sed -i 's|"Shared.Services", "Shared.Services\\Shared.Services.csproj"|"Shared.Services", "Shared\\Shared.Services\\Shared.Services.csproj"|g' {} +

find . -type f -name "*.csproj" -exec sed -i 's|"..\\..\\Shared.Adapters\\Shared.Adapters.csproj"|"..\\..\\Shared\\Shared.Adapters\\Shared.Adapters.csproj"|g' {} +
find . -type f -name "*.csproj" -exec sed -i 's|"..\\..\\Shared.Domain\\Shared.Domain.csproj"|"..\\..\\Shared\\Shared.Domain\\Shared.Domain.csproj"|g' {} +
find . -type f -name "*.csproj" -exec sed -i 's|"..\\..\\Shared.Services\\Shared.Services.csproj"|"..\\..\\Shared\\Shared.Services\\Shared.Services.csproj"|g' {} +


find . -type f -name "*.csproj" -exec sed -i 's|"..\\Shared.Adapters\\Shared.Adapters.csproj"|"..\\Shared\\Shared.Adapters\\Shared.Adapters.csproj"|g' {} +
find . -type f -name "*.csproj" -exec sed -i 's|"..\\Shared.Domain\\Shared.Domain.csproj"|"..\\Shared\\Shared.Domain\\Shared.Domain.csproj"|g' {} +
find . -type f -name "*.csproj" -exec sed -i 's|"..\\Shared.Services\\Shared.Services.csproj"|"..\\Shared\\Shared.Services\\Shared.Services.csproj"|g' {} +


find . -type f -name "*.csproj" -exec sed -i 's|"..\\..\\..\\..\\..\\..\\Shared.Domain\\Shared.Domain.csproj"|"..\\..\\..\\..\\..\\..\\Shared\\Shared.Domain\\Shared.Domain.csproj"|g' {} +
find . -type f -name "*.csproj" -exec sed -i 's|"..\\..\\..\\..\\..\\..\\Shared.Services\\Shared.Services.csproj"|"..\\..\\..\\..\\..\\..\\Shared\\Shared.Services\\Shared.Services.csproj"|g' {} +


