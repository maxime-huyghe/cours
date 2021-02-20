import azure.cognitiveservices.speech as speechsdk

def from_file(filename):
    speech_config = speechsdk.SpeechConfig(
        subscription="137a40af09bb4894a62ed88ea771b3fd", region="westeurope"
    )
    speech_config.speech_recognition_language = "fr-FR"

    # audio_input = speechsdk.AudioConfig(filename=filename)
    # speech_recognizer = speechsdk.SpeechRecognizer(speech_config=speech_config, audio_config=audio_input)
    speech_recognizer = speechsdk.SpeechRecognizer(speech_config=speech_config)

    result = speech_recognizer.recognize_once()

    if result.reason == speechsdk.ResultReason.RecognizedSpeech:
        print("Recognized: {}".format(result.text))
    elif result.reason == speechsdk.ResultReason.NoMatch:
        print("No speech could be recognized: {}".format(result.no_match_details))
    elif result.reason == speechsdk.ResultReason.Canceled:
        cancellation_details = result.cancellation_details
        print("Speech Recognition canceled: {}".format(cancellation_details.reason))
        if cancellation_details.reason == speechsdk.CancellationReason.Error:
            print("Error details: {}".format(cancellation_details.error_details))

# for i in range(1, 49):
#     from_file(f'out{i:03}.wav')
#     # print(f'out{i:03}.wav')

i = 0
from_file(f'out{i:03}.wav')