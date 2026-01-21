Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6PlxELGZcGlyYgAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 21 Jan 2026 10:17:37 +0100
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id A0F7554358
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 21 Jan 2026 10:17:36 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id BB74E401B4
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 21 Jan 2026 09:17:35 +0000 (UTC)
Received: from PH8PR06CU001.outbound.protection.outlook.com (mail-westus3azon11012019.outbound.protection.outlook.com [40.107.209.19])
	by lists.linaro.org (Postfix) with ESMTPS id B1B263F70E
	for <linaro-mm-sig@lists.linaro.org>; Wed, 21 Jan 2026 09:17:29 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=amd.com header.s=selector1 header.b=dD4y+WkE;
	spf=pass (lists.linaro.org: domain of Christian.Koenig@amd.com designates 40.107.209.19 as permitted sender) smtp.mailfrom=Christian.Koenig@amd.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1");
	dmarc=pass (policy=quarantine) header.from=amd.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=WuUhTiudGNS4VFT879TSFwzqraDR2q4b6RxFXY0hg+RRMppI3/oyuaCeEd0BMokspot0QIOivKbtF62YPbft8qYO+ugiA/BVDj3YZ3uVJ2hJnXzDNMrMwWTZIhjYZ4pGix//SPY/1TS8NeGlPJUKATjE5XcC4A9xZNNaPC004RB+ueGGDprnqFTjf3m7wPVAQ/czlD81ChZWGchNpAW55ZRBoy6nmXOwwuilzzd+0VClFqPf8IeQWDMP7HTbcINsuS1yCO01mo4DpkgWkjTXzCJaBRJ1+3nU720E6KHcP0dte/Rinfh3Z3RS3PMLB0qvqf4yOSfVMp3nKUX0ogBX2Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=PnGpEef9c4Cgj9FuaxB3n4+DS1c2FsPIC4AvF9uSvXs=;
 b=VSxThKpXssnn9nIVTaK1k1fprK5T9/Gb0vJ9UBEKETQifcdpur2rHvfm0uqFiTLBYfax08hXJrb4B+4h6Dvl3+CBa7GOGhZt+sziSWAB3LiGWzVxXn/pMN70860sqhFJIcSMppCzgV5dVeTEFBzaXGOVpCDnDJPUXbY4BoArVomEiequtCKeShsCMG1CFtCyKfvMSzC1DuxWn4TTZZ/q6Fsjs5dsx9aaiRqJJ6cD0dOLx4OybDsBqE4LWCuyKg3/etrS0LFUrColb+ebr4BKDI1QiHMWMiZNS6OpQ00kQU50BsuW0Wq0Y2Y714pzsEKihUnCR1c8+USxdhGmijJ0wQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=PnGpEef9c4Cgj9FuaxB3n4+DS1c2FsPIC4AvF9uSvXs=;
 b=dD4y+WkEC95gMqnbiTRh+1bN4nURVVde2o5xg8EeiMbBdwt5nxevLc7QjjnA1GKBBLxUYRtFWXYsj+zrtFhZ00Um+cNvlXo/TH6OsUb6FTzp+C9FUI58417ivBMLAWF8zkmYsMyqEAXv2ZKykH4lxZFGoEVlpMpGG1o1CpDZFKk=
Received: from PH7PR12MB5685.namprd12.prod.outlook.com (2603:10b6:510:13c::22)
 by MW4PR12MB7191.namprd12.prod.outlook.com (2603:10b6:303:22d::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9542.9; Wed, 21 Jan
 2026 09:17:25 +0000
Received: from PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::46fb:96f2:7667:7ca5]) by PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::46fb:96f2:7667:7ca5%4]) with mapi id 15.20.9542.008; Wed, 21 Jan 2026
 09:17:25 +0000
Message-ID: <7cfe0495-f654-4f9d-8194-fa5717eeafff@amd.com>
Date: Wed, 21 Jan 2026 10:17:16 +0100
User-Agent: Mozilla Thunderbird
To: Leon Romanovsky <leon@kernel.org>
References: <20260120-dmabuf-revoke-v3-0-b7e0b07b8214@nvidia.com>
 <20260120-dmabuf-revoke-v3-3-b7e0b07b8214@nvidia.com>
 <4fe42e7e-846c-4aae-8274-3e9a5e7f9a6d@amd.com>
 <20260121091423.GY13201@unreal>
