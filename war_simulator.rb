require 'yaml'
class WarSimulator

  war_data = YAML.load_file('data/war.yml')


  for w in (1..war_data.length)
    number_of_warriors = war_data['wave'+w.to_s]["number_of_warriors"]
    defender = war_data['wave'+w.to_s]["defender_power"].split(',').map(&:to_i)
    attaker = war_data['wave'+w.to_s]["attaker_power"].split(',').map(&:to_i)

    for i in (0..number_of_warriors-1)
      if defender[i] >= attaker[i]
        defender[i] = defender[i]-attaker[i];
        attaker[i]=0;
      else
        attaker[i] = attaker[i]-defender[i];
        defender[i]=0;
      end
    end
    final_defender=0
    final_attaker=0
    for i in (0..number_of_warriors-1)
      final_defender = final_defender + defender[i]
      final_attaker = final_attaker + attaker[i]
    end

    if final_defender > final_attaker
      p ("Wave"+w.to_s+": Defender Won")
    elsif final_defender < final_attaker
      p ("Wave"+w.to_s+": Attaker Won")
    else
      p "Wave"+w.to_s+": Its Tie"
    end

  end

end