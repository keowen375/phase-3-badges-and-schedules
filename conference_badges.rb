# Write your code here.
require "pry"


def badge_maker (namer)
    x = "Hello, my name is #{namer}."
        
    return x

end


def batch_badge_creator (member_names)

    group_badges = member_names.map do |member|
        
    badge_maker(member)

    end

    group_badges

end



def assign_rooms (speakers)
    room = []
    speakers.each.with_index do |speaker, index |
       room.push("Hello, #{speaker}! You'll be assigned to room #{index + 1}!")
    end

    room
end



def printer (member_names)

    members = batch_badge_creator(member_names)
    members.map { |member| puts member }

    x = assign_rooms(member_names)
    x.map { |room| puts room }

end


printer(["Arel", "Carol"])