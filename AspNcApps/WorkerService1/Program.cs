using Microsoft.Extensions.Hosting;
using WorkerService1;

var builder = Host.CreateApplicationBuilder(args);



builder.Services.AddHostedService<Worker>();


builder.Logging.AddCustomLogger(options =>
{
    builder.Configuration.GetSection("Logging").GetSection("CustomProvider").GetSection("Options").Bind(options);
});

var host = builder.Build();
host.Run();
