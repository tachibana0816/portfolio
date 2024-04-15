def p_select

    font = Font.new(30)

    #三匹の画像表示
    image1 = Image.load('./image/charactor.png')
    image2 = Image.load('./image/charactor2.png')
    image3 = Image.load('./image/charactor3.png')

    backgroundImage = Image.load('./image/background.png')
    font = Font.new(30, font_name="HGP創英角ｺﾞｼｯｸUB")
    chara_type=nil
    Window.loop do
        Window.draw_font(300,150, "プレイするキャラクターを選んでね", font, {:color => [113,75,52],:z => 120})
        Window.draw_scale(0, 0, backgroundImage, 1, 0.59, 0, 0)
        Window.draw_scale(60, 180, image1,0.5,0.5)
        Window.draw_scale(300, 190, image2,0.5,0.5)
        Window.draw_scale(550, 210, image3,0.5,0.5)

        #ユーザーからの入力
        #左クリックが離された瞬間を判定
        if Input.mouse_push?(M_LBUTTON)
            m_x=Input.mouse_x
            m_y=Input.mouse_y

            #image1のある範囲であればキャラクターに決定
            if 60<=m_x && 60+image1.width>=m_x && 180<=m_y && 180+image1.height>=m_y
                chara_type=1
            elsif 300<=m_x && 300+image2.width>=m_x && 190<=m_y && 190+image2.height>=m_y
                chara_type=2
            elsif 550<=m_x && 550+image3.width>=m_x && 210<=m_y && 210+image3.height>=m_y
                chara_type=3
            end
            return chara_type if chara_type
        end
    end
end