Content-Language: en-US
From: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
In-Reply-To: <20260121091423.GY13201@unreal>
X-ClientProxiedBy: BN9PR03CA0110.namprd03.prod.outlook.com
 (2603:10b6:408:fd::25) To PH7PR12MB5685.namprd12.prod.outlook.com
 (2603:10b6:510:13c::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR12MB5685:EE_|MW4PR12MB7191:EE_
X-MS-Office365-Filtering-Correlation-Id: 9a2bc323-266e-4a85-8309-08de58cde42e
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014|7416014;
X-Microsoft-Antispam-Message-Info: 
	=?utf-8?B?eFRmUWtaNzNRS0UveEdVK3Eyc1JkcVdMcjJkdlVnMDlrMTFxbGVCY3BJUzlX?=
 =?utf-8?B?NTFkWFJtbjVoTGZKazMwRGhDM0tLdkZYUFpmL1dnSmh5akJlWFN1YXN1OURV?=
 =?utf-8?B?ell6NG5uSmQvdTZMQ0oyVnNuUGlzSnI2VHMydXZDZVZUanFhSzdTaWNuU1h6?=
 =?utf-8?B?WjV3dFJnSUxpdlBaUU5SNUk4ZjBuSG1IdGFjSkpDekxCSmFkWXUxaVRuODRk?=
 =?utf-8?B?aGlmN1hTNityeEFtQm5KT1ZoYVAvZWh1TWFxaHZwQ2pZZFVUcGNSNzlIVnh0?=
 =?utf-8?B?UmczZUN3OWhCWHptbSsrcXZKVXFPWDNyWE1kYjNoNUZIWVhiRlJLN2h0LzBM?=
 =?utf-8?B?U3pQTDVJRm93UmJrV0VWL0YybDFDTHpiTURaRWdJd0RjRHNwNk5kOERDM24w?=
 =?utf-8?B?U1dJT2ZXNW1zWTNUZk1NenlkTFFJekRURWhqbE5VQUllTnBOOXFoRU9xWnhH?=
 =?utf-8?B?QUJSd1JhT0xmT09mVlJCN3hscGtxeWhtOWJnVjFVbWhtQlB5ZHZSb21ySGhD?=
 =?utf-8?B?UmsxZERJajRIODVOR2pjaGFZRllZK2hWb1cxYWhKWXdlYTZvNEw1c3VNSkFa?=
 =?utf-8?B?cE4yWUtHdksyQSt1Z1JXZlBoRjljRDZpdEkwdm92ZWI4R2JqWmtjZWVjbnpz?=
 =?utf-8?B?Wm1jdmpLeHgvRXhOMUFwUGZUQ2k5cWp3OXhFMXU2T1R0SE5OcFM1K09tY1Vm?=
 =?utf-8?B?UVlMSkVERFFWekQ1eWlRVFlRcjdqWTRsUklJUVBBNE1RRVV3V0k5VSswMnFt?=
 =?utf-8?B?TDBmRVdJYi8yQnREMnU5bGZtOU4rQVIxRmJqbWx4Rmpya1JFTTd2MzNGc3Mw?=
 =?utf-8?B?cy94L1ZuR2U2TlIrWk1oWVBUVkFJRDRLNFJPNTA4dHR6S1VQWUNSRzVlU2c3?=
 =?utf-8?B?TTEzaTF6bGU4N0VrNVJoQklCTGxRVk1DVkRuVWhBSVRWaDRxeHVRYy9hdWJP?=
 =?utf-8?B?MkZiVXhkVUl3UW9pQlhkcXFQOGVjdXdhckxoNFpGY29tMmJrOTVsSE5zSzR6?=
 =?utf-8?B?bmZvTkd3elUzZS95MUQxczlhWktTODhWMFpZZnVoZjRLS1o1djlLYU44MWdD?=
 =?utf-8?B?UEZZNktPUnhHZkNxMmhQb2xpSkg1RmZkU0Q3eTNsd0xVMUZMK2xQSEhnb3hl?=
 =?utf-8?B?WE1BZ0x5cTdIc2doTDlBdWpZNG1BZjUzalNXQVhCVURwZkkzV0RwNUd4UmIr?=
 =?utf-8?B?a3ErK3V0aWlwKzlkank3b3N4L09xcGZ4YlZ4RlRiMytYb3RmeC9NVElrSHU3?=
 =?utf-8?B?UkV3V1FBOXN4TWNnM1oyaGlPWVpwazhtdnFDNmJLQ0NzeTFPRm43bmUxYnlP?=
 =?utf-8?B?YnBWQU5FQkNyYVhUS0FxY0s1ZWNjNDVKQ2dQN2V1K3NpaU5CUjNuQXpVb2M0?=
 =?utf-8?B?ZVg5VDN5dW4xTU90bW5hbm5Pdm42bE9Pd0hzcG1wd2dzaVBnWWc4aE9PQ3do?=
 =?utf-8?B?WkdRem55K3MzSWdsQzdzeS9BVEU2RXlHY1l5aUNoNm9hVG1jQ2duTURQRVJX?=
 =?utf-8?B?MWtodTg1VHNkRDdicm1oWVVGVmY1SUk4M3Q1bVJ6SDRtbGUwVksxTCtCUmZG?=
 =?utf-8?B?bXdzUWtKR0pZWlZRZWdMMXNWVmtJWnhsa0k3M0xBVFQxN09MS3lMV2JPUExp?=
 =?utf-8?B?NjRrb21TS0EzcGsyMGhWbmlPVCs5dkNUYUdLdk45YXVHSW9aYUJWVForYVFq?=
 =?utf-8?B?bmhoQjczYnoxaFVxQlhYT3JnRlY0REViUmo4U0M3NEJDeC9kc2RXN1BBME9l?=
 =?utf-8?B?dzZuRkhhNS9yUHkzZXAwZnhySDdHbzF2TmIxQ0hzb0xySTk3WFkxSFo3YkJ2?=
 =?utf-8?B?a0ZLNnViU29xWndqU1Z0V2hZMEdsWmFxUnBXWWVaenZGWDczYmJ6c3lyTUJL?=
 =?utf-8?B?Q1RVZ2FmZmU4aVZsaCt6Q1paenRKdkFXNFh0YnRSVVFyYk5JbHlSME9aM1NC?=
 =?utf-8?B?OVZqcjFSaEZkYmQwQ0VKdUVRZ1VxdjRjd29XTFRUTVVTY1NmdEQxQWtCZElC?=
 =?utf-8?B?WDRZRnloREQ3SUdIdFVGRnBET2ZRdW9TN2c4a2FiK3Y1emFTUU16djFiSlZ4?=
 =?utf-8?B?Ujdjd2ZMM2NyTjVGVFNpNWNQZkVJSU5sVjhOTk4rSkptT3hGWUJoMFRuSGY3?=
 =?utf-8?Q?Va00=3D?=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH7PR12MB5685.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(366016)(376014)(7416014);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?MHZIYjJXdllOWmZERkkrQk9DMnJQekNFdkpnR3pWcE1kNXJOU3puTDNiWkdt?=
 =?utf-8?B?NkpXeEVrVFZBaWpVbU80L251Nms0KzB6MjB6eVdUZDhXV0xKZVMzdCs5MmdM?=
 =?utf-8?B?S0hIeVhPejA2d2ZkOVl3TVF4aFg5RTlrMWk1M0tnbVQzTm1oajBhT3pxTERq?=
 =?utf-8?B?YU16RFZpcmVWcHBkVDYvL1p2MDRUL0dlMzFpQ2tINnJ1RXIwWEVXemVNando?=
 =?utf-8?B?L042cXlNYlBRTy9od3VCclJjSGhZelYzNThPWS9hUTdyVVVLaHVON2V0NGsr?=
 =?utf-8?B?U20yNTlqNVRZTkVHL1BsY0t6a1VLMGs5bEl4MXZhWmVqelp3WXJGSDlRZDBK?=
 =?utf-8?B?L2NWT1laUytldUNZNlloSld5ZGhFOVV2ZHNUWHdIMDhIVzdtektyZ2cvTXRF?=
 =?utf-8?B?Wi9XRXFSaWFuMjJ4QTBucE9yb0JNdmpGM1AvMmdHMTBITWM2S3pnTElJU2pI?=
 =?utf-8?B?dG1ZMGt4eFp6bUZQUzA0ZWxBZ3luOFNlYjFlbGhKbURlQzJaQ0ZTSVE3amhx?=
 =?utf-8?B?Qi9Jbk9vMFM5NkF2ZnJuRlFoRnZxd25yd1JrUHZhUHgxNWF1dTQwQXZKaTRu?=
 =?utf-8?B?NkNzNDdmc3VwV09aTTJsRjEzY2FYekhLWlNJVTl2OEhzNnorNTFLOXlnbE5Y?=
 =?utf-8?B?V2FlZ0NiMWd6UlF3ZTRhQVVDZ0VMenFKMkFPemhWcm5RT2RVbUJNZUNGZXVX?=
 =?utf-8?B?eWlxNlVhR25iWlBucGZDSTQrNHI4TUh3dHdmcnluUHVyNWEvaUEyaDB5Vitk?=
 =?utf-8?B?TVZOSGNyS0xqRGZmT2VMM0ZXSHZjOVJXRHVjdHlMa1VIY0xTajQ2ODhVNXJG?=
 =?utf-8?B?S1FSdU1pQjFGZUY5bE1Vb2hpY3V3VTErMXY3UXBwcTZTNGl2eVExUyswTnJM?=
 =?utf-8?B?WHhad2tRZCtKN0JRRStBOUFSS1BLd0h1UUs4dnd0SWg0WGJXbGIrRHpwN0tH?=
 =?utf-8?B?blJWOXNPRGRqNDJlOU9HTEQ3TzRtSXBkSCtUb0xveW44dDZ6VzNmekxOM0JN?=
 =?utf-8?B?RElWSEYzS1Z3NHFya2xoQmltYTJUK0V5Um50TFpsN3BDcnFpM2lqeU9zZG5C?=
 =?utf-8?B?QTVQOGVRQ1orWkI0Z1RBSkFiMkgvZDhDd3ZJQWQxcUV6eGhPakI5ZmJrQnNE?=
 =?utf-8?B?eXBYM2tWcGpLTmd5dGtmTjM5S2gxNElsbC9VNURHbDBIOW16L2JNUUlNVmxM?=
 =?utf-8?B?dndFYnJkTTBBakJFdCt0T2pjdWsrdnc2SzAwZXlINDdiS3Z3YXdBSGgvVmlz?=
 =?utf-8?B?ZFBrNnZKUnF1NVhLT1Y1NEl3STRXSUdLNFBYQnlsMnpCblN6SUw1NExBaG9u?=
 =?utf-8?B?WiszMmV3YkFwRHhublpqYjVGK1g5UGpXZ243WlE0b0w1Zk9VUlFrN3hsWkxS?=
 =?utf-8?B?dlVDTzR6L0Z5aG1qMnBZMktLaWNnci9HRjRzUDN2a0w1bUxKdnpPU3dXbnh5?=
 =?utf-8?B?cU9CT2FoMmszbVY3Ny82Z2NMS0RmR0dSWktvWHBLSkVxSE9UVXFpa2ROZWZi?=
 =?utf-8?B?amU2SzN4RktXYVdQKzlObEo4ODk2N2xvVk9EQ1hJUlZQVkxNcWgvS1dIZy95?=
 =?utf-8?B?cXFuMkdVazBYOGNGdGN3YVFjS1pNN3ppWlVtM1oxTWJwUURSY1MyVkdGcG96?=
 =?utf-8?B?T0hMaUNLNjNSd241ajJmR2FNd2VHQy91RzVOeGJsQjVFdS9TMHlTQm5WMmVM?=
 =?utf-8?B?dHprYVFLY0VzZVdRNFZGREVGSjBCMDJaNUI0VTVNN0tPRCtFb0hyYTJPcHhP?=
 =?utf-8?B?RS9wOERCMzlLa1ZseUJycU5OOVg5UlI1NEowOUhMVU5Kb09ndnU1cktOdGtw?=
 =?utf-8?B?aEVOSnJhamNtNTg4eU92VVNpWFZmdTcvNG96ZXA1bUJCd09iZDJaZXMzYlVJ?=
 =?utf-8?B?aVgydWoxUitXZUNVTE1nNlNXR0FQNE53MjBzbGE4dVdwODBraXVheHZEeHhs?=
 =?utf-8?B?NjA4ZFRGNWxmcXlKVmhrMDV6RHR0T005SURaSTNCc3QzejNHc0VwTHVGMTlX?=
 =?utf-8?B?bHdaZ3QySEZ1Zjh4TW82RU1GUXAyMmVmYzFBdmRNdiszcXhCVDBGTWczWWN2?=
 =?utf-8?B?aWJQZHBYdUFRWGQxMjVJMmZxWGltZkRzZkF0cE9QcS9tMnlLVWRremdPb3Jo?=
 =?utf-8?B?alZuZ0RwRG9xZjZ4a2FXQmcvd3NYZys3aU5ZUUlrMUZQdTZRUVIxYlgyWCtD?=
 =?utf-8?B?SUl6NUx2dTBieVZ1ZnpxS3VGendnU2cydXNvV2VXQnJHMU83Q3dkcitjUEll?=
 =?utf-8?B?cWtFMU9RcmxtUGU4YUNJMjIwZXNwUXJpV1ZnRzh2bFFYME0zem5LL3gyamhU?=
 =?utf-8?Q?xAMC7BsYV94j8KXhdz?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9a2bc323-266e-4a85-8309-08de58cde42e
X-MS-Exchange-CrossTenant-AuthSource: PH7PR12MB5685.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 Jan 2026 09:17:25.4550
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: fLuOuSWFEzfL/hVy/Lwb7NB1uc+wlPuWeDEY6sneykS3phjuFhoCRMY5WFEQf9Vp
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR12MB7191
X-Spamd-Bar: -----
Message-ID-Hash: QMHR6DGDFP7QRFLEFA7ZHKQ4NECP47D6
X-Message-ID-Hash: QMHR6DGDFP7QRFLEFA7ZHKQ4NECP47D6
X-MailFrom: Christian.Koenig@amd.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Sumit Semwal <sumit.semwal@linaro.org>, Alex Deucher <alexander.deucher@amd.com>, Simona Vetter <simona@ffwll.ch>, Gerd Hoffmann <kraxel@redhat.com>, Dmitry Osipenko <dmitry.osipenko@collabora.com>, Gurchetan Singh <gurchetansingh@chromium.org>, Chia-I Wu <olvaffe@gmail.com>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, Lucas De Marchi <lucas.demarchi@intel.com>, =?UTF-8?Q?Thomas_Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>, Jason Gunthorpe <jgg@ziepe.ca>, Kevin Tian <kevin.tian@intel.com>, Joerg Roedel <joro@8bytes.org>, Will Deacon <will@kernel.org>, Robin Murphy <robin.murphy@arm.com>, Felix Kuehling <Felix.Kuehling@amd.com>, Alex Williamson <alex@shazbot.org>, Ankit Agrawal <ankita@nvidia.com>, Vivek Kasireddy <vivek.kasireddy@intel.com>, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@v
 ger.kernel.org, amd-gfx@lists.freedesktop.org, virtualization@lists.linux.dev, intel-xe@lists.freedesktop.org, linux-rdma@vger.kernel.org, iommu@lists.linux.dev, kvm@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v3 3/7] dma-buf: Document RDMA non-ODP invalidate_mapping() special case
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/QMHR6DGDFP7QRFLEFA7ZHKQ4NECP47D6/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
X-Spamd-Result: default: False [3.09 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[amd.com : SPF not aligned (relaxed),quarantine];
	R_DKIM_REJECT(1.00)[amd.com:s=selector1];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	MIME_BASE64_TEXT(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[33];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[amd.com:-];
	TO_DN_SOME(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[christian.koenig@amd.com,linaro-mm-sig-bounces@lists.linaro.org];
	FREEMAIL_CC(0.00)[linaro.org,amd.com,ffwll.ch,redhat.com,collabora.com,chromium.org,gmail.com,linux.intel.com,kernel.org,suse.de,intel.com,ziepe.ca,8bytes.org,arm.com,shazbot.org,nvidia.com,vger.kernel.org,lists.freedesktop.org,lists.linaro.org,v,lists.linux.dev];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[amd.com:mid,nvidia.com:email,lists.linaro.org:rdns,lists.linaro.org:helo,linaro.org:email]
X-Rspamd-Queue-Id: A0F7554358
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

T24gMS8yMS8yNiAxMDoxNCwgTGVvbiBSb21hbm92c2t5IHdyb3RlOg0KPiBPbiBXZWQsIEphbiAy
MSwgMjAyNiBhdCAwOTo1OTo1OUFNICswMTAwLCBDaHJpc3RpYW4gS8O2bmlnIHdyb3RlOg0KPj4g
T24gMS8yMC8yNiAxNTowNywgTGVvbiBSb21hbm92c2t5IHdyb3RlOg0KPj4+IEZyb206IExlb24g
Um9tYW5vdnNreSA8bGVvbnJvQG52aWRpYS5jb20+DQo+Pj4NCj4+PiBUaGUgLmludmFsaWRhdGVf
bWFwcGluZygpIGNhbGxiYWNrIGlzIGRvY3VtZW50ZWQgYXMgb3B0aW9uYWwsIHlldCBpdA0KPj4+
IGVmZmVjdGl2ZWx5IGJlY2FtZSBtYW5kYXRvcnkgd2hlbmV2ZXIgaW1wb3J0ZXJfb3BzIHdlcmUg
cHJvdmlkZWQuIFRoaXMNCj4+PiBsZWQgdG8gY2FzZXMgd2hlcmUgUkRNQSBub24tT0RQIGNvZGUg
aGFkIHRvIHN1cHBseSBhbiBlbXB0eSBzdHViIGp1c3QgdG8NCj4+PiBwcm92aWRlIGFsbG93X3Bl
ZXIycGVlci4NCj4+Pg0KPj4+IERvY3VtZW50IHRoaXMgYmVoYXZpb3IgYnkgY3JlYXRpbmcgYSBk
ZWRpY2F0ZWQgZXhwb3J0IGZvciB0aGUNCj4+PiBkbWFfYnVmX3Vuc3VwcG9ydGVkX2ludmFsaWRh
dGVfbWFwcGluZ3MoKSBmdW5jdGlvbi4gVGhpcyBmdW5jdGlvbiBpcw0KPj4+IGludGVuZGVkIHNv
bGVseSBmb3IgdGhlIFJETUEgbm9uLU9EUCBjYXNlIGFuZCBtdXN0IG5vdCBiZSB1c2VkIGJ5IGFu
eQ0KPj4+IG90aGVyIGRtYS1idWYgaW1wb3J0ZXIuDQo+Pj4NCj4+PiBUaGlzIG1ha2VzIGl0IHBv
c3NpYmxlIHRvIHJlbHkgb24gYSB2YWxpZCAuaW52YWxpZGF0ZV9tYXBwaW5ncygpDQo+Pj4gY2Fs
bGJhY2sgdG8gZGV0ZXJtaW5lIHdoZXRoZXIgYW4gaW1wb3J0ZXIgc3VwcG9ydHMgcmV2b2NhdGlv
bi4NCj4+Pg0KPj4+IFNpZ25lZC1vZmYtYnk6IExlb24gUm9tYW5vdnNreSA8bGVvbnJvQG52aWRp
YS5jb20+DQo+Pj4gLS0tDQo+Pj4gIGRyaXZlcnMvZG1hLWJ1Zi9kbWEtYnVmLmMgICAgICAgICAg
ICAgfCAxNCArKysrKysrKysrKysrKw0KPj4+ICBkcml2ZXJzL2luZmluaWJhbmQvY29yZS91bWVt
X2RtYWJ1Zi5jIHwgMTEgKy0tLS0tLS0tLS0NCj4+PiAgaW5jbHVkZS9saW51eC9kbWEtYnVmLmgg
ICAgICAgICAgICAgICB8ICA0ICsrKy0NCj4+PiAgMyBmaWxlcyBjaGFuZ2VkLCAxOCBpbnNlcnRp
b25zKCspLCAxMSBkZWxldGlvbnMoLSkNCj4+Pg0KPj4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2Rt
YS1idWYvZG1hLWJ1Zi5jIGIvZHJpdmVycy9kbWEtYnVmL2RtYS1idWYuYw0KPj4+IGluZGV4IGNk
M2I2MGNlNDg2My4uYzRmYTM1MDM0YjkyIDEwMDY0NA0KPj4+IC0tLSBhL2RyaXZlcnMvZG1hLWJ1
Zi9kbWEtYnVmLmMNCj4+PiArKysgYi9kcml2ZXJzL2RtYS1idWYvZG1hLWJ1Zi5jDQo+Pj4gQEAg
LTEyMzgsNiArMTIzOCwyMCBAQCB2b2lkIGRtYV9idWZfdW5tYXBfYXR0YWNobWVudF91bmxvY2tl
ZChzdHJ1Y3QgZG1hX2J1Zl9hdHRhY2htZW50ICphdHRhY2gsDQo+Pj4gIH0NCj4+PiAgRVhQT1JU
X1NZTUJPTF9OU19HUEwoZG1hX2J1Zl91bm1hcF9hdHRhY2htZW50X3VubG9ja2VkLCAiRE1BX0JV
RiIpOw0KPj4+ICANCj4+PiArLyoNCj4+PiArICogVGhpcyBmdW5jdGlvbiBzaG91bGRuJ3QgYmUg
dXNlZCBieSBhbnlvbmUgZXhjZXB0IFJETUEgbm9uLU9EUCBjYXNlLg0KPj4+ICsgKiBUaGUgcmVh
c29uIHRvIGl0IGlzIFVBUEkgbWlzdGFrZSB3aGVyZSBkbWEtYnVmIHdhcyBleHBvcnRlZCB0byB0
aGUNCj4+PiArICogdXNlcnNwYWNlIHdpdGhvdXQga25vd2luZyB0aGF0IC5pbnZhbGlkYXRlX21h
cHBpbmdzKCkgY2FuIGJlIGNhbGxlZA0KPj4+ICsgKiBmb3IgcGlubmVkIG1lbW9yeSB0b28uDQo+
Pj4gKyAqDQo+Pj4gKyAqIFRoaXMgd2FybmluZyBzaG91bGRuJ3QgYmUgc2VlbiBpbiByZWFsIHBy
b2R1Y3Rpb24gc2NlbmFyaW8uDQo+Pj4gKyAqLw0KPj4+ICt2b2lkIGRtYV9idWZfdW5zdXBwb3J0
ZWRfaW52YWxpZGF0ZV9tYXBwaW5ncyhzdHJ1Y3QgZG1hX2J1Zl9hdHRhY2htZW50ICphdHRhY2gp
DQo+Pj4gK3sNCj4+PiArCXByX3dhcm4oIkludmFsaWRhdGUgY2FsbGJhY2sgc2hvdWxkIG5vdCBi
ZSBjYWxsZWQgd2hlbiBtZW1vcnkgaXMgcGlubmVkXG4iKTsNCj4+PiArfQ0KPj4+ICtFWFBPUlRf
U1lNQk9MX0ZPUl9NT0RVTEVTKGRtYV9idWZfdW5zdXBwb3J0ZWRfaW52YWxpZGF0ZV9tYXBwaW5n
cywgImliX3V2ZXJicyIpOw0KPj4+ICsNCj4+DQo+PiBXZWxsIHRoYXQgaXMgZXhhY3RseSB0aGUg
b3Bwb3NpdGUgb2Ygd2hhdCBJIGhhZCBpbiBtaW5kLg0KPj4NCj4+IFRoZSBSRE1BIG5vbi1PRFAg
Y2FzZSBzaG91bGQgZXhwbGljaXRseSBub3QgcHJvdmlkZSBhbiBpbnZhbGlkYXRlX21hcHBpbmdz
IGNhbGxiYWNrLCBidXQgb25seSB0aGUgZG1hX2J1Zl9hdHRhY2hfb3BzIHdpdGggYWxsb3dfcGVl
cjJwZWVyIHNldCB0byB0cnVlLg0KPj4NCj4+IFRoaXMgaXMgZG9uZSB0byBleHBsaWNpdGx5IG5v
dGUgdGhhdCBSRE1BIG5vbi1PRFAgY2FuJ3QgZG8gaW52YWxpZGF0aW9uJ3MuDQo+IA0KPiBXZSB3
YW50IHRvIGFjaGlldmUgdHdvIGdvYWxzOg0KPiAxLiBQcm92aWRlIGEgbWVhbmluZ2Z1bCB3YXJu
aW5nIHRvIGRldmVsb3BlcnMsIHJhdGhlciB0aGFuIGZhaWxpbmcgbGF0ZXINCj4gICAgYmVjYXVz
ZSBkbWFfYnVmX21vdmVfbm90aWZ5KCkgd2FzIGNhbGxlZCBvbiB0aGlzIHByb2JsZW1hdGljIGlt
cG9ydGVkIGRtYS1idWYuDQo+IDIuIFJlcXVpcmUgYWxsIHVzZXJzIHRvIHN1cHBseSBhIHZhbGlk
IC5pbnZhbGlkYXRlX21hcHBpbmcoKS4NCg0KTm9wZSwgdGhhdCBpcyBzb21ldGhpbmcgSSB3b3Vs
ZCByZWplY3QuIGludmFsaWRhdGVfbWFwcGluZ3MgbXVzdCBzdGF5IG9wdGlvbmFsLg0KDQo+IA0K
PiBJZiBJIGFsbG93IGVtcHR5IC5pbnZhbGlkYXRlX21hcHBpbmcoKSwgdGhpcyBjaGVjayB3aWxs
IGdvIHRvbzoNCg0KQ29ycmVjdCwgdGhhdCBpcyB0aGUgd2hvbGUgaWRlYS4NCg0KPiAgICA5MzIg
c3RydWN0IGRtYV9idWZfYXR0YWNobWVudCAqDQo+ICAgIDkzMyBkbWFfYnVmX2R5bmFtaWNfYXR0
YWNoKHN0cnVjdCBkbWFfYnVmICpkbWFidWYsIHN0cnVjdCBkZXZpY2UgKmRldiwNCj4gICAgOTM0
ICAgICAgICAgICAgICAgICAgICAgICAgY29uc3Qgc3RydWN0IGRtYV9idWZfYXR0YWNoX29wcyAq
aW1wb3J0ZXJfb3BzLA0KPiAgICA5MzUgICAgICAgICAgICAgICAgICAgICAgICB2b2lkICppbXBv
cnRlcl9wcml2KQ0KPiAuLi4NCj4gICAgOTQzICAgICAgICAgaWYgKFdBUk5fT04oaW1wb3J0ZXJf
b3BzICYmICFpbXBvcnRlcl9vcHMtPmludmFsaWRhdGVfbWFwcGluZ3MpKQ0KPiAgICA5NDQgICAg
ICAgICAgICAgICAgIHJldHVybiBFUlJfUFRSKC1FSU5WQUwpOw0KPiANCj4gQW5kIGl0IGlzIGlt
cG9ydGFudCBwYXJ0IG9mIGRtYS1idWYuDQoNCk5vLCBhcyBmYXIgYXMgSSBjYW4gc2VlIHRoYXQg
aXMgd2hhdCB3ZSB0cnkgdG8gYXZvaWQuDQoNClRoZSB3aG9sZSBpZGVhIGlzIHRvIG1ha2UgaW52
YWxpZGF0ZV9tYXBwaW5ncyB0cnVseSBvcHRpb25hbC4NCg0KUmVnYXJkcywNCkNocmlzdGlhbi4N
Cg0KPiANCj4gVGhhbmtzDQoNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlz
dHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1z
aWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=
