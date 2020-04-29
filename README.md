# Liveness Detection Demo


## Ref

Follow PyImageSearch [here](https://www.pyimagesearch.com/2019/03/11/liveness-detection-with-opencv/)


## Project Structure

### Videos Dir
> Contains training videos that will later be used for generate training images

Currently there are 2 videos of first sample

### Dataset Dir
> Contains images generate from training videos

- Fake dir: contains images generated from `fake` video
- Real dir: contains images generated from `real` video


### Model Dir
> Simple CNN using [Keras Sequential Model](https://keras.io/getting-started/sequential-model-guide/)

livenessnet.py


### Face_Detector Dir
> Pretrained Caffe face detector

### Files
> generate_images.py

Detect face in videos' frames and store to dataset

> train_liveness.py

Train model with dataset, generate labels map, model and report graph

> liveness_demo.py

Use trained model to detect streaming videos with min conf = 0.5

## Prerequisite
- Python 3.6.5
- Virtualenv

## Run
```python
# create virtualenv
virtualenv -p python 3 venv

# activate
source venv/bin/activate

# install dependencies
pip install -r requirements.txt

# generate training images
make gen

# train model
make train

# start demo
# press `q` to quit
make start
```