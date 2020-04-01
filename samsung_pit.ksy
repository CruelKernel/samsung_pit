meta:
  id: samsung_pit
  title: Samsung PIT
  license: CC0-1.0
  file-extension: pit
  endian: le
  imports:
    - samsung_signature
seq:
  - id: magic
    contents: [ 0x76, 0x98, 0x34, 0x12 ]
  - id: entry_count
    type: u4
  - id: unknown1
    type: u4
  - id: unknown2
    type: u4
  - id: unknown3
    type: u2
  - id: unknown4
    type: u2
  - id: unknown5
    type: u2
  - id: unknown6
    type: u2
  - id: unknown7
    type: u2
  - id: unknown8
    type: u2
  - id: partitions
    type: partition
    repeat: expr
    repeat-expr: entry_count
  - id: signature
    type: samsung_signature
    if: not _io.eof
types:
  partition:
    seq:
      - id: binary_type
        type: u4
      - id: device_type
        type: u4
      - id: identifier
        type: u4
      - id: attributes
        type: u4
      - id: update_attributes
        type: u4
      - id: block_size_or_offset
        type: u4
      - id: block_count
        type: u4
      - id: file_offset
        type: u4
      - id: file_size
        type: u4
      - id: partition_name
        type: strz
        size: 32
        encoding: ASCII
      - id: flash_filename
        type: strz
        size: 32
        encoding: ASCII
      - id: fota_filename
        type: strz
        size: 32
        encoding: ASCII
