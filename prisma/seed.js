import { PrismaClient } from "@prisma/client";

const prisma = new PrismaClient();

async function main() {
	const new_user_a = await prisma.user.create({
		data: {
			id: "user-a",
			name: "User A"
		}
	});


	console.log("Seeded database: ", {
		users: {
			new_user_a,
		},
	});
}

main()
	.then(async () => {
		await prisma.$disconnect();
	})
	.catch(async (e) => {
		console.error(e);
		await prisma.$disconnect();
		process.exit(1);
	});
