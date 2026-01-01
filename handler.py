import runpod
import torch

def handler(job):
    """
    Простой обработчик, который проверяет наличие GPU.
    [...](asc_slot://start-slot-7)"""
    job_input = job["input"]
    
    # Проверяем GPU
    gpu_available = torch.cuda.is_available()
    gpu_name = torch.cuda.get_device_name(0) if gpu_available else "None"
    
    result = {
        "status": "success",
        "message": "Handler executed successfully",
        "gpu_available": gpu_available,
        "gpu_name": gpu_name,
        "input_received": job_input
    }
    
    return result

# [...](asc_slot://start-slot-9)Запуск слушателя RunPod
runpod.serverless.start({"handler": handler})
