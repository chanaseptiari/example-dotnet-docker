FROM mcr.microsoft.com/dotnet/sdk:3.1 AS build-env
WORKDIR /App

# Copy everything
COPY ASP.NET_WebAPI/ ./
COPY conf/appsettings.json ./
COPY conf/WebService.csproj ./

# Restore as distinct layers
RUN dotnet restore

# Build and publish a release
RUN dotnet publish -c Release -o out

# Build runtime image
FROM mcr.microsoft.com/dotnet/aspnet:3.1
WORKDIR /App
COPY --from=build-env /App/out .
ENTRYPOINT ["dotnet", "WebService.dll"]