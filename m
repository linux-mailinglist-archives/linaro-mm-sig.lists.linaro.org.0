Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id A905EA7A38D
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  3 Apr 2025 15:21:10 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 9E0D245FFE
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  3 Apr 2025 13:21:09 +0000 (UTC)
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (mail-dm6nam12on2058.outbound.protection.outlook.com [40.107.243.58])
	by lists.linaro.org (Postfix) with ESMTPS id B2E9B44631
	for <linaro-mm-sig@lists.linaro.org>; Thu,  3 Apr 2025 13:21:06 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=amd.com header.s=selector1 header.b=yRL1eT3x;
	dmarc=pass (policy=quarantine) header.from=amd.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1");
	spf=pass (lists.linaro.org: domain of Christian.Koenig@amd.com designates 40.107.243.58 as permitted sender) smtp.mailfrom=Christian.Koenig@amd.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=FF+ETfKwfOyG5jMFR5TpTywgqwEjAK67j31wnBLSM42moz844pnzHEmdz79KJLbs+GcyRlZwK1Rs7HguZPgr8zQRUTD9ImQPalOCs6lXS08co+W77jmEBGmtL3CEpx9nkGv75gQ8fyJEd0W19teH2hLeB5E/S9OWH8FD/kx/SLinGZ6AKJPfvrnSwav/V0Dd8C1uAatRYcFfzq7NFUa4Ymh+4LRrFUL9BDInOuM+e/x39ivu4d5HckjPkk+CG0ZlLJ+oGf/Ci0TnfjfNX5CHVLlck1xFrUZ5URFSR0QXdixAahEfAOAjymz/ma746SGzeROJ91X7Fl3VYNaLPFN6oQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=f5S4LKxEvDWlZbVkh8KcnUyrplNJgf5AIkGfW79Lej0=;
 b=MuD8Sniptx7OBJ0QA3HNmyl32MlViank3xu0yvxa1sET/18bQbatr9oU1BrPBMk3pht/mFiYc/SMiUCnosUkxfEtGlt8WQ8iHFuGq14Xgo9DUq6haxFSmMCfMKCs4sKb6vY/DE3MKwF5BjPwvziWdaTya0TetbKVsoEHe+lEp1x8PCCK2LUUs4bpWSOXIwbKnDF/XbWquf2o//IA3h2sSrLxXQYQFqYdE7dcZctkLS25TOTBf6HYLDeiNmNGQKxSLC9NVnOQiHMfuV1NfqXir8Fh2GaMPouS8TPG53EZq5MRKcs7iyQlRTKug0bpiIt6Cz4UJocLcwz0rGNi/PYgvw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=f5S4LKxEvDWlZbVkh8KcnUyrplNJgf5AIkGfW79Lej0=;
 b=yRL1eT3xhu5WBbLShHURDytWWQcmGIDCOlTtmVvymnFkGBmjmzFk6xcdmUrWDSHk7atN0NubtoXFlha7bdM+lKcn5E5aiNKFIJg7TaRzHiiBwonw4zs3IutmDh9+bArp9CNLeXsBkIQkjmU7zRUB3W2aF6mxgVir3Igd/FgXGu0=
Received: from PH7PR12MB5685.namprd12.prod.outlook.com (2603:10b6:510:13c::22)
 by BN7PPFDE2ACDA69.namprd12.prod.outlook.com (2603:10b6:40f:fc02::6e6) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8583.44; Thu, 3 Apr
 2025 13:21:04 +0000
Received: from PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::46fb:96f2:7667:7ca5]) by PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::46fb:96f2:7667:7ca5%5]) with mapi id 15.20.8583.041; Thu, 3 Apr 2025
 13:21:04 +0000
