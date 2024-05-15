Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D27B8C602C
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 15 May 2024 07:36:11 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id C6E4244762
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 15 May 2024 05:36:09 +0000 (UTC)
Received: from mailgw01.mediatek.com (unknown [60.244.123.138])
	by lists.linaro.org (Postfix) with ESMTPS id 51BA63EF3A
	for <linaro-mm-sig@lists.linaro.org>; Wed, 15 May 2024 05:35:57 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=mediatek.com header.s=dk header.b=GxY6YD9X;
	dkim=pass header.d=mediateko365.onmicrosoft.com header.s=selector2-mediateko365-onmicrosoft-com header.b=Sh7Ou1mo;
	spf=pass (lists.linaro.org: domain of yong.wu@mediatek.com designates 60.244.123.138 as permitted sender) smtp.mailfrom=yong.wu@mediatek.com;
	dmarc=pass (policy=quarantine) header.from=mediatek.com;
	arc=pass ("microsoft.com:s=arcselector9901:i=1")
X-UUID: fd242822127c11efb92737409a0e9459-20240515
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com; s=dk;
	h=MIME-Version:Content-Transfer-Encoding:Content-ID:Content-Type:In-Reply-To:References:Message-ID:Date:Subject:CC:To:From; bh=Lu6k+d0OfkezZBcG6x/HrQyHjLMjZpEq/TZ10rg+yO0=;
	b=GxY6YD9X9x4zwY23UbYHO89dHNWXu1fMW/D7nONEe9S0MDZwhdJ7KqC0VEYhpRm4larLdyZ/AvWvPjPsg0eyacx7hE2KIWSaBbjlq6eE4JjoRI2O46TUN7TGkAcLWnKFbnyJjCzYTJaxAKSShdLcANjTBq/gO8fGdLnsHtbas8Q=;
X-CID-P-RULE: Release_Ham
X-CID-O-INFO: VERSION:1.1.38,REQID:902336af-01c4-4588-9cd8-dc258d27a842,IP:0,U
	RL:0,TC:0,Content:0,EDM:0,RT:0,SF:0,FILE:0,BULK:0,RULE:Release_Ham,ACTION:
	release,TS:0
X-CID-META: VersionHash:82c5f88,CLOUDID:d00ddf83-4f93-4875-95e7-8c66ea833d57,B
	ulkID:nil,BulkQuantity:0,Recheck:0,SF:102,TC:nil,Content:0,EDM:-3,IP:nil,U
	RL:1,File:nil,RT:nil,Bulk:nil,QS:nil,BEC:nil,COL:0,OSI:0,OSA:0,AV:0,LES:1,
	SPR:NO,DKR:0,DKP:0,BRR:0,BRE:0
X-CID-BVR: 0,NGT
X-CID-BAS: 0,NGT,0,_
X-CID-FACTOR: TF_CID_SPAM_SNR,TF_CID_SPAM_ULS
X-UUID: fd242822127c11efb92737409a0e9459-20240515
Received: from mtkmbs09n2.mediatek.inc [(172.21.101.94)] by mailgw01.mediatek.com
	(envelope-from <yong.wu@mediatek.com>)
	(Generic MTA with TLSv1.2 ECDHE-RSA-AES256-GCM-SHA384 256/256)
	with ESMTP id 887716798; Wed, 15 May 2024 13:35:50 +0800
Received: from mtkmbs10n2.mediatek.inc (172.21.101.183) by
 mtkmbs11n2.mediatek.inc (172.21.101.187) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1118.26; Wed, 15 May 2024 13:35:49 +0800
