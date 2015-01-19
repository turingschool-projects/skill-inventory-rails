describe Skill do

  describe ".featured" do
    it "returns featured skills" do
      create(:skill, name: "featured", featured: true)
      create(:skill, name: "not-featured", featured: false)

      skills = Skill.featured

      expect(skills.map(&:name)).to eq(["featured"])
    end
  end

  describe "validations" do
    it "must have a name" do
      expect { create(:skill, name: "") }.to raise_error(ActiveRecord::RecordInvalid)
    end

    it "name must be unique" do
      create(:skill, name: "unique")

      expect { create(:skill, name: "unique") }.to raise_error(ActiveRecord::RecordInvalid)
    end

    it "featured value must be either boolean true or false" do
      expect { create(:skill, featured: nil) }.to raise_error(ActiveRecord::RecordInvalid)
    end
  end
end
