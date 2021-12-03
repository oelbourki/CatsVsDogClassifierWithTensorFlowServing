echo "Start Serving Model"

sudo docker run -d -p 8501:8501 --name=pets -v "$(pwd)/app/pets/:/models/pets/1" -e MODEL_NAME=pets tensorflow/serving
sleep 1
echo "Done Serving"

echo "Start App"
python3 app.py
