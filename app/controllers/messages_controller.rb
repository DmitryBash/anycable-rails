class MessagesController < ApplicationController
  def create
    @channels = Channel.all.order(name: :asc)
    @current_channel = Channel.find(params[:channel_id])

    current_channel.messages.create(message_params.merge(author: "Dmitrii"))

    render partial: "messages/form", locals: {channel: current_channel}
  end

  private

  def message_params
    params.require(:message).permit(:content)
  end
end
