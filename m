Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 90110BFBB1C
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 22 Oct 2025 13:43:48 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id BFAB53F7A1
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 22 Oct 2025 11:43:47 +0000 (UTC)
Received: from PH8PR06CU001.outbound.protection.outlook.com (mail-westus3azon11012001.outbound.protection.outlook.com [40.107.209.1])
	by lists.linaro.org (Postfix) with ESMTPS id B64C73F77C
	for <linaro-mm-sig@lists.linaro.org>; Wed, 22 Oct 2025 11:43:38 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=Nvidia.com header.s=selector2 header.b=aSpuQcpf;
	dmarc=pass (policy=reject) header.from=nvidia.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1");
	spf=pass (lists.linaro.org: domain of jgg@nvidia.com designates 40.107.209.1 as permitted sender) smtp.mailfrom=jgg@nvidia.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=pDacv80TEHxZLPpX2c1jSyJxmZq044Y9TcdlUa8XcjxWUNuk5n5ZM/90Y74OVp7rDjb+0qq8kSVxoaMiuvDQbR8phbVUeav0yc+T2Czl61P5dY8l3MSzsH0nHGDG/KpSDgA7L6qp6ZJXxLlGM5u41MfHREtjLyExucGT2qf1c3u3Yth/xFr0yZwrr8vxX3KjBe4SKLzVbEDopz+S0bQ1+BHDxV4QFu82a5cFNaQ39k7+KuVMTjLTAgpdpk30pLfF29KBKBihBCGB81vk0/EzYj/xBMHY0kNOzTR00S/izYRDKaAMntaxPoLyYRpuMPB64z6DcxSZBtjlRVnOxHw2Gg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=UGjbhCexq77FjJxqx8ELdv6+oyb+9U6NESLT3iRUSH0=;
 b=AjnZO9oRYxf+0jOaEg2Hh8C3UXDmXFYGkc9RPaBeB2GAAY05Lyw0kA+EugVHAfF4FMyCde9TPZ35uQHt/fxKKvS71pSPPGDR6HK8Rn7FQIpZqISTzjX83YCAh8thyHh6m118m++fQapEuzumQUggjWs2Xso7uNEm6LnG/bpBacsi9MOFrpmoILyZmH9TaNgKtpG9SYg318BS+4bCu0QfiEgxc4+PsvqmEOs/3ELlXSCX4v9AY+b503nLBHDW3u4MF04HpdtaTRvAApoIQLf7gDkIxrICPPaGbKeHMWVKNGub/q4naadGncnc3yY0EagLJY8kmsOMGG2Zu2Gu1wbdTg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=UGjbhCexq77FjJxqx8ELdv6+oyb+9U6NESLT3iRUSH0=;
 b=aSpuQcpfcCLi2MhwrtKwHXXOeMs03JxN3ka+823dBL/sWFQwKyfCPFjzykHXYeYZFsxeQa5AEGfhNMhWmTOr3/HzqVCEPXNT78h1b5knU7BQf5sfF/YYTw0waaZyBiS06JE4EKz0XTSE/0f5ll9kbgM8jCC+FftaM1ilX9HmrZQlLDPbBYmAwOAb3FpTnqKGzXeb1sGhmtNwd6aNrhwrbaSo0Hw6zQ1Avd3uXaUulBpLDg1AGjiYwboPvx8nSpIGYSyZ/52wNRqknLBMgoC1T2TRlbO/vOlgTWaZEXsbeAB0fiCZ5/w9om53tA+ECJne8Im26f+EvzixKHgpW7PyEA==
