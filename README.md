# Dijkstra-Travel-Planner
A travel planner that calculates the optimal travel route by plane or bus based on Dijkstra's famous graph algorithm.

## Building the Program

To build the program, you can either run:

```
g++ -o travel Main.cpp FileOperations.h Location.h Route.h GraphFunctions.h
```

Or use the provided build.bat file:

```
build.bat
```

## Running the Program

The program takes the following command line arguments:

```
travel.exe cities.csv routes.csv output.html "Origin" "Destination" "Preference"
```

Where:
- cities.csv is the file containing city information
- routes.csv is the file containing route information
- output.html is the output file for the generated map
- Origin is the starting city
- Destination is the ending city
- Preference is either "fastest" or "cheapest"

Example:
```
.\travel.exe cities.csv routes.csv output.html "New Delhi" "Kabul" "fastest"
```
```
.\travel.exe cities.csv routes.csv output.html "New Delhi" "Islamabad" "cheapest"
```

## Files

- Main.cpp: Main program file
- Location.h: Header file for Location class
- Route.h: Header file for Route class
- GraphFunctions.h: Header file containing graph algorithms
- FileOperations.h: Header file for file parsing functions
- cities.csv: CSV file containing city information
- routes.csv: CSV file containing route information
- build.bat: Batch file to build the program
- output.html: Generated output file with the travel route map

## Running with Terminal Input

You can run the program interactively where it prompts you for input through the terminal:

1. First, build the program:
   ```
   g++ -o travel Main.cpp FileOperations.h Location.h Route.h GraphFunctions.h
   ```

2. Run the executable with partial command line arguments (just the input files and output file):
   ```
   travel.exe cities.csv routes.csv output.html
   ```

3. The program will then prompt you for the remaining inputs through the terminal:
   ```
   Origin: [Type your source city name, e.g., Rome]
   Destination: [Type your destination city name, e.g., Astana]
   Enter a preference (fastest/cheapest): [Type either "fastest" or "cheapest"]
   ```

4. After you provide these inputs, the program will:
   - Calculate the optimal route using Dijkstra's algorithm
   - Generate an HTML file named "output.html" with the route visualization
   - Display the route on a Google Maps interface

## Example Usage

```
> .\travel.exe cities.csv routes.csv output.html "New Delhi" "Kabul" "fastest"
```

Or run interactively:
```
> .\travel.exe cities.csv routes.csv output.html
Origin: New Delhi
Destination: Kabul
Enter a preference (fastest/cheapest): fastest
```

The program will then generate the output.html file which you can open in any web browser to see the visualized route.

Note: You must use the capital city names as they appear in the cities.csv file, not the country names. For example, use "New Delhi" for India and "Kabul" for Afghanistan, not "India" or "Afghanistan".

## Alternative: Full Command Line

You can also provide all inputs as command line arguments:
```
.\travel.exe cities.csv routes.csv output.html "Rome" "Astana" "fastest"
```

In this case, the program won't prompt for any input and will directly generate the output.html file.

Note: On Windows PowerShell, you need to use `.\` before the executable name. On Command Prompt or other systems, you can just use `travel.exe`.
