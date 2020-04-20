class EventListOrganization < ApplicationRecord
  belongs_to :organization_id
  belongs_to :event_id
end
