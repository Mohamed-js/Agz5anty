# frozen_string_literal: true

class OrdersChannel < ApplicationCable::Channel
  def subscribed
    stream_from "orders_channel_#{params[:pharmacy]}"
  end

  def unsubscribed; end
end
