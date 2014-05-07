clean.car:
	hadoop dfs -rmr tmp/ || true
run.car: clean.car
	hadoop jar dtree.jar program.DecisionTreeDriver car/car.attributes car/car.splited/ tmp/ car/model2

