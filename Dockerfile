FROM openjdk:11

# Copy the source code just to make sure there's something to run,
# but best to volume the src/ folder in to prevent rebuilding every time
WORKDIR /app
COPY ./src/ src

ENV MAIN_CLASS=com.example.Main

# Compile to out/ and run the app
CMD ["sh", "-c", "mkdir -p out && find src -name '*.java' > sources.txt && javac -d out @sources.txt && rm sources.txt && java -cp out $MAIN_CLASS"]