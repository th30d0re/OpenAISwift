//
//  OpenAIModelType.swift
//  
//
//  Created by Yash Shah on 06/12/2022.
//

import Foundation

/// The type of model used to generate the output
public enum OpenAIModelType {
    /// ``GPT3`` Family of Models
    case gpt3(GPT3)
    
    /// ``GPT3.5`` Family of Models
    case gpt3_5(GPT3_5)
    
    /// ``Codex`` Family of Models
    case codex(Codex)
    
    /// ``Feature`` Family of Models
    case feature(Feature)
    
    /// ``Chat`` Family of Models
    case chat(Chat)
    
    /// ``GPT4`` Family of Models
    case gpt4(GPT4)
    
    /// ``Embedding`` Family of Models
    case embedding(Embedding)
    
    /// ``Moderation`` Family of Models
    case moderation(Moderation)
    
    /// Other Custom Models
    case other(String)
    
    public var modelName: String {
        switch self {
        case .gpt4(let model): return model.rawValue
        case .gpt3(let model): return model.rawValue
        case .gpt3_5(let model): return model.rawValue
        case .codex(let model): return model.rawValue
        case .feature(let model): return model.rawValue
        case .chat(let model): return model.rawValue
        case .embedding(let model): return model.rawValue
        case .moderation(let model): return model.rawValue
        case .other(let modelName): return modelName
        }
    }
    
    /// A set of models that can understand and generate natural language
    ///
    /// [GPT-Base Models OpenAI API Docs](https://platform.openai.com/docs/models/gpt-base)
    public enum GPT3_Base: String {
        
        /// Replacement for the GPT-3 ada and babbage base models. 16,384 tokens
        ///
        /// > Model Name: babbage-002
        case babbage = "babbage-002"
        
        /// Replacement for the GPT-3 curie and davinci base models. 16,384 tokens
        ///
        /// > Model Name: davinci-002
        case curie = "davinci-002"
        
    }
    
    /// A set of models that can understand and generate natural language
    ///
    /// [GPT-3.5 Models OpenAI API Docs](https://beta.openai.com/docs/models/gpt-3.5)
    public enum GPT3_5: String {
        
        /// Can do any language task with better quality, longer output, and consistent instruction-following than the curie, babbage, or ada models. Also supports inserting completions within text.
        /// Max Tokens: 4,097 tokens
        /// Training Data: Up to Jun 2021
        /// > Model Name: gpt-3.5-turbo-instruct
        case gpt-3.5-turbo = "gpt-3.5-turbo-instruct"
    }
    
    
    
    /// A set of models that are feature specific.
    ///
    ///  For example using the Edits endpoint requires a specific data model
    ///
    ///  You can read the [API Docs](https://beta.openai.com/docs/guides/completion/editing-text)
    public enum Feature: String {
        
        /// > Model Name: text-davinci-edit-001
        case davinci = "text-davinci-edit-001"
    }
    
    /// A set of models for the new chat completions
    ///  You can read the [API Docs](https://platform.openai.com/docs/api-reference/chat/create)
    public enum Chat: String {
        
        /// Most capable GPT-3.5 model and optimized for chat at 1/10th the cost of text-davinci-003. Will be updated with our latest model iteration.
        /// > Model Name: gpt-3.5-turbo
        case chatgpt = "gpt-3.5-turbo"
        
        /// Snapshot of gpt-3.5-turbo from March 1st 2023. Unlike gpt-3.5-turbo, this model will not receive updates, and will only be supported for a three month period ending on June 1st 2023.
        /// > Model Name: gpt-3.5-turbo-0301
        case chatgpt1106 = "gpt-3.5-turbo-1106"
        
        /// More capable than any GPT-3.5 model, able to do more complex tasks, and optimized for chat. Will be updated with our latest model iteration.
        /// Max Tokens: 8,192 tokens
        /// Training Data: Up to Sep 2021
        case chatgpt4 = "gpt-4"
        
        /// Same capabilities as the base gpt-4 mode but with 4x the context length. Will be updated with our latest model iteration.
        /// Max Tokens: 32,768 tokens
        /// Training Data: Up to Sep 2021
        case chatgpt432k = "gpt-4-32k"
        
    }
    
    /// A set of models for the new GPT4 completions
    ///  Please note that you need to request access first - waitlist: https://openai.com/waitlist/gpt-4-api
    ///  You can read the [API Docs](https://platform.openai.com/docs/api-reference/chat/create)
    public enum GPT4: String {
        
        /// More capable than any GPT-3.5 model, able to do more complex tasks, and optimized for chat. Will be updated with our latest model iteration.
        /// > Model Name: gpt-4
        case gpt4 = "gpt-4"
        
        /// The latest GPT-4 model with improved instruction following, JSON mode, reproducible outputs, parallel function calling, and more. Returns a maximum of 4,096 output tokens. This preview model is not yet suited for production traffic
        /// > Model Name: gpt-4-1106-preview 
        case gpt-4-1106-preview = "gpt-4-1106-preview"
        
        /// Currently points to gpt-4-32k-0613
        /// > Model Name: gpt-4-32k
        case gpt4_32k = "gpt-4-32k"
        
        /// Snapshot of gpt-4-32k from June 13th 2023 with improved function calling support.
        /// > Model Name: gpt-4-32k
        case ggpt-4-32k-0613 = "gpt-4-32k-0613"
    }
    
    
    /// A set of models for the embedding
    /// You can read the [API Docs](https://platform.openai.com/docs/api-reference/embeddings)
    public enum Embedding: String {
        
        /// The new model, text-embedding-ada-002, replaces five separate models for text search, text similarity, and code search, and outperforms previous most capable model, Davinci, at most tasks, while being priced 99.8% lower.
        ///
        /// > Model Name: text-embedding-ada-002
        case ada = "text-embedding-ada-002"
    }
    
    /// A set of models for the moderations endpoint
    /// You can read the [API Docs](https://platform.openai.com/docs/api-reference/moderations)
    public enum Moderation: String {
        /// Default. Automatically upgraded over time.
        case latest = "text-moderation-latest"
        
        /// OpenAI will provide advanced notice before updating this model.
        /// Accuracy  may be slightly lower than for text-moderation-latest.
        case stable = "text-moderation-stable"
    }
}
