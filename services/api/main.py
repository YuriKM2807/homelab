from fastapi import FastAPI
import psutil

app = FastAPI()

@app.get("/")
def ler_status_servidor():
    cpu_percent = psutil.cpu_percent(interval=1) 
    memory_percent = psutil.virtual_memory().percent
    disk_percent = psutil.disk_usage('/').percent

    sensor = psutil.sensors_temperatures()
    if sensor and 'coretemp' in sensor and len(sensor['coretemp']) > 0:
        temperature = sensor['coretemp'][0].current
    else:
        temperature = "Sensor nao suportado"

    return {"status": "Online",
            "cpu_percent": cpu_percent,
            "memory_percent": memory_percent,
            "disk_percent": disk_percent,
            "temperature": temperature}
            
