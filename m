Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F3D5D3A4C4
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 19 Jan 2026 11:21:23 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 1A4A3400F2
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 19 Jan 2026 10:21:22 +0000 (UTC)
Received: from BL0PR03CU003.outbound.protection.outlook.com (mail-eastusazon11012026.outbound.protection.outlook.com [52.101.53.26])
	by lists.linaro.org (Postfix) with ESMTPS id 8240C3F734
	for <linaro-mm-sig@lists.linaro.org>; Mon, 19 Jan 2026 10:21:16 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=amd.com header.s=selector1 header.b=seIfoovS;
	spf=pass (lists.linaro.org: domain of Christian.Koenig@amd.com designates 52.101.53.26 as permitted sender) smtp.mailfrom=Christian.Koenig@amd.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1");
	dmarc=pass (policy=quarantine) header.from=amd.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=dpwsu0Qx4j1EOfEy28uh69i4kJ7cKck+VkOmfQQgYbwR7bEaVCVAFQ+lYwHzpkIv2kUsd0wV83T+6i4iuoKoRd41MIASJE9KsJa4Vrymbz8KZmIiFxsrAwwhNoEyh0rPtyWU9NTNl1b5LyuExGTgKKgO9mUWhdPHlxxyUOkoJHs93HUtk4sTpdtaYItuQV0UpMAz8taYkiP1OSBIAKQ+Hzlfc8IZCZYprUCbaX+2ixE1uVQp04xmhEEovjAqj+HDraQ4OdQ/WDO4hZbmd/N59vt+vpNH1PH+Sv8ZnOQK5i73pvBJwj3VUmBglLx9vgRBUdhugpMI862yULdmDNaaOw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=H3zT9tFljbzDlNx+eEIGfkaPFN2/rMWsyvtZkYoz7pA=;
 b=CNj+fqvqm8TiAKVrtUSochdgAM3WQ8xvdXIm4u9ufeMsJ9s6AvRGzh7B9MQMvQvx/iXTh/NXfvd5y4Thit/f/OMIFF3OQQWevloCIOPn6u0emhT2YFZova6gxlCExMTmKaM4gOERkB/Q3wY0Y7LG5M/3nWKRtrQ3P7NiiHThtZc9pb63bm/Cx6BOj19+vKqYZD97EPxTrffItEnoznFHl+WrPYYs3swLr73rexMqj0KoLesXN25a8SptUfMUE1S3vNTXS6zWBSsolml81jfByIP1o2qeLyvsmZwW3L5yvLl6Q0C2Ko/XRXNf7dvviAMZkZc/0+h42DoXHc+ZMirYvg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=H3zT9tFljbzDlNx+eEIGfkaPFN2/rMWsyvtZkYoz7pA=;
 b=seIfoovSOJ2J1RHS+fE6om6eTxCF3pNuCJ9icv9m2lrNqV3OSx3JF/mk78NVYN80RKtETMJPTend8ZnolNAohHItJ+hFj3r6LtHwiumDz9iGOc1LCqwP3ONOZBGrV2UYHPSLXOR+2N4tu0wfQ2yrmhsfOuSMagLdOWzVFh0ruy8=
Received: from PH7PR12MB5685.namprd12.prod.outlook.com (2603:10b6:510:13c::22)
 by CH3PR12MB8186.namprd12.prod.outlook.com (2603:10b6:610:129::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9520.12; Mon, 19 Jan
 2026 10:21:14 +0000
Received: from PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::46fb:96f2:7667:7ca5]) by PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::46fb:96f2:7667:7ca5%4]) with mapi id 15.20.9520.011; Mon, 19 Jan 2026
 10:21:14 +0000
Message-ID: <78035892-758d-4104-9dd5-aed9a045d481@amd.com>
Date: Mon, 19 Jan 2026 11:20:46 +0100
User-Agent: Mozilla Thunderbird
To: =?UTF-8?Q?Thomas_Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>,
 Leon Romanovsky <leon@kernel.org>
References: <20260118-dmabuf-revoke-v2-0-a03bb27c0875@nvidia.com>
 <f115c91bbc9c6087d8b32917b9e24e3363a91f33.camel@linux.intel.com>
 <20260119075229.GE13201@unreal>
 <9112a605d2ee382e83b84b50c052dd9e4a79a364.camel@linux.intel.com>
