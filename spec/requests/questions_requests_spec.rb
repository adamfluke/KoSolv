# require 'rails_helper'

# RSpec.describe QuestionsController, type: :request do

#   before(:each){
#     Question.create prompt: "Prompt", category: 'Cat'
#   }

#   describe "GET #index" do
#     it "returns http success" do
#       get "/questions", { format: :json }
#       expect(response.status).to eq 200
#     end
#     # it "returns a json object that is an array of questions" do
#     #   get "/questions", { format: :json }
#     #   expect(JSON.parse(response.body)).to eq([{prompt: "Prompt", category: "Cat"}])
#     # end
#   end

#   # describe "GET #show" do
#   #   it "returns http success" do
#   #     fake_question = double :question
#   #     expect(Question).to receive(:find).with('1').and_return(fake_question)
#   #     get :show, id: 1
#   #     expect(response).to have_http_status(:success)
#   #   end
#   # end

#   # describe "GET #create" do
#   #   it "returns http success" do
#   #     expect(Question).to receive :create
#   #     get :create, prompt: "Prompt", category: 'Cat'
#   #     expect(response).to have_http_status(:success)
#   #   end
#   # end

#   # describe "GET #update" do
#   #   it "returns http success" do
#   #     fake_question = double :question
#   #     expect(Question).to receive(:find).with('1').and_return(fake_question)
#   #     expect(fake_question).to receive :update
#   #     get :update, id: 1
#   #     expect(response).to have_http_status(:success)
#   #   end
#   # end

#   # describe "GET #destroy" do
#   #   it "returns http success" do
#   #     fake_question = double :question
#   #     expect(Question).to receive(:find).with('1').and_return(fake_question)
#   #     expect(fake_question).to receive(:destroy)
#   #     get :destroy, id: 1
#   #     expect(response).to have_http_status(:success)
#   #   end
#   # end

# end