Received: from MN2PR12MB3613.namprd12.prod.outlook.com (2603:10b6:208:c1::17)
 by DS7PR12MB5960.namprd12.prod.outlook.com (2603:10b6:8:7f::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9253.12; Wed, 22 Oct
 2025 11:43:35 +0000
Received: from MN2PR12MB3613.namprd12.prod.outlook.com
 ([fe80::1b3b:64f5:9211:608b]) by MN2PR12MB3613.namprd12.prod.outlook.com
 ([fe80::1b3b:64f5:9211:608b%4]) with mapi id 15.20.9253.011; Wed, 22 Oct 2025
 11:43:34 +0000
Date: Wed, 22 Oct 2025 08:43:33 -0300
From: Jason Gunthorpe <jgg@nvidia.com>
To: Christoph Hellwig <hch@infradead.org>
Message-ID: <20251022114333.GD21107@nvidia.com>
References: <cover.1760368250.git.leon@kernel.org>
 <1044f7aa09836d63de964d4eb6e646b3071c1fdb.1760368250.git.leon@kernel.org>
 <aPHibioUFZV8Wnd1@infradead.org>
 <20251017115320.GF3901471@nvidia.com>
 <aPYqliGwJTcZznSX@infradead.org>
 <20251020125854.GL316284@nvidia.com>
 <aPiDa-QruoHC3alk@infradead.org>
Content-Disposition: inline
In-Reply-To: <aPiDa-QruoHC3alk@infradead.org>
X-ClientProxiedBy: MN2PR20CA0046.namprd20.prod.outlook.com
 (2603:10b6:208:235::15) To MN2PR12MB3613.namprd12.prod.outlook.com
 (2603:10b6:208:c1::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN2PR12MB3613:EE_|DS7PR12MB5960:EE_
X-MS-Office365-Filtering-Correlation-Id: 29fa22c5-5b84-4bb6-ef7c-08de11603b7e
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|7416014|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: 
	=?utf-8?B?Q0pRZ2pNVGtqUEdMNytCRmZEKzZkTzVKUEkvNGc0anNoalIxckhNWGczL0RS?=
 =?utf-8?B?M0pPc09GUkYxZGl3VTl1alNkbSt6WEd1NjE1TGZnR2pyV3NSVHVYblBQdU9Q?=
 =?utf-8?B?VWx6dWNxdDdVRk1DLzZxb2xqME9Mb0R0RUc1a1UxbFltdFZUdDVBV1E3T1VK?=
 =?utf-8?B?QWd2Y2xCYytDcEs0SkFPUjRIaTk5VWRPbkxqS0VYZU9hN3BWLzJGaXFxRTd2?=
 =?utf-8?B?Mk51Zmk4eXkwcVZUVlVDejBQLzJlUXUwL1pha1NWWEZ1Z2pHRGR4OE1ma1l6?=
 =?utf-8?B?UmFabVppQmlUOVJycmN2bzNCanViM0djTVFEUTVIN2IyN0hUWGlTNzJsK1Ey?=
 =?utf-8?B?L0Q0ZFl5dVRsN2c5Q3BaaUJwUmUzc01YQUs0c1R2ZnN2V0JaSlFWSUo3Tnl5?=
 =?utf-8?B?ZUdrbWkvUVpGZFJTTGNVTi9MK3JveHBDUUZrNWVLN1VWRjRQTDk1UHZmdjJ1?=
 =?utf-8?B?T3R0TzhjWEhmRVdxdHZKUzV0THNxNVFOTVVBbjE5dURkOUhpUUpZOUFYbkJU?=
 =?utf-8?B?eWc5eFJpTHZrSUMvcnZtSjlqSjZMM0lYek1UMkZyQi9QNUwwTFNXQk1PZTRM?=
 =?utf-8?B?SURGQm9HVHp6V21MbEJ5Z1QxMy8xKzZLSS8vTUxBTVNBZW1lek0vcXZ1bHBu?=
 =?utf-8?B?eWNWcC9Fdk9kUTJybnAxYkpaSmhZRkpsNEdCbjhaYlF6K0laZ2NZUXlKeDVw?=
 =?utf-8?B?SkpCWkxQbTg1WlJQcGE2S1d1UkVwVDUwa0FObWZsanE3MmljNEhGZUpwK3hq?=
 =?utf-8?B?UUIxOXZWWUpOemxSbi9HTDEvYjc1UDB1TGlGRkpSZWJMdDZPWS9DTjhTRC8v?=
 =?utf-8?B?TlBvbVFHd3d0Z2tFeCsrK2JVSGo5bFhPMW5XVWszWFY5enZ1bDNFT1RoK0g5?=
 =?utf-8?B?ZXBFRnRUUkYvNVF3M1o2ZkdSWVRFQ3F6ZDZ0YTkya0lBditBNmFpMytUZjRv?=
 =?utf-8?B?ZGRscFczSzNzbE1VOFlMb21DVnhSWWxCMVQzUkUvRjd5M2JQVnRsaitoWWRO?=
 =?utf-8?B?UTVLYm1aQm5FWmgwZUdIMHhsRzluMTR5Q3BzOXFid011Tk0zUGRqWkN6SGEr?=
 =?utf-8?B?TDUycHRhcTQxb05qaC8va000NW9hNUJZSXVLMGVqd3d6RVg3aXp4eEFCODJQ?=
 =?utf-8?B?RDEvR0JEQURPR0J2ZVppSnVYUGxkWkxzUzhJWnA4ZzduYUdXeWdCS1A2cG9z?=
 =?utf-8?B?ZWE4SFlkNE82Y0JMKzZQbmJld2dkNy8wUU9NSElVZ2x1cDRrc29GYW5lUVEv?=
 =?utf-8?B?Q1lRRkhCeTFxRjhYZi9SWGxZbTlhSDF3VnFVOGJnYnUwcktFTDQ0RHk0ejhM?=
 =?utf-8?B?dlA2N3RlbWZJRW9oNDZnUi96dVZQb0FCNVBoekdrYXJhbTl6YW8rbmNOME1y?=
 =?utf-8?B?SldQbXpyR3RCei9oVGFaMDluZ3hZOW9GWVQxL1VzVVJFenpNQk5Pc1pkWUJW?=
 =?utf-8?B?d1RualFab1hiT0dKYVpTNCt4eFBYYnNBM2t3ZXA1TnFkWlA2RGlqZzNjWUZv?=
 =?utf-8?B?UFRobUp4NXVaSlhDYThEQnlEY1FwREJ2c2FvTzROcDFIcVdmZWxUMmVxWkhh?=
 =?utf-8?B?dTEwTmFBYjNhb0Zsd0kvTWpaT0c3R2JEQUhDajBubzVqZ2RNd3Q1OCtGZTJy?=
 =?utf-8?B?dmNydGFoREx3NVFtQXdZa1VMcVBMUnFtWE41TCtzTk5iWEc4MXdERWxiMDRN?=
 =?utf-8?B?bUo2c0c0WWhtanUxK0NkRW00RXNYWmxTOEl2RTNMdERuV29QL0dHWDVNSUVM?=
 =?utf-8?B?L1dnTWtXeEgzaEhTSGg5QVFEVEtiMjNLcDdqMTR5MGk2bm5LaWdJSDR6SWNt?=
 =?utf-8?B?bU00Y05SRkhhM1N1VVZScENoRmgwODdZTk0xM1orcC8xRFdIelRUNURLVzg4?=
 =?utf-8?B?WTZDUXJUM2ZEK1JzZUFlcjJWQTZOZy9QVm5WOXlXMmgrd3ZDSG5oeGprYm1j?=
 =?utf-8?Q?VR+JG/qOdsGsWcrwvMdSl7OxMHmCbaGU?=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:MN2PR12MB3613.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(7416014)(376014)(1800799024)(366016);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?bk01bGY0Qjh5RDRPc3dwYkR4cmZqcTZGNDZpSmpHUS9YcUZvVnVlQ0pYWDhT?=
 =?utf-8?B?K21qU0hFNlJCcFNCSVhUU3dudy9wSGl1UjFrb2V5WTNHMkJsS2ZVNHcxeEFq?=
 =?utf-8?B?R1dYTi9KemNmOVM4eWU5cVpjMFlvNGloZXRIcEphbUx0ZGJYSW9MQ2N0TFZq?=
 =?utf-8?B?NjNxNkc0UDh1bUdRb0FPTGFBVStXT3U1TGpRRzIrVWY0dlBvSkVET3ByaDg2?=
 =?utf-8?B?U1Zxeks3TWJ5VWh2VGdnaVBNKzFvYzJDdzlRbXlZdXhiamFYK0wveXhwTFhs?=
 =?utf-8?B?WlhtNmFJc1o1YmMwenpXSWZiNTRGa3AzRmVrUVhYWGVvU2lTb0V6WGg0VW5p?=
 =?utf-8?B?cXowL00vRVBwSFB5aHJqbVpEb3JqR0x1a2p5bmg3MVNFL2c2TzJjYWFIU3V1?=
 =?utf-8?B?SXF2YWdCdlNvZ2NHYm0vU2JKTHUvQWkzNmdjRTk5VWZIL3JMKzhsdUo2eStS?=
 =?utf-8?B?NGZ1NjRCV0JFR1ltaHpxVDIrdFZTampCMkVZbFNvbFdWZ0RiS2Rsa3dkTmQ4?=
 =?utf-8?B?NTJnMXNWMkRKaUpkQXNISkxzcEJscGdwaDBBNGV1WFQwVWEydTcxeWEvTTM1?=
 =?utf-8?B?ZnZXcFQrR2FvM1hvR0dId1h1a0pPdzVFYXJXZmc1WWJCOXEvTVExUHFET1B4?=
 =?utf-8?B?L0d4L1VZT3h5UmZZNDV2dWxrTGg4U01EQU9ENUxaQktOayt6OFo0VkhMQm1V?=
 =?utf-8?B?alVZVjZmRjB4R28rNnFkNEwwRi9maHExaTNmRUk4eGphOGJQTWh4bFhjSlJp?=
 =?utf-8?B?aHFHc2R2Z1BuT3BLcXVMeGJzelZrdEI1Y3haMTE2azBaWUhYOERzTGFFc1Mx?=
 =?utf-8?B?YjBzYUJOQzVtbFVkRjVQQkxDSm0vUWUvQXZQNCswRHdYZEphVEpWTkpCV0tZ?=
 =?utf-8?B?dHBneVo5UGYwQXFDY1FsS0liZFR2OGRvZ09MVm1QMzhmMWZxUUQ3UnczcW5S?=
 =?utf-8?B?alpQdElQWkt5YmlzMW9hT1ZQQnVHQ3lSZUdFS3ZhU1RWZi95WFdGRGlsb0Q0?=
 =?utf-8?B?WmJTbHB0alBmd3pZUXdoN3ZnMk03Z0lqUzhZNFZCQ0hsWkZ1VEtKb3k1K3lN?=
 =?utf-8?B?NmNJTWZWSTNaVlJYVjBCU255S3c4dndibnBURHRLbzM0Y2FaTDFLa0FFakdO?=
 =?utf-8?B?ck1TcUg0Y2hpRzd0ZXJWM2xtaXRYY2xGQWlxZlJhMWM2TkZkZkl1cnFxdXVE?=
 =?utf-8?B?dDBtelN4aEFsVnBSaVR2ZFlJQlNVNkE3RXp4U0FidGp0bUhQL3FJWDJoMkRa?=
 =?utf-8?B?Z1JBNXl3R1pyUTh2eTNia2htYUFRVUxiT1JjaXcrNkxmOEtSa2ZXbkgraVFB?=
 =?utf-8?B?U0RicjhhZnlSRGZmQk9OcWFyYTRxVjAzUUFEK0NjdmNDUmFOblV0Y1B5eGk4?=
 =?utf-8?B?aU1MNitIWWRYTWV6eGJhNFFmbkNJNWRQMVBUZnkrQVNITWRIODU5VkhSNXU3?=
 =?utf-8?B?L2NPYklWYVdNRXhUTVJld3pPalhZbXlnK2tJSlJVWlB2QjJTZ28rUzNYYzhN?=
 =?utf-8?B?NFBUODRkYVNjb2RyQkN2aEpheDhpOGpDaENESkxsSkxPb1NHQmd4T29DK3FM?=
 =?utf-8?B?dkZtb1FKcndYUUgvYU1mTSszYWtYNWFvT1U2allaTjdtVjV2TTNaWWtYR01a?=
 =?utf-8?B?Z0I0dkhuYUVHdHpSRU9yYXUwNlJPZDJIQTZ1K1pwRE1zL3NXT0dsSkRndTIw?=
 =?utf-8?B?bTNxaUlpaW1Sd2tjNWQ5b1c5RXJZejliZVpVR3ovVGczd3Zac3N4ditqUldi?=
 =?utf-8?B?L3dyaGRaajFIUllFdDlKbHBmUnpiZlp0WDUvVDE5aUtxcnltdFZ6YTc5TFpO?=
 =?utf-8?B?WU50a0t0Y0Yxd2xjSWJFbmxDMkRjSzlRdU9uWlJnY3Y5Yy9FUk1YUXIxYU12?=
 =?utf-8?B?YWlwY0YxWjhnbzFzbmJyWmxldW5NYSs3cWxqS1d3NmhKdWZtQS9rc0NwVmEz?=
 =?utf-8?B?am8vV2dMYnJPU0pkbENJL3VQbVhKQ0g3cGFUdWFCd3VYRnJXaFlJazNDUWk0?=
 =?utf-8?B?bnFmRlZFVzJPV1p3OGtUWGJzR3I1R3d2VTI2TGdnWjZjcFlEeVgrdVVZWWpN?=
 =?utf-8?B?LzIva0JVVkYweDV5MWtTNkpRUEJydVdNS1BDc2VZdUlrTFB6N1lFQkZOSyt3?=
 =?utf-8?Q?XjJg=3D?=
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 29fa22c5-5b84-4bb6-ef7c-08de11603b7e
X-MS-Exchange-CrossTenant-AuthSource: MN2PR12MB3613.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 Oct 2025 11:43:34.7723
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: wXD9Qs8pViv6GLsF4IC9NQbzDiGhxBlbHlzMAi6MTtWmJENQAtt3Y2iiCTZezOXD
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR12MB5960
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: B64C73F77C
X-Spamd-Bar: ----
X-Spamd-Result: default: False [-5.00 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[nvidia.com,reject];
	R_DKIM_ALLOW(-0.20)[Nvidia.com:s=selector2];
	R_SPF_ALLOW(-0.20)[+ip4:40.107.0.0/16];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_POSSIBLE(0.00)[40.107.209.1:from];
	RCPT_COUNT_TWELVE(0.00)[24];
	MISSING_XM_UA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	RCVD_TLS_LAST(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	DKIM_TRACE(0.00)[Nvidia.com:+]
X-Rspamd-Action: no action
Message-ID-Hash: 3TQPH2B3JFFCA33GUDNCZBITY7FKCB6V
X-Message-ID-Hash: 3TQPH2B3JFFCA33GUDNCZBITY7FKCB6V
X-MailFrom: jgg@nvidia.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Leon Romanovsky <leon@kernel.org>, Alex Williamson <alex.williamson@redhat.com>, Leon Romanovsky <leonro@nvidia.com>, Andrew Morton <akpm@linux-foundation.org>, Bjorn Helgaas <bhelgaas@google.com>, Christian =?utf-8?B?S8O2bmln?= <christian.koenig@amd.com>, dri-devel@lists.freedesktop.org, iommu@lists.linux.dev, Jens Axboe <axboe@kernel.dk>, Joerg Roedel <joro@8bytes.org>, kvm@vger.kernel.org, linaro-mm-sig@lists.linaro.org, linux-block@vger.kernel.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, linux-mm@kvack.org, linux-pci@vger.kernel.org, Logan Gunthorpe <logang@deltatee.com>, Robin Murphy <robin.murphy@arm.com>, Sumit Semwal <sumit.semwal@linaro.org>, Vivek Kasireddy <vivek.kasireddy@intel.com>, Will Deacon <will@kernel.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v5 1/9] PCI/P2PDMA: Separate the mmap() support from the core logic
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/3TQPH2B3JFFCA33GUDNCZBITY7FKCB6V/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gV2VkLCBPY3QgMjIsIDIwMjUgYXQgMTI6MTA6MzVBTSAtMDcwMCwgQ2hyaXN0b3BoIEhlbGx3
aWcgd3JvdGU6DQo+IE9uIE1vbiwgT2N0IDIwLCAyMDI1IGF0IDA5OjU4OjU0QU0gLTAzMDAsIEph
c29uIEd1bnRob3JwZSB3cm90ZToNCj4gPiBJIGV4cGxhaW5lZCBpdCBpbiBkZXRhaWwgaW4gdGhl
IG1lc3NhZ2UgeW91IGFyZSByZXBsaW5nIHRvLiBJZg0KPiA+IHNvbWV0aGluZyBpcyBub3QgY2xl
YXIgY2FuIHlvdSBwbGVhc2UgYmUgbW9yZSBzcGVjaWZpYz8/DQo+ID4gDQo+ID4gSXMgaXQgdGhl
IG1tYXAgaW4gVkZJTyBwZXJoYXBzIHRoYXQgaXMgY2F1c2luZyB0aGVzZSBxdWVzdGlvbnM/DQo+
ID4gDQo+ID4gVkZJTyB1c2VzIGEgUEZOTUFQIFZNQSwgc28geW91IGNhbid0IHBpbl91c2VyX3Bh
Z2UoKSBpdC4gSXQgdXNlcw0KPiA+IHVubWFwX21hcHBpbmdfcmFuZ2UoKSBkdXJpbmcgaXRzIHJl
bW92ZSgpIHBhdGggdG8gZ2V0IHJpZCBvZiB0aGUgVk1BDQo+ID4gUFRFcy4NCj4gDQo+IFRoaXMg
YWxsIG5lZWRzIHRvIGfigKIgaW50byB0aGUgZXhwbGFuYXRpb24uDQo+IA0KPiA+IEluc3RlYWQg
dGhlIERNQUJVRiBGRCBpcyB1c2VkIHRvIHBhc3MgdGhlIE1NSU8gcGFnZXMgYmV0d2VlbiBWRklP
IGFuZA0KPiA+IGFub3RoZXIgZHJpdmVyLiBETUFCVUYgaGFzIGEgYnVpbHQgaW4gaW52YWxpZGF0
aW9uIG1lY2hhbmlzbSB0aGF0IFZGSU8NCj4gPiB0cmlnZ2VycyBiZWZvcmUgcmVtb3ZlKCkuIFRo
ZSBpbnZhbGlkYXRpb24gcmVtb3ZlcyBhY2Nlc3MgZnJvbSB0aGUNCj4gPiBvdGhlciBkcml2ZXIu
DQo+ID4gDQo+ID4gVGhpcyBpcyBkaWZmZXJlbnQgdGhhbiBOVk1lIHdoaWNoIGhhcyBubyBpbnZh
bGlkYXRpb24uIE5WTWUgZG9lcw0KPiA+IHVubWFwX21hcHBpbmdfcmFuZ2UoKSBvbiB0aGUgVk1B
IGFuZCB3YWl0cyBmb3IgYWxsIHRoZSBzaG9ydCBsaXZlZA0KPiA+IHBnbWFwIHJlZmVyZW5jZXMg
dG8gY2xlYXIuIFdlIGRvbid0IG5lZWQgYW55dGhpbmcgbGlrZSB0aGF0IGJlY2F1c2UNCj4gPiBE
TUFCVUYgaW52YWxpZGF0aW9uIGlzIHN5bmNocm9ub3VzLg0KPiANCj4gUGxlYXNlIGFkZCBkb2N1
bWVudGF0aW9uIGZvciB0aGlzIG1vZGVsIHRvIHRoZSBzb3VyY2UgdHJlZS4NCg0KT2theSwgTGV0
cyBzZWUgd2hhdCB3ZSBjYW4gY29tZSB1cCB3aXRoLiBJIHRoaW5rIGV4cGxhaW5pbmcgdGhlIGRt
YWJ1Zg0KbW9kZWwgd2l0aCByZXNwZWN0IHRvIHRoZSBwMnAgcHJvdmlkZXIgaW4gdGhlIG5ldyBj
b21tb24gZG1hYnVmDQptYXBwaW5nIEFQSSBjb2RlIHdvdWxkIG1ha2Ugc2Vuc2UuDQoNCkphc29u
DQogDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5h
cm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcK
VG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3Rz
LmxpbmFyby5vcmcK
