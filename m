Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YFJZJhoT4WnoogAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 18:49:30 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 29D8C412011
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 18:49:30 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 39FA8448F9
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 16:49:29 +0000 (UTC)
Received: from BL2PR02CU003.outbound.protection.outlook.com (mail-eastusazon11011008.outbound.protection.outlook.com [52.101.52.8])
	by lists.linaro.org (Postfix) with ESMTPS id 5AFAF3F80A
	for <linaro-mm-sig@lists.linaro.org>; Mon, 23 Feb 2026 15:28:55 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=Nvidia.com header.s=selector2 header.b=ClAon9H0;
	spf=pass (lists.linaro.org: domain of edwards@nvidia.com designates 52.101.52.8 as permitted sender) smtp.mailfrom=edwards@nvidia.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1");
	dmarc=pass (policy=reject) header.from=nvidia.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=XoapGF7kMU9mvSDrff1dMcsp2VvvzH+5H/EEUhimaTsg84LHNCMRfQjdAtyk05I2HFhvX91P2HmtYiplqO2wneW0sjc6s1KCtMKhWNM2uJiLVvbbCkl4Qi/jFOmUJSuXit+8FykjmcC53DMmCXT/ghceD/urPjxviCV2vo4jrIaSaYY37fjItgvzcyDJuO3THeWSuAg+QPaCN1Bwaw9GfxRB7O4/BBj9gt6AKzEnkoo8hv/7fzvnlQEGC8JZBgjxM9SfD1Ba8a3J3zuFB3sFc7RBfsIwSbFXkkIzIMols993LD1MTGpNw6xqdAAl/J/aUNCBKBvE8c/r2kY2PT/0kQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=GZCCEPPJKiGBojHruLTGj+WvfsQRDRxM51DNmZ8VZEc=;
 b=Lh3r+FAwipW4dWRTPRLXzhYNN3xWa9OV2EtvXV27T1d/ny6NyVu87KgDd0b01w3Z1xP7hrhKKNKz6Kz0t4/kEBL2u//L84Tw1O85nWkF7bmUMScfqpaMqMnOSrCk5nNkOwo7uBep+Mdxjc3vcYG+OWoBWszRkhKbxrg/g8HLmDve/olXt7OyD5BUyEzWV41IyRgHZTFZDbZdieBOMmnyODo6OiawJ1BkIgaBG2bH9O2MTxagA2T6qJuju/S+bcYIu7dV+OKikDPLgU32MPCR4B8UlJePbbL2nPdos1DMbjQqnc1BNA30HvNjgsUhdxqySH6Ut2/KXZY36eyJZCax4A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=GZCCEPPJKiGBojHruLTGj+WvfsQRDRxM51DNmZ8VZEc=;
 b=ClAon9H05Mn5b4KEnADEwif6I1UAeyFdki3ZrEz6fcq02ah7QmMgXPxXkPAnOZ0kID04X1UnWBBZiDakrnYJ9ufQcXIBW+ZVBefOexAhGVJlRYxiYItbNVdg5+Yf1y0IopeBEDGM0Ll/5SYVAQodCtS6TrKw9xmdW63w96UFMRg2B6XeacECHJYA5AhSv3VuG4VS6/V6EteVGAn70j8JK4zDPgokiWYUxaXiyvTObNr+bF4ALlcgjUVraPZdckWURW9yDXLc1dOHKI47exRagsqyrdWdoBVuHK9OopAToNJVCTdk/ooOmD8h2PIRUd+8TPBJIGOR9QIZbDsZURC+9g==