Received: from HK2PR02CU002.outbound.protection.outlook.com (172.21.101.237)
 by mtkmbs10n2.mediatek.inc (172.21.101.183) with Microsoft SMTP Server id
 15.2.1118.26 via Frontend Transport; Wed, 15 May 2024 13:35:49 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=f6qx6JqS/QFMxT/WbP61VwsZF43i9vPT5LeykrpNlstESu+L3nVEJgevF0zAyIuhV/oqeBdTEcYRrKwdZSTuq9Eb9a/gdIO+wYyVfk97AA2FhNE6Ln53AmBCSQBpvhPkKfYqfMW9jmfMZXpijgkXqWEncLkvlS71X0giBGK9UZfvwHZXodgce6TroBceAHEvdiTtlH8n6ur+riw7gHR7YHlK4zJVlIjz49rvKm+CuLzF4WnGmEiVSW6tEe3IKA/ITFxcPFU9azsZDKXGtvCDkuz2inn1OIhP6GNiLc9vyweyrTNis7trrJHw++Gz3pfESy49iK5eipIcjRqaja/5CQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Lu6k+d0OfkezZBcG6x/HrQyHjLMjZpEq/TZ10rg+yO0=;
 b=d+3Alu3TGZxp8RhJJJj/lKmnjK7obuD5rsMXI1/D1CbCcrccrx/1X2NPtKvx5SkMutXxS+Cmnxn1C3oXdVJQyll4qDKvz+JyHn08iUpqSxP20qKRhWjE7xl0120Scc6BHPLVoGGoAE/7nnF3DWvrkJwnhMA9ZOGekjY77cnpK2WjQg11cwsQE5P1DVjnLg/6Y1REGJWOyrFE6xn7jY13aaorCmmrHrF0yuYqBt2WTz5ahnHo3OPEeTQWA+UEt2p28yxBZgfgwej9L2+fNRWn/IWgVoUMvKGZuGFhHxi62uEUPVW1VTY224chaBrzniSchWec06icwwluhW3U9nLnHQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=mediatek.com; dmarc=pass action=none header.from=mediatek.com;
 dkim=pass header.d=mediatek.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=mediateko365.onmicrosoft.com; s=selector2-mediateko365-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Lu6k+d0OfkezZBcG6x/HrQyHjLMjZpEq/TZ10rg+yO0=;
 b=Sh7Ou1mokCuiGWhpur/HPP5KIaIuHQtHawtu1gOEVqGFriKOs8v1n9qYfH6Rr6BlAGLycS13FVAjUPrFvBOy+rAvYSO/wlS6p1D0Au3uHvTB1Gdtrd3FBGDDvDhXEB4bWXFoL/9aMehFp5xAre8tFBR//zSPfUEVngYH6+8K0i4=
Received: from SI2PR03MB5885.apcprd03.prod.outlook.com (2603:1096:4:142::7) by
 TY0PR03MB6534.apcprd03.prod.outlook.com (2603:1096:400:21e::8) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.7587.27; Wed, 15 May 2024 05:35:46 +0000
Received: from SI2PR03MB5885.apcprd03.prod.outlook.com
 ([fe80::683a:246a:d31f:1c0]) by SI2PR03MB5885.apcprd03.prod.outlook.com
 ([fe80::683a:246a:d31f:1c0%4]) with mapi id 15.20.7587.026; Wed, 15 May 2024
 05:35:46 +0000
From: =?utf-8?B?WW9uZyBXdSAo5ZC05YuHKQ==?= <Yong.Wu@mediatek.com>
To: "daniel@ffwll.ch" <daniel@ffwll.ch>
Thread-Topic: [PATCH v4 4/7] dma-buf: heaps: restricted_heap: Add dma_ops
Thread-Index: AQHaRTjBR729oJoqokO8DlfThRQ4PrDV7IUAgAACL4CAwppRgA==
Date: Wed, 15 May 2024 05:35:46 +0000
Message-ID: <28135cc3e24201f28039ae43958d627496b20861.camel@mediatek.com>
References: <20240112092014.23999-1-yong.wu@mediatek.com>
	 <20240112092014.23999-5-yong.wu@mediatek.com>
	 <ZaEJOjXP2EJIe9rK@phenom.ffwll.local> <ZaELD4APVuX4p77P@phenom.ffwll.local>
