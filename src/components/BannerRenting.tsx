import React from 'react'

type BannerRentingProps = {
  onClick?: () => void;
};

const BannerRenting: React.FC<BannerRentingProps> = ({ onClick }) => {
  return (
    <section className="w-full bg-white cursor-pointer" onClick={onClick}>
      <video
        src="/img/BannerProsuministros02.mp4"
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

export default BannerRenting ;