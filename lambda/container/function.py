def lambda_handler(event, context):
    first_name = event.get("first_name")
    last_name = event.get("last_name")

    return {
        "statusCode": 200,
        "message": f"Hello {first_name} {last_name}!"
    }