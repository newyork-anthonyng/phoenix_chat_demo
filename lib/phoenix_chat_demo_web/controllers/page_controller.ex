defmodule PhoenixChatDemoWeb.PageController do
  use PhoenixChatDemoWeb, :controller

  alias PhoenixChatDemo.Chats

  def index(conn, _params) do
    messages = Chats.list_messages

    render(conn, "index.html", messages: messages)
  end
end
