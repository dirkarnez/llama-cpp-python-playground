import os
from openai import OpenAI
from langchain_openai import AzureChatOpenAI
from langchain_core.prompts.chat import ChatPromptTemplate

from dotenv import load_dotenv

# Load environment variables from .env file
load_dotenv()

# client = OpenAI(
#   api_key = os.getenv("OPENAI_API_KEY"),  
#   base_url = os.getenv("AZURE_OPENAI_ENDPOINT") # "https://YOUR-RESOURCE-NAME.openai.azure.com/openai/v1"
# )

# conversation=[{"role": "system", "content": "You are a helpful assistant."}]

# while True:
#     user_input = input("Q:")      
#     conversation.append({"role": "user", "content": user_input})

#     response = client.chat.completions.create(
#         model="gpt-4o", # model = "deployment_name".
#         messages=conversation
#     )

#     conversation.append({"role": "assistant", "content": response.choices[0].message.content})
#     print("\n" + response.choices[0].message.content + "\n")

llm = AzureChatOpenAI(
  api_version=os.getenv("OPENAI_API_VERSION")
)

messages = [
    {"role": "system",
      "content": "You are acting as a university professor helping a student with weak academic foundation"
    },
    {"role": "user", "content": [
        {"type": "text", "text": "Explain Ohms law."}
      ]
    }
]

ai_message = llm.invoke(messages)
print(f"AI Message Content: {ai_message.content}")
# feedback_json = json.loads(ai_message.content)
# return jsonify(feedback_json)