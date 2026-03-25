// Define the status options
export enum ItemStatus {
    NotStarted = "Not Started",
    InProgress = "In Progress",
    Completed = "Archived" // Matching your Swift mapping
}

// Define the Todo interface
export interface TodoItem {
    id: string;
    title: string;
    desc?: string; // Optional property
    itemStatus: ItemStatus;
    creationDate: Date;
    lastUpdate: Date;
}

// Mock Data
export const mockData: TodoItem[] = [
    {
        id: "1",
        title: "Buy Groceries",
        desc: "Need milk, eggs, and flour for the weekend cake.",
        itemStatus: ItemStatus.Completed,
        creationDate: new Date(),
        lastUpdate: new Date()
    },
    {
        id: "2",
        title: "Finish Project Proposal",
        desc: "Complete the budget section and send to the manager.",
        itemStatus: ItemStatus.InProgress,
        creationDate: new Date(),
        lastUpdate: new Date()
    },
    {
        id: "3",
        title: "Call Mom",
        itemStatus: ItemStatus.NotStarted,
        creationDate: new Date(),
        lastUpdate: new Date()
    },
    {
        id: "4",
        title: "Gym Session",
        desc: "Leg day! Don't skip the squats.",
        itemStatus: ItemStatus.NotStarted,
        creationDate: new Date(),
        lastUpdate: new Date()
    },
    {
        id: "5",
        title: "Fix Sink",
        desc: "The kitchen faucet is leaking again.",
        itemStatus: ItemStatus.InProgress,
        creationDate: new Date(),
        lastUpdate: new Date()
    }
];