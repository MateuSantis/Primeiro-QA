class HomePage < SitePrism::Page
    element :userName, :xpath, "//span[contains(@id, 'R1d9laik')]"
    element :navBarHome, :xpath, "//div[contains(@id, 'mount_0_0')]/div/div[1]/div/div[3]//div[1]"
    element :myIcon, :xpath, "//div[contains(@id, 'mount_0_0')]/div/div[1]/div//svg/g/image"
    
    def checkLoginSuccessful
        expect(userName.tex).to eql "Olá, Teste!"
        expect(navBarHome.text).to eql "Início"
        expect(myIcon.text).to eql "Eu"
    end


end