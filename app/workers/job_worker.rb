class JobWorker
  include Sidekiq::Worker
  def perform(complexity)
    case complexity
    when 'easy'
      sleep 1
      puts 'That was easy'
    when 'hard'
      sleep 5
      puts 'That was quite a job'
    end
  end
end
