#include "billeffect.h"


class CEffectSpeed : public CBillEffect
{
public:
	typedef enum
	{
		TYPE_NONE = 0,
		TYPE_WHITE,
		TYPE_RED,
		TYPE_BLUE,
		TYPE_YELLOW,
		TYPE_MAX
	} TYPE_SMOKECOLOR;

	CEffectSpeed(int nPriority = 3);
	~CEffectSpeed();

	HRESULT Init(D3DXVECTOR3 pos, D3DXVECTOR3 scale, D3DXVECTOR3 move, int life);	// 初期化処理
	void Uninit(void);	// 終了処理
	void Update(void);	// 更新処理
	void Draw(void);	// 描画処理
	static CEffectSpeed *Create(D3DXVECTOR3 pos, D3DXVECTOR3 scale, D3DXVECTOR3 move, int life, int nType);		//エフェクトの生成

private:
	D3DXVECTOR3 m_move;  //移動
	D3DXVECTOR3 m_scale;  //移動
	D3DXVECTOR3	m_rot;  // 向き

	int m_nType;
	int m_nLife;		//寿命
	D3DCOLORVALUE m_colval;
	bool m_bUninit;		//削除フラグ
	TYPE_SMOKECOLOR m_smokecol;
	int m_nFrameSmoke = 0;  //煙のフレーム
	D3DCOLORVALUE m_mincolor;  //薄くする
};