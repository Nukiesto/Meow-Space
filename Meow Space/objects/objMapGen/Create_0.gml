worldWidth = 40; //������ ������������� ���� (� ������)
worldHeight = 60; //������ ������������� ���� (� ������)
terrainDestruct = 2; //��� ������ ��������, ��� ����������� ���������� ����� ������. ���� ���� �� �������.
meter = irandom_range(13, 17);
curX = 0;


//������� ����������� �����
for(i = 0; i < worldWidth; i += 1)
{
    for(j = 0; j < worldHeight; j += 1)
    {  
        map[i, j] = -1;
    }
}

//��������� ����� � �����
repeat worldWidth
{
    while meter < worldHeight 
    {
        meter += 1; 
        if meter < irandom_range(20, 25)
        {
            map[curX, meter] = objBlockDirt;
        }
        else
        {
            map[curX, meter] = objBlockStone;
        }
    }
    if meter == worldHeight 
    {
        curX += 1; 
        meter = irandom_range(13, 17) + irandom_range(-terrainDestruct, terrainDestruct);
    }
}

//���� ��� ������ ����������� ����� ������
for(i = 1; i < worldWidth - 1; i += 1)
{
    for(j = 1; j < worldHeight - 1; j += 1)
    {  
        if map[i, j] == objBlockDirt
        {
            if map[i - 1, j] == -1 
            && map[i + 1, j] == -1 
            && map[i, j - 1] == -1 
            {
                map[i, j] = -1;
            }
        }
    }
}

//��������� �����, ���, � ������ ������.
generateDungeon(4, 50, 30);
generateOre(10, 5, 25, objBlockCoal);
generateOre(10, 3, 25, objBlockIronOre);

//�������� �����
generateTerrain(worldWidth, worldHeight);

