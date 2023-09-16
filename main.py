import os
import streamlit as st
import pandas as pd
from pandasai import PandasAI
from pandasai.llm.openai import OpenAI
import matplotlib
from dotenv import load_dotenv


matplotlib.use('TkAgg')
load_dotenv()

API_KEY=os.environ['OPENAI_API_KEY']
llm=OpenAI(api_token=API_KEY)
pandas_ai = PandasAI(llm)
st.title("prompt-driven analysis with Pandasai")
#streamlit run main.py
uploaded_file=st.file_uploader("upload a CSV file for analysis", type=['csv'])

if uploaded_file is not None:
    df= pd.read_csv(uploaded_file)
    #st.write(df['Fare'].mean())
    st.write(df.head(3))
    
    prompt = st.text_area("Enter your prompt:")

    # Generate output
    if st.button("Generate"):
        if prompt:
            with st.spinner("generating an answer"):
                st.write(pandas_ai.run(df,prompt=prompt))
        else:
            st.warning("Please enter a prompt.")
