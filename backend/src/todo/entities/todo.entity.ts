import { BeforeInsert, BeforeUpdate, Column, Entity } from "typeorm";
import {v4 as uuid} from "uuid"

@Entity()
export class Todo{
    @Column({nullable: false, unique: true, length: 50})
    id: string

    @Column({length: 120, nullable: false})
    title: String

    @Column({length: 500, nullable: true })
    description: String

    @Column({length: 16, nullable: false, default: "NONSTARTED"})
    itemstate: String

    @Column({type: "datetime", default: new Date()})
    creationDate: Date

    @Column({type: "datetime", default: new Date()})
    lastUpdate: Date

    @BeforeInsert()
    onInit(){
        // Place a new UUID for our object
        this.id = uuid()
    }

    @BeforeUpdate()
    onItemUpdate(){
        this.lastUpdate = new Date()
    }
}