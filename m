Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id C23E5CC72DB
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 17 Dec 2025 11:55:43 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 8FAF540140
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 17 Dec 2025 10:55:39 +0000 (UTC)
Received: from BL2PR02CU003.outbound.protection.outlook.com (mail-eastusazon11011032.outbound.protection.outlook.com [52.101.52.32])
	by lists.linaro.org (Postfix) with ESMTPS id DF8813F8EF
	for <linaro-mm-sig@lists.linaro.org>; Wed, 17 Dec 2025 10:55:32 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=amd.com header.s=selector1 header.b=lvqCx7sh;
	spf=pass (lists.linaro.org: domain of Christian.Koenig@amd.com designates 52.101.52.32 as permitted sender) smtp.mailfrom=Christian.Koenig@amd.com;
	dmarc=pass (policy=quarantine) header.from=amd.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ZX3aPkDz0zyYrG8UMd1/r0qkYstcuM0xAuoSLJ35w9MI1hi5kTB6TWggVptYZqaf1TKKaa7mt04AmTo2MeXl3b2LDKiTnnCO3KIcxXn6yhw43peGxRTi50Ac/e5usCJJZMmPUfSMzEQhU3WQZzNi4z9vzH/m/SF1pFGJeUqVeBeyj/jzLd7g/yyYpTmS0Ukwce3WBrxLXJTTebQYyZcFYa8Bn8o4a1I2YvKkWctxJShZNmy3/1AYs/khL0PO2TT5+wWDkhZBERwHhCbprJxKG63EdKJnWnDTMevFxKD5a0vzo7g+Nd76rvk9Fi4H2+XLi8/ayHHCkGKcg3aPNyub5A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=kS6QlIuOd1G7xfg38OhxwDaRL8hrG3LpZdNn+Z2la44=;
 b=jogMZCy4SD0B3MZG5d3TSrmo3bjcbvfOKh+WLGN6S3U8zH+fJRfoOfA0jqz+QVtM1RUVfU1YctBWURTpXA46Cbz4Fpwr9SkoxjLgFpbk8Bz0EJKH8Ha+H+H42ssGG5/pbeaRWfdeqfHFIAor2YWyHSVuAmrS1dG/TsfZ8doFQMJv5ml2gVPmoUh3hOfg6AWsalzIBRn/CkwkHP65uj7a/nLxzKz+QG3X+sedZ89/FIE9G4xJeTsGjlCk+LrfI/UiTcrhuuisepCu8dkpdfeAG/owWYKE7/wBWcZtf2T48RpvHA4CyXJndfeglb1UkTucMnq2ohNQYrVVv561/Bm0fQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=kS6QlIuOd1G7xfg38OhxwDaRL8hrG3LpZdNn+Z2la44=;
 b=lvqCx7sh6N92qubAqD3pjQIDYFdZg93GvS5mgYn4ydnLTFacdt24cWGCTc3SdbeKT5oyXBKaVLIy/P3/frbsYk9GA/9368fELvTp+ZzY0rqwu7Qkq/RphqTSgnkF9HmOX445xuGpcGiLSkSy3SfWfGtSNO9Dr9xwsif9CfG3xEI=
Received: from PH7PR12MB5685.namprd12.prod.outlook.com (2603:10b6:510:13c::22)
 by LV0PR12MB999093.namprd12.prod.outlook.com (2603:10b6:408:32e::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9434.6; Wed, 17 Dec
 2025 10:55:30 +0000
Received: from PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::46fb:96f2:7667:7ca5]) by PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::46fb:96f2:7667:7ca5%4]) with mapi id 15.20.9434.001; Wed, 17 Dec 2025
 10:55:30 +0000
Message-ID: <74b416f0-5bc4-40a3-93c2-ed5c5d2b56b0@amd.com>
Date: Wed, 17 Dec 2025 11:55:26 +0100
User-Agent: Mozilla Thunderbird
To: Lukas Bulwahn <lbulwahn@redhat.com>,
 Sumit Semwal <sumit.semwal@linaro.org>,
 "Michael J . Ruhl" <michael.j.ruhl@intel.com>, linux-media@vger.kernel.org,
 dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