In-Reply-To: <ZaELD4APVuX4p77P@phenom.ffwll.local>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: Evolution 3.28.5-0ubuntu0.18.04.2 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SI2PR03MB5885:EE_|TY0PR03MB6534:EE_
x-ms-office365-filtering-correlation-id: 27eec2e5-d154-4e66-8d21-08dc74a0dee7
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230031|366007|1800799015|376005|7416005|38070700009;
x-microsoft-antispam-message-info: =?utf-8?B?WFowekliSnJkUTNGSXU0Q0hCb3NVWmRuRS9kM1JDNzJRaGxFakNRdWJMVldy?=
 =?utf-8?B?MmhTc3NxMFdmM1FMNnBwb2hKQ1o2eWNTaTZrUVphVnAwcGJIZjJ5Q1Bnb0dG?=
 =?utf-8?B?ai9Pb01kOExDVUowWlMxTXU5aGJCY0ZOV3VtTFFhd3M5MjRMZW1WVmxtVGdS?=
 =?utf-8?B?UnZVWUNFdnh3S0lpWUU3eDBJWWRkTHZ0cE1vK1BIZVhFMVY2VVlUamR0Mzh2?=
 =?utf-8?B?Ri96ZDRad09uZjUwM3g5ekNRL0ZVeHNCa3JYRjdpL3JCZHNTS1hvRC9KMERC?=
 =?utf-8?B?OFJGKzFodlo4emZnUVBZMm1JRlVDSXk2Yi82QVBhZnhXb0lpejgyazVVTUlN?=
 =?utf-8?B?N3I0bGFNMWFoRTQ3NzFwZjZMU2FhemswVXVuMjBWRVV6ZGlHSXgrN2plUWlV?=
 =?utf-8?B?QWt6aFJtRHpEaWFyRjRnQWlnRjlkSjNZMGZneTQrS0NoQXlLZnVWV1BlQUhh?=
 =?utf-8?B?WEtlQUQ3NXllYTFXNXd4TmI3T2ZnWGdDM1BkUkJDMjZJaDQ1a29vcTNRSko1?=
 =?utf-8?B?QVVZR2JURTZDOHhVclN5bWtaWk1RVndSb2dSbzRsaEtPMDdlU2lkNElVcWRp?=
 =?utf-8?B?UUV4RlovRERWUEdZbDJwNWcwcFBWdjBhcXVGRTA2QU9sQVlhNnlJSGpYZVVG?=
 =?utf-8?B?Mi9TeFIvS3pvbyttVFUzTkZkbjcwaTdsZFdIaFh3RFVzNDFESnRWQU1pZzg4?=
 =?utf-8?B?TmJUMUN5U3p0MmlGaWYxeExzdmVlSE1jdHJMTENTWFdxL2Nld1lDbldKcjQv?=
 =?utf-8?B?d3ArWWJBdGthcDhQY1pRcnNLOWRiMnErTHBQZ0ZIdW9IZ1JodmJjdHNzeUp0?=
 =?utf-8?B?R2s3RGQ3c1FTVFFDSWptcmc5VWF0R1pPNVNtRytyelQ5QTZtRUFmWkYyNjJ0?=
 =?utf-8?B?UWZ5R2lidUZJUVpPL3lkN0hxR3JreGp1cU5YS1pwSUJYWFpYQUp3TVlmcktu?=
 =?utf-8?B?VnZjTzVIaFQyNjRmZTBSNXpJSmZwcVdBQTJwcHRsc0hpM0w1cGlGamJjVVBw?=
 =?utf-8?B?L3gvbVZBNUVKRThVSGRKY05VZ3RKWXlDNVRNc0dKTVgwSVk2QjFKcnRteTgr?=
 =?utf-8?B?ZldKbExhOXJnVW5qeHU4b3M4SE1LV0hOMldwN29nZlltMkc4RGFsZFBCaTMz?=
 =?utf-8?B?NlZKTzJKUVhWeXpHVEh6Q1pwWnFCN0oyRjlBZndFT3RlY2NqTER1bERvNFFq?=
 =?utf-8?B?bXlobEtvc0VsaDR1VXJpT21NYWRxOEFpTzYyK0JRUEJ5elBCUHpRVmNhWXpM?=
 =?utf-8?B?REx6b1RXWS8rTjU2WnRIYm5RTUtPNVpHRmJ2WnJQNndhOVpYTXU2cHV0UzRy?=
 =?utf-8?B?VUVKVFBiTTFsSnhEcmpsMnN2SFV2K0NyYUdsQzhSWFUrVnliWmF0bXJ2emZi?=
 =?utf-8?B?RXh1cGJJbjFxNUQrd2lyZFFCT3gySjIvTytEZVYyUWhPL09MRkFzNm9xUzF0?=
 =?utf-8?B?Rkc3bVB4b01LWTcxOWNQWlRUMFhqa3F4UXNrN1poQjlJQXVySGtubFZvcTNR?=
 =?utf-8?B?di9aMm56UTBUOHhiTUJmMXdKQjhBbnd4RU9zQWZwdGJqUWFEQnZwV2hGaFFI?=
 =?utf-8?B?YWxhTlBGMHZXMERmZUV5Tyt1dDB1b0dqdDRwN0FDS1VRemY1TnhHNHlXYmVK?=
 =?utf-8?B?UHlyT0JvenF1aEhTOHNpdit2cUU5SWVaOG80N3pwOE9WNXVHcThTQTlmRll5?=
 =?utf-8?B?RVY1TlFhV0dYOTNhZXEyWmNZUlM3REFleUFTVVNIaU5oekFoQ0s3KzlBPT0=?=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SI2PR03MB5885.apcprd03.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(366007)(1800799015)(376005)(7416005)(38070700009);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?eXNVaExtazlOY3hOVDlzNnV4NW5LT3hTOG9kYkNQL1BYN2MvM0dXdnFhK0xO?=
 =?utf-8?B?eFlrcnpUL3h1Q3Q5Sk9jMWNKYktPb2FoWkxoV1AvWE9DcUlHMU5XNWZJcTJT?=
 =?utf-8?B?YmlpcHk1dFlBeWZ1eUxZVnhHYk9QZ3BQbWJwU05NSnJoQnlMeWhzVDQvTW9m?=
 =?utf-8?B?RmNndWd3REFlaTlMSVhZZU1RdnhvbTNBS1NOd2tHeHFtMDlQTWwvWTFlV2VG?=
 =?utf-8?B?N3gxckpFQWZFTFpQN0MwRTBQazdXaFJpM2crVVFKdktvRUNESTZXQ3pDUU5w?=
 =?utf-8?B?UlBJczkvTWpaVjdPbUFxM3NqNnZQUXNiOFExL3BnTjJtZVp3YkJVczIxbjRx?=
 =?utf-8?B?ZFMzK01wUlVuVDJ3NjBnYSs1a3BzN1ZzamJWR0s1c3U4Wk94RHJTM2ZpN20x?=
 =?utf-8?B?MjE1RzAzN0ZsNDllcWEzZDJyMUhDS0JJV2c5ekkxK1JJUTFXZTM0YnU4M3Fo?=
 =?utf-8?B?ZUZuUWVoNStQYW4xOUxXeDRGV0R1NE9QM2NlS2tMdVRGbWJobG9wdGtTemhp?=
 =?utf-8?B?MXRPMTR6aWgyZ1BDSzdUQnBzN1VRNkc5VHc3MjNDRE1vWFlYekdFdksxeDc1?=
 =?utf-8?B?NDJxa1laOWhYQUIwa3Z4a3Z6V3A1SWdsTjhVTFdZYnZsTzZ4UDJQQ3ZaRU1N?=
 =?utf-8?B?UkwzaUVMQTBZYW5qSWFjRldSaUc1allxWklGdVBTV3ZlL2taelB3WmRRRlZF?=
 =?utf-8?B?Z2Y4NWliMVBTaHZLMzcxV3JJQkx3YktEQlpKNEJ3SitnOEdFVUJCOTVtRE9x?=
 =?utf-8?B?ZlBIR2dyQWZ0ZHZzbVlELzAyT0ZGRUpmRFlGQUc0NDRxdlFrQ3piMXZkVUF3?=
 =?utf-8?B?Ykl4ajlkdVJiN0xXa3JLNTRWTUlmNjNVSjFGbUxjM29yT1FjZ1dEWnUzRzB4?=
 =?utf-8?B?L3FjS1BQQ2w3bkNCT283Vy9sWDVWaklSTXZiZ3V0TFNrbHFoNkVtOFZBS3Ev?=
 =?utf-8?B?Tk9kc0c2c0FxWUdsSHhJU0daQ2toV0Zzd1JCMlN3bmpZRWwzajZuK2xjcDhG?=
 =?utf-8?B?eFgxWW8xWks0YTZvVUEwS1YzVGFDNGZTeVYwS3ZDcUZIOHB5dnp1QnhCZWxy?=
 =?utf-8?B?VFo2VmJTbkVuY3Z0Q0ZyZ0lUblVQUnVDeklxTW9pWVd0UmtqaHZCWmRQbUor?=
 =?utf-8?B?QkprYUpUaExkSGFLUmF0UDNTeFRKMFl5c3QvRDgzZVRmNy84R1ozN2U3NE12?=
 =?utf-8?B?TmE2MTZPZU8xejZPeDRXUzh6N0duSlZHRENYZlhnOUxyaGljSU1seVowa0Jm?=
 =?utf-8?B?a0lBNzNrMWdENGlML2Z4eDQwZGQydG9CUVc5bnAyZjA2NGZERFJtR0hOUllE?=
 =?utf-8?B?WnNFYXRWRS8yZkx6dlJSNHFkbERCWmdvY0gzd2lSTUhMb0JjclBaNC9GRnVM?=
 =?utf-8?B?cE9rVlBURTVoanduZ0llbnEzVUFWV2V6RmRNNDRzQTE0WXBjd2VaY1VZQXpt?=
 =?utf-8?B?L2hxTzRHSE1jeTVtNVRoRSszMHhEazdXMFkrdnVHWm9zd0tGMVhrUWRmK3hV?=
 =?utf-8?B?cTVHWktuRHhPTUd6TCtrdkhBVnBib2FGajdRbmxNenMyR25GUEVJM1F4dXlh?=
 =?utf-8?B?c2wrOFo0Y2Exc2xucU13bHVqMTRvdjFnMkxHS1Q3YjFmZDdGWCt4OGFmY0ZZ?=
 =?utf-8?B?RVFwbzZ5T29kb09OMEo5SGNuNzFYUEIxK0FsbWZHb29hKzROVFNQc1p5ejFQ?=
 =?utf-8?B?bmFYYkpEa2RINUpFU3NOSTlHQklvT0JxSkR0eXVtTVBHNnpnbG1ncWw5TGZC?=
 =?utf-8?B?NElKOXFNM3E4UzJRSVM0QnZIelh3K3FVSC9vTXc2K1k1Vm9SbExsYUJEREdv?=
 =?utf-8?B?NlpzamtrUDVIMDBBaUc1OC8zT3BMSENLZ0Fnc2tnTUFUeUt1UTVPWTg1cGE0?=
 =?utf-8?B?QmFkbHZqTkRDU2dCbnkzenlwc1Y2MXd3MTJrSm5YQTNsenJmVlFXVEdmaDBr?=
 =?utf-8?B?RnhNZ1dRRExZUGhTMUYzanMvU2s4bUFmdmRBY2l6SDVRU1ptcnV4cE1hSVJE?=
 =?utf-8?B?YjBVSGtDTU84Uk1uL3FxUGwvdnVDRHF4NEo1TEE0Z3F0enE0aHlKWFRSeXNK?=
 =?utf-8?B?Z3VzeFh5ZjlDbWJWbTl4aFFCdXhEYm1ZTFVVSVVsRjJqb1c5L3A0QTg0aTJZ?=
 =?utf-8?B?VGE1T2RXSzdtN2VPcTlSQk9hK3dkV1pTZ1ZITi9FWWtHN2JGSlQrc25Ja3Qx?=
 =?utf-8?B?YlE9PQ==?=
