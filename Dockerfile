FROM mcr.microsoft.com/dotnet/core/sdk:2.2 AS build-env
WORKDIR /app
COPY . ./
RUN dotnet publish -c Release -o out
ENTRYPOINT ["dotnet", "BanklyInterviewTest.dll"]