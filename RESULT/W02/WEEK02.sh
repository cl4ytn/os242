input_file="inputSCRAP.txt"
output_file="outputSCRAP.txt"

if [[ ! -f "$input_file" ]]; then
  echo "Error: $input_file not found!"
  exit 1
fi

grep -oP '\b\d{10}\b' "$input_file" > "$output_file"

if [[ -f "$output_file" ]]; then
  echo "Output written to $output_file"
else
  echo "Error: Failed to write output"
fi
