defmodule LiveViewStudioWeb.Live.LightLive do
  use LiveViewStudioWeb, :live_view

  def mount(_params, _session, socket) do
    {:ok, assign(socket, light: "off")}
  end

  def render(assigns) do
    ~H"""
    <h1>Front Porch Light</h1>
    <div id="light">
      <div class="meter">
        <span>
          <%=  %>
        </span>
      </div>
    </div>
    """


  def handle_event("toggle", _, socket) do
    {:noreply, assign(socket, light: if socket.assigns.light == "on", do: "off", else: "on")}
  end
end
