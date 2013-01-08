require 'spec_helper'

describe CompanyUsersController do
  context 'without is_admin' do
    describe "POST 'create'" do
      before do
        put :create, company_user: { position: 'programmer' }
      end
      subject { CompanyUser.last }
      it { should_not be_is_admin }
    end
  end

  context 'with is_admin' do
    describe "POST 'create'" do
      before do
        put :create, company_user: { position: 'programmer', is_admin: 'true' }
      end
      subject { CompanyUser.last }
      it { should_not be_is_admin }
    end
  end
end
