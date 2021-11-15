#!/usr/bin/env bash

#Note that you can choose the delimiter.  I've chosen |.


find . -type f -name "*.csproj" -exec sed -i 's|utils\\fxcop.ruleset|utils\\fxcop-stylecop.ruleset|g' {} +




find . -type f -name "*.csproj" -exec sed -i 's|Shared\\Shared.Services\\Shared.Services.csproj|Czarnikow.Shared\\Czarnikow.Shared.Services\\Czarnikow.Shared.Services.csproj|g' {} +
find . -type f -name "*.csproj" -exec sed -i 's|Shared\\Shared.Services\\Shared.Domain.csproj|Czarnikow.Shared\\Czarnikow.Shared.Domain\\Czarnikow.Shared.Domain.csproj|g' {} +
find . -type f -name "*.csproj" -exec sed -i 's|Shared\\Shared.Infrastructure\\Shared.Infrastructure.csproj|Czarnikow.Shared\\Czarnikow.Shared.Infrastructure\\Czarnikow.Shared.Infrastructure.csproj|g' {} +
find . -type f -name "*.csproj" -exec sed -i 's|Shared\\Shared.Infrastructure\\Shared.Infrastructure.Framework.csproj|Czarnikow.Shared\\Czarnikow.Shared.Infrastructure.Framework\\Czarnikow.Shared.Infrastructure.Framework.csproj"|g' {} +

find . -type f -name "*.sln" -exec sed -i 's|"Shared.Adapters", "Shared\\Shared.Adapters\\Shared.Adapters.csproj"|"Shared.Adapters", "Czarnikow.Shared\\Czarnikow.Shared.Adapters\\Czarnikow.Shared.Adapters.csproj"|g' {} +
find . -type f -name "*.sln" -exec sed -i 's|"Shared.Domain", "Shared\\Shared.Domain\\Shared.Domain.csproj"|"Shared.Domain", "Czarnikow.Shared\\Shared.Domain\\Czarnikow.Shared.Domain.csproj"|g' {} +
find . -type f -name "*.sln" -exec sed -i 's|"Shared.Infrastructure", "Shared\\Shared.Infrastructure\\Shared.Infrastructure.csproj"|"Shared.Infrastructure", "Czarnikow.Shared\\Shared.Infrastructure\\Czarnikow.Shared.Infrastructure.csproj"|g' {} +
find . -type f -name "*.sln" -exec sed -i 's|"Shared.Infrastructure.Framework", "Shared\\Shared.Infrastructure.Framework\\Shared.Infrastructure.Framework.csproj"|"Shared.Infrastructure.Framework", "Czarnikow.Shared\\Shared.Infrastructure.Framework\\Czarnikow.Shared.Infrastructure.Framework.csproj"|g' {} +
find . -type f -name "*.sln" -exec sed -i 's|"Shared.Services", "Shared\\Shared.Services\\Shared.Services.csproj"|"Shared.Services", "Czarnikow.Shared\\Czarnikow.Shared.Services\\Czarnikow.Shared.Services.csproj"|g' {} +

Project("{9A19103F-16F7-4668-BE54-9A1E7A4F7556}") = "Shared.Domain", "Czarnikow.Shared\Shared.Domain\Czarnikow.Shared.Domain.csproj", "{5F27470B-17DF-41DD-ABC0-925336E7B196}"








find . -type f -name "*.csproj" -exec sed -i 's|Shared\\Shared.Services\\Shared.Services.csproj|Czarnikow.Shared\\Czarnikow.Shared.Services\\Czarnikow.Shared.Services.csproj|g' {} +
find . -type f -name "*.csproj" -exec sed -i 's|Shared\\Shared.Domain\\Shared.Domain.csproj|Czarnikow.Shared\\Czarnikow.Shared.Domain\\Czarnikow.Shared.Domain.csproj|g' {} +
find . -type f -name "*.csproj" -exec sed -i 's|Shared\\Shared.Infrastructure\\Shared.Infrastructure.csproj|Czarnikow.Shared\\Czarnikow.Shared.Infrastructure\\Czarnikow.Shared.Infrastructure.csproj|g' {} +
find . -type f -name "*.csproj" -exec sed -i 's|Shared\\Shared.Infrastructure\\Shared.Infrastructure.Framework.csproj|Czarnikow.Shared\\Czarnikow.Shared.Infrastructure.Framework\\Czarnikow.Shared.Infrastructure.Framework.csproj"|g' {} +
find . -type f -name "*.csproj" -exec sed -i 's|Shared\\_Test\\Shared.Adapters.Tests\\Shared.Adapters.Tests.csproj|Czarnikow.Shared\\Czarnikow.Shared\\_Test\\Czarnikow.Shared.Adapters.Tests\\Czarnikow.Shared.Adapters.Tests.csproj"|g' {} +


