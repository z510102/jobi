//=============================================================================
//
// ランキングの処理 [rankingdata.cpp]
// Author : 川村優斗
//
//=============================================================================

//*****************************************************************************
// インクルードファイル
//*****************************************************************************
#define _CRT_SECURE_NO_WARNINGS
#include<stdio.h>
#include "rankingdata.h"
#include"score.h"
#include"time.h"
#include"game.h"

//*****************************************************************************
// 静的メンバ変数宣言
//*****************************************************************************
CTime *CRankingData::m_pTime[MAX_RANKING] = {};

//=============================================================================
// コンストラクタ
//=============================================================================
CRankingData::CRankingData(int nPriority) : CScene(nPriority)
{
	m_bFlag = false;
}

//=============================================================================
// デストラクタ
//=============================================================================
CRankingData::~CRankingData()
{
}

//=============================================================================
// 初期化処理
//=============================================================================
HRESULT CRankingData::Init(void)
{
	//ロード処理
	FILE *pFile;

	pFile = fopen(RANKING_TEXT, "r");
	if (pFile != NULL)
	{
		for (int nCntRank = 0; nCntRank < MAX_RANKING; nCntRank++)
		{
			fscanf(pFile, "%d", &m_nTime[nCntRank]);
		}
	}
	else
	{
		printf("ファイルが開けませんでした\n");
	}
	fclose(pFile);

	// 今回のスコアをロード
	int nNewdata;
	if (m_bFlag == true)
	{
		pFile = fopen(SCORE_TEXT, "r");
		if (pFile != NULL)
		{
			fscanf(pFile, "%d", &nNewdata);
		}
		else
		{
			printf("ファイルが開けませんでした\n");
		}
		fclose(pFile);
	}
	if (m_bFlag == true)
	{
		m_nTime[MAX_RANKING - 1] = nNewdata;
	}
	// 今回のスコアの分も生成
	if (m_bFlag == true)
	{
		m_pNowTime = CTime::Create(D3DXVECTOR3(50.0f, SCREEN_HEIGHT / 2, 0.0f), D3DXVECTOR3(NUMBER_WIDTH, NUMBER_HEIGHT, 0.0f), nNewdata,true);
	}

	// 入れ替えてランキングを作る
	for (int nCntRank = 0; nCntRank < MAX_RANKING - 1; nCntRank++)
	{
		for (int nCntRank2 = 0; nCntRank2 < MAX_RANKING - 1; nCntRank2++)
		{
			if (m_nTime[nCntRank2] < m_nTime[nCntRank2 + 1])
			{
				int nScore = m_nTime[nCntRank2];
				m_nTime[nCntRank2] = m_nTime[nCntRank2 + 1];
				m_nTime[nCntRank2 + 1] = nScore;
			}
		}
	}
	// スコアの分数字を生成
	for (int nCntNum = 0; nCntNum < MAX_RANKING - 1; nCntNum++)
	{
		m_pTime[nCntNum] = CTime::Create(D3DXVECTOR3(m_pos.x, m_pos.y + (100 * nCntNum), 0.0f), D3DXVECTOR3(NUMBER_WIDTH, NUMBER_HEIGHT, 0.0f), m_nTime[nCntNum], true);
	}


	//セーブ処理
	pFile = fopen(RANKING_TEXT, "w");
	if (pFile != NULL)
	{
		for (int nCntRank = 0; nCntRank < MAX_RANKING; nCntRank++)
		{
			fprintf(pFile, "%d\n", m_nTime[nCntRank]);
		}
	}
	else
	{
		printf("ファイルが開けませんでした\n");
	}
	fclose(pFile);

	return S_OK;
}

void CRankingData::Uninit(void)
{
}

void CRankingData::Update(void)
{
}


void CRankingData::Draw(void)
{
}

CRankingData * CRankingData::Create(D3DXVECTOR3 pos, D3DXVECTOR3 size, bool bFlag)
{
	//ランキングのインスタンス生成
	CRankingData *pRankingData = new CRankingData;

	//ランキングの準備
	if (pRankingData != NULL)
	{
		pRankingData->m_bFlag = bFlag;
		pRankingData->m_size = size;
		pRankingData->m_pos = pos;
		pRankingData->Init();
	}

	return pRankingData;
}