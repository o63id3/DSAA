public static int selection(int[] arr, int k) {
        if (arr.length < k || k < 0 || arr.length == 0) return -1;

        int max = arr[0];
        for (int i = 1; i < arr.length; i++) if (arr[i] > max) max = arr[i];

        int min = arr[0];
        for (int i = 1; i < arr.length; i++) if (arr[i] < min) min = arr[i];

        int mid = (max + min) / 2;
        while (true) {
            int count = 0;
            for (int i = 0; i < arr.length; i++) if (arr[i] <= mid) count++;

            if (count == k) break;
            else if (count > k) max = mid;
            else min = mid;
            mid = (max + min) / 2;
        }

        int wanted = 0;
        for (int i = 0; i < arr.length; i++) if (arr[i] > wanted && arr[i] <= mid) wanted = arr[i];

        return wanted;
    }