Content-ID: <7A73D04FE45FDB4EBD1B0BC76FFC5281@apcprd03.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SI2PR03MB5885.apcprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 27eec2e5-d154-4e66-8d21-08dc74a0dee7
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 May 2024 05:35:46.2754
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: a7687ede-7a6b-4ef6-bace-642f677fbe31
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: jF00RZ3Bp/6LadTCVgInrtV4mYW/LZs83wIu8st6jEduAazRGPh4gQkTTcLLsTEBjZOvDc50SWuQeHxnmI5Ltw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: TY0PR03MB6534
X-MTK: N
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 51BA63EF3A
X-Spamd-Bar: /
X-Spamd-Result: default: False [0.10 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	HFILTER_HOSTNAME_UNKNOWN(2.50)[];
	SUSPICIOUS_RECIPS(1.50)[];
	MIME_BASE64_TEXT_BOGUS(1.00)[];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector9901:i=1];
	DMARC_POLICY_ALLOW(-0.50)[mediatek.com,quarantine];
	R_DKIM_ALLOW(-0.20)[mediatek.com:s=dk,mediateko365.onmicrosoft.com:s=selector2-mediateko365-onmicrosoft-com];
	R_SPF_ALLOW(-0.20)[+ip4:60.244.123.128/27];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	RCPT_COUNT_TWELVE(0.00)[27];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:24154, ipnet:60.244.123.0/24, country:TW];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[linaro.org,lists.infradead.org,kernel.org,google.com,vger.kernel.org,quicinc.com,amd.com,mediatek.com,ucw.cz,arm.com,lists.linaro.org,lists.freedesktop.org,collabora.com,gmail.com];
	TO_DN_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	DKIM_TRACE(0.00)[mediatek.com:+,mediateko365.onmicrosoft.com:+]
