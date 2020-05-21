describe 'File upload', :upload do
    
    before(:each) do
        
        visit '/upload'
        @filePath = Dir.pwd + '/spec/fixtures/file.txt'
        @imgPath = Dir.pwd + '/spec/fixtures/star_8bit.jpg'

    end


    it 'Testing text file upload' do
        puts @filePath
        attach_file('file-upload', @filePath)

        click_button 'Upload'

        fileDiv = find('#uploaded-file')
        expect(fileDiv.text).to eql 'file.txt'
    end

    it 'Testing image file upload' do
        attach_file('file-upload', @imgPath)
        click_button 'Upload'
        img = find('#new-image')
        #Since find('#new-image') returns basically the element, we can access its html attributes
        expect(img[:src]).to include 'star_8bit.jpg'
    end

    after(:each) do
        sleep 3
    end
end