from sqlite3 import Timestamp
import grpc
import numpy as np
import ImageProcessing_pb2
import ImageProcessing_pb2_grpc
from concurrent import futures
import cv2
import base64
import Object_Detector
detect = Object_Detector.ObjectDetection()

class ImageProcessing(ImageProcessing_pb2_grpc.ImageProcessing):
    def IsLive(self, request, context):
        print(request.timestamp)
        response = request.timestamp
        return ImageProcessing_pb2.StateResponse(timestamp = response)
    
    def Predict(self, request, context):
        print('file_name : ', request.file_name+request.file_extension)
        nparr = np.fromstring(request.image_array, np.uint8)
        img_np = cv2.imdecode(nparr, cv2.IMREAD_COLOR )
        img = detect.object_detection(img_np)
        # cv2.imshow("Image", img)
        # cv2.waitKey(0)
        # image = "data:image/jpeg;base64," + str(base64.b64encode(img))[2:]
        _, encodeimage = cv2.imencode('.jpg', img)
        image = str(base64.b64encode(encodeimage.tobytes()))[2:-1]
        # with open('readme.txt', 'w') as f:
        #     f.write(image)
        # print(type(img))
        # print(img.tobytes())
        return ImageProcessing_pb2.PredictionResult(detected_image= image)

def main():
    server = grpc.server(futures.ThreadPoolExecutor(max_workers=5))
    ImageProcessing_pb2_grpc.add_ImageProcessingServicer_to_server(ImageProcessing(), server)
    print('server started!')
    server.add_insecure_port(f'[::]:50051')
    server.start()
    server.wait_for_termination()

main()

