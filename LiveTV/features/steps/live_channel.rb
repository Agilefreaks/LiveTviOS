Given(/^the app has launched$/) do
  wait_for do
    !query("*").empty?
  end
end

When(/^I tap on a channel cell$/) do
    wait_for_element_exists("* marked:'channelCell_1'")
    touch("* marked:'channelCell_1'")
end

Then(/^hero is playing same channel$/) do
    wait_for_element_exists("* marked:'heroChannelPlayerIdentifier'")
    valueCell = query("collectionViewCell")[1]["value"]
    valueHero =  query("* marked:'heroChannelPlayerIdentifier'")[0]["value"]
    
    expect(valueCell).to eq valueHero
end

