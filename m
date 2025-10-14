Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 6152CBD984A
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 14 Oct 2025 15:04:37 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 4204945D75
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 14 Oct 2025 13:04:36 +0000 (UTC)
Received: from CY7PR03CU001.outbound.protection.outlook.com (mail-westcentralusazon11010003.outbound.protection.outlook.com [40.93.198.3])
	by lists.linaro.org (Postfix) with ESMTPS id DDA544402D
	for <linaro-mm-sig@lists.linaro.org>; Tue, 14 Oct 2025 13:04:32 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=amd.com header.s=selector1 header.b=mf3WPeKP;
	dmarc=pass (policy=quarantine) header.from=amd.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1");
	spf=pass (lists.linaro.org: domain of Christian.Koenig@amd.com designates 40.93.198.3 as permitted sender) smtp.mailfrom=Christian.Koenig@amd.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=WxbEXUQbPxFcu0T+bTxwAenCAFR1d50tbniG6zoZj3CI2IvzRlXuFgpETZTYJ1UdUS5HmXkBhheGjUefQHbezQyuHR8iYzm3EwK0lE3a9wCFFCBk3o6Aw4uTMI4Pgd0Y0sTAuaUA9xJwyxvhzh0E1z9claAP/8kT1FkCHmP4STNOlScmiSvkqiJT4GFLwTBb+yTlzN3i1J0O1ylS2X2dgkr+UOiqx016rxH1ipP5X+NRB5G1e+hnAi3UHr2zpImPrXvDWQ6jMX6xPYqIwucRqxXoST2gOxuLWS5giM5f+w5adEcfM/HGEZKSfPsrTz9kq88/z38RhNYEtdsYiOipfg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=8G/nOydD9+WHaZ0PVMW4MPIf/EbVosDLP5NEj9lFhXk=;
 b=kYZVudvAX6hQ1ROEVSb+8GCy9SiFAQNEGe7Hvd+dTdWD7MTD6JQ2flIfO2G2bWCx6a9lMQGma548MeAwlxDdtW9f6gvyC9E8rYdk8lYivJHZVHS4yOT40os458o8rNysqkJ5Ha0fMnBPVQuyIgzIkxBpB1C/8j1GEUpAe+hR8zc3GdZFKAuNJLDM1WFi7pq+k08PpwJbTSq5HO0DgSbu5MbM6qfyR/A4SrufdlInGeIw9UteFHAOIRRVnhKhw6wX7ZlFem0g6OiS7KAMbcq4ewvIQ+Q7BNr+jxv93yH2TrjWx0Y0SOhM3qFlyhLWh4dg3nbSn2RwWtR9YwdshiXVfg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=8G/nOydD9+WHaZ0PVMW4MPIf/EbVosDLP5NEj9lFhXk=;
 b=mf3WPeKP8S+MmyTvdjwrKjfMa29JlPYFJ+li2qbcYzNSKsendTIaIDlwwPcFpZKpcsprCyK+Rv+8oMVErzvtBC3n0Z0D88tClwhGYZy3TW9DeWzQMFtQozXq9utm4oRGYHoTd9SkssaeHA2hG3vhGA1MFvvNj4XhiPaf35vuDJA=
Received: from PH7PR12MB5685.namprd12.prod.outlook.com (2603:10b6:510:13c::22)
 by PH7PR12MB7796.namprd12.prod.outlook.com (2603:10b6:510:275::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9203.13; Tue, 14 Oct
 2025 13:04:25 +0000
Received: from PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::46fb:96f2:7667:7ca5]) by PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::46fb:96f2:7667:7ca5%4]) with mapi id 15.20.9203.009; Tue, 14 Oct 2025
 13:04:24 +0000
Message-ID: <ecba7133-699c-4f3e-927c-bad5bd4c36a3@amd.com>
Date: Tue, 14 Oct 2025 15:04:14 +0200
User-Agent: Mozilla Thunderbird
To: Zhaoyang Huang <huangzhaoyang@gmail.com>
References: <20251014083230.1181072-1-zhaoyang.huang@unisoc.com>
 <20251014083230.1181072-3-zhaoyang.huang@unisoc.com>
 <87953097-a105-4775-88a5-9b3a676ff139@amd.com>
 <CAGWkznGN7W-txq_G+xpZ6DtH_1DNorYc=CxqUjebo7qfB4Sxsw@mail.gmail.com>
