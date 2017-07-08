class Api::V1::SearchesController < ApplicationController

  def index

  end

  def show
    word = params["id"]

    url = URI("http://api.giphy.com/v1/gifs/search?q=#{word}&api_key=something")
    http = Net::HTTP.new(url.host, url.port)
    request = Net::HTTP::Get.new(url)
    request["authorization"] = 'Token 2f9a56d5e1bbd1c3e695e8291949b11b5aa23b66'
    request["cache-control"] = 'no-cache'
    request["postman-token"] = '62b2aed9-28a7-06ba-9378-38cfb71f2cc9'
    response = http.request(request)


    ids_array = JSON.parse(response.read_body)["data"].map{|hsh| hsh["id"]}

    if ids_array.length < 1
      ids_array = [
            "3ohzdYt5HYinIx13ji",
            "26FPKsfr1V9Yw4eru",
            "xTiTnIc6PO7tUWcq6A",
            "oe33xf3B50fsc",
            "VpmPTHI4ZwTm0",
            "FLo2RkzqiukkE",
            "QGzPdYCcBbbZm",
            "QzqXexkCcb0Zi",
            "3oGRFlFN8w1ARq97ji",
            "djeEV9ttVKWKfvLCw3C",
            "3ohze1eJu9ir7isDOE",
            "3oKIPpHDWIuw3BIoW4",
            "PvyOQKzATkEdG",
            "cRwkBGqJaQunm",
            "13mHK22oGcYsJa",
            "xT1XGyUR9PSfwfUeAw",
            "xT1XGUVLI4qcZl8LZe",
            "xUA7b2S7SxhM1cGdsQ",
            "l4FGAPIreAB99uMLu",
            "3o6Zt05B3aZGi6pLVu",
            "AEsUINFBsRVN6",
            "qgkv7fBPGLOb6",
            "RpIXT68Tc2FPO",
            "y2x1uWlpyOioU",
            "1qm2GETIhzRAY"
          ]
    end
    render json: ids_array
  end






end
