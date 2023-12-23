"use client";

import axios from 'axios'
import React, { useState, useEffect } from 'react'

const GetMyDamnRequest = () => {
  const [store, setStore] = useState("")
  const [loading, setLoading] = useState(true)

  useEffect(() => {
    request()
  })

  const request = async () => {
    try {
      const request = await axios.get('http://10.2.2.202')
      setStore(request.data.message)
      setLoading(false)
    } catch (error) {
      console.log(error)
    }
  }

  return (
    <div><p>{loading ? "Loading...." : store + "\nCommunicated successfully with backend :)"}</p></div>
  )
}

export default GetMyDamnRequest