find . -type f -name "*.sln" -exec sed -i 's|"Shared.Adapters", "Shared\\Shared.Adapters\\Shared.Adapters.csproj"|"Czarnikow.Shared.Adapters", "Czarnikow.Shared\\Czarnikow.Shared.Adapters\\Czarnikow.Shared.Adapters.csproj"|g' {} + 
find . -type f -name "*.sln" -exec sed -i 's|"Shared.Domain", "Shared\\Shared.Domain\\Shared.Domain.csproj"|"Czarnikow.Shared.Domain", "Czarnikow.Shared\\Czarnikow.Shared.Domain\\Czarnikow.Shared.Domain.csproj"|g' {} +
find . -type f -name "*.sln" -exec sed -i 's|"Shared.Infrastructure", "Shared\\Shared.Infrastructure\\Shared.Infrastructure.csproj"|"Czarnikow.Shared.Infrastructure", "Czarnikow.Shared\\Czarnikow.Shared.Infrastructure\\Czarnikow.Shared.Infrastructure.csproj"|g' {} +
find . -type f -name "*.sln" -exec sed -i 's|"Shared.Infrastructure.Framework", "Shared\\Shared.Infrastructure.Framework\\Shared.Infrastructure.Framework.csproj"|"Czarnikow.Shared.Infrastructure.Framework", "Czarnikow.Shared\\Czarnikow.Shared.Infrastructure.Framework\\Czarnikow.Shared.Infrastructure.Framework.csproj"|g' {} +
find . -type f -name "*.sln" -exec sed -i 's|"Shared.Services", "Shared\\Shared.Services\\Shared.Services.csproj"|"Czarnikow.Shared.Services", "Czarnikow.Shared\\Czarnikow.Shared.Services\\Czarnikow.Shared.Services.csproj"|g' {} +

find . -type f -name "*.sln" -exec sed -i 's|"Shared.Infrastructure.Tests", "Shared\\_Test\\dotnet_core\\Shared.Infrastructure.Tests\\Shared.Infrastructure.Tests.csproj"|"Czarnikow.Shared.Adapters.Tests", "Czarnikow.Shared\\_Test\\dotnet_core\\Czarnikow.Shared.Adapters.Tests\\Czarnikow.Shared.Adapters.Tests.csproj"|g' {} +
find . -type f -name "*.sln" -exec sed -i 's|"Shared.Infrastructure.Framework.Tests", "Shared\\_Test\\Shared.Integration.Framework.Test\\Shared.Infrastructure.Framework.Tests.csproj"|"Czarnikow.Shared.Infrastructure.Framework.Tests", "Czarnikow.Shared\\_Test\\Czarnikow.Shared.Infrastructure.Framework.Tests\\Czarnikow.Shared.Infrastructure.Framework.Tests.csproj"|g' {} +
find . -type f -name "*.sln" -exec sed -i 's|"Shared.Domain.Tests", "Shared\\_Test\\dotnet_core\\Shared.Domain.Tests\\Shared.Domain.Tests.csproj"|"Czarnikow.Shared.Domain.Tests", "Czarnikow.Shared\\_Test\\dotnet_core\\Czarnikow.Shared.Domain.Tests\\Czarnikow.Shared.Domain.Tests.csproj"|g' {} +
find . -type f -name "*.sln" -exec sed -i 's|"Shared.Services.Tests", "Shared\\_Test\\dotnet_core\\Shared.Services.Tests\\Shared.Services.Tests.csproj"|"Czarnikow.Shared.Services.Tests", "Czarnikow.Shared\\_Test\\dotnet_core\\Czarnikow.Shared.Services.Tests\\Czarnikow.Shared.Services.Tests.csproj"|g' {} +
find . -type f -name "*.sln" -exec sed -i 's|"Shared.Adapters.Tests", "Shared\\_Test\\Shared.Adapters.Tests\\Shared.Adapters.Tests.csproj"|"Czarnikow.Shared.Adapters.Tests", "Czarnikow.Shared\\_Test\\Czarnikow.Shared.Adapters.Tests\\Czarnikow.Shared.Adapters.Tests.csproj"|g' {} +

