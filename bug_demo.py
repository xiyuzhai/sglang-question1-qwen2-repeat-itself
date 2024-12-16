import logging

# Set up logging configuration at the start of your script
logging.basicConfig(
    level=logging.INFO, format="%(asctime)s - %(levelname)s - %(message)s"
)

# Add these log messages at relevant points in your code
logging.info("Starting the application...")
logging.info("Loading model...")

try:
    # Your existing code here
    logging.info("Model loaded successfully")
    logging.info("Processing input...")

    # After processing
    logging.info("Processing completed")

except Exception as e:
    logging.error(f"An error occurred: {str(e)}")
    raise

logging.info("Application finished")
