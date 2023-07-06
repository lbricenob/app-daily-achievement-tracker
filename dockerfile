# Use the official SQL Server 2019 image from Microsoft
FROM mcr.microsoft.com/mssql/server:2019-latest

# Define build-time arguments
ARG SA_PASSWORD

# Set environment variables
ENV SA_PASSWORD=${SA_PASSWORD}
ENV ACCEPT_EULA=Y

# Copy the SQL scripts to a temporary directory
COPY db-scripts/* /usr/src/init-scripts/

# Expose SQL Server port
EXPOSE 1433

# Run the initial scripts when the container starts
# CMD for file in /usr/src/init-scripts/*.sql; do /opt/mssql-tools/bin/sqlcmd -S localhost -U SA -P $SA_PASSWORD -d master -i $file; done

# Run Microsoft SQl Server and initialization script (at the same time)
# Note: If you want to start MsSQL only (without initialization script) you can comment bellow line out, CMD entry from base image will be taken
CMD /bin/bash /usr/src/init-scripts/entrypoint.sh