References: <20251217102522.2790298-1-lukas.bulwahn@redhat.com>
Content-Language: en-US
From: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
In-Reply-To: <20251217102522.2790298-1-lukas.bulwahn@redhat.com>
X-ClientProxiedBy: YT4PR01CA0055.CANPRD01.PROD.OUTLOOK.COM
 (2603:10b6:b01:111::18) To PH7PR12MB5685.namprd12.prod.outlook.com
 (2603:10b6:510:13c::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR12MB5685:EE_|LV0PR12MB999093:EE_
X-MS-Office365-Filtering-Correlation-Id: 3a8cb680-4923-40fa-afd6-08de3d5acb93
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: 
	=?utf-8?B?bFZNZ05LZzJFREY4ZzVSeFQvS2k2ZWlBaGhnUWVHcUF4dmdZaFZpdnlvRDd2?=
 =?utf-8?B?MGM2aWExODdNejBja3hpcFVGVDdLaUs1OWtTcFQwZ2lZKys4NlNXMjlMQmhm?=
 =?utf-8?B?dzhuRUZadCtJdmFQeSt6U2NMTENTcnRCQjJvRzhLOTg0cTZzVFBRNFVLRURk?=
 =?utf-8?B?MjBpRUtnZ05HbW5iRUxEcElvWUREdHV6eUF1NVVlMk8ycUNXSHcvV2R6ZFNq?=
 =?utf-8?B?R0ZnbjNxaHlzdGhWK3BwTmk1VHpwdVlhTnREc1RYay9oWitUb1JpMzJaZXBT?=
 =?utf-8?B?Q3g4YW1MR1pNSHRrd09rQ3duOFBvUWhmMzdWblI1Q1pSRXNubUR1VmY5ZER0?=
 =?utf-8?B?QUd3YWVrSENMNTAycXIybkZyNmdCOFN0dkV1SHVhMkNaRnlyWkx1VEcyejlp?=
 =?utf-8?B?aTVvTldGcUY4cEd6SW9kaDZaWC9IemxYU3EvM3h5YXRKSDJaaVFhU1J2UHc3?=
 =?utf-8?B?UWo1L0NGc2VFSnpuS2xuNlpiNmk0U0w3M29MQVNuRmhUUHdkNGNGbENlQkZh?=
 =?utf-8?B?dkZQTzBuUzhHRmFnUXVBLzFEVVkxUHY5RGx3VWFlZkkzZUpWL0JCNko1Vmpm?=
 =?utf-8?B?d1I2d3dHUnltNHhTSnBWbWpGc09UZjRxdk9mZXVoQ1VCQWI5S25jZExQWFN0?=
 =?utf-8?B?WCtGaFh1QjBjbUVpWVQvMEdKeHVBd09kZC9OMXUwbU1tZkZxQ1ZjZm4wajNR?=
 =?utf-8?B?am1wVklnQnFxVUpEUFgxR1JBejUvZHZZRVpPbGhMR0xzaHZ1b0E1K1BTVkZs?=
 =?utf-8?B?Mmw2djRoR0ZJQkZLYmxaaXFjL3Q2ditrQ2hMN1hnZlBXQTZIdytZTlhsUkZx?=
 =?utf-8?B?MmlrSlVsQ1dVbUpFS0RxT1dRV2YvaWVZUFlaUnZyWXBTRk5OLzZncE1ZQ3I5?=
 =?utf-8?B?RFIybExUTStnL2V5cG1FT3R5QWNFM2p5TERFRW9EUFAvbUx4VjJNOFFEQTVT?=
 =?utf-8?B?MUFwSlA5TmI3bEYxWXhLcFdXRUZQT2Zhc1lxUEZRMHliZ3BVbTNaRkpSSlpT?=
 =?utf-8?B?Qm5XYjl0eXMzRTNDaHozYmF1cmwxSi9XQUFZK2xzcU13Vm5Xa1BLemk3RXBW?=
 =?utf-8?B?VFJub0dtWU1vcGdPcnc3UnhITmFXRXFqR050bEF1a0x2TG8xM0tGSUQrdUJ2?=
 =?utf-8?B?WVdjam90dzNGbWErQkdXbjBiSlVXTEZSSXc1VGREUW1IOHQ5MFFDblZOR1Bh?=
 =?utf-8?B?Zi9wQzZmQkhFM2twSDkvd2wraWlVRXE2YjFHTlRCd24rckFCNXNXUWEwZGw5?=
 =?utf-8?B?MlE1ZHBXOVFrYVVpU2ZiWW4xQ3NKNVdGcXhydlRJd1p4ZkdxbVFqVllhWTU4?=
 =?utf-8?B?TGhuUk9YSVhGaHVkSURiaGxiOTlZU0JkeVJ6RVQxcXNOUTFXV2xxaVdpNkt5?=
 =?utf-8?B?RGxmZzU3cDdySFlLd21KcnFXaFZXOFl0cDlYUkk5THprNVlzclFHYTJxSnNQ?=
 =?utf-8?B?ZlZsdUkvYk01UFZjdnB6SnBudWJ6aUFKVmRBaFVJaU9oMW81U1pNcEo0dFdT?=
 =?utf-8?B?c2N1Y2YwdzBONzdKdS95bldKS3J0dC9PMHh3cU5BdENvZGxKa2MvbjlmbTY3?=
 =?utf-8?B?b09PK2I1KzJPcVc2cTZHU01QVUtWYU96U3hsTS9ZZjRRVG40ZHpCUUtkamNo?=
 =?utf-8?B?QXc5N2dFdzl0NkZtOTRvMFV5Y3RCQXdGdTI0WkhTNUNXNi96MXQvWlRuRmNw?=
 =?utf-8?B?cFIvNnFLbjIxV3dISkV6ZTR2Y09hcnZkelV3MDlGcVNwWnppNzAyR3VsT055?=
 =?utf-8?B?S3d4OHczbmFnTVZLN3REcS9PeThZc25ZV1ZHbzJKN0lMajJFeEpKdjVaVVhk?=
 =?utf-8?B?aEFMdXdaSVNlZ0hBbHRRMWYxc1BJMDVTRDlBR3FjbWtGZlNIRW90bzNNM3hC?=
 =?utf-8?B?djlybHA4blQxWlArK3RiNmsrTlNTQ0lYTUJSU2phVzJjcGhVTFNQZnJxeW5l?=
 =?utf-8?Q?Ff0yf2AsbcxBFZ5T5pYlT6TC2TEuKTc0?=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH7PR12MB5685.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(1800799024)(366016);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?dWVqSHA2dEtTcFlCVW5TTmhsalNFNXVrVkg3RWlMbS9DQURoZ2JrWEFSb2k1?=
 =?utf-8?B?eURkSC9MQ1lJWi9WSEtBcTZ2NVI0bm5LQlo0RXFQd0hkYmdKek12SGQ1NEls?=
 =?utf-8?B?Wnc4NVFSMTBUS0RmeVZJenBPUnlUNVZpQzdRR2NaK3EzRGRsQW9ZajYwYitS?=
 =?utf-8?B?bjlCN1FHNFBHRTMyb1pML2ZEb3ZnTThQNzBocXZOVnBRMm16SjA4TENlSUQv?=
 =?utf-8?B?cnQydk85VDNzbWRJUWdBSVgyRkRJTVk3RSsxU3IxU2tzM21WOTN1bVJsSzk0?=
 =?utf-8?B?bndRS21EaUpmSWVnc0lIa0w4NlI3elE3Q2szL0FsRDVOMnhQVG43Y2FRbXNY?=
 =?utf-8?B?ZVlQZzFNMDUraDNETm1ySnJCV3JpMXorMCttL1J2ZjdOUFRIaEhJYlJDVTUv?=
 =?utf-8?B?d1Q4OUN3a1RxSCtaVlJCOURBTmpGVVVVVDRISkNUR0RKYm5Pc0ZFQ29OTEpU?=
 =?utf-8?B?KytUeHlpR3VpMGxPdVFVUGQ1UG9hVHlpMTZvWnk5MU1oalF6eVB6VktvTStC?=
 =?utf-8?B?bDhMK1N6WE5Xb3QweHpLSkp3U3BZUitPZURwOFk2NHV2U0pMNm44UWdjckY5?=
 =?utf-8?B?aFJNb1N3aEZlaXh4R3R0MXZ6NXdzTlpjSjE1WHdJSy8vS0RrelJoeFFINFZS?=
 =?utf-8?B?dkxkQXA0V0NkTTNKSHh3aVY5SEVwRFA0dWg1RE5Vb2tLcHhoaitHaTZpWmxj?=
 =?utf-8?B?TXIwSGR4WDBENjdad0NUWnptYkJFS28vOExRMlBVU1QxN0lGOGxrektZWFNv?=
 =?utf-8?B?NlFjUDBtSTgxNlJGUGIyam1FY1ZZbkYzVE9oMGlWN3pJVm1rOWFLMm85b0FM?=
 =?utf-8?B?aUp5ckNpbzNzWXV1N2hQNHQ5WEhPeE9Fb2VVdDZuSTBEY3hpanNPZnlkcUNu?=
 =?utf-8?B?VE0weHVDTmQ2czN3d041cHZxWTVRdzZwcVgvOXpoRDR3UlVhWFlWT282NktG?=
 =?utf-8?B?ekpOWHZnV3JkVG5jN3A0MTI0NGQ2UEhlM3lCMHlXYXR2LzFQME50ckQ4ZEo0?=
 =?utf-8?B?Y2JXRkZZM0pCTHhNYTRaQ0hsTHd3d1hlSU1Eay9rbDYzY1BEZllQQ1RBSHZQ?=
 =?utf-8?B?bFc4UVFneTBhbFhucUw3RWROdCtEdGE0byswMVppdTdhT0xFZ0kzWXFVZ3Rs?=
 =?utf-8?B?T3NsVW52bmNYTkY1N0w3L0VqUEVCTjZyVnZJbHNzTXlxUDA0K0ZUb1h5ZjRB?=
 =?utf-8?B?bW4rMnNtdjJtYWZ4Z2gwK1hldyt6STgwRTNlcExHbmFqbnF5UVBpd2VmajlJ?=
 =?utf-8?B?K3pUOEdjVWhhaHJNWUpDeVNwbEowVkcvb3FsaW5TaGNyK2dCU0VrVE1jWXkw?=
 =?utf-8?B?VXJQVTVkNEI2a1djQ1Q1Wk1yQmJoSTFLWkw5WTJFajQrNHBSbldRd2tJekI1?=
 =?utf-8?B?cTA5M0pVblpESGk0aVEyUlBtSHVKQXN3ZC9rTlllUFpVTFo3VzZLZTYzdEVx?=
 =?utf-8?B?SFVPTWdHckZYN0c0OGxKbVZOc3NTVWFvV3NWeXNzRnRPajZrTEVEaFRuZ3dY?=
 =?utf-8?B?MDh1eUc1WkJUdzkzRm81d1FmWDQ0UHo1cFpsNERvRTg1YU5Qc1VyVi81bmxG?=
 =?utf-8?B?NkFPZFNCQWpBQWRhNG1HM3FETTNOaHFvSWVxQks2Tjgzam9FL0pSMDljREUv?=
 =?utf-8?B?RER6ZDRkT1pMQzhJRkdSVEUzL1FHSy9mZFYrVGFZMFI4RVI2ZWpjaktndU4x?=
 =?utf-8?B?aDE3NkhLTDJ6NEllU2tBKzVqa2pzMk53YzJyeXJoUVBSUWNxOTFzSFJNWGps?=
 =?utf-8?B?L0RUVEQ5VXFzRFI0WkZMWWNlditLdVZEMFd5d2Vld2txYXNQU2xkQml5enN6?=
 =?utf-8?B?OFYxdEhIdXRrcjFVeGJyTVJ0WmVEM24vY0RVN25rTXNQUWs2ckJtem9hRVU4?=
 =?utf-8?B?bmFBV09udExpUEZVRmZ4Y1RuTm1Wc1FYYXdobmNaaVFmdFRId1hROHM0Q2Uv?=
 =?utf-8?B?UVMxZFlyYklSVS92ZmhMTHZteFVwWFdiNUJXcWFaSEF0aXAyREwva0FoYXd6?=
 =?utf-8?B?enNadGFhMjVhbFJFUHV5NVBvOGZWdy80SEpKSzlWcWM4UTBFb1ZrYmx3WmEv?=
 =?utf-8?B?VU84endPdStwczZaeXBJcUxKQllSZ2dDSFBiVkp6b3MzMmZvenhJa3I0eEZs?=
 =?utf-8?Q?XyXBM3IFFg6GTiitoZL9y90Og?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3a8cb680-4923-40fa-afd6-08de3d5acb93
X-MS-Exchange-CrossTenant-AuthSource: PH7PR12MB5685.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Dec 2025 10:55:30.6806
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 6qtros2h6YJ+O1hxPqR3hhDqxPd/epO21m9Anx32uQNQxFSV6d1u/akcN6+8XjN3
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV0PR12MB999093
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-5.00 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[amd.com,quarantine];
	R_DKIM_ALLOW(-0.20)[amd.com:s=selector1];
	R_SPF_ALLOW(-0.20)[+ip4:52.100.0.0/15];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_POSSIBLE(0.00)[52.101.52.32:from];
	MIME_TRACE(0.00)[0:+];
	BLOCKLISTDE_FAIL(0.00)[2603:10b6:510:13c::22:server fail];
	ASN(0.00)[asn:8075, ipnet:52.96.0.0/12, country:US];
	RCPT_COUNT_SEVEN(0.00)[9];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	RCVD_TLS_LAST(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	DKIM_TRACE(0.00)[amd.com:+]
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: DF8813F8EF
X-Spamd-Bar: -----
Message-ID-Hash: RAVUMGSRFBVJED6AULIPOBDYKFWBNTHR
X-Message-ID-Hash: RAVUMGSRFBVJED6AULIPOBDYKFWBNTHR
X-MailFrom: Christian.Koenig@amd.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: kernel-janitors@vger.kernel.org, linux-kernel@vger.kernel.org, Lukas Bulwahn <lukas.bulwahn@redhat.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] dma-buf: really enable DMABUF_DEBUG by default on DEBUG kernels
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/RAVUMGSRFBVJED6AULIPOBDYKFWBNTHR/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gMTIvMTcvMjUgMTE6MjUsIEx1a2FzIEJ1bHdhaG4gd3JvdGU6DQo+IEZyb206IEx1a2FzIEJ1
bHdhaG4gPGx1a2FzLmJ1bHdhaG5AcmVkaGF0LmNvbT4NCj4gDQo+IFRoZSBpbnRlbnQgb2YgY29t
bWl0IDY0NjAxM2Y1MTNmMyAoImRtYS1idWY6IGVuYWJsZSBETUFCVUZfREVCVUcgYnkgZGVmYXVs
dA0KPiBvbiBERUJVRyBrZXJuZWxzIikgaXMgY2xlYXIsIGJ1dCBpdCBtaXhlcyB1cCB0aGUgY29u
ZmlnIG9wdGlvbiBuYW1lLiBUaGUNCj4gY29uZmlnIG9wdGlvbiBmb3Iga2VybmVsIGRlYnVnZ2lu
ZyBpcyBuYW1lZCBERUJVR19LRVJORUwsIG5vdCBERUJVRy4NCj4gDQo+IEZpeCB1cCB0aGUgRE1B
QlVGX0RFQlVHIGRlZmluaXRpb24gdG8gdXNlIHRoZSBpbnRlbmRlZCBuYW1lLg0KPiANCj4gRml4
ZXM6IDY0NjAxM2Y1MTNmMyAoImRtYS1idWY6IGVuYWJsZSBETUFCVUZfREVCVUcgYnkgZGVmYXVs
dCBvbiBERUJVRyBrZXJuZWxzIikNCj4gU2lnbmVkLW9mZi1ieTogTHVrYXMgQnVsd2FobiA8bHVr
YXMuYnVsd2FobkByZWRoYXQuY29tPg0KDQpBaCwgeWVhaC4gSSBtaXhlZCB1cCB0aGUgQyBkZWZp
bmUgdnMgdGhlIGNvbmZpZyBvcHRpb24uIFRoYW5rcyBmb3IgcG9pbnRpbmcgdGhhdCBvdXQuDQoN
ClJldmlld2VkLWJ5OiBDaHJpc3RpYW4gS8O2bmlnIDxjaHJpc3RpYW4ua29lbmlnQGFtZC5jb20+
DQoNCj4gLS0tDQo+ICBkcml2ZXJzL2RtYS1idWYvS2NvbmZpZyB8IDIgKy0NCj4gIDEgZmlsZSBj
aGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMSBkZWxldGlvbigtKQ0KPiANCj4gZGlmZiAtLWdpdCBh
L2RyaXZlcnMvZG1hLWJ1Zi9LY29uZmlnIGIvZHJpdmVycy9kbWEtYnVmL0tjb25maWcNCj4gaW5k
ZXggZmRkODIzZTQ0NmNjLi40MjZjOWFkMzM2NGYgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZG1h
LWJ1Zi9LY29uZmlnDQo+ICsrKyBiL2RyaXZlcnMvZG1hLWJ1Zi9LY29uZmlnDQo+IEBAIC01NSw3
ICs1NSw3IEBAIGNvbmZpZyBETUFCVUZfTU9WRV9OT1RJRlkNCj4gIGNvbmZpZyBETUFCVUZfREVC
VUcNCj4gIAlib29sICJETUEtQlVGIGRlYnVnIGNoZWNrcyINCj4gIAlkZXBlbmRzIG9uIERNQV9T
SEFSRURfQlVGRkVSDQo+IC0JZGVmYXVsdCB5IGlmIERFQlVHDQo+ICsJZGVmYXVsdCB5IGlmIERF
QlVHX0tFUk5FTA0KPiAgCWhlbHANCj4gIAkgIFRoaXMgb3B0aW9uIGVuYWJsZXMgYWRkaXRpb25h
bCBjaGVja3MgZm9yIERNQS1CVUYgaW1wb3J0ZXJzIGFuZA0KPiAgCSAgZXhwb3J0ZXJzLiBTcGVj
aWZpY2FsbHkgaXQgdmFsaWRhdGVzIHRoYXQgaW1wb3J0ZXJzIGRvIG5vdCBwZWVrIGF0IHRoZQ0K
DQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8t
bW0tc2lnIG1haWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8g
dW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxp
bmFyby5vcmcK