Content-Language: en-US
From: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
In-Reply-To: <CAGWkznGN7W-txq_G+xpZ6DtH_1DNorYc=CxqUjebo7qfB4Sxsw@mail.gmail.com>
X-ClientProxiedBy: FR4P281CA0017.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:c9::13) To PH7PR12MB5685.namprd12.prod.outlook.com
 (2603:10b6:510:13c::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR12MB5685:EE_|PH7PR12MB7796:EE_
X-MS-Office365-Filtering-Correlation-Id: 9b80f179-a64e-4049-e964-08de0b223313
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|7416014|366016|376014;
X-Microsoft-Antispam-Message-Info: 
	=?utf-8?B?QWltQ2ozdjRIYjNFdG1reUNCZWxBUFpKdS8zMFY2WnpuWi80TEpnMGttVDRC?=
 =?utf-8?B?WTlyckhrbVhyUnFDN011ck1uUGM2NWtCby9uR3hNcUoyY1RKKzEwdkFyK3Vt?=
 =?utf-8?B?Mm12L2R3SUhMaVZyKzJEMytMVjZUbkxmakFLMXFkVm85WS9rTHVVdGs1RjNG?=
 =?utf-8?B?NTNiTTdwU3duZGxiblovZTUxSkFYUjZCWDFBeHovOHR3cEd0M1huSXM0WkRz?=
 =?utf-8?B?bkRQR05oenZRM0hidkJEU2lOVnd4anFmc1h5bGI3OUlrS05rWWRkVzZZbHJW?=
 =?utf-8?B?eERaNTc5RElIdXE5NWgwN2Q2eW5NbXhWdWtXeCt3ME9xYWs2NG02WDQzQVZC?=
 =?utf-8?B?YUVHZjFzOFRYcXFIQkVCVnRBZCtLRXBRVGV4a2RqZ1I3SktGMi9JL2ZVRVgy?=
 =?utf-8?B?dkdXaGIyOHhOR3A3OEFsWnUwK0ZzQmxZZXc2THdtZTZnQ3NUbFdJNHV5M2x0?=
 =?utf-8?B?Z3BxK1d1bmZHdkNBTVdsZ0JFYzdpOThKVzlYMWhZbDh3Q3hqTDA0M21PSDda?=
 =?utf-8?B?bmdjeWl0azJjdEdRUmhjZ1plUk5SRHhnTGtmbzMxWG16cHJLbmlzamx4YlZK?=
 =?utf-8?B?bFd2NTJJZjVDUGN0L2VJeEwzd1I2b2UrSTM1R2NIT0VlKzZDMi9QcGFLcVZF?=
 =?utf-8?B?YUpkcXMyTjc5TVZHT0lIT3hIYW9KUGRHRHk1Q2pCZFYwOUtCbXNiMm5Xa3Np?=
 =?utf-8?B?Sm1aTmlDRG9UUFZMVUZsT21mUlhCVTlqSmpGOXFqUU5RaXZnNXBINEdGUno1?=
 =?utf-8?B?S1JpcXJRM1ZZVFVHbE8ydHJoL042Y1NhYjhXQS8yWWtVeWxwTzZabW1XL211?=
 =?utf-8?B?V0RlWmdzd0N3WFcya2lvNjBSQ1VKalNVVWh5RG1DWUhSNnVKQmZoNElrVXNV?=
 =?utf-8?B?NWdNMllxSmtRd2VLWkZ6QzE0RXBKWHp2bGl5SmlsQmdEVmRUQ0xkT0dyUU1l?=
 =?utf-8?B?a0xqemYrL0hyLy9nSThrenZPWm02Wk5mR1U2YUNzZWEvSys3WmFVdVJGeC8r?=
 =?utf-8?B?elJwcEN5Z0YyTTM1N3JRS3hPeGJhQnFrWXJaLzYyb0NhT3U5QitCTmhyeGla?=
 =?utf-8?B?dkczck9lTmJDY0pQUTFpUjR4VGJTV2lNU2RuNVpoWXEvcFFiWEZTU1ZhNXlX?=
 =?utf-8?B?R2plbDRKVWJXa2ZtV3BlM1FGYURUcnpLU0h3VmhkQm9RbDR5T2pVT0JuaS92?=
 =?utf-8?B?T1poMzlQRlM1b1pkZW9KRC9lWnZPcUxXTUdWL1k2TTI3eTN4VlZ2TGt1UndS?=
 =?utf-8?B?R3dWd3p3bGJXNXE1aHBhTlJSZTJCN2kybjhpN2FDcHQ5YWIwdHNFTEVUZnZC?=
 =?utf-8?B?WVB1bDBnU0lTbld5VEJ0VVhIQUFJRnIxdlRVMkxUWm1hM2QwdHJSVWhPc3JW?=
 =?utf-8?B?MHJuSlkrM2l1emswaXR0TWNhUlEva2Z2UzJ6QkloNlcvdS9Vcy9FVXpZYWtR?=
 =?utf-8?B?Y3dhTXMzZzBVdDZQSmZCY0MweFkzMUo0MDhoQWhrM0dvb0F5RFc1aDBhcml4?=
 =?utf-8?B?S05lZUxuNXFnalJzOUFXWEFIR1MwbkQrS2pzcDBlUTNqUG5FbEpmMUUvOW5q?=
 =?utf-8?B?UStwNnZ3Zlc0WllSRUhiNFgwekE2RHhPQ1p2d2NYa0Nuek16M1NuVWQvMXNV?=
 =?utf-8?B?c2hnRSs2aFdFdnh0ZG0ya0w3Y0o4NkNlK2c1SjlDa20ySzlrUkxYUU5rNWp4?=
 =?utf-8?B?THFNOUZ0aVdTV25weXN1Q2VuWVZac0MwOFVXTU1KSmlBVElJT2Vxeml2TmE5?=
 =?utf-8?B?ci9jTHVGc0xQUE9tYU5oVmhkVSt4Zm00NTJaYUJSeWtqenB3c3VBamlTUHBV?=
 =?utf-8?B?bVRPK0czS2lZSStCOXJHNWU0aHlvbnZQUDN0Ly8vUC85VlRaZ2oxZnUxbFJy?=
 =?utf-8?B?YjN4ZkNRV3U4bmZNQmhnWHdXb24vODZZTmgzcHg5bSthT1hTbzQxamJNR2Vp?=
 =?utf-8?Q?MwQNwqG6POHPGvVKq6exryH2ngzaU2sD?=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH7PR12MB5685.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(7416014)(366016)(376014);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?ZTdRL3lQNnc5bEd6dVQ5bEdwMEdwWEpvTXNCWDROZWtkKzhsOEE3SVc5ZCsw?=
 =?utf-8?B?V1VqY2tqaUxHc3gxNURvVW5iNWdrdnpqNnhjSzhBUzJYZitFa0RybGRrVUtn?=
 =?utf-8?B?enJrbFVvOFR0bnUzd25ESGE1cldKWFpwekpRczRxYzgxbVR1OFM3NHB4dEJj?=
 =?utf-8?B?N01HNDlXSWlDcHQrOTU1a3d0Y2MyTG5vN1FuUTV3OVgvR2R4TkhZVHBlemFO?=
 =?utf-8?B?em8wbDY3MkwyQXVSMFFOaDZNZEdlQnhmMWg3NTBSeXJ2c1J2bVJnR1N4SVRD?=
 =?utf-8?B?eXZxelV4S2xlbEt5RnZFSVZLYWc0U1NtZzNPN2l5YTZZY3dmc2xtbk1uMGJJ?=
 =?utf-8?B?NDNiR2psbTcvSTJqSFhOT1IzZC9ZZ1ZjV3k2SFZnUWdoZy8vOEhITkFZejJ6?=
 =?utf-8?B?NWdqeURhY2N5RWZOKy9Uc005NFVuS1BZZVBjYUxIc084dlM2bGRwcG1TUEdW?=
 =?utf-8?B?VzFuOHoxcldQTnozV2J2NGJZdmlldkM2THdMV1dXY0MxNUpYTE9xRVlQNkxH?=
 =?utf-8?B?SHlIcWpuWXJIRlhwM1FjVTIvdE0zNWt0dFAra2JxVGc2cEdVc0RIdDU0Wm53?=
 =?utf-8?B?dTAvTm9ZWjdtOFlQRXpXMFdxMC9GekxGc0xjdzhrdHB4Zkk3aG84MHZmZ1ls?=
 =?utf-8?B?SGNIaGlEUm50U2hidFpzZFczNE9tN1JiUS8xOXBxbWgvU250NFFJcnl3UjJH?=
 =?utf-8?B?Mm5WWFpkTVpIQTcySVdtTU9JTXBFekh3RndOeHdsV1J5KzBoRUE4dzgyckJv?=
 =?utf-8?B?cG1CemRVQ0RFZ09Eck5NQVBOdGMyZWpCekZXYkhqV2pXMUJ3R1o5U3I5MVNQ?=
 =?utf-8?B?WWZ0MFB3VEVDVUZweitBMWVJekl1Z1NYRzNIMGI5RWZJMk9yTjhNeDNzS1ly?=
 =?utf-8?B?UCszWFJoM2RKWDZPOU54a2JERm5XNnpRcGlkODNaeGdBZHlvUmVEWmlvODJE?=
 =?utf-8?B?aUw3UHFUWlJxNHd2RHQ0V0FPaEhlcFVqN25OdGVPamwzTk9NOUhGcDRkSmJZ?=
 =?utf-8?B?emMrWFZFZUlPc2tQYXJQY1ZINjJIWTkvS29sZXU0SUZQdlRwb2JXUEtEY2tK?=
 =?utf-8?B?d3NabFNDZFVqaWExYTE1K093clVCN3BxelBuUU1EZ09wczRJYytyWDZuQSt5?=
 =?utf-8?B?dTFkSC9QdWxiY0d0TmZvZG9JY3dXdjBRMm91eVdpQ0VtdzlydEdmMzV2blJu?=
 =?utf-8?B?Q2VyQ3ozeS84Q0crbnNBM3h2QSs3UVFGTkFGSGhXWlkyd3hvYVR5WkdiMXJo?=
 =?utf-8?B?WHA0Wit0aDg3WEhTM1ZVWSt2cVVVMG1EQmphM1NWdnBkYzJ4ZE4yVlFkcjJV?=
 =?utf-8?B?MVVwYURtdnRUby9yMjJKejBXQk1zMGl2anJqbUtoU0hNTXQ3S2JoU1pkMGx2?=
 =?utf-8?B?aHZOd0VwVkFkNE01VWRoUzNnUkN6dTZmT0JrUHdneHgySVhKWmorQ3o0N0Vu?=
 =?utf-8?B?YTZ4RlZObVRQTWdnNmpjeWtDUFMxZlBYem5mSjhjL0s3YjVTQWhsVERxcVds?=
 =?utf-8?B?Y3RIQVVLY29rUVRGYWQydW1va0E5SHhSNjF6NHNVNnZoV3J4K21IVXFVdWV2?=
 =?utf-8?B?cVBCaHI5UUVLNnFaWmZ5NDVTRXYrSURONXhDZWFjTjNIcCsyZ2lBNjNHNUFH?=
 =?utf-8?B?dGE4VWx2Y2g2OFlGUFg0MnFDZy9VWjFTdFNmUlFzK0dIY29qWEhFMHJrYlY4?=
 =?utf-8?B?YXV1OVdPd0dMYjlUTDdhNVk5aHZQMHJKbDJNV3liWVVDaDN1UDhCRm1lUDM0?=
 =?utf-8?B?b01YanVwU0FaY2ZhN2hlWmhBQ3dLVkxlWjNsd3FNUC9VRVFxNjAzRzArV29s?=
 =?utf-8?B?alVPRTk5RTFUVmR2WG1NdHo4a0pjb1Zta25DM2MxZmxFeVZ5QUpmWlBwUytD?=
 =?utf-8?B?UnQ3Wm5sVHUzb3RId2ZxSndicHNzbkg0ajJIbW9ic3orY1RYamk0bjhEZzBU?=
 =?utf-8?B?RzFjSDVlTXNhUHdERzc4ZzhVdVdZUnhvc0Y2bWVZbGtIRDZiRFV2aGphdDMz?=
 =?utf-8?B?UkRRNWF2Znk1RGl1OWhGdUpSNFNhdjhCSk9ieTVUaGoyV2RTYnBlUE1zdFpy?=
 =?utf-8?B?LzdkY0dTZ0RMR0xzYmhBRlJOdHZYNnE0Q0dEZXRGMHpHbXRsSC8vWGhZLzRM?=
 =?utf-8?Q?18i8=3D?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9b80f179-a64e-4049-e964-08de0b223313
X-MS-Exchange-CrossTenant-AuthSource: PH7PR12MB5685.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Oct 2025 13:04:24.8735
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: YBqhmDMnk3efOj7KhWx6JGRLjoAw8NHDBnLAIQax/qtGyfHZc1BvbZXQ7JMXKwY5
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR12MB7796
X-Rspamd-Queue-Id: DDA544402D
X-Spamd-Bar: -----
X-Spamd-Result: default: False [-5.00 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[amd.com,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:40.92.0.0/15];
	R_DKIM_ALLOW(-0.20)[amd.com:s=selector1];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_POSSIBLE(0.00)[40.93.198.3:from];
	RCPT_COUNT_TWELVE(0.00)[18];
	FREEMAIL_TO(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:8075, ipnet:40.80.0.0/12, country:US];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	RCVD_TLS_LAST(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	DKIM_TRACE(0.00)[amd.com:+]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: XFOPM4LTECIBMOR7Z7KTXYP3AGMLA2OQ
X-Message-ID-Hash: XFOPM4LTECIBMOR7Z7KTXYP3AGMLA2OQ
X-MailFrom: Christian.Koenig@amd.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "zhaoyang.huang" <zhaoyang.huang@unisoc.com>, Andrew Morton <akpm@linux-foundation.org>, David Hildenbrand <david@redhat.com>, Matthew Wilcox <willy@infradead.org>, Mel Gorman <mgorman@techsingularity.net>, Vlastimil Babka <vbabka@suse.cz>, Sumit Semwal <sumit.semwal@linaro.org>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>, "T . J . Mercier" <tjmercier@google.com>, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-mm@kvack.org, linux-kernel@vger.kernel.org, steve.kang@unisoc.com
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 2/2] driver: dma-buf: use alloc_pages_bulk_list for order-0 allocation
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/XFOPM4LTECIBMOR7Z7KTXYP3AGMLA2OQ/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gMTQuMTAuMjUgMTQ6NDQsIFpoYW95YW5nIEh1YW5nIHdyb3RlOg0KPiBPbiBUdWUsIE9jdCAx
NCwgMjAyNSBhdCA3OjU54oCvUE0gQ2hyaXN0aWFuIEvDtm5pZw0KPiA8Y2hyaXN0aWFuLmtvZW5p
Z0BhbWQuY29tPiB3cm90ZToNCj4+DQo+PiBPbiAxNC4xMC4yNSAxMDozMiwgemhhb3lhbmcuaHVh
bmcgd3JvdGU6DQo+Pj4gRnJvbTogWmhhb3lhbmcgSHVhbmcgPHpoYW95YW5nLmh1YW5nQHVuaXNv
Yy5jb20+DQo+Pj4NCj4+PiBUaGUgc2l6ZSBvZiBvbmNlIGRtYS1idWYgYWxsb2NhdGlvbiBjb3Vs
ZCBiZSBkb3plbnMgTUIgb3IgbXVjaCBtb3JlDQo+Pj4gd2hpY2ggaW50cm9kdWNlIGEgbG9vcCBv
ZiBhbGxvY2F0aW5nIHNldmVyYWwgdGhvdXNhbmRzIG9mIG9yZGVyLTAgcGFnZXMuDQo+Pj4gRnVy
dGhlcm1vcmUsIHRoZSBjb25jdXJyZW50IGFsbG9jYXRpb24gY291bGQgaGF2ZSBkbWEtYnVmIGFs
bG9jYXRpb24gZW50ZXINCj4+PiBkaXJlY3QtcmVjbGFpbSBkdXJpbmcgdGhlIGxvb3AuIFRoaXMg
Y29tbWl0IHdvdWxkIGxpa2UgdG8gZWxpbWluYXRlIHRoZQ0KPj4+IGFib3ZlIHR3byBhZmZlY3Rp
b25zIGJ5IGludHJvZHVjaW5nIGFsbG9jX3BhZ2VzX2J1bGtfbGlzdCBpbiBkbWEtYnVmJ3MNCj4+
PiBvcmRlci0wIGFsbG9jYXRpb24uIFRoaXMgcGF0Y2ggaXMgcHJvdmVkIHRvIGJlIGNvbmRpdGlv
bmFsbHkgaGVscGZ1bA0KPj4+IGluIDE4TUIgYWxsb2NhdGlvbiBhcyBkZWNyZWFzaW5nIHRoZSB0
aW1lIGZyb20gMjQ2MDR1cyB0byA2NTU1dXMgYW5kIG5vDQo+Pj4gaGFybSB3aGVuIGJ1bGsgYWxs
b2NhdGlvbiBjYW4ndCBiZSBkb25lKGZhbGxiYWNrIHRvIHNpbmdsZSBwYWdlDQo+Pj4gYWxsb2Nh
dGlvbikNCj4+DQo+PiBXZWxsIHRoYXQgc291bmRzIGxpa2UgYW4gYWJzb2x1dGVseSBob3JyaWJs
ZSBpZGVhLg0KPj4NCj4+IFNlZSB0aGUgaGFuZGxpbmcgb2YgYWxsb2NhdGluZyBvbmx5IGZyb20g
c3BlY2lmaWMgb3JkZXIgaXMgKmV4YWN0bHkqIHRoZXJlIHRvIGF2b2lkIHRoZSBiZWhhdmlvciBv
ZiBidWxrIGFsbG9jYXRpb24uDQo+Pg0KPj4gV2hhdCB5b3Ugc2VlbSB0byBkbyB3aXRoIHRoaXMg
cGF0Y2ggaGVyZSBpcyB0byBhZGQgb24gdG9wIG9mIHRoZSBiZWhhdmlvciB0byBhdm9pZCBhbGxv
Y2F0aW5nIGxhcmdlIGNodW5rcyBmcm9tIHRoZSBidWRkeSB0aGUgYmVoYXZpb3IgdG8gYWxsb2Nh
dGUgbGFyZ2UgY2h1bmtzIGZyb20gdGhlIGJ1ZGR5IGJlY2F1c2UgdGhhdCBpcyBmYXN0ZXIuDQo+
IGVtbSwgdGhpcyBwYXRjaCBkb2Vzbid0IGNoYW5nZSBvcmRlci04IGFuZCBvcmRlci00J3MgYWxs
b2NhdGlvbg0KPiBiZWhhdmlvdXIgYnV0IGp1c3QgdG8gcmVwbGFjZSB0aGUgbG9vcCBvZiBvcmRl
ci0wIGFsbG9jYXRpb25zIGludG8NCj4gb25jZSBidWxrIGFsbG9jYXRpb24gaW4gdGhlIGZhbGxi
YWNrIHdheS4gV2hhdCBpcyB5b3VyIGNvbmNlcm4gYWJvdXQNCj4gdGhpcz8NCg0KQXMgZmFyIGFz
IEkga25vdyB0aGUgYnVsayBhbGxvY2F0aW9uIGZhdm9ycyBzcGxpdHRpbmcgbGFyZ2UgcGFnZXMg
aW50byBzbWFsbGVyIG9uZXMgaW5zdGVhZCBvZiBhbGxvY2F0aW5nIHNtYWxsZXIgcGFnZXMgZmly
c3QuIFRoYXQncyB3aGVyZSB0aGUgcGVyZm9ybWFuY2UgYmVuZWZpdCBjb21lcyBmcm9tLg0KDQpC
dXQgdGhhdCBpcyBleGFjdGx5IHdoYXQgd2UgdHJ5IHRvIGF2b2lkIGhlcmUgYnkgYWxsb2NhdGlu
ZyBvbmx5IGNlcnRhaW4gb3JkZXIgb2YgcGFnZXMuDQoNClJlZ2FyZHMsDQpDaHJpc3RpYW4uDQoN
Cj4+DQo+PiBTbyB0aGlzIGNoYW5nZSBoZXJlIGRvZXNuJ3QgbG9va3MgbGlrZSBpdCB3aWxsIGZs
eSB2ZXJ5IGhpZ2guIFBsZWFzZSBleHBsYWluIHdoYXQgeW91J3JlIGFjdHVhbGx5IHRyeWluZyB0
byBkbywganVzdCBvcHRpbWl6ZSBhbGxvY2F0aW9uIHRpbWU/DQo+Pg0KPj4gUmVnYXJkcywNCj4+
IENocmlzdGlhbi4NCj4+DQo+Pj4gU2lnbmVkLW9mZi1ieTogWmhhb3lhbmcgSHVhbmcgPHpoYW95
YW5nLmh1YW5nQHVuaXNvYy5jb20+DQo+Pj4gLS0tDQo+Pj4gIGRyaXZlcnMvZG1hLWJ1Zi9oZWFw
cy9zeXN0ZW1faGVhcC5jIHwgMzYgKysrKysrKysrKysrKysrKysrKy0tLS0tLS0tLS0NCj4+PiAg
MSBmaWxlIGNoYW5nZWQsIDI0IGluc2VydGlvbnMoKyksIDEyIGRlbGV0aW9ucygtKQ0KPj4+DQo+
Pj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZG1hLWJ1Zi9oZWFwcy9zeXN0ZW1faGVhcC5jIGIvZHJp
dmVycy9kbWEtYnVmL2hlYXBzL3N5c3RlbV9oZWFwLmMNCj4+PiBpbmRleCBiYmU3ODgxZjEzNjAu
LjcxYjAyOGM2M2JkOCAxMDA2NDQNCj4+PiAtLS0gYS9kcml2ZXJzL2RtYS1idWYvaGVhcHMvc3lz
dGVtX2hlYXAuYw0KPj4+ICsrKyBiL2RyaXZlcnMvZG1hLWJ1Zi9oZWFwcy9zeXN0ZW1faGVhcC5j
DQo+Pj4gQEAgLTMwMCw4ICszMDAsOCBAQCBzdGF0aWMgY29uc3Qgc3RydWN0IGRtYV9idWZfb3Bz
IHN5c3RlbV9oZWFwX2J1Zl9vcHMgPSB7DQo+Pj4gICAgICAgLnJlbGVhc2UgPSBzeXN0ZW1faGVh
cF9kbWFfYnVmX3JlbGVhc2UsDQo+Pj4gIH07DQo+Pj4NCj4+PiAtc3RhdGljIHN0cnVjdCBwYWdl
ICphbGxvY19sYXJnZXN0X2F2YWlsYWJsZSh1bnNpZ25lZCBsb25nIHNpemUsDQo+Pj4gLSAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgdW5zaWduZWQgaW50IG1heF9vcmRl
cikNCj4+PiArc3RhdGljIHZvaWQgYWxsb2NfbGFyZ2VzdF9hdmFpbGFibGUodW5zaWduZWQgbG9u
ZyBzaXplLA0KPj4+ICsgICAgICAgICAgICAgICAgIHVuc2lnbmVkIGludCBtYXhfb3JkZXIsIHVu
c2lnbmVkIGludCAqbnVtX3BhZ2VzLCBzdHJ1Y3QgbGlzdF9oZWFkICpsaXN0KQ0KPj4+ICB7DQo+
Pj4gICAgICAgc3RydWN0IHBhZ2UgKnBhZ2U7DQo+Pj4gICAgICAgaW50IGk7DQo+Pj4gQEAgLTMx
MiwxMiArMzEyLDE5IEBAIHN0YXRpYyBzdHJ1Y3QgcGFnZSAqYWxsb2NfbGFyZ2VzdF9hdmFpbGFi
bGUodW5zaWduZWQgbG9uZyBzaXplLA0KPj4+ICAgICAgICAgICAgICAgaWYgKG1heF9vcmRlciA8
IG9yZGVyc1tpXSkNCj4+PiAgICAgICAgICAgICAgICAgICAgICAgY29udGludWU7DQo+Pj4NCj4+
PiAtICAgICAgICAgICAgIHBhZ2UgPSBhbGxvY19wYWdlcyhvcmRlcl9mbGFnc1tpXSwgb3JkZXJz
W2ldKTsNCj4+PiAtICAgICAgICAgICAgIGlmICghcGFnZSkNCj4+PiArICAgICAgICAgICAgIGlm
IChvcmRlcnNbaV0pIHsNCj4+PiArICAgICAgICAgICAgICAgICAgICAgcGFnZSA9IGFsbG9jX3Bh
Z2VzKG9yZGVyX2ZsYWdzW2ldLCBvcmRlcnNbaV0pOw0KPj4+ICsgICAgICAgICAgICAgICAgICAg
ICBpZiAocGFnZSkgew0KPj4+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgIGxpc3RfYWRk
KCZwYWdlLT5scnUsIGxpc3QpOw0KPj4+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICpu
dW1fcGFnZXMgPSAxOw0KPj4+ICsgICAgICAgICAgICAgICAgICAgICB9DQo+Pj4gKyAgICAgICAg
ICAgICB9IGVsc2UNCj4+PiArICAgICAgICAgICAgICAgICAgICAgKm51bV9wYWdlcyA9IGFsbG9j
X3BhZ2VzX2J1bGtfbGlzdChMT1dfT1JERVJfR0ZQLCBzaXplIC8gUEFHRV9TSVpFLCBsaXN0KTsN
Cj4+PiArDQo+Pj4gKyAgICAgICAgICAgICBpZiAobGlzdF9lbXB0eShsaXN0KSkNCj4+PiAgICAg
ICAgICAgICAgICAgICAgICAgY29udGludWU7DQo+Pj4gLSAgICAgICAgICAgICByZXR1cm4gcGFn
ZTsNCj4+PiArICAgICAgICAgICAgIHJldHVybjsNCj4+PiAgICAgICB9DQo+Pj4gLSAgICAgcmV0
dXJuIE5VTEw7DQo+Pj4gIH0NCj4+Pg0KPj4+ICBzdGF0aWMgc3RydWN0IGRtYV9idWYgKnN5c3Rl
bV9oZWFwX2FsbG9jYXRlKHN0cnVjdCBkbWFfaGVhcCAqaGVhcCwNCj4+PiBAQCAtMzM1LDYgKzM0
Miw4IEBAIHN0YXRpYyBzdHJ1Y3QgZG1hX2J1ZiAqc3lzdGVtX2hlYXBfYWxsb2NhdGUoc3RydWN0
IGRtYV9oZWFwICpoZWFwLA0KPj4+ICAgICAgIHN0cnVjdCBsaXN0X2hlYWQgcGFnZXM7DQo+Pj4g
ICAgICAgc3RydWN0IHBhZ2UgKnBhZ2UsICp0bXBfcGFnZTsNCj4+PiAgICAgICBpbnQgaSwgcmV0
ID0gLUVOT01FTTsNCj4+PiArICAgICB1bnNpZ25lZCBpbnQgbnVtX3BhZ2VzOw0KPj4+ICsgICAg
IExJU1RfSEVBRChoZWFkKTsNCj4+Pg0KPj4+ICAgICAgIGJ1ZmZlciA9IGt6YWxsb2Moc2l6ZW9m
KCpidWZmZXIpLCBHRlBfS0VSTkVMKTsNCj4+PiAgICAgICBpZiAoIWJ1ZmZlcikNCj4+PiBAQCAt
MzQ4LDYgKzM1Nyw4IEBAIHN0YXRpYyBzdHJ1Y3QgZG1hX2J1ZiAqc3lzdGVtX2hlYXBfYWxsb2Nh
dGUoc3RydWN0IGRtYV9oZWFwICpoZWFwLA0KPj4+ICAgICAgIElOSVRfTElTVF9IRUFEKCZwYWdl
cyk7DQo+Pj4gICAgICAgaSA9IDA7DQo+Pj4gICAgICAgd2hpbGUgKHNpemVfcmVtYWluaW5nID4g
MCkgew0KPj4+ICsgICAgICAgICAgICAgbnVtX3BhZ2VzID0gMDsNCj4+PiArICAgICAgICAgICAg
IElOSVRfTElTVF9IRUFEKCZoZWFkKTsNCj4+PiAgICAgICAgICAgICAgIC8qDQo+Pj4gICAgICAg
ICAgICAgICAgKiBBdm9pZCB0cnlpbmcgdG8gYWxsb2NhdGUgbWVtb3J5IGlmIHRoZSBwcm9jZXNz
DQo+Pj4gICAgICAgICAgICAgICAgKiBoYXMgYmVlbiBraWxsZWQgYnkgU0lHS0lMTA0KPj4+IEBA
IC0zNTcsMTQgKzM2OCwxNSBAQCBzdGF0aWMgc3RydWN0IGRtYV9idWYgKnN5c3RlbV9oZWFwX2Fs
bG9jYXRlKHN0cnVjdCBkbWFfaGVhcCAqaGVhcCwNCj4+PiAgICAgICAgICAgICAgICAgICAgICAg
Z290byBmcmVlX2J1ZmZlcjsNCj4+PiAgICAgICAgICAgICAgIH0NCj4+Pg0KPj4+IC0gICAgICAg
ICAgICAgcGFnZSA9IGFsbG9jX2xhcmdlc3RfYXZhaWxhYmxlKHNpemVfcmVtYWluaW5nLCBtYXhf
b3JkZXIpOw0KPj4+IC0gICAgICAgICAgICAgaWYgKCFwYWdlKQ0KPj4+ICsgICAgICAgICAgICAg
YWxsb2NfbGFyZ2VzdF9hdmFpbGFibGUoc2l6ZV9yZW1haW5pbmcsIG1heF9vcmRlciwgJm51bV9w
YWdlcywgJmhlYWQpOw0KPj4+ICsgICAgICAgICAgICAgaWYgKCFudW1fcGFnZXMpDQo+Pj4gICAg
ICAgICAgICAgICAgICAgICAgIGdvdG8gZnJlZV9idWZmZXI7DQo+Pj4NCj4+PiAtICAgICAgICAg
ICAgIGxpc3RfYWRkX3RhaWwoJnBhZ2UtPmxydSwgJnBhZ2VzKTsNCj4+PiAtICAgICAgICAgICAg
IHNpemVfcmVtYWluaW5nIC09IHBhZ2Vfc2l6ZShwYWdlKTsNCj4+PiAtICAgICAgICAgICAgIG1h
eF9vcmRlciA9IGNvbXBvdW5kX29yZGVyKHBhZ2UpOw0KPj4+IC0gICAgICAgICAgICAgaSsrOw0K
Pj4+ICsgICAgICAgICAgICAgbGlzdF9zcGxpY2VfdGFpbCgmaGVhZCwgJnBhZ2VzKTsNCj4+PiAr
ICAgICAgICAgICAgIG1heF9vcmRlciA9IGZvbGlvX29yZGVyKGxydV90b19mb2xpbygmaGVhZCkp
Ow0KPj4+ICsgICAgICAgICAgICAgc2l6ZV9yZW1haW5pbmcgLT0gUEFHRV9TSVpFICogKG51bV9w
YWdlcyA8PCBtYXhfb3JkZXIpOw0KPj4+ICsgICAgICAgICAgICAgaSArPSBudW1fcGFnZXM7DQo+
Pj4gKw0KPj4+ICAgICAgIH0NCj4+Pg0KPj4+ICAgICAgIHRhYmxlID0gJmJ1ZmZlci0+c2dfdGFi
bGU7DQo+Pg0KDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFy
by5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0tc2lnLWxlYXZl
QGxpc3RzLmxpbmFyby5vcmcK
