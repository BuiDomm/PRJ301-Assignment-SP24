window.addEventListener('load', function () {
    const listSlider = document.querySelector('.quotes--list');
    const mainSlider = document.querySelector('.quotes--main');
    const slider = document.querySelector('.quotes--item');
    const dots = document.querySelectorAll('.quotes--dots-item')
    const coupleItems = document.querySelectorAll('.quotes--couple')
    console.log([listSlider, mainSlider, slider, dots, coupleItems])
    let positionX = 0;
    const widthOfCouple = coupleItems[0].offsetWidth;
    const dotsArray = [...dots];

    let positionCheck = widthOfCouple * coupleItems.length;
    let index = 1;
    console.log(positionCheck);
    function handleChangeSlide() {
        positionX = positionX - widthOfCouple;
        console.log(positionX);
        if (-positionCheck >= positionX) {
            positionX = 0;
        }

    }

    function handleAutoChangeSlide() {
        setInterval(() => {
            handleChangeSlide();
            index++;
            if (index > 3) index = 1;
            console.log(index)
            mainSlider.style = `transform: translateX(${positionX}px)`;
            const checkActive = document.querySelector('.quotes--dots-item.active');
            if (checkActive) {
                checkActive.classList.remove('active');
            }
            dotsArray[index - 1].classList.add('active')
        }, 8000)
    }
    dotsArray.forEach((dot) => {
        dot.addEventListener('click', function (e) {
            const dotIndex = parseInt(e.target.dataset.index)
            const checkActive = document.querySelector('.quotes--dots-item.active');
            if (checkActive) {
                checkActive.classList.remove('active');
            }

            this.classList.add('active')
            mainSlider.style = `transform: translateX(${-1 * (dotIndex - 1) * widthOfCouple}px)`;


        })
    })

    handleAutoChangeSlide();


})