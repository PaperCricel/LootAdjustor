import math

def generate_arrow_points(samples=10):
    """
    生成一個箭頭圖案的座標點
    範圍限制在 0.4 x 0.4 的區域內（以中心點計算則總寬 1.6）
    頂點: (0, 0, 0.4)
    左底: (-0.4, 0, -0.4)
    右底: (0.4, 0, -0.4)
    """
    points = []
    
    # 定義頂點與底點
    tip = (0.0, 0.0, 0.4)
    left_base = (-0.4, 0.0, -0.4)
    right_base = (0.4, 0.0, -0.4)
    
    # 生成左側邊緣點 (從左底到頂點)
    for i in range(samples + 1):
        t = i / samples
        x = left_base[0] + (tip[0] - left_base[0]) * t
        z = left_base[2] + (tip[2] - left_base[2]) * t
        points.append((round(x, 4), 0.0, round(z, 4)))
        
    # 生成右側邊緣點 (從頂點到右底，避開重複的頂點)
    for i in range(1, samples + 1):
        t = i / samples
        x = tip[0] + (right_base[0] - tip[0]) * t
        z = tip[2] + (right_base[2] - tip[2]) * t
        points.append((round(x, 4), 0.0, round(z, 4)))
        
    return points

def main():
    # 調整 samples 可以改變點的密度
    arrow_points = generate_arrow_points(samples=5)
    
    print(f"--- 生成箭頭座標 (共 {len(arrow_points)} 個點) ---")
    for pt in arrow_points:
        print(f"particle end_rod ~{pt[0]} ~ ~{pt[2]} 0 0 0 0 1 force")

if __name__ == "__main__":
    main()