Message-ID: <096c67d2-4f3e-4d61-9360-1232b05d5d1d@amd.com>
Date: Thu, 3 Apr 2025 15:20:59 +0200
User-Agent: Mozilla Thunderbird
To: Danilo Krummrich <dakr@kernel.org>, phasta@kernel.org
References: <20250403101353.42880-2-phasta@kernel.org>
 <c779bc2f-06af-4278-8bb5-08afc074b580@amd.com>
 <2558c9cf0cf28867238eb21950ce2a3f862c15c3.camel@mailbox.org>
 <Z-6J7bngU2JtfMMN@pollux>
Content-Language: en-US
From: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
In-Reply-To: <Z-6J7bngU2JtfMMN@pollux>
X-ClientProxiedBy: FR4P281CA0286.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:e7::13) To PH7PR12MB5685.namprd12.prod.outlook.com
 (2603:10b6:510:13c::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR12MB5685:EE_|BN7PPFDE2ACDA69:EE_
X-MS-Office365-Filtering-Correlation-Id: 3af28a34-aeb0-4d98-d8aa-08dd72b262bd
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|7416014|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: 
	=?utf-8?B?cE5pRUlKaHBrYlBtdHRHL0dXeXhTUWZwMFJTMTcvc3lCTEc0cExNVzJlS2lH?=
 =?utf-8?B?MnREb3FrbUg4SEp2ci9NN1VXZkxUMDRhTWo5dzJySndxVm5YUEF2MWNQUFNq?=
 =?utf-8?B?cGFQckhKcTIzbzdDb2xKRlBESklRNWtFM0F5Z1B1TGkxS3NUZS9yN1dISW9j?=
 =?utf-8?B?Sm1YenZaMWVybFE5cDJnMGNRUHZiOXNyZjRWWXVGV3BHQVpZTGxtM2lYaWl2?=
 =?utf-8?B?eTgxNmltcm5CV3d3Q0I2M216QVdZbitYN1h5cXgxSDRvZitYK2lPS2kxOURr?=
 =?utf-8?B?ekRSWTNzUWd2MDh1NGVvZkV6MkhzbWVldWt5bDhlQkhPYXI2dGpHNWpSdURs?=
 =?utf-8?B?Z1hrQ0VBS0IwUWF0bEswZHlZV01pNkNobG5mbHZMaHByWE5uZmJKakVleDln?=
 =?utf-8?B?MlpPaTJzSzZ3a3ErRHJpWnA5NWhkc3NNdjdzbWN0U01XM0JYaTRGOFYwQzNi?=
 =?utf-8?B?eVlpNnNYQmh0VUtVWSs3dENlSmI0UVFUdmo5WjdKcUdiNUgvaWNCdkdQbmh3?=
 =?utf-8?B?bGRqUUc2djRFNmExMGhzVDM5NEQwbldSbk5RVlVLQnFTMWZmNjVndjFCWnhL?=
 =?utf-8?B?WlNrTVpTcmNDY2VibkhsUjhMQmdRZm0xVHFBbXpaeEVpV1VPc2tpRFR5emZG?=
 =?utf-8?B?ZXY5UDRnMXJ1WHBWWEtpNEVnTldpRjI4dWFmOU9iNmJBMlR6VkhkL1dBOGJv?=
 =?utf-8?B?NWo5OWJIdTNMZ21NdXRvMENXNG9ORzEwNkJyNE1abDZrR25iNkFZa0hRL2Rr?=
 =?utf-8?B?Ukt0T1UvV2ZCb2NTQW9nUHZ2emhOM0IxL1FESWNXWXpUWUJQejRJUTVNSGc1?=
 =?utf-8?B?UDhvTzlJQkNGL3oxeDdZOVg3dkxUWFB4aCtqbmtlbys0WmoxMTVQWHo1ZEZz?=
 =?utf-8?B?N3ZBS3p1cXUxWFBoWW11R0ZPSnllc2tkV1JDWFdJMVlUMXY1TFFRNlpDVUVS?=
 =?utf-8?B?Rnc2aU55WU9FdnRKcFhIU1dGNXFUY2JQd0htOGRmY0pISy9EODVXZ05UZzJD?=
 =?utf-8?B?ZHErTVVBV1Y1WTlpWTFrSy9DbktVOGV1RkI0MGEzY1FGSEpONTVVV2VzTmZT?=
 =?utf-8?B?MDVIbVptUXBHelphd25ZUURXWE9mcWZNMUM2VElKZkRFMHdNeXJxMnl4Q3I3?=
 =?utf-8?B?OEtmd3BpNVdkbm1VM3lqc1NmOUdoOEQ0Y0tOZldnam9IeXo5V04zSDRpaCtz?=
 =?utf-8?B?dDhWVjhabjlXYzN5VkpHTXdEVWVpVFllc1NXQlEwdUppazQxLzdDUzE4dGkz?=
 =?utf-8?B?ZTAzSDBYYTQrSGF0bFFhS2tsTzZ1dkxVUDVOUmlIRXVDcldudzZRYlJKL2tV?=
 =?utf-8?B?L0hoejhUZlpscUpFSjJwYkp2YVE1MkxmdkhuWUN0cjNVeVU2d0R5QnpvcWds?=
 =?utf-8?B?QnRGbEhGMEg5dHNtQjFPcmhtMXJCdVpEb0hGV2tUakNhblVaTXFDS2Noc2pI?=
 =?utf-8?B?RlJWREdTN1loRzhBWEc2ckppMFBxNGNaME1ucXNjcHR1U1JEb0ZGbXBCN3g1?=
 =?utf-8?B?UmlMZWtvY3FDbi9tMTNicE9zcHRDVzV3WE1CWnhqMGROdm1ySTJFeGJpVStX?=
 =?utf-8?B?R0JPSWtvUTRQSElDK2RqcFFLTm1vSUZpVGFIbmQzTnFTZ2dxZnE0M3Z6ZDli?=
 =?utf-8?B?RFN2ZjVlNUVrZWhCajNVL1pMTkd1OGd0YzQ4blJVV3FPclRlaVVjNmRrM3Yw?=
 =?utf-8?B?Tk16bVNYbUd1UU5FYlBLK1FXRmN6T25QcDQ2KzNPV3F0QnAwV0VmYVM4K1V6?=
 =?utf-8?B?bEcwR3Vhb0V6cmRpZk14T0xremY0dnFXdWlpbXhaK2YzYndqTklHMXlMdU1E?=
 =?utf-8?B?dDliSGdRckUzNkU5SzBzRDRlZTZsblNkUW5zNmFvSXA2Qi9kTmxUWFR5NDlv?=
 =?utf-8?Q?Ci+8KO/G0gN+s?=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH7PR12MB5685.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(7416014)(376014)(366016)(1800799024);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?eVg1dzJFMXpVenU3SldxQVNqUElZK3lDbWxSTCtJTGxCaDlnUnBER1lzNlF4?=
 =?utf-8?B?cDJTRlE1b0lmbjltQkF4RjI0dnFqQzZ6OG9ZdWIwWUFsbCtydzR4R1JIMHcv?=
 =?utf-8?B?dmlWS1paSFBWQmlXNWxyWitzdkM5cjRJNytkKytzR3JuSUthNTFuZGZsMDdF?=
 =?utf-8?B?amRqUCtHRmVoMldBVTY3dnJtL3ZNMHBPSXY3S1RCMlkwUUprYU1sWTFIWlRw?=
 =?utf-8?B?TWRobjhOdFpDNnlNby9uNmdIVmRGU3pSV09McUVobWVTL3RPTVRLM1k2cjRG?=
 =?utf-8?B?OVZpZjcvcHVtT2ZGTUlBb25jOFZBUk0wVDhzVWd5REl1SUJGTGxBSkh1MzJH?=
 =?utf-8?B?eVR2eEpYK1RwUkliQ25YTDZoQ1hCU2dxZCtDUzNiM0lRdHNJWWgwb0hLN3JY?=
 =?utf-8?B?RHRrSDYwQ21oZlp4YWZUeGRsNVlraTFwbXpQNTdIYzllbGRrbE9JVVlWSWNE?=
 =?utf-8?B?V3kydnVOZGxTSmgyVmZPS3pmcUFRemFqZjNHb050SXVEN3pSZGRQdU8rT3NR?=
 =?utf-8?B?NEpiNCtpTjlhMWg0YVVmWW5tVXVWRjlyOThRNWdOamRXYmFmaXg0dDI5MkFV?=
 =?utf-8?B?ejlxREoyZXkvVFNDWVRQNUwxKzdGcGM3MjhTZ1lmTWZVTE9XSXZEajh3M2dv?=
 =?utf-8?B?OVk5UGtzZ08ycEgwenVqQmcwM2lSd2ZnNmhUNGNtTW5VWVB5RG1aUmtLbnlH?=
 =?utf-8?B?THhLL3YrMDN3TFNzYkZPSGtNMTdNYWttd3JlSm9BaXRmZSsyTGtWKzYwTnRO?=
 =?utf-8?B?TVdKanhGOXZXSm51WC9qb2hkLzdKWGNLWEV2MW92SnVrUXp4SHJLWUtuVFpJ?=
 =?utf-8?B?Yzh5VDFtRENTUVJTbStSM3VUODNFbmE3VFZ3bENQWFJ5Y0pBZlhQS1ZWd1B1?=
 =?utf-8?B?MjYrZ0Jua0JIUmhqblpFNy91cmRsWVhWZTFPTDBpTmJpZ1MyazFLc1hWVVB6?=
 =?utf-8?B?NC9jTXFvOUZXTkQyc3IybW13d0hqM3ZJNHVtZGpuajRqNndZWHNJV2tMTStM?=
 =?utf-8?B?K3g1bldiNXNKOTlheDhRMjFaSHc4RXZ2TjQ0cmRuMk5ZM29TS2c0MW1scldP?=
 =?utf-8?B?b0c5czdPbHVNUHM3Y0xVZEVQY3loRW1SUmpXM1p2NzVJbTJaN2pzcUszZnN6?=
 =?utf-8?B?VkdnWWIySnk3alJXcWQ1YnV4QzNNb01GT2FuRVd1cDJ5eDhlZndMZGRHOHlD?=
 =?utf-8?B?Q2NvbXVQekY2VGZIOU1kRWpTRW1NRnlYdzFrR1BMOVk0eFI5eDQ4bXpOdGlp?=
 =?utf-8?B?TUFTSTNwcGo2ejc4cmhLSS8vU1VkWFRLcXp4UGljWHRSZUxOdFE3VDVYaTFL?=
 =?utf-8?B?dFcyYUY1djRuSWRKdWs1eU5MRHpQNXNBYTVkdEtwdENsZnFRc1kxeDREOFV5?=
 =?utf-8?B?aE4xcXREM0xRRzlmUVY2ZWUxT3pKOEJPc2x2aDBxdHI0OUFpU3J0UUVuVlU0?=
 =?utf-8?B?cGdBRzRaMlgxQkxHYmVCM3NSaGdQL3pLV3lQdVVpQit3ZFdibDFtNzQ4dUFO?=
 =?utf-8?B?VzVBd2JXT3NBV1pLQ1JwV2VyWWJOaWhlOGNhbHhjQm5wR3BleVdQaE9SVUgw?=
 =?utf-8?B?akY2ZzRUTDJsc2RIQVhPNXRuZ0N5UGhqSWVBdzNRSDc3SWYydmV5QkhkdnhI?=
 =?utf-8?B?N0tyWWFhOWJvalRSUU5DdVA3NjhadjNzbkNpU3RIZDY0OGZLd1o4OXoxdlNQ?=
 =?utf-8?B?UTNRN0xSZ2xkREJUVllsYkg5N3BTdUo4aFdmTVVuNDQ2UWd5T3Q4NEhVYnZZ?=
 =?utf-8?B?L0NxRHU1d2kza05PNmhhS0hpYXFORlA5elVxL2ZnVldVMk90UWhWM2JuOVRo?=
 =?utf-8?B?OFNqOXZHT0pLSnhQUDFHQXBHeTVaVjVYeHcvNnh0dFp5a0ZlSWNYSS83Y3Vz?=
 =?utf-8?B?Nm5DUUp6S0lKelFrQlZkcjNWWk1NaG9sa3hWR0cwSHdzd2JsWDYySU9meFVS?=
 =?utf-8?B?ZHRQZm5LMGJseEVLZmRqWE1aMmVwQ3paNFA2VFpSNFFndCt3RStnZlRHb01t?=
 =?utf-8?B?Z3ZMYWc1M250MTV3S3VDTmpzSzFFL05OT08wTWdHa2VrWGF6WGtmQ3VYa1pv?=
 =?utf-8?B?MC8zRkFGV2dvOWN5eHQyc2pEV1FrQ1FjU2Q0bmFsRUYvR1l0bi9WL0ppMHRQ?=
 =?utf-8?Q?B0lDqz3gnW2OfVM4b8XYjUqoi?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3af28a34-aeb0-4d98-d8aa-08dd72b262bd
X-MS-Exchange-CrossTenant-AuthSource: PH7PR12MB5685.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Apr 2025 13:21:04.5507
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: hyvg1qoCDetQ0cZ2zXSXtmIa5B6Sy/L+Dl9GZphL40PpX/ZpV+Id9zGTkzsGI2oS
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN7PPFDE2ACDA69
X-Spamd-Result: default: False [-5.00 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[amd.com,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:40.107.0.0/16];
	R_DKIM_ALLOW(-0.20)[amd.com:s=selector1];
	MIME_GOOD(-0.10)[text/plain];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:8075, ipnet:40.104.0.0/14, country:US];
	RCPT_COUNT_TWELVE(0.00)[12];
	RWL_MAILSPIKE_POSSIBLE(0.00)[40.107.243.58:from];
	RBL_SENDERSCORE_REPUT_8(0.00)[40.107.243.58:from];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[redhat.com,gmail.com,ffwll.ch,linaro.org,lists.freedesktop.org,vger.kernel.org,lists.linaro.org];
	TO_DN_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[amd.com:+]
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Action: no action
X-Rspamd-Queue-Id: B2E9B44631
X-Spamd-Bar: ----
Message-ID-Hash: RC6YVHD5XYLY7TEQALDNK2OUGAFDZ3JD
X-Message-ID-Hash: RC6YVHD5XYLY7TEQALDNK2OUGAFDZ3JD
X-MailFrom: Christian.Koenig@amd.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Lyude Paul <lyude@redhat.com>, Simona Vetter <simona@ffwll.ch>, Sumit Semwal <sumit.semwal@linaro.org>, dri-devel@lists.freedesktop.org, nouveau@lists.freedesktop.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, stable@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v2] drm/nouveau: Prevent signalled fences in pending list
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/RC6YVHD5XYLY7TEQALDNK2OUGAFDZ3JD/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

