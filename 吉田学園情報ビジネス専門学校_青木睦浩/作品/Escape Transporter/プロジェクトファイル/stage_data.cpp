//=============================================================================
//
// ステージデータクラス [stage_data.h]
// Author : 小笠原　彪我
//
//=============================================================================
//=============================================================================
//インクルードファイル
//=============================================================================
#include "stage_data.h"
#include "model.h"

//=============================================================================
// 静的メンバ変数宣言
//=============================================================================
CModel *CStageData::m_apModel[MODEL_MAX] = {};

//=============================================================================
// コンストラクタ
//=============================================================================
CStageData::CStageData(int nPriority) : CScene(nPriority)
{
}
//=============================================================================
// デストラクタ
//=============================================================================
CStageData::~CStageData()
{
}
//=============================================================================
// 初期化処理
//=============================================================================
HRESULT CStageData::Init(void)
{

	return S_OK;
}

//=============================================================================
// 終了処理
//=============================================================================
void CStageData::Uninit(void)
{
	if (m_pModel != NULL)
	{
		m_pModel = NULL;
	}
}

//=============================================================================
// 更新処理
//=============================================================================
void CStageData::Update(void)
{

}

//=============================================================================
// 描画処理
//=============================================================================
void CStageData::Draw(void)
{
	// 描画処理で設定した位置と向きを計算させる
	m_pModel->DrawObject(m_pos, m_rot, m_scale);
}
//=============================================================================
// モデルの生成
//=============================================================================
CStageData *CStageData::Create(D3DXVECTOR3 pos, D3DXVECTOR3 rot, D3DXVECTOR3 scale, int nIndex)
{
	CStageData *pStageData;
	pStageData = new CStageData(PRIORITY_MODEL);

	if (pStageData != NULL)
	{
		pStageData->Init();
		// Stageクラスで読み込みんだ情報を設定
		pStageData->SetModel(nIndex);
		pStageData->SetPosition(pos);
		pStageData->SetRotation(rot);
		pStageData->SetScale(scale);
	}

	return pStageData;
}
//=============================================================================
// Xファイル読み込み
//=============================================================================
void CStageData::LoadXFile(const char *pModelFileName, int nIndex)
{
	// Stageクラスで読み込みんだ情報を保存
	m_apModel[nIndex] = CModel::Create(pModelFileName);
}
//=============================================================================
// モデル設定
//=============================================================================
void CStageData::SetModel(int nIndex)
{
	// モデルの番号を保存する
	m_pModel = m_apModel[nIndex];
}
//=============================================================================
// 位置
//=============================================================================
void CStageData::SetPosition(D3DXVECTOR3 pos)
{
	// 読み込んだ位置を設定
	m_pos = pos;
}
//=============================================================================
// 向き
//=============================================================================
void CStageData::SetRotation(D3DXVECTOR3 rot)
{
	// 読み込んだ向きを設定
	m_rot = rot;
}
//=============================================================================
// 大きさ
//=============================================================================
void CStageData::SetScale(D3DXVECTOR3 scale)
{
	// 読み込んだ向きを設定
	m_scale = scale;
}

//=============================================================================
// 位置
//=============================================================================
D3DXVECTOR3 CStageData::GetPosition(void)
{ 
	return m_pos;
}
//=============================================================================
// 向き
//=============================================================================
D3DXVECTOR3 CStageData::GetRotation(void)
{
	return m_rot;
}
//=============================================================================
// 大きさ
//=============================================================================
D3DXVECTOR3 CStageData::GetScale(void)
{
	return m_scale;
}
