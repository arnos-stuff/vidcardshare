@import url({{ font_url }});
* {
  box-sizing: border-box;
}

body {
  color: #2b2c48;
  font-family: "Jost", sans-serif;
  background-image: url({{ background_image }});

  background-repeat: no-repeat;
  background-size: cover;
  background-position: center;
  background-attachment: fixed;
  min-height: 100vh;
  display: flex;
  flex-wrap: wrap;
  padding: 20px;
}

.card {
  max-width: 800px;
  margin: auto;
  overflow-y: auto;
  position: relative;
  z-index: 1;
  overflow-x: hidden;
  background-color: white;
  display: flex;
  transition: 0.3s;
  flex-direction: column;
  border-radius: 10px;
  box-shadow: 0 0 0 8px rgba(255, 255, 255, 0.2);
}

.card[data-state="#about"] {
  height: 450px;
}
.card[data-state="#about"] .card-main {
  padding-top: 0;
}

.card[data-state="#contact"] {
  height: 430px;
}

.card[data-state="#experience"] {
  height: 550px;
}

.card.is-active .card-header {
  height: 80px;
}
.card.is-active .card-cover {
  height: 100px;
  top: -50px;
}
.card.is-active .card-avatar {
  transform: none;
  left: 20px;
  width: 50px;
  height: 50px;
  bottom: 10px;
}
.card.is-active .card-fullname,
.card.is-active .card-jobtitle {
  left: 86px;
  transform: none;
}
.card.is-active .card-fullname {
  bottom: 18px;
  font-size: 19px;
}
.card.is-active .card-jobtitle {
  bottom: 16px;
  letter-spacing: 1px;
  font-size: 10px;
}

.card-header {
  position: relative;
  display: flex;
  height: 200px;
  flex-shrink: 0;
  width: 100%;
  transition: 0.3s;
}
.card-header * {
  transition: 0.3s;
}

.card-cover {
  width: 100%;
  height: 100%;
  position: absolute;
  height: 160px;
  top: -20%;
  left: 0;
  will-change: top;
  background-size: cover;
  background-position: center;
  filter: blur(30px);
  transform: scale(1.2);
  transition: 0.5s;
}

.card-avatar {
  width: 100px;
  height: 100px;
  box-shadow: 0 8px 8px rgba(0, 0, 0, 0.2);
  border-radius: 50%;
  -o-object-position: center;
     object-position: center;
  -o-object-fit: cover;
     object-fit: cover;
  position: absolute;
  bottom: 0;
  left: 50%;
  transform: translateX(-50%) translateY(-64px);
}

.card-fullname {
  position: absolute;
  bottom: 0;
  font-size: 22px;
  font-weight: 700;
  text-align: center;
  white-space: nowrap;
  transform: translateY(-10px) translateX(-50%);
  left: 50%;
}

.card-jobtitle {
  position: absolute;
  bottom: 0;
  font-size: 11px;
  white-space: nowrap;
  font-weight: 500;
  opacity: 0.7;
  text-transform: uppercase;
  letter-spacing: 1.5px;
  margin: 0;
  left: 50%;
  transform: translateX(-50%) translateY(-7px);
}

.card-main {
  position: relative;
  flex: 1;
  display: flex;
  padding-top: 10px;
  flex-direction: column;
}

.card-subtitle {
  font-weight: 700;
  font-size: 13px;
  margin-bottom: 8px;
}

.card-content {
  padding: 20px;
}

.card-desc {
  line-height: 1.6;
  color: #636b6f;
  font-size: 14px;
  margin: 0;
  font-weight: 400;
  font-family: "DM Sans", sans-serif;
}

.card-social {
  display: flex;
  align-items: center;
  padding: 0 20px;
  margin-bottom: 30px;
}
.card-social svg {
  fill: #a5b5ce;
  width: 16px;
  display: block;
  transition: 0.3s;
}
.card-social a {
  color: #8797a1;
  height: 32px;
  width: 32px;
  border-radius: 50%;
  display: inline-flex;
  align-items: center;
  justify-content: center;
  transition: 0.3s;
  background-color: rgba(93, 133, 193, 0.05);
  border-radius: 50%;
  margin-right: 10px;
}
.card-social a:hover svg {
  fill: #637faa;
}
.card-social a:last-child {
  margin-right: 0;
}

