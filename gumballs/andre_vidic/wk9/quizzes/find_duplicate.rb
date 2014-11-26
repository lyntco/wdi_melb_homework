def find_missing_and_duplicate(input)

	# Manual method to find max and min
	# largest = input[0]
	# smallest = input[0]
	# ----------------------
	# input.each do |number|
	# 	if number > largest
	# 		largest = number
	# 	elsif number < smallest
	# 		smallest = number
	# 	end
	# end

	largest = input.max
	smallest = input.min

	range = (smallest..largest).to_a

	missing = range - input
	p "missings are: #{missing}"

	duplicates = []
	# counter = 0
	# input.each do |item|
	# 	p "item: #{item}"

	# 	(0...input.length).each do |index|
	# 		if input[index] == item
	# 			counter += 1
	# 			p "item_detail: #{item},index: #{index}, input[index]: #{input[index]}"
	# 			puts counter
	# 		elsif counter >= 2
	# 			duplicates << item
	# 			counter = 0
	# 			p "duplicates: #{duplicates}"
	# 		end
	# 	end
	# end

	duplicates = input.select{|i| input.count(i) > 1 }.uniq

	p "largest: #{largest}"
	p "smallest: #{smallest}"
	p "duplicates: #{duplicates}"
end

# find_missing_and_duplicate([1,2,3,3,4,5,6,8,9,10])
# # => "Missing: 7, Duplicate: 3"

find_missing_and_duplicate([79,82,29,78,77,41,80,92,15,31,34,56,25,71,32,96,5,67,85,17,94,73,48,81,8,27,72,42,1,97,21,66,51,9,91,43,60,7,46,55,68,2,20,45,10,40,50,6,53,63,58,62,35,90,19,38,39,3,30,64,61,86,57,59,47,33,52,70,93,84,37,89,22,95,24,69,87,16,98,100,18,44,65,76,88,4,83,28,14,49,25,74,26,11,13,75,99,36,23,54])
# => "Missing: 12, Duplicate: 25"

