require 'rails_helper'
RSpec.describe Diary, type: :model do
  before do
    @diary = FactoryBot.build(:diary)
  end
  describe '日誌投稿' do
    context '日誌投稿できるとき' do
      it 'dateとplaceが存在すれば登録できる' do
        expect(@diary).to be_valid
      end
      it 'eventとtotal_memoが空でも登録できる' do
        @diary.event = ''
        @diary.total_memo = ''
        expect(@diary).to be_valid
      end
    end
    context '日誌投稿できないとき' do
      it 'dateが空では登録できない' do
        @diary.date = ''
        @diary.valid?
        expect(@diary.errors.full_messages).to include "Date can't be blank"
      end
      it 'placeが空では登録できない' do
        @diary.place = ''
        @diary.valid?
        expect(@diary.errors.full_messages).to include "Place can't be blank"
      end
    end
  end
end