.card-buttons {
  display: flex;
  background-color: #fff;
  margin-top: auto;
  position: sticky;
  bottom: 0;
  left: 0;
}
.card-buttons button {
  flex: 1 1 auto;
  -webkit-user-select: none;
     -moz-user-select: none;
      -ms-user-select: none;
          user-select: none;
  background: 0;
  font-size: 13px;
  border: 0;
  padding: 15px 5px;
  cursor: pointer;
  color: #5c5c6d;
  transition: 0.3s;
  font-family: "Jost", sans-serif;
  font-weight: 500;
  outline: 0;
  border-bottom: 3px solid transparent;
}
.card-buttons button.is-active, .card-buttons button:hover {
  color: #2b2c48;
  border-bottom: 3px solid #8a84ff;
  background: linear-gradient(to bottom, rgba(127, 199, 231, 0) 0%, rgba(207, 204, 255, 0.2) 44%, rgba(211, 226, 255, 0.4) 100%);
}

.card-section {
  display: none;
}
.card-section.is-active {
  display: block;
  -webkit-animation: fadeIn 0.6s both;
          animation: fadeIn 0.6s both;
}

@-webkit-keyframes fadeIn {
  0% {
    opacity: 0;
    transform: translatey(40px);
  }
  100% {
    opacity: 1;
  }
}

@keyframes fadeIn {
  0% {
    opacity: 0;
    transform: translatey(40px);
  }
  100% {
    opacity: 1;
  }
}
.card-timeline {
  margin-top: 30px;
  position: relative;
}
.card-timeline:after {
  background: linear-gradient(to top, rgba(134, 214, 243, 0) 0%, #516acc 100%);
  content: "";
  left: 42px;
  width: 2px;
  top: 0;
  height: 100%;
  position: absolute;
  content: "";
}

.card-item {
  position: relative;
  padding-left: 60px;
  padding-right: 20px;
  padding-bottom: 30px;
  z-index: 1;
}
.card-item:last-child {
  padding-bottom: 5px;
}
.card-item:after {
  content: attr(data-year);
  width: 10px;
  position: absolute;
  top: 0;
  left: 37px;
  width: 8px;
  height: 8px;
  line-height: 0.6;
  border: 2px solid #fff;
  font-size: 11px;
  text-indent: -35px;
  border-radius: 50%;
  color: rgba(134, 134, 134, 0.7);
  background: linear-gradient(to bottom, #a0aee3 0%, #516acc 100%);
}

.card-item-title {
  font-weight: 500;
  font-size: 14px;
  margin-bottom: 5px;
}

.card-item-desc {
  font-size: 13px;
  color: #6f6f7b;
  line-height: 1.5;
  font-family: "DM Sans", sans-serif;
}

.card-contact-wrapper {
  margin-top: 20px;
}

.card-contact {
  display: flex;
  align-items: center;
  font-size: 13px;
  color: #6f6f7b;
  font-family: "DM Sans", sans-serif;
  line-height: 1.6;
  cursor: pointer;
}
.card-contact + .card-contact {
  margin-top: 16px;
}
.card-contact svg {
  flex-shrink: 0;
  width: 30px;
  min-height: 34px;
  margin-right: 12px;
  transition: 0.3s;
  padding-right: 12px;
  border-right: 1px solid #dfe2ec;
}

.contact-me {
  border: 0;
  outline: none;
  background: linear-gradient(to right, rgba(83, 200, 239, 0.8) 0%, rgba(81, 106, 204, 0.8) 96%);
  box-shadow: 0 4px 6px rgba(0, 0, 0, 0.15);
  color: #fff;
  padding: 12px 16px;
  width: 100%;
  border-radius: 5px;
  margin-top: 25px;
  cursor: pointer;
  font-size: 14px;
  font-weight: 500;
  font-family: "Jost", sans-serif;
  transition: 0.3s;
}