Received: from BL3PR12MB6473.namprd12.prod.outlook.com (2603:10b6:208:3b9::16)
 by PH7PR12MB7163.namprd12.prod.outlook.com (2603:10b6:510:202::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9632.14; Mon, 23 Feb
 2026 15:28:49 +0000
Received: from BL3PR12MB6473.namprd12.prod.outlook.com
 ([fe80::778:72e1:e792:df81]) by BL3PR12MB6473.namprd12.prod.outlook.com
 ([fe80::778:72e1:e792:df81%3]) with mapi id 15.20.9632.017; Mon, 23 Feb 2026
 15:28:48 +0000
Message-ID: <b1da71d7-3daf-4850-9239-fd3e2a946d95@nvidia.com>
Date: Mon, 23 Feb 2026 17:28:43 +0200
User-Agent: Mozilla Thunderbird
To: Guenter Roeck <linux@roeck-us.net>
References: <20260201-dmabuf-export-v3-0-da238b614fe3@nvidia.com>
 <20260201-dmabuf-export-v3-2-da238b614fe3@nvidia.com>
 <716e8a8e-e4e0-468d-9314-10082c2bbb8d@roeck-us.net>
Content-Language: en-US
From: Edward Srouji <edwards@nvidia.com>
In-Reply-To: <716e8a8e-e4e0-468d-9314-10082c2bbb8d@roeck-us.net>
X-ClientProxiedBy: FR0P281CA0153.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:b3::12) To BL3PR12MB6473.namprd12.prod.outlook.com
 (2603:10b6:208:3b9::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BL3PR12MB6473:EE_|PH7PR12MB7163:EE_
X-MS-Office365-Filtering-Correlation-Id: 3ddc88a0-be29-4302-eb8e-08de72f03d99
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|7416014|376014;
X-Microsoft-Antispam-Message-Info: 
	=?utf-8?B?UVZQUmdGeXVhbUFSODYrdWtZeWppdFpITENrWWIyckt0TldsRlV0N1JFNUNz?=
 =?utf-8?B?ODVQR0sxRlFoMGVkbnh3dFdvMERpZmhnWU1SaG44ZS85YzE5QVVVWktRUGVi?=
 =?utf-8?B?QlZJM09mRkYvNUUvek1SQk5CTkg2R1BCZzN6MHg2VUJmVWhhb1dPZDRka3JY?=
 =?utf-8?B?c2FLZC9aMlBEWXZyZEdxY3lJdngzTHNYejUybUI3ckV4UWRzNHJBZjJVc21V?=
 =?utf-8?B?UUprY2RmY0RUemlOazMrZGJVV2FiR3pUS1cyU2E5cXFxQU5tRjF5ZXp4WDBu?=
 =?utf-8?B?aFYzWWE3RktVY0xIVzNjV0tGWTA4QmZoRDdaSTJ3alpwWGVUd0I1bjNONElt?=
 =?utf-8?B?M1BvUXNwejIzU3Qra0ZMYjhYVkxEUE9pV2pNMHdWbFl5cW5qOUtBdjVrRzNS?=
 =?utf-8?B?aDE0cHoycWRla3JqZXN6bjA3VHU2NWNPTVI0aGRhOUFnSU1hUXNPSklBZVlV?=
 =?utf-8?B?Sk1YVEt4NGI2RkduSFNUVTl3ZUZoRXAxQWljTzJLNTFrUVhsSXFLM25VNGxx?=
 =?utf-8?B?MGZHUXJzVStKV0lMSUVJbkMxTkNQTUpiaEFOZERZMXZRR0dyVXVwTUlMV1pV?=
 =?utf-8?B?VkJNYVYwZGFFK0poelhkdEY2MzQ4WEp2eGthV2FMbjMrcE9SK1FhbjUxZW5s?=
 =?utf-8?B?SDN0ZjB6Q0plaThxcDdGcjZpVm1HMzF5SVQ4eXVoTlJGd3p4K2lqTTROWmJi?=
 =?utf-8?B?ejI0d2lLOWtaQ2pqTS8xSEJzMkVVazlJaHloeXR3Um84ZW5keUYxVzBwL1Ni?=
 =?utf-8?B?SytZaWpZZjRkN3ZFSWhLaEVxWWI1K1dwUFU3Q3YzU1pqaTM3WjVHYi9YWkV5?=
 =?utf-8?B?d3JyMGZXVGl0azVvVlZUSko0OG9kNmVYUjhUdFVNTHRPR2xpUDhFekVOaWhl?=
 =?utf-8?B?YWFLelk4T0c4Qk5IaTFUZ0hWaG1iUFlMTWtTbGZrMGdWQVJDWjR6SVZSbmxP?=
 =?utf-8?B?MGRSTEV3SWFPWkgvMEExbmR4Q2Q2S3JQWTk1WTRyeC9jVURrSmMvS2R2K0lI?=
 =?utf-8?B?ekluMVROMi90eDN2aUpnMUc3c1d1RWxaWHJOVFFDREIzK2QwODU2d0diNmcx?=
 =?utf-8?B?RHRMRUxSS3RNczdnMEtRSXU3U01HcGdLQlRzSjlMeDRpdVUvN2ZMRlU1NFR3?=
 =?utf-8?B?cXlPSDBja3YwWUlLTkdEdUZqUWhVbmtqWTFROURXK1EvYUQxdFJ5MnhoSWJJ?=
 =?utf-8?B?V3lac1NzYkNGSE1BYm94RXJzdUN5eTlxMGFpcjZCN1NNa1ZxSnJKOWNKV2VC?=
 =?utf-8?B?bkVnRlVIaFA5dGtHVUxPUit3WTE0cDZPdDJEa093QThlR3FaZmcrTnFlWENX?=
 =?utf-8?B?S3l3c2s2ejZxbFE4TmN1b2V1UE9JNmhqSU9XU2NIVFNxa0ZaTUFTQXBXRlQw?=
 =?utf-8?B?SEwxNXM3NmVFWHEwTUVBcnlsSHRETUd5SDFRZVlGYVlGMks5cXZNYlFDZVc3?=
 =?utf-8?B?d0gwM1BJM3ZsTnhFMEhSbnJCUFdtQTZZdUhyQVN3engwa1NyRHJEMnRZZnZk?=
 =?utf-8?B?TXNjdk5ESkNuenBrd3pGOFdVdWFFQ3gyNk9VRkRVU0F1aGZHdDEwVDB6L2Ix?=
 =?utf-8?B?ZWorZ283WEs4YmpzY3ZId25NK3kvQjVpWmVCMmd3SXZnSEdZeTR5QnRDRGZo?=
 =?utf-8?B?OWxzcW8xREhtemluMlRhczAvdHBHcUxrVUxVdE9QeHI1cFpEeU9CVmFNdS9l?=
 =?utf-8?B?a040eXZIdVhZYTFzc3hqYnY0dW9UQlVwZnBtV3FNbk9WR21JK2lIbWM5TlNv?=
 =?utf-8?B?MmxCMUhNV01nbzh2SGxSU2dwZTdDOUJnLzNnMjVHMkxmdnd4WHRLSTFSZzZW?=
 =?utf-8?B?aHp1Vm5XWWZDTlB0ZDVSY0hIU0ZtWnJMQTlWbUkvaDhyNW0rS1B0bW9DWnZQ?=
 =?utf-8?B?NExLZlh3Qm5yM2tXc0hTSEdSYmQwZHhWSzYyQkxPSFdxMjhQN0pWL1hERFZB?=
 =?utf-8?B?ZnNmTTFZQ1BIYXlvb014bU9DSVo5MHZuUGZmd0RSdFZsZUxvWmpIdGRLaU9P?=
 =?utf-8?B?S00ycXQzZ0RzMS9vT3VjT1dlQ1c4ano4L20wU0o5Qy9VVGlHdjFWT24rWjNG?=
 =?utf-8?B?eDZhMjY5SllFOCtBNy9YTEFIT09xalNleUl1RTRsdk1jMWJBRGRVMDV0NDdD?=
 =?utf-8?Q?9TOk=3D?=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BL3PR12MB6473.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(366016)(7416014)(376014);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?YUdybmtxZXhEWTdzZTVVWFE4SDJhazFIaklJOE5Icis1dkxKWGtOMjJVTXNU?=
 =?utf-8?B?YnpBdEtEL3RScTZsdkM5d1A3VFZsTVIxN3ozMnhSZlRUMUVJbWFUNkxDVVd2?=
 =?utf-8?B?MFNuQ1J0Z2ViVGtmalE4OVJMTU80NUdYQitneFYrSnM1MXFyeE9xM3dTOC9Q?=
 =?utf-8?B?ek5ydkN1MkVEQ2U0dkc0c0hEMzhDZTlYcm96NkQ1TkgwbS81K3loR3h2Zy80?=
 =?utf-8?B?R28vRFYzOG56eFhtc1dSeStLcTFsV21ndzhwL01NT3d2eXlnelo1akVJd1Mr?=
 =?utf-8?B?d2tqbnN4dzhuNVdXMWdiQTB6SG5uUTBNNEJnblpuRUlDNmpybUI5SDFxS09j?=
 =?utf-8?B?ZVVVd3REU0F1SUFjZHljaG9UZ0g3Q3dBdkIrYkQ2a1JaY0dXMi9jeEZ0ejBo?=
 =?utf-8?B?a2FjR29JQnBGQ3RER2RRUVhwSGNjdm5QQXRYMlVjc21IZFpWdXpoMEc3ZEhv?=
 =?utf-8?B?YmF2RnJIRzRwcHo1elVLaUN1UjdUa1pidHh4aWRrVFNQaGdqU0paUHFMdHhw?=
 =?utf-8?B?MzdPL2NLQ3hJS24xY0d5d1RaaFh5b24vM1ZZMDQwMTcxbFJQYVVoQmRJU3pm?=
 =?utf-8?B?RFc0MTFjU3VUZERXSXV3QzNjbFkwTkwxT0VEYkJtK1BLM0pRRW9OZHNoVlpH?=
 =?utf-8?B?eUdmSFNldHgybk5JMVljOHVXM2dWTVE3M3ZtWkN1MGVONHJMNDVrRnkrSDlW?=
 =?utf-8?B?ZDRkL1plbk1NQnk0VFhvVThjMTNaVUJQUG5SbkJGbFkvRVAzSXdCdmVlNmNn?=
 =?utf-8?B?K1l3U0lxL1JUNFFjZXVvZmNsWFgvcHVzK1UwcDZPLzBmSThGdzI0UGhybVJZ?=
 =?utf-8?B?S1NxcXExWXFSTnFEWUxNWUoxRHg1OXNTdncvd3RWUlFOMkNHQ0RKVW9MenVN?=
 =?utf-8?B?RnR3anVBRkxJdE5Ic1NCdnUrMXRvOWM2ZlVMWXNlZThldFczcTZmUCtrUTNm?=
 =?utf-8?B?MEFITlFkc2gwTWkva3dNM1RINnN5WnBjNThqS3YzQ0x1cDJDQk5VTnRtODhN?=
 =?utf-8?B?R2YyVnlRTGZjOCtBR2t3MmNVVml3b0JFZ0F4Ry9URC94cnE4ZHJNM0U3d0F6?=
 =?utf-8?B?NCtmSjkxNU5DSERyT2ZMVUZ2TVdTM1hRTzREVzVrN1A3UTMyWXRqdWpENVIv?=
 =?utf-8?B?M05hNmRvVjBJZ3NnWjJwRUFRSzF6S3daV3cvSEkzUmh1eS9SeDRpVjQyWlBC?=
 =?utf-8?B?L0dueEt2UVphcmVTUWF4Zzg1ZkJsdnEvbFkyN3IxL2lzMEhNVjcvenBoVjJ6?=
 =?utf-8?B?c3JwT3poN0xFY2hJa1RyTzQ3WmM0djgyUEk2cGJ5YmNGelA2eW45Z3pwVjAv?=
 =?utf-8?B?bnZTR05sdjBTTGxPM3RoZzArQTZxY2YxbXIxWEVuYlBEYzRMa0o0UitsaERL?=
 =?utf-8?B?aHNrOFJEbjRXSVNyRCsxZzA5RFBuQmFIcDQ2YUJxL3EzUzh0Ri9wUjdCd1U5?=
 =?utf-8?B?U0txZ213YWdhWkNKWDQ0R1BZM0psRG9tSWRQb1NmNUNtamxUa1pnb3ZEYkM1?=
 =?utf-8?B?L0Frc2hteXNZMzRqbDI4d3JwcEtXWlFZaWJPandPVHVmb2FxYng2SFVOalJG?=
 =?utf-8?B?QWtlcXh1RDV0M29JcHUwbldTVzRqMEs1cVdQMDhwWWp4WG1zS3dqb2hMWnRw?=
 =?utf-8?B?RzdBT1UvWHNxUFZxcDltN05DS1hKdkl6M2pDZCtpaDY0SDVNb2JnM3IyV3Zt?=
 =?utf-8?B?UHZHZG90OWZ1dDIzR2Nvb3pXWVNRdWdwMlBJR0VQR2JRK28yRzhsSzA5Z00y?=
 =?utf-8?B?ODdrZ04xbFV1N0UyUmZ1WTdqQVBHRFZyZnlqWkRBZ2lXRlk1RGtndDFydXM0?=
 =?utf-8?B?b0pOVDZLdmdPWEJsNU1vVDR5cDhtaEhLQzM2SWRKWlltS2drQS9BTG9lTXB5?=
 =?utf-8?B?emJEMmdFUStaRU9OcUc2NnpsVURiUGN3UUUrRHFIY2p2NE85NEt6WkVVZ3JC?=
 =?utf-8?B?ZmNNeGFYM2RZWVNDT3FKZkk0K016T1YranNOMGNMb1FuM0UzK3ltaGFrSGlD?=
 =?utf-8?B?L3kzbUlVZGVDUDEwVjcrZDBtcXRSdUZYNFpyblNsOG1YSVRJcXJHSDg0bmVz?=
 =?utf-8?B?dkREcXUrc2Zia1NMUmRhVnhKTnptREJqazRvZXZkbmUzZ2FTWk1iUnVpbTI2?=
 =?utf-8?B?TjFSVW54Y3JnL3A5Y21RUlVjVU5zTGF3WURnWG5MYWhHYk1ra0xEVUhoK0JL?=
 =?utf-8?B?S005N3JaaXNTTnlYaW5YWnB0QjgvMW9QbXphMDdrV01JSzRXUlRGUDBFbndM?=
 =?utf-8?B?WlFwV29OV1pzelJEbDJ6a1hCYnpqbE43ZkdEd0FoTzlxREo4cUJUdG1wcm81?=
 =?utf-8?Q?d5YFPO5XCxIiYOEIxG?=
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3ddc88a0-be29-4302-eb8e-08de72f03d99
X-MS-Exchange-CrossTenant-AuthSource: BL3PR12MB6473.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Feb 2026 15:28:48.7829
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: GrYMbYLz3VAbQh2awNb1AkaGPfYwHCXYRhuV/J0Lis5SwIpq0HK0pv6qrY7urYlvFMRozK+3fiBZmq7wpKiEDw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR12MB7163
X-Spamd-Bar: ------
X-MailFrom: edwards@nvidia.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: WVVLP22DN3QCJAGL2NKFFNHATE5H5KOJ
X-Message-ID-Hash: WVVLP22DN3QCJAGL2NKFFNHATE5H5KOJ
X-Mailman-Approved-At: Thu, 16 Apr 2026 16:40:38 +0000
CC: Jason Gunthorpe <jgg@ziepe.ca>, Leon Romanovsky <leon@kernel.org>, Sumit Semwal <sumit.semwal@linaro.org>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, linux-kernel@vger.kernel.org, linux-rdma@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, Yishai Hadas <yishaih@nvidia.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH rdma-next v3 2/3] RDMA/uverbs: Add DMABUF object type and operations
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/WVVLP22DN3QCJAGL2NKFFNHATE5H5KOJ/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64
X-Spamd-Result: default: False [4.59 / 15.00];
	DMARC_POLICY_REJECT(2.00)[nvidia.com : SPF not aligned (relaxed),reject];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_DKIM_REJECT(1.00)[Nvidia.com:s=selector2];
	DATE_IN_PAST(1.00)[1249];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	MIME_BASE64_TEXT(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	GREYLIST(0.00)[pass,meta];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.958];
	FROM_NEQ_ENVFROM(0.00)[edwards@nvidia.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[Nvidia.com:-];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	RCPT_COUNT_SEVEN(0.00)[11];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[nvidia.com:mid,nvidia.com:email,linaro.org:email,lists.linaro.org:helo,lists.linaro.org:rdns]
X-Rspamd-Queue-Id: 29D8C412011
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

DQoNCk9uIDIvMjMvMjAyNiA2OjU5IEFNLCBHdWVudGVyIFJvZWNrIHdyb3RlOg0KPiBFeHRlcm5h
bCBlbWFpbDogVXNlIGNhdXRpb24gb3BlbmluZyBsaW5rcyBvciBhdHRhY2htZW50cw0KPiANCj4g
DQo+IE9uIFN1biwgRmViIDAxLCAyMDI2IGF0IDA0OjM0OjA1UE0gKzAyMDAsIEVkd2FyZCBTcm91
amkgd3JvdGU6DQo+PiBGcm9tOiBZaXNoYWkgSGFkYXMgPHlpc2hhaWhAbnZpZGlhLmNvbT4NCj4+
DQo+PiBFeHBvc2UgRE1BQlVGIGZ1bmN0aW9uYWxpdHkgdG8gdXNlcnNwYWNlIHRocm91Z2ggdGhl
IHV2ZXJicyBpbnRlcmZhY2UsDQo+PiBlbmFibGluZyBJbmZpbmlCYW5kL1JETUEgZGV2aWNlcyB0
byBleHBvcnQgUENJIGJhc2VkIG1lbW9yeSByZWdpb25zDQo+PiAoZS5nLiBkZXZpY2UgbWVtb3J5
KSBhcyBETUFCVUYgZmlsZSBkZXNjcmlwdG9ycy4gVGhpcyBhbGxvd3MNCj4+IHplcm8tY29weSBz
aGFyaW5nIG9mIFJETUEgbWVtb3J5IHdpdGggb3RoZXIgc3Vic3lzdGVtcyB0aGF0IHN1cHBvcnQg
dGhlDQo+PiBkbWEtYnVmIGZyYW1ld29yay4NCj4+DQo+PiBBIG5ldyBVVkVSQlNfT0JKRUNUX0RN
QUJVRiBvYmplY3QgdHlwZSBhbmQgYWxsb2NhdGlvbiBtZXRob2Qgd2VyZQ0KPj4gaW50cm9kdWNl
ZC4NCj4+DQo+PiBEdXJpbmcgYWxsb2NhdGlvbiwgdXZlcmJzIGludm9rZXMgdGhlIGRyaXZlciB0
byBzdXBwbHkgdGhlDQo+PiByZG1hX3VzZXJfbW1hcF9lbnRyeSBhc3NvY2lhdGVkIHdpdGggdGhl
IGdpdmVuIHBhZ2Ugb2Zmc2V0IChwZ29mZikuDQo+Pg0KPj4gQmFzZWQgb24gdGhlIHJldHVybmVk
IHJkbWFfdXNlcl9tbWFwX2VudHJ5LCB1dmVyYnMgcmVxdWVzdHMgdGhlIGRyaXZlcg0KPj4gdG8g
cHJvdmlkZSB0aGUgY29ycmVzcG9uZGluZyBwaHlzaWNhbC1tZW1vcnkgZGV0YWlscyBhcyB3ZWxs
IGFzIHRoZQ0KPj4gZHJpdmVy4oCZcyBQQ0kgcHJvdmlkZXIgaW5mb3JtYXRpb24uDQo+Pg0KPj4g
VXNpbmcgdGhpcyBpbmZvcm1hdGlvbiwgZG1hX2J1Zl9leHBvcnQoKSBpcyBjYWxsZWQ7IGlmIGl0
IHN1Y2NlZWRzLA0KPj4gdW9iai0+b2JqZWN0IGlzIHNldCB0byB0aGUgdW5kZXJseWluZyBmaWxl
IHBvaW50ZXIgcmV0dXJuZWQgYnkgdGhlDQo+PiBkbWEtYnVmIGZyYW1ld29yay4NCj4+DQo+PiBU
aGUgZmlsZSBkZXNjcmlwdG9yIG51bWJlciBmb2xsb3dzIHRoZSBzdGFuZGFyZCB1dmVyYnMgYWxs
b2NhdGlvbiBmbG93LA0KPj4gYnV0IHRoZSBmaWxlIHBvaW50ZXIgY29tZXMgZnJvbSB0aGUgZG1h
LWJ1ZiBzdWJzeXN0ZW0sIGluY2x1ZGluZyBpdHMgb3duDQo+PiBmb3BzIGFuZCBwcml2YXRlIGRh
dGEuDQo+Pg0KPj4gV2hlbiBhbiBtbWFwIGVudHJ5IGlzIHJlbW92ZWQsIHV2ZXJicyBpdGVyYXRl
cyBvdmVyIGl0cyBhc3NvY2lhdGVkDQo+PiBETUFCVUZzLCBtYXJrcyB0aGVtIGFzIHJldm9rZWQs
IGFuZCBjYWxscyBkbWFfYnVmX21vdmVfbm90aWZ5KCkgc28gdGhhdA0KPj4gdGhlaXIgaW1wb3J0
ZXJzIGFyZSBub3RpZmllZC4NCj4+DQo+PiBUaGUgc2FtZSBwcm9jZWR1cmUgYXBwbGllcyBkdXJp
bmcgdGhlIGRpc2Fzc29jaWF0ZSBmbG93OyBmaW5hbCBjbGVhbnVwDQo+PiBvY2N1cnMgd2hlbiB0
aGUgYXBwbGljYXRpb24gY2xvc2VzIHRoZSBmaWxlLg0KPj4NCj4+IFNpZ25lZC1vZmYtYnk6IFlp
c2hhaSBIYWRhcyA8eWlzaGFpaEBudmlkaWEuY29tPg0KPj4gU2lnbmVkLW9mZi1ieTogRWR3YXJk
IFNyb3VqaSA8ZWR3YXJkc0BudmlkaWEuY29tPg0KPiANCj4gV2hlbiB0cnlpbmcgdG8gYnVpbGQg
cG93ZXJwYzpwcGM2NGVfZGVmY29uZmlnOg0KPiANCj4gRVJST1I6IG1vZHBvc3Q6ICJkbWFfcmVz
dl93YWl0X3RpbWVvdXQiIFtkcml2ZXJzL2luZmluaWJhbmQvY29yZS9pYl9jb3JlLmtvXSB1bmRl
ZmluZWQhDQo+IEVSUk9SOiBtb2Rwb3N0OiAiZG1hX2J1Zl9tb3ZlX25vdGlmeSIgW2RyaXZlcnMv
aW5maW5pYmFuZC9jb3JlL2liX2NvcmUua29dIHVuZGVmaW5lZCENCj4gRVJST1I6IG1vZHBvc3Q6
ICJkbWFfcmVzdl9yZXNldF9tYXhfZmVuY2VzIiBbZHJpdmVycy9pbmZpbmliYW5kL2NvcmUvaWJf
Y29yZS5rb10gdW5kZWZpbmVkIQ0KPiANCj4gVGhlIGNvZGUgbm93IHJlcXVpcmVzIENPTkZJR19E
TUFfU0hBUkVEX0JVRkZFUiB3aGljaCBpcyBub3QgZW5hYmxlZCBmb3INCj4gdGhpcyBwbGF0Zm9y
bS4NCj4gDQo+IEd1ZW50ZXINCg0KQSBmaXggd2FzIGFscmVhZHkgc2VudCwgd2hpY2ggSSBiZWxp
ZXZlIHNvbHZlcyB5b3VyIGlzc3VlOg0KaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvbGludXgtcmRt
YS8yMDI2MDIxNjEyMTIxMy4yMDg4OTEwLTEtYXJuZEBrZXJuZWwub3JnLw0KSXQgYWRkcyAnc2Vs
ZWN0IERNQV9TSEFSRURfQlVGRkVSJyB0byB0aGUgaW5maW5pYmFuZCBLY29uZmlnIGVudHJ5Lg0K
DQoNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFy
by1tbS1zaWcgbWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpU
byB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMu
bGluYXJvLm9yZwo=
