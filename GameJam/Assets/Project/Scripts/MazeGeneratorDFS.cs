    /*
     
    Component responsible to generate and build a 3D maze in Unity game engine, it uses the Depth First Search algorithm to determine the maze layout
     
    Author: Leocesar 2011: http://www.leocesarbsb.xpg.com.br
     
    */
     
     
     
    using UnityEngine;
     
    using System.Collections;
     
    using System.Collections.Generic;
     
     
     
    public class MazeGeneratorDFS : MonoBehaviour
     
    {
     
        // Dimensions of the labyrinth in Unity’s coordinate system
     
        public int x = 2;
     
        public int y = 2; // height
     
        public int z = 2;
     
        // In Unity's unit system: 1 unit == 1 cubic meter (for reference only). Could be anything else
     
        public int cellSize = 10;
     
     
     
        // Labyrinth pieces (3D model's prefabs)
     
        public GameObject bifurcation;
     
        public GameObject bifurcationUp;
     
        public GameObject bifurcationDown;
     
        public GameObject bifurcationUpDown;
     
       
     
        public GameObject corner;
     
        public GameObject cornerUp;
     
        public GameObject cornerDown;
     
        public GameObject cornerUpDown;
     
       
     
        public GameObject corridor;
     
        public GameObject corridorUp;
     
        public GameObject corridorDown;
     
        public GameObject corridorUpDown;
     
        public GameObject corridorVertical;
     
       
     
        public GameObject crossing;
     
        public GameObject crossingUp;
     
        public GameObject crossingDown;
     
        public GameObject crossingUpDown;
     
       
     
        public GameObject deadend;
     
        public GameObject deadendUp;
     
        public GameObject deadendDown;
     
        public GameObject deadendUpDown;
     
        public GameObject deadendTop;
     
        public GameObject deadendBottom;
     
       
     
        public GameObject placebo; // Just a placeholder for missing pieces
     
       
     
        // Used on ChooseCellPrefab() method
     
        private readonly Quaternion rot_0 = Quaternion.identity;
     
        private readonly Quaternion rot_90 = Quaternion.Euler (0, 90, 0);
     
        private readonly Quaternion rot_180 = Quaternion.Euler (0, 180, 0);
     
        private readonly Quaternion rot_270 = Quaternion.Euler (0, 270, 0);
     
     
     
        // Total number of cells in labyrinth
     
        private int totalCells;
     
        // Total number of visited cells
     
        private int visitedCells;
     
        // Array to store the maze cells
     
        private Cell[,,] maze;
     
        // Stack to store the cell visiting and computations
     
        private Stack<Cell> cellStack;
     
        // Current cell being computed
     
        private Cell currentCell;
     
     
     
        // Just a container data structure to hold cell information
     
        private class Cell
     
        {
     
            // Cell location in Unity's coordinate system
     
            public int x;
     
            public int y;
     
            public int z;
     
     
     
            // Does the cell has all walls up?
     
            public bool hasAllWalls = true;
     
     
     
            // Cell walls information: 1 means wall up and  0 means wall down in this sequence { -x, -y, -z, x, y, z }
     
            public int[] walls = new int[6] { 1, 1, 1, 1, 1, 1 };
     
        }
     
     
     
        // Here goes the maze generation algorithm, I used the Depth First Search algorithm, see pseudocode in: http://www.mazeworks.com/mazegen/mazetut/index.htm
     
        private void Generate ()
     
        {
     
            // Choose a cell at random and call it currentCell
     
            currentCell = maze[Random.Range (0, x), Random.Range (0, y), Random.Range (0, z)];
     
           
     
            while (visitedCells < totalCells) {
     
                // Find all neighbors of currentCell with all walls intact
     
                List<Cell> neighbors = FindAllUnvisitedNeighbors ();
     
               
     
                // If one or more found
     
                if (neighbors.Count > 0) {
     
                    // Choose one at random
     
                    Cell chosenNeighbor = neighbors[Random.Range (0, neighbors.Count)];
     
                    // knock down the wall between it and currentCell
     
                    knockDownWalls (chosenNeighbor);
     
                    // Push currentCell location on the cellStack
     
                    cellStack.Push (currentCell);
     
                    // Make the chosen cell currentCell
     
                    currentCell = chosenNeighbor;
     
                    // Add 1 to VisitedCells
     
                    visitedCells++;
     
                } else {
     
                    // Pop the most recent cell entry off the cellStack and make it currentCell
     
                    currentCell = cellStack.Pop ();
     
                }
     
            }
     
        }
     
     
     
        private List<Cell> FindAllUnvisitedNeighbors ()
     
        {
     
            List<Cell> neighbors = new List<Cell> ();
     
           
     
            for (int i = -1; i <= 1; i++) {
     
                if (i != 0) {
     
                    if ((currentCell.x + i >= 0 && currentCell.x + i < x)) {
     
                        if (maze[currentCell.x + i, currentCell.y, currentCell.z].hasAllWalls)
     
                            neighbors.Add (maze[currentCell.x + i, currentCell.y, currentCell.z]);
     
                    }
     
                   
     
                    if ((currentCell.y + i >= 0 && currentCell.y + i < y)) {
     
                        if (maze[currentCell.x, currentCell.y + i, currentCell.z].hasAllWalls)
     
                            neighbors.Add (maze[currentCell.x, currentCell.y + i, currentCell.z]);
     
                    }
     
                   
     
                    if ((currentCell.z + i >= 0 && currentCell.z + i < z)) {
     
                        if (maze[currentCell.x, currentCell.y, currentCell.z + i].hasAllWalls)
     
                            neighbors.Add (maze[currentCell.x, currentCell.y, currentCell.z + i]);
     
                    }
     
                }
     
            }
     
           
     
            return neighbors;
     
        }
     
     
     
        private void knockDownWalls (Cell chosenNeighbor)
     
        {
     
            int theWallToKnockDown = FindAdjacentWall (chosenNeighbor);
     
            currentCell.walls[theWallToKnockDown] = 0;
     
            int oppositeWall = (theWallToKnockDown + 3) % 6;
     
            chosenNeighbor.walls[oppositeWall] = 0;
     
            // Because the computed cells had some of their walls downed, they don't have all walls intact anymore
     
            currentCell.hasAllWalls = false;
     
            chosenNeighbor.hasAllWalls = false;
     
        }
     
     
     
        // returns int as adjacent (side) wall, remember the walls declaration order: { 0 = -x, 1 = -y, 2 = -z, 3 = x, 4 = y, 5 = z }
     
        private int FindAdjacentWall (Cell cell)
     
        {
     
            if (cell.y == currentCell.y && cell.z == currentCell.z) {
     
                if (cell.x < currentCell.x)
     
                    return 0;
     
                else
     
                    return 3;
     
               
     
            } else if (cell.x == currentCell.x && cell.z == currentCell.z) {
     
                if (cell.y < currentCell.y)
     
                    return 1;
     
                else
     
                    return 4;
     
            } else {
     
                if (cell.z < currentCell.z)
     
                    return 2;
     
                else
     
                    return 5;
     
            }
     
        }
     
     
     
        // Loop through the maze and instantiate the correct prefab
     
        private void Build ()
     
        {
     
            for (int i = 0; i < x; i++)
     
                for (int j = 0; j < y; j++)
     
                    for (int k = 0; k < z; k++) {
     
                        ChooseCellPrefab (maze[i, j, k]);
     
                    }
     
        }
     
       
     
        private void ChooseCellPrefab (Cell cell)
     
        {
     
            string wallsOrder = "";
     
            Vector3 pos = new Vector3(cell.x * cellSize, cell.y * cellSize, cell.z * cellSize);
     
           
     
            foreach (int wall in cell.walls) {
     
                wallsOrder += wall;
     
            }
     
           
     
            switch (wallsOrder) {
     
            // Corridor rotation: 0 up and down variations 
     
            case "110110":
     
                Instantiate (corridor, pos, rot_0);
     
                break;
     
            case "110100":
     
                Instantiate (corridorUp, pos, rot_0);
     
                break;
     
            case "100110":
     
                Instantiate (corridorDown, pos, rot_0);
     
                break;
     
            case "100100":
     
                Instantiate (corridorUpDown, pos, rot_0);
     
                break;
     
            case "101101":
     
                Instantiate (corridorVertical, pos, rot_0);
     
                break;
     
           
     
            // Corridor rotation: 90 up and down variations 
     
            case "011011":
     
                Instantiate (corridor, pos, rot_90);
     
                break;
     
            case "011001":
     
                Instantiate (corridorUp, pos, rot_90);
     
                break;
     
            case "001011":
     
                Instantiate (corridorDown, pos, rot_90);
     
                break;
     
            case "001001":
     
                Instantiate (corridorUpDown, pos, rot_90);
     
                break;
     
           
     
            // Corner rotation: 0 up and down variations   
     
            case "110011":
     
                Instantiate (corner, pos, rot_0);
     
                break;
     
            case "110001":
     
                Instantiate (cornerUp, pos, rot_0);
     
                break;
     
            case "100011":
     
                Instantiate (cornerDown, pos, rot_0);
     
                break;
     
            case "100001":
     
                Instantiate (cornerUpDown, pos, rot_0);
     
                break;
     
           
     
            // Corner rotation: 90 up and down variations   
     
            case "010111":
     
                Instantiate (corner, pos, rot_90);
     
                break;
     
            case "010101":
     
                Instantiate (cornerUp, pos, rot_90);
     
                break;
     
            case "000111":
     
                Instantiate (cornerDown, pos, rot_90);
     
                break;
     
            case "000101":
     
                Instantiate (cornerUpDown, pos, rot_90);
     
                break;
     
               
     
            // Corner rotation: 180 up and down variations 
     
            case "011110":
     
                Instantiate (corner, pos, rot_180);
     
                break;
     
            case "011100":
     
                Instantiate (cornerUp, pos, rot_180);
     
                break;
     
            case "001110":
     
                Instantiate (cornerDown, pos, rot_180);
     
                break;
     
            case "001100":
     
                Instantiate (cornerUpDown, pos, rot_180);
     
                break;
     
               
     
            // Corner rotation: 270 up and down variations 
     
            case "111010":
     
                Instantiate (corner, pos, rot_270);
     
                break;
     
            case "111000":
     
                Instantiate (cornerUp, pos, rot_270);
     
                break;
     
            case "101010":
     
                Instantiate (cornerDown, pos, rot_270);
     
                break;
     
            case "101000":
     
                Instantiate (cornerUpDown, pos, rot_270);
     
                break;
     
               
     
            // Deadend rotation: 0 up and down variations   
     
            case "110111":
     
                Instantiate (deadend, pos, rot_0);
     
                break;
     
            case "110101":
     
                Instantiate (deadendUp, pos, rot_0);
     
                break;
     
            case "100111":
     
                Instantiate (deadendDown, pos, rot_0);
     
                break;
     
            case "100101":
     
                Instantiate (deadendUpDown, pos, rot_0);
     
                break;
     
            case "101111":
     
                Instantiate (deadendTop, pos, rot_0);
     
                break;
     
            case "111101":
     
                Instantiate (deadendBottom, pos, rot_0);
     
                break;
     
               
     
            // Deadend rotation: 90 up and down variations 
     
            case "011111":
     
                Instantiate (deadend, pos, rot_90);
     
                break;
     
            case "011101":
     
                Instantiate (deadendUp, pos, rot_90);
     
                break;
     
            case "001111":
     
                Instantiate (deadendDown, pos, rot_90);
     
                break;
     
            case "001101":
     
                Instantiate (deadendUpDown, pos, rot_90);
     
                break;
     
               
     
            // Deadend rotation: 180 up and down variations 
     
            case "111110":
     
                Instantiate (deadend, pos, rot_180);
     
                break;
     
            case "111100":
     
                Instantiate (deadendUp, pos, rot_180);
     
                break;
     
            case "101110":
     
                Instantiate (deadendDown, pos, rot_180);
     
                break;
     
            case "101100":
     
                Instantiate (deadendUpDown, pos, rot_180);
     
                break;         
     
               
     
            // Deadend rotation: 270 up and down variations 
     
            case "111011":
     
                Instantiate (deadend, pos, rot_270);
     
                break;
     
            case "111001":
     
                Instantiate (deadendUp, pos, rot_270);
     
                break;
     
            case "101011":
     
                Instantiate (deadendDown, pos, rot_270);
     
                break; 
     
            case "101001":
     
                Instantiate (deadendUpDown, pos, rot_270);
     
                break;
     
               
     
            // Bifurcation rotation: 0 up and down variations   
     
            case "010011":
     
                Instantiate (bifurcation, pos, rot_0);
     
                break;
     
            case "010001":
     
                Instantiate (bifurcationUp, pos, rot_0);
     
                break;
     
            case "000011":
     
                Instantiate (bifurcationDown, pos, rot_0);
     
                break;
     
            case "000001":
     
                Instantiate (bifurcationUpDown, pos, rot_0);
     
                break;
     
           
     
            // Bifurcation rotation: 90 up and down variations 
     
            case "010110":
     
                Instantiate (bifurcation, pos, rot_90);
     
                break;
     
            case "010100":
     
                Instantiate (bifurcationUp, pos, rot_90);
     
                break;
     
            case "000110":
     
                Instantiate (bifurcationDown, pos, rot_90);
     
                break;
     
            case "000100":
     
                Instantiate (bifurcationUpDown, pos, rot_90);
     
                break;
     
               
     
            // Bifurcation rotation: 180 up and down variations 
     
            case "011010":
     
                Instantiate (bifurcation, pos, rot_180);
     
                break;
     
            case "011000":
     
                Instantiate (bifurcationUp, pos, rot_180);
     
                break;
     
            case "001010":
     
                Instantiate (bifurcationDown, pos, rot_180);
     
                break;
     
            case "001000":
     
                Instantiate (bifurcationUpDown, pos, rot_180);
     
                break;
     
               
     
            // Bifurcation rotation: 270 up and down variations 
     
            case "110010":
     
                Instantiate (bifurcation, pos, rot_270);
     
                break;
     
            case "110000":
     
                Instantiate (bifurcationUp, pos, rot_270);
     
                break;
     
            case "100010":
     
                Instantiate (bifurcationDown, pos, rot_270);
     
                break;
     
            case "100000":
     
                Instantiate (bifurcationUpDown, pos, rot_270);
     
                break;
     
               
     
            // Crossing rotation: 270 up and down variations   
     
            case "010010":
     
                Instantiate (crossing, pos, rot_0);
     
                break;
     
            case "010000":
     
                Instantiate (crossingUp, pos, rot_0);
     
                break;
     
            case "000010":
     
                Instantiate (crossingDown, pos, rot_0);
     
                break;
     
            case "000000":
     
                Instantiate (crossingUpDown, pos, rot_0);
     
                break;
     
           
     
            // Undefined prefab
     
            default:
     
                Instantiate (placebo, pos, rot_0);
     
                break;
     
            }
     
        }
     
     
     
        void Start ()
     
        {
     
            totalCells = x * y * z;
     
            visitedCells = 1;
     
            maze = new Cell[x, y, z];
     
            cellStack = new Stack<Cell> ();
     
           
     
            // Initialize the maze
     
            for (int i = 0; i < x; i++)
     
                for (int j = 0; j < y; j++)
     
                    for (int k = 0; k < z; k++) {
     
                        maze[i, j, k] = new Cell ();
     
                        maze[i, j, k].x = i;
     
                        maze[i, j, k].y = j;
     
                        maze[i, j, k].z = k;
     
                    }
     
           
     
            Generate ();
     
            Build ();
     
           
     
            print (Time.realtimeSinceStartup);
     
        }
     
    }