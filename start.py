import requests

def test_connectivity():
    print("Testing connectivity ...", end='')
    response = requests.get("http://www.google.com")
    if response.status_code == 200:
        print ("Connectivity test passed")
    else:
        print ("Connectivity test failed")

if __name__ == "__main__":

    print("Starting operating tests ...")
    test_connectivity()
    print("Finished operating tests ...")