Content-Language: en-US
From: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
In-Reply-To: <9112a605d2ee382e83b84b50c052dd9e4a79a364.camel@linux.intel.com>
X-ClientProxiedBy: BN9PR03CA0395.namprd03.prod.outlook.com
 (2603:10b6:408:111::10) To PH7PR12MB5685.namprd12.prod.outlook.com
 (2603:10b6:510:13c::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR12MB5685:EE_|CH3PR12MB8186:EE_
X-MS-Office365-Filtering-Correlation-Id: 430daee4-03ac-40e9-4099-08de574479a8
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|7416014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: 
	=?utf-8?B?UEtGNzVVeUpja243UVQ4L2l0NlRaWTZ2Q1JJYnR3QzRxMEF5WmI5V0FKbDVO?=
 =?utf-8?B?WGgwQ1ZEdkd4R1FMalprUlFJUFd1VGxoa2dqOUNtcVRoRzRDdWRoWWpkbjlq?=
 =?utf-8?B?SDRERUpxSlZlQjV6S1k0NjdFTjYyRERvTjZkc3daRVNSRk1UU2Q4RXhzWmFR?=
 =?utf-8?B?V1hmYldnc0JRYlVEMU02WE5aNEVBb3hqR0M3YkFIOWpDUkdwYld4QVlDSFpr?=
 =?utf-8?B?MVcxTDNvbDM5WHplNXZOUjZHMlJPMysxdmhJUFNFR05yWmtrZ2lDNVJ2ZWRQ?=
 =?utf-8?B?cHBzVlFCbnIxRVk2QnQ5WlJGcEJpYmt3MXJ6ODJvdjJBUnlyQWNDQXptL0dZ?=
 =?utf-8?B?M0psZ2dZUFVmc0EzMHlRcHk5TFpERzlrSnFqTUxsajBQUlA5bktLUGRQQ2pq?=
 =?utf-8?B?RFFqTGMrRkRDbUFLazhYM0ZTQnhPWTN6VEtzeWhJWlE2ekxtaFZFeEorN3A1?=
 =?utf-8?B?cWc4bHJBTHlNUW1uam1YLzllSTM3cVFwdjVpYTZyTmRndHFWUzQzRUJPaTlW?=
 =?utf-8?B?TlJzUDEyTnEyNjVOLzNUbStGZVlVaXR3MVR3N2x0Tk1abWpERzRuaWh5MmRI?=
 =?utf-8?B?aHR0cXNEN2NWZVIvNU1iTWEycTVZUWxlN1dBWmdiZFcybDlLdGx1NHU3UUlZ?=
 =?utf-8?B?RE1xWDRsMXVkakFONU1DS0w4SmNoUENxZERCeFhhbXZtWHZXVFVPVGhKSFVZ?=
 =?utf-8?B?WjBwZStSdHZZQ3RHbThKeDBWS3pwdURUYWJIb21oOG5HV1J3TUhTVzJEWFk5?=
 =?utf-8?B?Y2N2OE81Y3lza0ZXakF3a0ZxdW1BWDNML0hVVDdUSitHdjdtTVEvWXc3Wmkr?=
 =?utf-8?B?NEgwaTd6MXpCcWd4MUR6QVBsZ0NvRFEvc3VjY29wdWRDUFlJcnJTNEttY3NP?=
 =?utf-8?B?RjJvMHhMa2ZVT3NoRk9Zb2UvbXBrVkloZ1ZQUnZNUCt3YWp0ck1PekRxSnFF?=
 =?utf-8?B?NWZuZXIybzQvbjVlZjVYckFjUVlHc2lIUklVdDdxNFJBYW9UUTlDaGY5TklJ?=
 =?utf-8?B?UzJEdG4xVXdtQ2MvVG1RT215dHBUMW5tL1J6N3JyMG1UN2NGbzBPZ3lUVUU3?=
 =?utf-8?B?bmorR2pQNWl1YTZxY0FiSjBIYzJHbGJaU0ZycUQwQUFRanNwUmhFQ0YzWS9Z?=
 =?utf-8?B?QTB1dlhjaWhaOG1SNTJUNjhJWnlwRTVTSXhHZ1FDNnY1UExUWWJJYUExTWIw?=
 =?utf-8?B?RkZVUTFxRkp2ZEp6T2paQmJnSmt4T2ZMV1Y3UGY4emFPYXp0R2NwV1BOeWRa?=
 =?utf-8?B?SEx6Qmw0a1FNSGRvbUhXZm1pQjBQQ3BDZUhUTVI1OUR3N1U3UWJuQ0NvcWF1?=
 =?utf-8?B?NTVpckowNmZheEJ6ZUdWU1FKd05hc3Z2bmdsOGkrb1krODc5VHFrTzcxZHNo?=
 =?utf-8?B?UUU1bHFaMjBOTEk3N0dNNkVKT3dsY3lXZEQyZlBvc0tQemozVFU0R0h6WWZJ?=
 =?utf-8?B?bDhrMWVadnM4eFo4Z0FLeTZ0aXhuS0ZiL0ZiR0ViNEFVVjdISFdGZkljYk5I?=
 =?utf-8?B?WlQvUWUzZlF1RDBLT1dDcWhyeDE5SS8ycWZPSXZZcVUxcmN6N3BUbHVEdk9H?=
 =?utf-8?B?VjZULzlWUm9nVkpwV0hteTJ2bEVQRDBqSDlRY0pTNitEVjIyOVBaNTltUUV0?=
 =?utf-8?B?RzFYSkRtVTlrdEVINVQ4RlBBbytrMFRMRzZsdzIwMW1ab2oydUhKK0hTWDFM?=
 =?utf-8?B?YU04cmdDT1U3STR3QlB3SDhmV1dXNXZQT2ZSRFErd2JoNVU1OXhMbDJmWkw4?=
 =?utf-8?B?VzZaS1dCbDZLWk1WaCtGbXNSOHVFUWdhaXNiUUkxTXM4MzFuRS9ZQ2xFNzVV?=
 =?utf-8?B?SWlORjdNWms0SW1FSnVjMTlGcnJHYlBzR3JSNEtFRUdQTzNjTkNqVERDaXMz?=
 =?utf-8?B?RUxEaTlXYlRkSHg5cHZJWjFLQVhjcmdlM2czdXNrb1ZweVlYVm5LeVh2WW5D?=
 =?utf-8?B?WENJeWcrL0Z4V0NhUHdXdGp3d0VPdEo1cWVNazZJM3BTcnlNRkpKR1EvditM?=
 =?utf-8?B?K3p2V3NIbUkrWlF2WU9qeE9CRk1WNXpoMUdhMFRkVEJQN3ByaWdKc2J4NExP?=
 =?utf-8?Q?xzweni?=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH7PR12MB5685.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(7416014)(366016)(1800799024);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?cW1sZ0dsOVNDMG1pS3ZLbHJPUDNjMCtOWHVET1RHcTB3K3c2V3Z4aFRIZ2p2?=
 =?utf-8?B?OTNkQlU4TG1zbmF2eUJraDh5NEw2ZkczT0hKbUhGL0JWNVRtTmJaTW0xTXd6?=
 =?utf-8?B?eU5Hbkc3c1BNTkd0VkNsM2xGOGRGSlg3WWw1eW4wVFcvM3JsYnJhZko1ZlJt?=
 =?utf-8?B?Ynp0dFI0OGVBdWF6MElWeFJwOHgydFFHODUwLzhxKzV0eUk4bC9uOHBtbzJW?=
 =?utf-8?B?by9Ha1dyYmRlYnk2TjExeEUxeFo4OTBpL3BYZjFqRE5GaEF5MzJJRjQ1WkZS?=
 =?utf-8?B?cnJDTWRnOXBHc3Fvd1JJZlB5MXdUY2dKVnB6MGc0QitHb1p6YUlZcDMrZUg1?=
 =?utf-8?B?dGQxRURqUC80Z1ZuOFFJenZNdE9RcWV0SEZ6eGx0ME1Nc1E1TW9PR2xQWWlp?=
 =?utf-8?B?MHhPb3MwUUVVZWNrZmZueHo3RGw4RDhZSEt0UjFVMVd0K1VZVzhlVExZMjE2?=
 =?utf-8?B?UkJuS29hWFZVT0pmR0RDajRnc0ZpUXZSMnFkWmpJYlBPZ3RNbkY2cnltQ2ZK?=
 =?utf-8?B?YzNpUGpJbFBEbHB5Y3g5cC9RcTI4RURXWlRvZEpOR1FmSDVpZy9YV1hjZSsx?=
 =?utf-8?B?ckZJdVVaUW52MEt6elU1dTkrMUU4SUJRQmk2UXRRbWxaK0lIa2oxeDl1eTBl?=
 =?utf-8?B?MEpMUnRKVEpDTllwYTZSQ3VGdVIxN0dPYXA4TXFtc0VDakRac1hacllRNWZH?=
 =?utf-8?B?ZkFWQWFSdUt2MHcyNVh1Y29rY2RYMTJpOStONVlnL2pDaHNDR1BFMFdaakhy?=
 =?utf-8?B?emV4VTVqVEUwd0Zoei81M1F1RlRLdmN2dUJFUkhFM3JQK3A5K0dzbmljWm9K?=
 =?utf-8?B?STZxVlBkOGsyU3JzTlFGaDNpKzgwdDZxWnpaZUZoMXNELzlXeThVbHIyRkJH?=
 =?utf-8?B?S1AvRi8xTnVNeDQrcUoxZ3RBTVFHYTZ1b1JBMFlLUWlBSDl0RUxVRGp2QUNt?=
 =?utf-8?B?NzRjZ0Z0WmpxVm5MUDc5TzQvMHE2blB5OFJVUWg5RTVJYktxWlp2UThaUjF0?=
 =?utf-8?B?MXY2d0cvL1AwRGllWEhkanIvdDdCb2Q4Njh0WnVNaDFCQVhPRTFLK3F5WmJ1?=
 =?utf-8?B?VThnMG1lL21naVpQYmUzZHRZOHlBWnFWSlZvR2p1RTBaYWxrYmF2dXdzY3FX?=
 =?utf-8?B?TkhrOEo2cFJLQVk0Q2hjQW9RRm1EUE4yU2hsNEszNkNZckY3dTZ5b1FFR05L?=
 =?utf-8?B?UmxrSnVCUnNKczVIc1ZXOVpSOS9ab3ZqMjUyT01Yam1ERytHa2VwVXVkd1Z6?=
 =?utf-8?B?QWZsVnlXWkRZVjhZS0ZsRHA4anpPSmJ5UElBYU9mcU40N3krc0lYNE9hMERE?=
 =?utf-8?B?d2YyNW1BQ1dxa2Jqd1JVYjNCL1BDVzBaT3F0Wm8ramNWV0hqSElzUnhyZzlq?=
 =?utf-8?B?VXhvUitFY0laT24zREVtQkJiWFl0czRsVjU0Qnk4di9PM2VIUnZuU3ZHTXdT?=
 =?utf-8?B?cmg1TXdETlh2ZzIzdFdHL0ZwcjZQWEFYdEpSd01XWGRqeDVmV1NtMTdFS1NQ?=
 =?utf-8?B?Z0dQdDF3dGcvR2k4dlNLOExwZHZpa3dwU3J5YTVha0lVQnYzcG5YcU1MT0pO?=
 =?utf-8?B?MUltVEFOa0YzNzJEU21sVHpLRldxZG8zQmVINHc3R3NGZW1oWnNEUy83RlJz?=
 =?utf-8?B?R2lUeTRkcDRxNWY4WXRTT0VGRWh2Vk05U1NveG45MnNheTBoZ05WcnhDSUxG?=
 =?utf-8?B?TEVzZ0thYjNIV0NqWDVGOElLaUhQTWpHT1FjZGcvbCtYNkFaUDhHQmE4NlBm?=
 =?utf-8?B?c3RoOExRbUNESDBtYnJxWVQ3RnQyV2xSVVdFY3lacFRwdTNqWkkyUUVNTm1j?=
 =?utf-8?B?elBCaFFJTSs3MTVLTlJWMUxSbnZnSThOZjBqY1V4ejJyUWRNUk91UDcrZHpX?=
 =?utf-8?B?dk0yQXYvc09rNURFN2xrL21KNWhNTTZvZldxSWxqZ0tpNWJjS2xEK3hINHBi?=
 =?utf-8?B?Qkc0S2VwQkM4VXJkeUlKTkhHdmdiWVgwNGkxdlFLWmhZdmNxeWF5N00yVWxF?=
 =?utf-8?B?cHNKWDNkSEVuY3lWZk9leG1KRWVTTjZwV3NqMVdoVVBLNDhZYlFyVys1SWRk?=
 =?utf-8?B?cVdDYWV4aHZrZ0t2aDBrSG5SQjRVYzFVMjdjK1VmcHBUcW83b3JEM2FuckdQ?=
 =?utf-8?B?dnFjM2NJM0FsWGgraTFSaFk3RVQvTmRQNUFDNTFVZjkxd1NVZ1M3UmZFdE5m?=
 =?utf-8?B?RXlqL1VEWnBtWTV1enZlaXl1SkhBSmtrTGcydmVBbW1ubHBTVng0MEx4c0Vz?=
 =?utf-8?B?ZXFJWGFUSHZBamJ3ZDFyR3doUXVrcUp2cmVPazN6NFhLWGtESkJkbzBlWFBD?=
 =?utf-8?Q?VFsJlj4DRUUSo6g5Yj?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 430daee4-03ac-40e9-4099-08de574479a8
X-MS-Exchange-CrossTenant-AuthSource: PH7PR12MB5685.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Jan 2026 10:21:14.4733
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: pDoP0HsgaPcHOSMw8DzayAZ2DyjdTnoN1S5F9rqZo8GkTXUA9833+NOKeyS74hkk
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR12MB8186
X-Rspamd-Queue-Id: 8240C3F734
X-Spamd-Bar: -----
X-Spamd-Result: default: False [-5.00 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[amd.com,quarantine];
	R_DKIM_ALLOW(-0.20)[amd.com:s=selector1];
	R_SPF_ALLOW(-0.20)[+ip4:52.100.0.0/15];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_POSSIBLE(0.00)[52.101.53.26:from];
	ASN(0.00)[asn:8075, ipnet:52.96.0.0/12, country:US];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[31];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[linaro.org,amd.com,gmail.com,ffwll.ch,redhat.com,collabora.com,chromium.org,linux.intel.com,kernel.org,suse.de,intel.com,ziepe.ca,8bytes.org,arm.com,shazbot.org,vger.kernel.org,lists.freedesktop.org,lists.linaro.org,lists.linux.dev];
	RCVD_IN_DNSWL_NONE(0.00)[52.101.53.26:from];
	FROM_EQ_ENVFROM(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[amd.com:+]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: QQXUSUCDEXEAZM2TIDISNBVTAPW7ZZKN
X-Message-ID-Hash: QQXUSUCDEXEAZM2TIDISNBVTAPW7ZZKN
X-MailFrom: Christian.Koenig@amd.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Sumit Semwal <sumit.semwal@linaro.org>, Alex Deucher <alexander.deucher@amd.com>, Simona Vetter <simona@ffwll.ch>, Gerd Hoffmann <kraxel@redhat.com>, Dmitry Osipenko <dmitry.osipenko@collabora.com>, Gurchetan Singh <gurchetansingh@chromium.org>, Chia-I Wu <olvaffe@gmail.com>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, Lucas De Marchi <lucas.demarchi@intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>, Jason Gunthorpe <jgg@ziepe.ca>, Kevin Tian <kevin.tian@intel.com>, Joerg Roedel <joro@8bytes.org>, Will Deacon <will@kernel.org>, Robin Murphy <robin.murphy@arm.com>, Alex Williamson <alex@shazbot.org>, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, amd-gfx@lists.freedesktop.org, virtualization@lists.linux.dev, intel-xe@lists.freedesktop.org, linux-rdma@vger.kernel.org, iommu@lists.linux.dev, kvm@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v2 0/4] dma-buf: document revoke mechanism to invalidate shared buffers
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/QQXUSUCDEXEAZM2TIDISNBVTAPW7ZZKN/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gMS8xOS8yNiAxMDoyNywgVGhvbWFzIEhlbGxzdHLDtm0gd3JvdGU6DQo+IE9uIE1vbiwgMjAy
Ni0wMS0xOSBhdCAwOTo1MiArMDIwMCwgTGVvbiBSb21hbm92c2t5IHdyb3RlOg0KPj4gT24gU3Vu
LCBKYW4gMTgsIDIwMjYgYXQgMDM6MTY6MjVQTSArMDEwMCwgVGhvbWFzIEhlbGxzdHLDtm0gd3Jv
dGU6DQo+Pj4gSGksIExlb24sDQo+Pj4NCj4+PiBPbiBTdW4sIDIwMjYtMDEtMTggYXQgMTQ6MDgg
KzAyMDAsIExlb24gUm9tYW5vdnNreSB3cm90ZToNCj4+Pj4gQ2hhbmdlbG9nOg0KPj4+PiB2MjoN
Cj4+Pj4gwqAqIENoYW5nZWQgc2VyaWVzIHRvIGRvY3VtZW50IHRoZSByZXZva2Ugc2VtYW50aWNz
IGluc3RlYWQgb2YNCj4+Pj4gwqDCoCBpbXBsZW1lbnRpbmcgaXQuDQo+Pj4+IHYxOg0KPj4+PiBo
dHRwczovL3BhdGNoLm1zZ2lkLmxpbmsvMjAyNjAxMTEtZG1hYnVmLXJldm9rZS12MS0wLWZiNGJj
YzhjMjU5YkBudmlkaWEuY29tDQo+Pj4+DQo+Pj4+IC0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tDQo+Pj4+IC0tLS0NCj4+Pj4g
LS0tLQ0KPj4+PiBUaGlzIHNlcmllcyBkb2N1bWVudHMgYSBkbWEtYnVmIOKAnHJldm9rZeKAnSBt
ZWNoYW5pc206IHRvIGFsbG93IGENCj4+Pj4gZG1hLQ0KPj4+PiBidWYNCj4+Pj4gZXhwb3J0ZXIg
dG8gZXhwbGljaXRseSBpbnZhbGlkYXRlICjigJxraWxs4oCdKSBhIHNoYXJlZCBidWZmZXIgYWZ0
ZXINCj4+Pj4gaXQNCj4+Pj4gaGFzDQo+Pj4+IGJlZW4gZGlzdHJpYnV0ZWQgdG8gaW1wb3J0ZXJz
LCBzbyB0aGF0IGZ1cnRoZXIgQ1BVIGFuZCBkZXZpY2UNCj4+Pj4gYWNjZXNzDQo+Pj4+IGlzDQo+
Pj4+IHByZXZlbnRlZCBhbmQgaW1wb3J0ZXJzIHJlbGlhYmx5IG9ic2VydmUgZmFpbHVyZS4NCj4+
Pj4NCj4+Pj4gVGhlIGNoYW5nZSBpbiB0aGlzIHNlcmllcyBpcyB0byBwcm9wZXJseSBkb2N1bWVu
dCBhbmQgdXNlDQo+Pj4+IGV4aXN0aW5nDQo+Pj4+IGNvcmUNCj4+Pj4g4oCccmV2b2tlZOKAnSBz
dGF0ZSBvbiB0aGUgZG1hLWJ1ZiBvYmplY3QgYW5kIGEgY29ycmVzcG9uZGluZw0KPj4+PiBleHBv
cnRlci0NCj4+Pj4gdHJpZ2dlcmVkDQo+Pj4+IHJldm9rZSBvcGVyYXRpb24uIE9uY2UgYSBkbWEt
YnVmIGlzIHJldm9rZWQsIG5ldyBhY2Nlc3MgcGF0aHMgYXJlDQo+Pj4+IGJsb2NrZWQgc28NCj4+
Pj4gdGhhdCBhdHRlbXB0cyB0byBETUEtbWFwLCB2bWFwLCBvciBtbWFwIHRoZSBidWZmZXIgZmFp
bCBpbiBhDQo+Pj4+IGNvbnNpc3RlbnQgd2F5Lg0KPj4+DQo+Pj4gVGhpcyBzb3VuZHMgbGlrZSBp
dCBkb2VzIG5vdCBtYXRjaCBob3cgbWFueSBHUFUtZHJpdmVycyB1c2UgdGhlDQo+Pj4gbW92ZV9u
b3RpZnkoKSBjYWxsYmFjay4NCj4+DQo+PiBObyBjaGFuZ2UgZm9yIHRoZW0uDQo+Pg0KPj4+DQo+
Pj4gbW92ZV9ub3RpZnkoKSB3b3VsZCB0eXBpY2FsbHkgaW52YWxpZGF0ZSBhbnkgZGV2aWNlIG1h
cHMgYW5kIGFueQ0KPj4+IGFzeW5jaHJvbm91cyBwYXJ0IG9mIHRoYXQgaW52YWxpZGF0aW9uIHdv
dWxkIGJlIGNvbXBsZXRlIHdoZW4gdGhlDQo+Pj4gZG1hLQ0KPj4+IGJ1ZidzIHJlc2VydmF0aW9u
IG9iamVjdCBiZWNvbWVzIGlkbGUgV1JUIERNQV9SRVNWX1VTQUdFX0JPT0tLRUVQDQo+Pj4gZmVu
Y2VzLg0KPj4NCj4+IFRoaXMgcGFydCBoYXMgbm90IGNoYW5nZWQgYW5kIHJlbWFpbnMgdGhlIHNh
bWUgZm9yIHRoZSByZXZvY2F0aW9uDQo+PiBmbG93IGFzIHdlbGwuDQo+Pg0KPj4+DQo+Pj4gSG93
ZXZlciwgdGhlIGltcG9ydGVyIGNvdWxkLCBhZnRlciBvYnRhaW5pbmcgdGhlIHJlc3YgbG9jaywg
b2J0YWluDQo+Pj4gYQ0KPj4+IG5ldyBtYXAgdXNpbmcgZG1hX2J1Zl9tYXBfYXR0YWNobWVudCgp
LCBhbmQgSSdkIGFzc3VtZSB0aGUgQ1BVIG1hcHMNCj4+PiB3b3JrIGluIHRoZSBzYW1lIHdheSwg
SS5FLiBtb3ZlX25vdGlmeSgpIGRvZXMgbm90ICpwZXJtYW5lbnRseSoNCj4+PiByZXZva2UNCj4+
PiBpbXBvcnRlciBhY2Nlc3MuDQo+Pg0KPj4gVGhpcyBwYXJ0IGRpdmVyZ2VzIGJ5IGRlc2lnbiBh
bmQgaXMgZG9jdW1lbnRlZCB0byBtYXRjaCByZXZva2UNCj4+IHNlbWFudGljcy7CoCANCg0KUGxl
YXNlIGRvbid0IGRvY3VtZW50IHRoYXQuIFRoaXMgaXMgc3BlY2lmaWMgZXhwb3J0ZXIgYmVoYXZp
b3IgYW5kIGRvZXNuJ3QgYmVsb25nIGludG8gRE1BLWJ1ZiBhdCBhbGwuDQoNCj4+IEl0IGRlZmlu
ZXMgd2hhdCBtdXN0IG9jY3VyIGFmdGVyIHRoZSBleHBvcnRlciByZXF1ZXN0cyB0aGF0IHRoZQ0K
Pj4gYnVmZmVyIGJlwqAgDQo+PiAia2lsbGVkIi4gQW4gaW1wb3J0ZXIgdGhhdCBmb2xsb3dzIHJl
dm9rZSBzZW1hbnRpY3Mgd2lsbCBub3QgYXR0ZW1wdA0KPj4gdG8gY2FsbMKgIA0KPj4gZG1hX2J1
Zl9tYXBfYXR0YWNobWVudCgpLCBhbmQgdGhlIGV4cG9ydGVyIHdpbGwgYmxvY2sgYW55IHJlbWFw
cGluZw0KPj4gYXR0ZW1wdHPCoCANCj4+IHJlZ2FyZGxlc3MuIFNlZSB0aGUgcHJpdi0+cmV2b2tl
ZCBmbGFnIGluIHRoZSBWRklPIGV4cG9ydGVyLg0KDQpJIGhhdmUgdG8gY2xlYXJseSByZWplY3Qg
dGhhdC4NCg0KSXQncyB0aGUgam9iIG9mIHRoZSBleHBvcnRlciB0byByZWplY3Qgc3VjaCBjYWxs
cyB3aXRoIGFuIGFwcHJvcHJpYXRlIGVycm9yIGFuZCBub3QgdGhlIGltcG9ydGVyIHRvIG5vdCBt
YWtlIHRoZW0uDQoNCj4+IEluIGFkZGl0aW9uLCBpbiB0aGlzIGVtYWlsIHRocmVhZCwgQ2hyaXN0
aWFuIGV4cGxhaW5zIHRoYXQgcmV2b2tlDQo+PiBzZW1hbnRpY3MgYWxyZWFkeSBleGlzdHMsIHdp
dGggdGhlIGNvbWJpbmF0aW9uIG9mIGRtYV9idWZfcGluIGFuZA0KPj4gZG1hX2J1Zl9tb3ZlX25v
dGlmeSwganVzdCBub3QgZG9jdW1lbnRlZDoNCj4+IGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL2Fs
bC9mN2YxODU2YS00NGZhLTQ0YWYtYjQ5Ni1lYjEyNjdhMDVkMTFAYW1kLmNvbS8NCj4gDQo+IA0K
PiBIbW0sDQo+IA0KPiBDb25zaWRlcmluZyANCj4gDQo+IGh0dHBzOi8vZWxpeGlyLmJvb3RsaW4u
Y29tL2xpbnV4L3Y2LjE5LXJjNS9zb3VyY2UvZHJpdmVycy9pbmZpbmliYW5kL2NvcmUvdW1lbV9k
bWFidWYuYyNMMTkyDQoNClllcywgdGhhdCBjYXNlIGlzIHdlbGwga25vd24uDQoNCj4gdGhpcyBz
b3VuZHMgbGlrZSBpdCdzIG5vdCBqdXN0IHVuZG9jdW1lbnRlZCBidXQgYWxzbyBpbiBzb21lIGNh
c2VzDQo+IHVuaW1wbGVtZW50ZWQuIFRoZSB4ZSBkcml2ZXIgZm9yIG9uZSBkb2Vzbid0IGV4cGVj
dCBtb3ZlX25vdGlmeSgpIHRvIGJlDQo+IGNhbGxlZCBvbiBwaW5uZWQgYnVmZmVycywNCg0KQW5k
IHRoYXQgaXMgd2hhdCB3ZSBuZWVkIHRvIGNoYW5nZS4gU2VlIG1vdmVfbm90aWZ5IGNhbiBoYXBw
ZW4gb24gcGlubmVkIGJ1ZmZlcnMgY3VycmVudGx5IGFzIHdlbGwuDQoNCkZvciBleGFtcGxlIGlu
IHRoZSBjYXNlIG9mIFBDSSBob3QgdW5wbHVnLiBBZnRlciBwaW5uaW5nIHdlIGp1c3QgZG9uJ3Qg
Y2FsbCBpdCBmb3IgbWVtb3J5IG1hbmFnZW1lbnQgbmVlZHMgYW55IG1vcmUuDQoNCldlIGp1c3Qg
aGF2ZW4ndCBkb2N1bWVudGVkIHRoYXQgcHJvcGVybHkuDQoNCj4gc28gaWYgdGhhdCBpcyBpbmRl
ZWQgZ29pbmcgdG8gYmUgcGFydCBvZiB0aGUNCj4gZG1hLWJ1ZiBwcm90b2NvbCwgIHdvdWxkbid0
IHN1cHBvcnQgZm9yIHRoYXQgbmVlZCB0byBiZSBhZHZlcnRpc2VkIGJ5DQo+IHRoZSBpbXBvcnRl
cj8NCg0KVGhhdCdzIHdoYXQgdGhpcyBwYXRjaCBzZXQgaGVyZSBzaG91bGQgZG8sIHllcy4NCg0K
UmVnYXJkcywNCkNocmlzdGlhbi4NCg0KPiANCj4gVGhhbmtzLA0KPiBUaG9tYXMNCj4gDQo+Pg0K
Pj4gVGhhbmtzDQo+Pg0KPj4+DQo+Pj4gL1Rob21hcw0KPj4+DQo+Pj4NCj4+Pj4NCj4+Pj4gVGhh
bmtzDQo+Pj4+DQo+Pj4+IENjOiBsaW51eC1tZWRpYUB2Z2VyLmtlcm5lbC5vcmcNCj4+Pj4gQ2M6
IGRyaS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj4+Pj4gQ2M6IGxpbmFyby1tbS1zaWdA
bGlzdHMubGluYXJvLm9yZw0KPj4+PiBDYzogbGludXgta2VybmVsQHZnZXIua2VybmVsLm9yZw0K
Pj4+PiBDYzogYW1kLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj4+Pj4gQ2M6IHZpcnR1YWxp
emF0aW9uQGxpc3RzLmxpbnV4LmRldg0KPj4+PiBDYzogaW50ZWwteGVAbGlzdHMuZnJlZWRlc2t0
b3Aub3JnDQo+Pj4+IENjOiBsaW51eC1yZG1hQHZnZXIua2VybmVsLm9yZw0KPj4+PiBDYzogaW9t
bXVAbGlzdHMubGludXguZGV2DQo+Pj4+IENjOiBrdm1Admdlci5rZXJuZWwub3JnDQo+Pj4+IFRv
OiBTdW1pdCBTZW13YWwgPHN1bWl0LnNlbXdhbEBsaW5hcm8ub3JnPg0KPj4+PiBUbzogQ2hyaXN0
aWFuIEvDtm5pZyA8Y2hyaXN0aWFuLmtvZW5pZ0BhbWQuY29tPg0KPj4+PiBUbzogQWxleCBEZXVj
aGVyIDxhbGV4YW5kZXIuZGV1Y2hlckBhbWQuY29tPg0KPj4+PiBUbzogRGF2aWQgQWlybGllIDxh
aXJsaWVkQGdtYWlsLmNvbT4NCj4+Pj4gVG86IFNpbW9uYSBWZXR0ZXIgPHNpbW9uYUBmZndsbC5j
aD4NCj4+Pj4gVG86IEdlcmQgSG9mZm1hbm4gPGtyYXhlbEByZWRoYXQuY29tPg0KPj4+PiBUbzog
RG1pdHJ5IE9zaXBlbmtvIDxkbWl0cnkub3NpcGVua29AY29sbGFib3JhLmNvbT4NCj4+Pj4gVG86
IEd1cmNoZXRhbiBTaW5naCA8Z3VyY2hldGFuc2luZ2hAY2hyb21pdW0ub3JnPg0KPj4+PiBUbzog
Q2hpYS1JIFd1IDxvbHZhZmZlQGdtYWlsLmNvbT4NCj4+Pj4gVG86IE1hYXJ0ZW4gTGFua2hvcnN0
IDxtYWFydGVuLmxhbmtob3JzdEBsaW51eC5pbnRlbC5jb20+DQo+Pj4+IFRvOiBNYXhpbWUgUmlw
YXJkIDxtcmlwYXJkQGtlcm5lbC5vcmc+DQo+Pj4+IFRvOiBUaG9tYXMgWmltbWVybWFubiA8dHpp
bW1lcm1hbm5Ac3VzZS5kZT4NCj4+Pj4gVG86IEx1Y2FzIERlIE1hcmNoaSA8bHVjYXMuZGVtYXJj
aGlAaW50ZWwuY29tPg0KPj4+PiBUbzogVGhvbWFzIEhlbGxzdHLDtm0gPHRob21hcy5oZWxsc3Ry
b21AbGludXguaW50ZWwuY29tPg0KPj4+PiBUbzogUm9kcmlnbyBWaXZpIDxyb2RyaWdvLnZpdmlA
aW50ZWwuY29tPg0KPj4+PiBUbzogSmFzb24gR3VudGhvcnBlIDxqZ2dAemllcGUuY2E+DQo+Pj4+
IFRvOiBMZW9uIFJvbWFub3Zza3kgPGxlb25Aa2VybmVsLm9yZz4NCj4+Pj4gVG86IEtldmluIFRp
YW4gPGtldmluLnRpYW5AaW50ZWwuY29tPg0KPj4+PiBUbzogSm9lcmcgUm9lZGVsIDxqb3JvQDhi
eXRlcy5vcmc+DQo+Pj4+IFRvOiBXaWxsIERlYWNvbiA8d2lsbEBrZXJuZWwub3JnPg0KPj4+PiBU
bzogUm9iaW4gTXVycGh5IDxyb2Jpbi5tdXJwaHlAYXJtLmNvbT4NCj4+Pj4gVG86IEFsZXggV2ls
bGlhbXNvbiA8YWxleEBzaGF6Ym90Lm9yZz4NCj4+Pj4NCj4+Pj4gLS0tDQo+Pj4+IExlb24gUm9t
YW5vdnNreSAoNCk6DQo+Pj4+IMKgwqDCoMKgwqAgZG1hLWJ1ZjogUmVuYW1lIC5tb3ZlX25vdGlm
eSgpIGNhbGxiYWNrIHRvIGEgY2xlYXJlcg0KPj4+PiBpZGVudGlmaWVyDQo+Pj4+IMKgwqDCoMKg
wqAgZG1hLWJ1ZjogRG9jdW1lbnQgcmV2b2tlIHNlbWFudGljcw0KPj4+PiDCoMKgwqDCoMKgIGlv
bW11ZmQ6IFJlcXVpcmUgRE1BQlVGIHJldm9rZSBzZW1hbnRpY3MNCj4+Pj4gwqDCoMKgwqDCoCB2
ZmlvOiBBZGQgcGlubmVkIGludGVyZmFjZSB0byBwZXJmb3JtIHJldm9rZSBzZW1hbnRpY3MNCj4+
Pj4NCj4+Pj4gwqBkcml2ZXJzL2RtYS1idWYvZG1hLWJ1Zi5jwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgIHzCoCA2ICsrKy0tLQ0KPj4+PiDCoGRyaXZlcnMvZ3B1L2RybS9hbWQv
YW1kZ3B1L2FtZGdwdV9kbWFfYnVmLmMgfMKgIDQgKystLQ0KPj4+PiDCoGRyaXZlcnMvZ3B1L2Ry
bS92aXJ0aW8vdmlydGdwdV9wcmltZS5jwqDCoMKgwqDCoCB8wqAgMiArLQ0KPj4+PiDCoGRyaXZl
cnMvZ3B1L2RybS94ZS90ZXN0cy94ZV9kbWFfYnVmLmPCoMKgwqDCoMKgwqAgfMKgIDYgKysrLS0t
DQo+Pj4+IMKgZHJpdmVycy9ncHUvZHJtL3hlL3hlX2RtYV9idWYuY8KgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoCB8wqAgMiArLQ0KPj4+PiDCoGRyaXZlcnMvaW5maW5pYmFuZC9jb3JlL3VtZW1fZG1h
YnVmLmPCoMKgwqDCoMKgwqAgfMKgIDQgKystLQ0KPj4+PiDCoGRyaXZlcnMvaW5maW5pYmFuZC9o
dy9tbHg1L21yLmPCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgfMKgIDIgKy0NCj4+Pj4gwqBkcml2
ZXJzL2lvbW11L2lvbW11ZmQvcGFnZXMuY8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgfCAx
MSArKysrKysrKystLQ0KPj4+PiDCoGRyaXZlcnMvdmZpby9wY2kvdmZpb19wY2lfZG1hYnVmLmPC
oMKgwqDCoMKgwqDCoMKgwqAgfCAxNg0KPj4+PiArKysrKysrKysrKysrKysrDQo+Pj4+IMKgaW5j
bHVkZS9saW51eC9kbWEtYnVmLmjCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgIHwgMjUNCj4+Pj4gKysrKysrKysrKysrKysrKysrKysrKy0tLQ0KPj4+PiDCoDEwIGZpbGVz
IGNoYW5nZWQsIDYwIGluc2VydGlvbnMoKyksIDE4IGRlbGV0aW9ucygtKQ0KPj4+PiAtLS0NCj4+
Pj4gYmFzZS1jb21taXQ6IDlhY2U0NzUzYTUyMDJiMDIxOTFkNTRlOWZkZjdmOWUzZDAyYjg1ZWIN
Cj4+Pj4gY2hhbmdlLWlkOiAyMDI1MTIyMS1kbWFidWYtcmV2b2tlLWI5MGVmMTZlNDIzNg0KPj4+
Pg0KPj4+PiBCZXN0IHJlZ2FyZHMsDQo+Pj4+IC0twqAgDQo+Pj4+IExlb24gUm9tYW5vdnNreSA8
bGVvbnJvQG52aWRpYS5jb20+DQo+Pj4+DQo+Pj4NCj4gDQoNCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0IC0t
IGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVt
YWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=
