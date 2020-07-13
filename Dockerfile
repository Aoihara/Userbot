# We're using Alpine Latest
FROM heinzdf/oubnew:latest
 
# Clone repo and prepare working directory
RUN git clone -b latest https://github.com/Aoihara/Userbot /OUBnew
RUN chmod 777 /OUBnew
WORKDIR /OUBnew
 
# Copies session and config (if it exists)
COPY ./sample_config.env ./userbot.session* ./config.env* /root/userbot/
 
# Install requirements
CMD ["python3","-m","userbot"]
