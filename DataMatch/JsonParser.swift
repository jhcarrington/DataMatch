//
//  JsonParser.swift
//  DataMatch
//
//  Created by Jason Carrington on 1/9/19.
//  Copyright © 2019 Frank Kulaszewicz. All rights reserved.
//

import Foundation


//struct for the outer part of the JSON file
struct ToParse:Codable {
    let success: Bool//stores the success portion
    let survey:[Survey]//stores an array of Survey struct objects, which each contain seperate survey question info
    
    private enum CodingKeys:String, CodingKey {//enum of type String that looks for success and survey and decides if more decoding is necessary for survey, which it does
        case success = "success", survey = "survey"
    }
}
//struct for the info stored inside of each survey question
struct Survey:Codable {
    let qid: Int
    let question: String
    let responses: [String]
    let previous_answer: Int
    
    private enum CodingKeys:String, CodingKey{ //finds each value and decides if more decoding is necessary, which it does not
        case qid = "qid", question = "question", responses = "responses", previous_answer = "previous_answer"
        
    }
}

var parsed: ToParse?//field that stores the parsed information
let todoEndpoint: String = "https://datamatch-master.herokuapp.com/questions2"


func parse() -> ToParse?{
    //creates a url using the specific location
    guard let url = URL(string: todoEndpoint) else {
        print("Error: cannot create URL")
        return nil
    }

    
    do {
        let data = try Data(contentsOf: url) //stores the data from the url
        //creates a decoder to work through the different types of objects in each nested JSONObject, all helper structs are at the top
        parsed = try JSONDecoder.init().decode(ToParse.self, from: data)
        return parsed
    } catch {
        print("Error parsing Json file")
        return nil
    }
}

func ToJson() {
    //creates a url using the specific location
    guard let url = URL(string: todoEndpoint) else {
        print("Error: cannot create URL")
        return
    }

    let encoder = JSONEncoder()
    encoder.outputFormatting = .prettyPrinted
    
    do {
        let data = try encoder.encode(parsed)//stores the created Json file
        print(String(data: data, encoding: .utf8)!)//test code
        
        //**does not link to the correct url**
        let file = try FileHandle.init(forWritingTo: url)
        file.write(data)
    }catch{
        print("Error updating json file")
    }
}
