import React from 'react'

const BannerServicios = ({ onClick }: { onClick?: () => void }) => {
  return (
    <section className="w-full bg-white cursor-pointer" onClick={onClick}>
      <video
        src="/img/BannerProsuministros03.mp4"
        autoPlay
        loop
        muted
        playsInline
        className="w-full h-auto object-cover"
        style={{ display: 'block' }}
      />
    </section>
  )
}

export default BannerServicios ;