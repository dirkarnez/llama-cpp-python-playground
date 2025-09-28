import os
from openai import OpenAI

client = OpenAI(
  api_key = os.getenv("AZURE_OPENAI_API_KEY"),  
  base_url="https://YOUR-RESOURCE-NAME.openai.azure.com/openai/v1"
)

conversation=[{"role": "system", "content": "You are a helpful assistant."}]

while True:
    user_input = input("Q:")      
    conversation.append({"role": "user", "content": user_input})

    response = client.chat.completions.create(
        model="gpt-4o", # model = "deployment_name".
        messages=conversation
    )

    conversation.append({"role": "assistant", "content": response.choices[0].message.content})
    print("\n" + response.choices[0].message.content + "\n")