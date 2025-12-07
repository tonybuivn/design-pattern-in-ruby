package main

func main() {

	client := &Client{}
	mac := &Mac{}

	client.InsertLightningConnectorIntoComputer(mac)

	windows := &Windows{}
	windowsAdapter := &WindowsAdapter{
		windowsMachine: windows,
	}

	client.InsertLightningConnectorIntoComputer(windowsAdapter)
}
