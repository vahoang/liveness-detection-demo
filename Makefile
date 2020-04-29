# generate images from fake video
# make sure video name and directory name match
gen_fake:
	python generate_images.py --input videos/fake.mov --output dataset/fake --detector face_detector --skip 1

# generate images from real video
# make sure video name and directory name match
gen_real:
	python generate_images.py --input videos/real.mov --output dataset/real --detector face_detector --skip 1

# gen all
gen:
	make gen_fake
	make gen_real

# train model
train:
	python train_liveness.py --dataset dataset --model liveness.model --le le.pickle

# start demo
start:
	python liveness_demo.py --model liveness.model --le le.pickle --detector face_detector

