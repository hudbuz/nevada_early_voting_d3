class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  require 'csv'
  require 'json'


  def index

  end

  def voters
    voter_data = {}
    voter_data['totalEarly'] = Voter.all.count
    voter_data['totalDems'] = Voter.all.where(party_abbr: 'DEM').count
    voter_data['totalReps'] = Voter.all.where(party_abbr: 'REP').count
    render json: voter_data
  end

  def upload_voters


CSV.open('/Users/hudsonbuzby/Development/code/projects/nevada_early_voting_d3/db/early_voters.csv',headers: :true).each do |voter|


      Voter.create(id: voter['IDNUMBER'], name: voter['NAME'], senate: voter['SENATE'], precinct: voter['PRECINCT'], party: voter['PARTY'], party_abbr: voter['PARTY_ABBR'], city: voter['CITY'], ev_site: voter['EV_SITE'], activity_date: voter['ACTIVITY_DATE'])
      
    end
    voter_data = {}
    voter_data['totalEarly'] = Voter.all.count
    voter_data['totalDems'] = Voter.all.where(party_abbr: 'DEM').count
    voter_data['totalReps'] = Voter.all.where(party_abbr: 'REP').count
    render json: voter_data
  end
end