QW0gMDMuMDQuMjUgdW0gMTU6MTUgc2NocmllYiBEYW5pbG8gS3J1bW1yaWNoOg0KPiBPbiBUaHUs
IEFwciAwMywgMjAyNSBhdCAwMjo1ODoxM1BNICswMjAwLCBQaGlsaXBwIFN0YW5uZXIgd3JvdGU6
DQo+PiBPbiBUaHUsIDIwMjUtMDQtMDMgYXQgMTQ6MDggKzAyMDAsIENocmlzdGlhbiBLw7ZuaWcg
d3JvdGU6DQo+Pj4gQW0gMDMuMDQuMjUgdW0gMTI6MTMgc2NocmllYiBQaGlsaXBwIFN0YW5uZXI6
DQo+Pj4gQlRXOiBub3V2ZWF1X2ZlbmNlX25vX3NpZ25hbGluZygpIGxvb2tzIGNvbXBsZXRlbHkg
YnJva2VuIGFzIHdlbGwuIEl0DQo+Pj4gY2FsbHMgbm91dmVhdV9mZW5jZV9pc19zaWduYWxlZCgp
IGFuZCB0aGVuIGxpc3RfZGVsKCkgb24gdGhlIGZlbmNlDQo+Pj4gaGVhZC4NCj4+IEkgY2FuIGFz
c3VyZSB5b3UgdGhhdCBhIGdyZWF0IG1hbnkgdGhpbmdzIGluIE5vdXZlYXUgbG9vayBjb21wbGV0
ZWx5DQo+PiBicm9rZW4uDQo+Pg0KPj4gVGhlIHF1ZXN0aW9uIGZvciB1cyBpcyBhbHdheXMgdGhl
IGNvc3QtYmVuZWZpdC1yYXRpbyB3aGVuIGZpeGluZyBidWdzLg0KPj4gVGhlcmUgYXJlIGZpeGVz
IHRoYXQgc29sdmUgdGhlIGJ1ZyB3aXRoIHJlYXNvbmFibGUgZWZmb3J0LCBhbmQgdGhlcmUNCj4+
IGFyZSBncmVhdCByZXdvcmtzIHRvd2FyZHMgYW4gaWRlYWwgc3RhdGUuDQo+IFRoYXQncyBqdXN0
IGFuIGFkZGl0aW9uYWwgdGhpbmcgdGhhdCBDaHJpc3RpYW4gbm90aWNlZC4gSXQgaXNuJ3QgcmVh
bGx5IGRpcmVjdGx5DQo+IHJlbGF0ZWQgdG8gd2hhdCB5b3Ugd2FudCB0byBmaXggd2l0aCB5b3Vy
IHBhdGNoLg0KDQpXZWxsIHRoZXJlIGlzIHNvbWUgcmVsYXRpb24uIEZyb20gbm91dmVhdV9mZW5j
ZV9ub19zaWduYWxpbmcoKToNCg0KwqDCoMKgwqDCoMKgwqAgaWYgKG5vdXZlYXVfZmVuY2VfaXNf
c2lnbmFsZWQoZikpIHsNCsKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBsaXN0X2RlbCgm
ZmVuY2UtPmhlYWQpOw0KDQrCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgZG1hX2ZlbmNl
X3B1dCgmZmVuY2UtPmJhc2UpOw0KwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHJldHVy
biBmYWxzZTsNCsKgwqDCoMKgwqDCoMKgIH0NCg0KVGhhdCBsb29rcyBsaWtlIHNvbWVib2R5IHJl
YWxpemVkIHRoYXQgdGhlIGZlbmNlIG5lZWRzIHRvIGJlIHJlbW92ZWQgZnJvbSB0aGUgcGVuZGlu
ZyBsaXN0IGFuZCB0aGUgcmVmZXJlbmNlIGRyb3BwZWQuDQoNCkl0J3MganVzdCB0aGF0IHRoaXMg
d2FzIGFkZGVkIHRvIHRoZSB3cm9uZyBmdW5jdGlvbiwgZS5nLiB0aG9zZSBsaW5lcyBuZWVkIHRv
IGJlIGluIG5vdXZlYXVfZmVuY2VfaXNfc2lnbmFsZWQoKSBhbmQgbm90IGhlcmUuDQoNClJlZ2Fy
ZHMsDQpDaHJpc3RpYW4uDQoNCj4NCj4gSSB0aGluayB0aGUgZnVuY3Rpb24gY2FuIHNpbXBseSBi
ZSBkcm9wcGVkLg0KDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxp
bmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0tc2lnLWxl
YXZlQGxpc3RzLmxpbmFyby5vcmcK
