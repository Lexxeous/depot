class OrderMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.order_mailer.received.subject
  #
  def received(order)
    @greeting = "Hi"
    @order = order
    mail to: order.email, subject: 'Your Pragmatic Store Order Confirmation!'
  end

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.order_mailer.shipped.subject
  #
  def shipped(order)
    @greeting = "Hi"
    @order = order
    mail to: order.emil, subject: "Your Pragmatic Store Order Shipped!"
  end
end
