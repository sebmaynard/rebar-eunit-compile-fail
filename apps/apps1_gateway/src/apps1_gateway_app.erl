-module(apps1_gateway_app).

-behaviour(application).

%% Application callbacks
-export([start/2, stop/1]).

-include_lib("apps1_gateway/include/apps1_gateway.hrl").

%% ===================================================================
%% Application callbacks
%% ===================================================================

start(_StartType, _StartArgs) ->
    apps1_gateway_sup:start_link().

stop(_State) ->
    ok.
