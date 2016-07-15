require 'test_helper'

class ProposalRequestsControllerTest < ActionController::TestCase
  setup do
    @proposal_request = proposal_requests(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:proposal_requests)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create proposal_request" do
    assert_difference('ProposalRequest.count') do
      post :create, proposal_request: { acceptable_proposal_formats: @proposal_request.acceptable_proposal_formats, age_group: @proposal_request.age_group, basic_description: @proposal_request.basic_description, budget: @proposal_request.budget, campaign_name: @proposal_request.campaign_name, client: @proposal_request.client, client_name: @proposal_request.client_name, creative_ad_units: @proposal_request.creative_ad_units, day_parting: @proposal_request.day_parting, day_parting_description: @proposal_request.day_parting_description, decision_made_by: @proposal_request.decision_made_by, devices: @proposal_request.devices, devices_description: @proposal_request.devices_description, flight_date_end: @proposal_request.flight_date_end, flight_date_start: @proposal_request.flight_date_start, gender: @proposal_request.gender, geography: @proposal_request.geography, goals_and_objectives: @proposal_request.goals_and_objectives, household_income: @proposal_request.household_income, insertion_order_terms: @proposal_request.insertion_order_terms, interests: @proposal_request.interests, proposal_due_date: @proposal_request.proposal_due_date, selection_criteria: @proposal_request.selection_criteria, specifications: @proposal_request.specifications, staggered: @proposal_request.staggered, submission_instructions: @proposal_request.submission_instructions, success_metrics: @proposal_request.success_metrics, targeting: @proposal_request.targeting }
    end

    assert_redirected_to proposal_request_path(assigns(:proposal_request))
  end

  test "should show proposal_request" do
    get :show, id: @proposal_request
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @proposal_request
    assert_response :success
  end

  test "should update proposal_request" do
    patch :update, id: @proposal_request, proposal_request: { acceptable_proposal_formats: @proposal_request.acceptable_proposal_formats, age_group: @proposal_request.age_group, basic_description: @proposal_request.basic_description, budget: @proposal_request.budget, campaign_name: @proposal_request.campaign_name, client: @proposal_request.client, client_name: @proposal_request.client_name, creative_ad_units: @proposal_request.creative_ad_units, day_parting: @proposal_request.day_parting, day_parting_description: @proposal_request.day_parting_description, decision_made_by: @proposal_request.decision_made_by, devices: @proposal_request.devices, devices_description: @proposal_request.devices_description, flight_date_end: @proposal_request.flight_date_end, flight_date_start: @proposal_request.flight_date_start, gender: @proposal_request.gender, geography: @proposal_request.geography, goals_and_objectives: @proposal_request.goals_and_objectives, household_income: @proposal_request.household_income, insertion_order_terms: @proposal_request.insertion_order_terms, interests: @proposal_request.interests, proposal_due_date: @proposal_request.proposal_due_date, selection_criteria: @proposal_request.selection_criteria, specifications: @proposal_request.specifications, staggered: @proposal_request.staggered, submission_instructions: @proposal_request.submission_instructions, success_metrics: @proposal_request.success_metrics, targeting: @proposal_request.targeting }
    assert_redirected_to proposal_request_path(assigns(:proposal_request))
  end

  test "should destroy proposal_request" do
    assert_difference('ProposalRequest.count', -1) do
      delete :destroy, id: @proposal_request
    end

    assert_redirected_to proposal_requests_path
  end
end