# find_missing_and_duplicate([578, 981, 306, 982, 173, 220, 366, 704, 422, 874, 269, 392, 604, 230, 340, 617, 944, 776, 430, 630, 115, 950, 193, 947, 224, 777, 219, 592, 541, 844, 461, 483, 9, 316, 916, 61, 614, 711, 265, 673, 327, 384, 462, 185, 460, 328, 301, 140, 91, 918, 842, 129, 84, 744, 478, 600, 829, 514, 539, 355, 613, 441, 555, 495, 865, 993, 189, 974, 8, 383, 96, 187, 449, 42, 315, 15, 138, 372, 267, 136, 814, 293, 889, 450, 108, 921, 417, 395, 431, 259, 835, 846, 349, 926, 233, 743, 964, 958, 656, 123, 912, 885, 977, 43, 616, 848, 424, 888, 191, 821, 535, 218, 576, 222, 63, 536, 71, 597, 593, 56, 399, 101, 308, 77, 930, 849, 796, 184, 810, 747, 67, 200, 62, 95, 793, 725, 728, 851, 203, 225, 511, 908, 221, 485, 160, 859, 774, 498, 242, 12, 360, 436, 459, 995, 575, 705, 953, 545, 650, 519, 811, 940, 845, 376, 277, 379, 524, 526, 691, 838, 407, 621, 980, 521, 234, 700, 90, 227, 204, 699, 772, 904, 760, 295, 640, 754, 738, 637, 118, 161, 868, 368, 927, 385, 579, 785, 223, 606, 984, 544, 326, 752, 517, 692, 428, 569, 721, 886, 437, 492, 543, 38, 989, 769, 72, 260, 166, 742, 938, 670, 781, 1, 210, 272, 93, 127, 57, 518, 229, 237, 357, 602, 900, 291, 675, 414, 869, 342, 929, 371, 300, 943, 111, 610, 806, 252, 122, 132, 652, 362, 135, 481, 296, 251, 857, 891, 486, 759, 782, 388, 226, 763, 402, 549, 35, 13, 119, 716, 165, 14, 217, 708, 241, 582, 577, 789, 790, 992, 27, 489, 420, 373, 797, 318, 513, 556, 615, 770, 767, 466, 685, 358, 415, 775, 505, 945, 807, 312, 594, 280, 799, 438, 663, 762, 715, 662, 109, 313, 632, 823, 903, 330, 197, 809, 562, 285, 171, 258, 522, 879, 148, 983, 404, 106, 319, 588, 959, 487, 208, 677, 137, 734, 192, 529, 288, 320, 962, 232, 990, 909, 491, 332, 194, 917, 446, 566, 249, 500, 455, 620, 559, 37, 11, 50, 51, 507, 581, 212, 893, 39, 257, 920, 587, 765, 302, 864, 381, 44, 731, 86, 729, 601, 554, 659, 855, 209, 120, 951, 451, 723, 883, 722, 213, 976, 386, 687, 540, 337, 867, 605, 324, 202, 408, 464, 439, 382, 672, 236, 634, 856, 631, 570, 963, 433, 434, 298, 898, 322, 7, 653, 655, 901, 125, 36, 565, 611, 282, 530, 19, 263, 667, 658, 292, 188, 961, 401, 971, 550, 283, 686, 88, 374, 712, 390, 125, 896, 32, 199, 346, 960, 875, 934, 214, 755, 618, 571, 942, 413, 936, 745, 33, 622, 168, 45, 895, 309, 858, 866, 822, 969, 177, 599, 99, 882, 542, 935, 603, 22, 850, 746, 988, 107, 922, 152, 710, 92, 627, 646, 28, 693, 243, 26, 720, 421, 262, 740, 333, 706, 164, 568, 709, 906, 820, 403, 996, 469, 808, 253, 380, 695, 443, 899, 818, 937, 771, 609, 321, 338, 779, 802, 47, 665, 143, 274, 163, 279, 954, 732, 986, 297, 336, 991, 718, 573, 3, 304, 831, 410, 6, 956, 668, 698, 104, 985, 840, 311, 41, 925, 830, 870, 352, 923, 476, 854, 334, 813, 70, 344, 493, 625, 863, 784, 294, 509, 552, 21, 643, 10, 412, 932, 317, 651, 247, 134, 516, 442, 69, 130, 836, 968, 713, 329, 553, 948, 479, 941, 30, 155, 560, 649, 952, 580, 881, 564, 398, 719, 31, 369, 480, 307, 911, 787, 144, 499, 454, 54, 497, 246, 825, 142, 396, 598, 447, 551, 475, 4, 182, 64, 348, 367, 682, 841, 112, 305, 666, 181, 520, 642, 788, 780, 405, 419, 113, 216, 546, 778, 817, 472, 345, 231, 839, 975, 583, 998, 795, 452, 468, 175, 694, 828, 23, 714, 266, 206, 919, 49, 205, 116, 815, 325, 503, 153, 681, 794, 5, 619, 966, 902, 812, 284, 805, 657, 141, 733, 82, 757, 994, 644, 445, 68, 103, 186, 907, 508, 289, 639, 448, 158, 126, 169, 629, 25, 131, 987, 533, 547, 843, 102, 85, 910, 178, 688, 527, 628, 997, 89, 803, 470, 860, 584, 471, 48, 393, 735, 877, 24, 87, 654, 273, 595, 264, 510, 303, 350, 861, 52, 701, 973, 680, 585, 394, 245, 913, 591, 347, 697, 172, 749, 624, 727, 638, 261, 195, 724, 596, 502, 416, 157, 114, 792, 391, 290, 343, 832, 365, 190, 435, 590, 800, 612, 139, 456, 887, 133, 287, 76, 147, 967, 648, 999, 444, 647, 17, 853, 783, 871, 406, 458, 29, 798, 496, 429, 423, 211, 281, 467, 463, 768, 608, 633, 504, 689, 73, 791, 572, 979, 477, 162, 98, 756, 852, 170, 74, 753, 490, 18, 931, 465, 239, 528, 636, 515, 703, 737, 2, 751, 149, 933, 94, 837, 827, 970, 299, 331, 707, 198, 766, 66, 370, 819, 389, 890, 83, 548, 894, 215, 275, 702, 154, 176, 105, 473, 335, 65, 278, 238, 574, 730, 748, 201, 310, 286, 834, 683, 532, 207, 676, 110, 563, 146, 128, 484, 314, 660, 833, 897, 151, 179, 180, 750, 353, 409, 939, 271, 557, 494, 58, 75, 773, 671, 323, 79, 34, 586, 847, 561, 411, 880, 786, 876, 739, 567, 679, 678, 826, 453, 915, 741, 623, 268, 626, 972, 81, 607, 878, 661, 183, 248, 955, 341, 361, 873, 359, 117, 669, 244, 250, 924, 418, 558, 228, 736, 482, 397, 501, 949, 46, 872, 506, 758, 525, 174, 339, 354, 884, 914, 664, 78, 255, 400, 684, 801, 761, 432, 816, 377, 696, 512, 824, 538, 457, 59, 97, 978, 1000, 363, 378, 256, 80, 426, 764, 928, 387, 20, 235, 674, 150, 55, 641, 690, 351, 375, 474, 531, 53, 488, 270, 156, 124, 254, 364, 635, 440, 804, 534, 167, 240, 946, 523, 145, 726, 60, 121, 425, 40, 905, 159, 892, 965, 957, 276, 16, 862, 427, 645, 196, 717, 356, 100, 589]) # => "Missing: 537, Duplicate: 125" 


# range.each_with_index do |item, index|
# 	if item
# 		range.delete(item)
# 	end
# end
