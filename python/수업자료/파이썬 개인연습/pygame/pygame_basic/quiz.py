import pygame
import random as rd

########################################################################################
pygame.init() #초기화(반드시 필요)

#화면 크기 설정
screen_width = 480 #가로 크기
screen_height = 640 #세로 크기
screen = pygame.display.set_mode((screen_width, screen_height))


#화면 타이틀 설정
pygame.display.set_caption("피하기 게임") #게임이름

#fps
clock = pygame.time.Clock()
########################################################################################

#1. 사용자 게임 초기화(배경화면, 게임이미지, 좌표, 속도, 폰트 등)

#배경이미지 불러오기
background = pygame.image.load("C:/Users/w/ipynb_200617/game/pygame_basic/background.png")

#캐릭터(스프라이트) 불러오기
character = pygame.image.load("C:/Users/w/ipynb_200617/game/pygame_basic/character.png")
character_size = character.get_rect().size #이미지의 크기를 구해옴
character_width = character_size[0]
character_height = character_size[1]
character_x_pos = (screen_width / 2) - (character_width / 2) #화면 가로의 절반 위치
character_y_pos = screen_height - character_height #화면 가장아래

enemy_x_pos = rd.randint(0, 640) #화면 가로의 절반 위치
enemy_y_pos = 0


#이동할 좌표
to_x = 0
# to_y = 0

#이동속도
character_speed = 10
enemy_speed = 10

#enemy 캐릭터
enemy = pygame.image.load("C:/Users/w/ipynb_200617/game/pygame_basic/enemy.png")
enemy_size = enemy.get_rect().size #이미지의 크기를 구해옴
enemy_width = enemy_size[0]
enemy_height = enemy_size[1]

# 폰트 정의
game_font = pygame.font.Font(None, 40) #폰트 객체 생성(폰트, 크기)


# 이벤트 루프
running = True #게임이 진행중인가?
while running:
    dt = clock.tick(30) #게임화면의 초당 프레임수 설정

    # 2. 이벤트 처리(키보드, 마우스 등)

    for event in pygame.event.get(): #어떤 이벤트가 발생하였는가?
        if event.type == pygame.QUIT: #창이 닫히는 이벤트가 발생했는가?
            running = False #게임이 진행중이 아님

        if event.type == pygame.KEYDOWN: #키보드 키를 누름
            if event.key == pygame.K_LEFT:
                to_x -=character_speed
            elif event.key == pygame.K_RIGHT:
                to_x +=character_speed
        if event.type == pygame.KEYUP: #키보드 키를 뗌
            if event.key == pygame.K_LEFT or event.key == pygame.K_RIGHT:
                to_x = 0

    # 3. 게임 캐릭터 위치 정의
    character_x_pos += to_x
    enemy_y_pos += enemy_speed

    if character_x_pos < 0:
        character_x_pos = 0
    elif character_x_pos > screen_width - character_width:
        character_x_pos = screen_width - character_width

    if enemy_x_pos < 0:
        enemy_x_pos = 0
    elif enemy_x_pos > screen_width - enemy_width:
        enemy_x_pos = screen_width - enemy_width

    if enemy_y_pos > screen_height:
        enemy_y_pos = 0
        enemy_x_pos = rd.randint(0, screen_width - enemy_width)


    # 4. 충돌 처리
    #충돌처리를 위한 rect 정보 업데이트
    character_rect = character.get_rect()
    character_rect.left = character_x_pos
    character_rect.top = character_y_pos

    enemy_rect = enemy.get_rect()
    enemy_rect.left = enemy_x_pos
    enemy_rect.top = enemy_y_pos

    if character_rect.colliderect(enemy_rect):
        print("충돌했어요")
        running = False

    # 5. 화면에 그리기
    screen.blit(background, (0,0)) # 배경 그리기
    screen.blit(character, (character_x_pos, character_y_pos))
    screen.blit(enemy, (enemy_x_pos, enemy_y_pos))

    pygame.display.update() #게임화면 다시 그리기(반드시)

#pygame 종료
pygame.quit()
