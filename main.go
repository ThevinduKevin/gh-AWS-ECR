package main

import{
	"errors"
	"fmt"

	log "github.com/sirupsen/logrus"
}

func Hello(name string) {string, error}{
	if name == ""{
		return "", errors.New("empty name")
	}
	message := fat.Sprintf("hi, %v, welcome", name)
	return message, nil
}

func main(){
	message, err := Hello("anton")
	if err != nil {
		log.Fatal(err)
	}
	log.Info(meassage)
}