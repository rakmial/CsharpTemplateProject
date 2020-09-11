cp -a TemplateProject.Solution/ $1.Solution

rename $1.Solution/TemplateProject $1.Solution/$1 $1.Solution/TemplateProject*

mv ./$1.Solution/$1/TemplateProject.csproj ./$1.Solution/$1/$1.csproj
mv ./$1.Solution/$1/Models/TemplateClass.cs ./$1.Solution/$1/Models/$1.cs
mv ./$1.Solution/$1.Tests/TemplateProject.Tests.csproj ./$1.Solution/$1.Tests/$1.Tests.csproj
mv ./$1.Solution/$1.Tests/ModelTests/TemplateClassTest.cs ./$1.Solution/$1.Tests/ModelTests/$1Test.cs

sed -i s/TemplateClass/$1/g ./$1.Solution/$1{/Models/$1.cs,.Tests/{$1.Tests.csproj,ModelTests/$1Test.cs}}
sed -i s/TemplateProject/$1/g ./$1.Solution/$1{/Models/$1.cs,.Tests/{$1.Tests.csproj,ModelTests/$1Test.cs}}
sed -i s/TEMPLATE/$1/g ./$1.Solution/.travis.yml

rm -rf ./$1.Solution/.git
rm -rf ./$1.Solution/$1/obj
rm -rf ./$1.Solution/$1.Tests/obj
rm -rf ./$1.Solution/$1/bin
rm -rf ./$1.Solution/$1.Tests/bin



