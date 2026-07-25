def lambda_handler(event, context):
    first_name = event.get("firstname")
    last_name = event.get("lastname")

    return {
        "statusCode": 200,
        "message": f"Hello {first_name} {last_name}!"
    }