X-Rspamd-Action: no action
Message-ID-Hash: G6CWY7AJLZ32MTMZZDO4KEIUBBCFZKHI
X-Message-ID-Hash: G6CWY7AJLZ32MTMZZDO4KEIUBBCFZKHI
X-MailFrom: yong.wu@mediatek.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: "sumit.semwal@linaro.org" <sumit.semwal@linaro.org>, "linux-mediatek@lists.infradead.org" <linux-mediatek@lists.infradead.org>, "robh+dt@kernel.org" <robh+dt@kernel.org>, "jstultz@google.com" <jstultz@google.com>, "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "quic_vjitta@quicinc.com" <quic_vjitta@quicinc.com>, "christian.koenig@amd.com" <christian.koenig@amd.com>, "linux-media@vger.kernel.org" <linux-media@vger.kernel.org>, =?utf-8?B?SmlhbmppYW8gWmVuZyAo5pu+5YGl5aejKQ==?= <Jianjiao.Zeng@mediatek.com>, =?utf-8?B?S3VvaG9uZyBXYW5nICjnjovlnIvptLsp?= <kuohong.wang@mediatek.com>, "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>, "pavel@ucw.cz" <pavel@ucw.cz>, =?utf-8?B?WW91bGluIFBlaSAo6KO05Y+L5p6XKQ==?= <youlin.pei@mediatek.com>, "robin.murphy@arm.com" <robin.murphy@arm.com>, "linaro-mm-sig@lists.linaro.org" <linaro-mm-sig@lists.linaro.org>, "jkardatzke@google.com" <jkardatzke@google.com>, "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>, "
 conor+dt@kernel.org" <conor+dt@kernel.org>, "benjamin.gaignard@collabora.com" <benjamin.gaignard@collabora.com>, "tjmercier@google.com" <tjmercier@google.com>, "krzysztof.kozlowski+dt@linaro.org" <krzysztof.kozlowski+dt@linaro.org>, "matthias.bgg@gmail.com" <matthias.bgg@gmail.com>, "ppaalanen@gmail.com" <ppaalanen@gmail.com>, "joakim.bech@linaro.org" <joakim.bech@linaro.org>, "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>, "angelogioacchino.delregno@collabora.com" <angelogioacchino.delregno@collabora.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v4 4/7] dma-buf: heaps: restricted_heap: Add dma_ops
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/G6CWY7AJLZ32MTMZZDO4KEIUBBCFZKHI/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Fri, 2024-01-12 at 10:49 +0100, Daniel Vetter wrote:
>  	 
> External email : Please do not click links or open attachments until
> you have verified the sender or the content.
>  On Fri, Jan 12, 2024 at 10:41:14AM +0100, Daniel Vetter wrote:
> > On Fri, Jan 12, 2024 at 05:20:11PM +0800, Yong Wu wrote:
> > > Add the dma_ops for this restricted heap. For restricted buffer,
> > > cache_ops/mmap are not allowed, thus return EPERM for them.
> > > 
> > > Signed-off-by: Yong Wu <yong.wu@mediatek.com>
> > > ---
> > >  drivers/dma-buf/heaps/restricted_heap.c | 103
> ++++++++++++++++++++++++
> > >  1 file changed, 103 insertions(+)
> > > 
> > > diff --git a/drivers/dma-buf/heaps/restricted_heap.c
> b/drivers/dma-buf/heaps/restricted_heap.c
> > > index 8c266a0f6192..ec4c63d2112d 100644
> > > --- a/drivers/dma-buf/heaps/restricted_heap.c
> > > +++ b/drivers/dma-buf/heaps/restricted_heap.c
> > > @@ -12,6 +12,10 @@
> > >  
> > >  #include "restricted_heap.h"
> > >  
> > > +struct restricted_heap_attachment {
> > > +struct sg_table*table;
> > > +};
> > > +
> > >  static int
> > >  restricted_heap_memory_allocate(struct restricted_heap *heap,
> struct restricted_buffer *buf)
> > >  {
> > > @@ -45,6 +49,104 @@ restricted_heap_memory_free(struct
> restricted_heap *heap, struct restricted_buff
> > >  ops->memory_free(heap, buf);
> > >  }
> > >  
> > > +static int restricted_heap_attach(struct dma_buf *dmabuf, struct
> dma_buf_attachment *attachment)
> > > +{
> > > +struct restricted_buffer *restricted_buf = dmabuf->priv;
> > > +struct restricted_heap_attachment *a;
> > > +struct sg_table *table;
> > > +int ret;
> > > +
> > > +a = kzalloc(sizeof(*a), GFP_KERNEL);
> > > +if (!a)
> > > +return -ENOMEM;
> > > +
> > > +table = kzalloc(sizeof(*table), GFP_KERNEL);
> > > +if (!table) {
> > > +ret = -ENOMEM;
> > > +goto err_free_attach;
> > > +}
> > > +
> > > +ret = sg_alloc_table(table, 1, GFP_KERNEL);
> > > +if (ret)
> > > +goto err_free_sgt;
> > > +sg_set_page(table->sgl, NULL, restricted_buf->size, 0);
> > 
> > So this is definitely broken and violating the dma-buf api rules.
> You
> > cannot let attach succed and supply a dummy/invalid sg table.
> > 
> > Two options:
> > 
> > - Reject ->attach for all this buffers with -EBUSY and provide
> instead a
> >   private api for these secure buffers, similar to how
> virtio_dma_buf has
> >   private virto-specific apis. This interface would need to be
> >   standardized across all arm TEE users, so that we don't have a
> >   disastrous proliferation of apis.
> > 
> > - Allow ->attach, but _only_ for drivers/devices which can access
> the
> >   secure buffer correctly, and only if you can put the right secure
> buffer
> >   address into the sg table directly. If dma to a secure buffer for
> a
> >   given struct device * will not work correctly (i.e. without data
> >   corruption), you _must_ reject the attach attempt with -EBUSY.
> > 
> > The 2nd approach would be my preferred one, if it's technically
> possible.
> > 
> > Also my understanding is that arm TEE is standardized, so I think
> we'll at
> > least want some acks from other soc people whether this will work
> for them
> > too.
> > 
> > Finally the usual drill:
> > - this also needs the driver side support, if there's any changes
> needed.
> >   Just the new heap isn't enough.
> 
> Ok I quickly scrolled through your drm patches and that confirms that
> the
> current dma-buf interface you're implementing is just completely
> breaking
> the api. And you need to paper over that will all kinds of very icky
> special-casing.
> 
> So definitely need to rethink the overall design between dma-buf
> heaps and
> drivers here.

Hi,

Thanks very much for the review, and sorry for reply so late.  We
reconstructed our TEE commands so that the kernel can obtain the valid
PA/pages, then the sg operations can run normally. 

I will send the next version.
Thanks.

> -Sima
> 
> > - and for drm you need open userspace for this. Doesn't have to be
> the
> >   full content protection decode pipeline, the drivers in drm that
> landed
> >   secure buffer support thus far enabled it using the
> >   EGL_EXT_protected_content extension using gl, which side steps
> all the
> >   complications around content decryption keys and support
> > 
> > Cheers, Sima
> > 
> > > +
> > > +a->table = table;
> > > +attachment->priv = a;
> > > +
> > > +return 0;
> > > +
> > > +err_free_sgt:
> > > +kfree(table);
> > > +err_free_attach:
> > > +kfree(a);
> > > +return ret;
> > > +}
> > > +
> > > +static void restricted_heap_detach(struct dma_buf *dmabuf,
> struct dma_buf_attachment *attachment)
> > > +{
> > > +struct restricted_heap_attachment *a = attachment->priv;
> > > +
> > > +sg_free_table(a->table);
> > > +kfree(a->table);
> > > +kfree(a);
> > > +}
> > > +
> > > +static struct sg_table *
> > > +restricted_heap_map_dma_buf(struct dma_buf_attachment
> *attachment, enum dma_data_direction direct)
> > > +{
> > > +struct restricted_heap_attachment *a = attachment->priv;
> > > +struct sg_table *table = a->table;
> > > +
> > > +return table;
> > > +}
> > > +
> > > +static void
> > > +restricted_heap_unmap_dma_buf(struct dma_buf_attachment
> *attachment, struct sg_table *table,
> > > +      enum dma_data_direction direction)
> > > +{
> > > +struct restricted_heap_attachment *a = attachment->priv;
> > > +
> > > +WARN_ON(a->table != table);
> > > +}
> > > +
> > > +static int
> > > +restricted_heap_dma_buf_begin_cpu_access(struct dma_buf *dmabuf,
> enum dma_data_direction direction)
> > > +{
> > > +return -EPERM;
> > > +}
> > > +
> > > +static int
> > > +restricted_heap_dma_buf_end_cpu_access(struct dma_buf *dmabuf,
> enum dma_data_direction direction)
> > > +{
> > > +return -EPERM;
> > > +}
> > > +
> > > +static int restricted_heap_dma_buf_mmap(struct dma_buf *dmabuf,
> struct vm_area_struct *vma)
> > > +{
> > > +return -EPERM;
> > > +}
> > > +
> > > +static void restricted_heap_free(struct dma_buf *dmabuf)
> > > +{
> > > +struct restricted_buffer *restricted_buf = dmabuf->priv;
> > > +struct restricted_heap *heap =
> dma_heap_get_drvdata(restricted_buf->heap);
> > > +
> > > +restricted_heap_memory_free(heap, restricted_buf);
> > > +kfree(restricted_buf);
> > > +}
> > > +
> > > +static const struct dma_buf_ops restricted_heap_buf_ops = {
> > > +.attach= restricted_heap_attach,
> > > +.detach= restricted_heap_detach,
> > > +.map_dma_buf= restricted_heap_map_dma_buf,
> > > +.unmap_dma_buf= restricted_heap_unmap_dma_buf,
> > > +.begin_cpu_access = restricted_heap_dma_buf_begin_cpu_access,
> > > +.end_cpu_access= restricted_heap_dma_buf_end_cpu_access,
> > > +.mmap= restricted_heap_dma_buf_mmap,
> > > +.release= restricted_heap_free,
> > > +};
> > > +
> > >  static struct dma_buf *
> > >  restricted_heap_allocate(struct dma_heap *heap, unsigned long
> size,
> > >   unsigned long fd_flags, unsigned long heap_flags)
> > > @@ -66,6 +168,7 @@ restricted_heap_allocate(struct dma_heap
> *heap, unsigned long size,
> > >  if (ret)
> > >  goto err_free_buf;
> > >  exp_info.exp_name = dma_heap_get_name(heap);
> > > +exp_info.ops = &restricted_heap_buf_ops;
> > >  exp_info.size = restricted_buf->size;
> > >  exp_info.flags = fd_flags;
> > >  exp_info.priv = restricted_buf;
> > > -- 
> > > 2.25.1
> > > 
> > 
> > -- 
> > Daniel Vetter
> > Software Engineer, Intel Corporation
> > http://blog.ffwll.ch
> 
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
