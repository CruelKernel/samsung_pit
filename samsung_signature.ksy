meta:
  id: samsung_signature
  file-extension: samsung_signature
types:
  samsung_signature:
    seq:
      - id: signer_name
        type: strz
        size: 16
        encoding: ASCII
      - id: signer_ver
        type: strz
        size: 16
        encoding: ASCII
      - id: firmware_ver
        type: strz
        size: 32
        encoding: ASCII
      - id: firmware_timestamp
        type: strz
        size: 16
        encoding: ASCII
      - id: phone_model
        type: strz
        size: 32
        encoding: ASCII
      - id: board1
        type: strz
        size: 16
        encoding: ASCII
      - id: board2
        type: strz
        size: 16
        encoding: ASCII
