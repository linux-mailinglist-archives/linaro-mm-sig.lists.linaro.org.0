Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 24603AD3415
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 10 Jun 2025 12:52:48 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id B992344958
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 10 Jun 2025 10:52:46 +0000 (UTC)
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (mail-bn8nam04on2078.outbound.protection.outlook.com [40.107.100.78])
	by lists.linaro.org (Postfix) with ESMTPS id 472FA440F2
	for <linaro-mm-sig@lists.linaro.org>; Tue, 10 Jun 2025 10:52:31 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=amd.com header.s=selector1 header.b=3Gf0w0ks;
	spf=pass (lists.linaro.org: domain of Christian.Koenig@amd.com designates 40.107.100.78 as permitted sender) smtp.mailfrom=Christian.Koenig@amd.com;
	dmarc=pass (policy=quarantine) header.from=amd.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=NTeQm6+PbjZ9YCmO2wYoGyM1qEqCCJHeA9aPXjSynRnCIH3efl4M/BOg5RyYkWfjdEqBupPERI7Sos/VTDjB0awLCvtQIR8toowjjof82NMf9atu9YPI7zIOk6/VLPqJ/eGZpYcmQkWYwLTwZTFYPYtpjq40rarPt+ihMEihaM2LQGvxMpSIZ7ASBs5+dgco25cYqdqhXhjj3vJaF7gNRy+ZByhVeT4Li8Zu/ZXOnwlyqgOXI0wRjOm4wKk3q7LaaLQY49oHgoUvEfE9VNutFeu9J+8KogyWIt68YkvaPe9OWDAdHOMiMvEl22OyGAWiUnzsTmed7FmB13cAzBO1dw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=BAoQKF8pPMAnmczas7f9JycgXT6NwEWd/h29qTHCt0Y=;
 b=RcgY/Jy8xbOekmunWkY49GdZA8jLYRIbeH4pwATABiYM8tqnFA/LsMy+6CWJrcpysUH+0Ry36EGlKA42c1c3XRT90/klU2XRiE/J2yNuFC3VcyO3ENrJp9fUUnxTxIpu/VUmiM0+DTkriM7qaojHh61fEuF89HvdamVyLTGYsb9dqc3LD/vaaYN5uavyQMUMm69x8Oifz9y1qjAEvzEwS2HYfhu5arEygyqwE9Pm0UfdxPpRoeCGdEICcmTIt5I4oB5NOnbRp1D1Mn6M/vmbvFhaL7swcD5qZ7xNYS5pX34aodDsItIBDnsmCdxWAKxOL477YjEMJdnSY5wslaK8HA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=BAoQKF8pPMAnmczas7f9JycgXT6NwEWd/h29qTHCt0Y=;
 b=3Gf0w0kspSVR4ahNwYViUGGR5YOyfF5Pj4UGp2lUI1PA5p7RWxSps5WL2NKvUg8AReUR03ErOkPkqtntArmMtCho9miQSvmQLH169n7YDIplZMQFh8OCG0mikGyFzKa1hpqfQ/wMvlhyX5I5UzwZ129omzNLPM4oshsTmHozxX0=
Received: from PH7PR12MB5685.namprd12.prod.outlook.com (2603:10b6:510:13c::22)
 by MN2PR12MB4421.namprd12.prod.outlook.com (2603:10b6:208:26c::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8792.34; Tue, 10 Jun
 2025 10:52:28 +0000
Received: from PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::46fb:96f2:7667:7ca5]) by PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::46fb:96f2:7667:7ca5%7]) with mapi id 15.20.8722.031; Tue, 10 Jun 2025
 10:52:28 +0000
Message-ID: <d86a677b-e8a7-4611-9494-06907c661f05@amd.com>
Date: Tue, 10 Jun 2025 12:52:18 +0200
User-Agent: Mozilla Thunderbird
To: wangtao <tao.wangtao@honor.com>, Christoph Hellwig <hch@infradead.org>
References: <20250603095245.17478-1-tao.wangtao@honor.com>
 <aD7x_b0hVyvZDUsl@infradead.org>
 <09c8fb7c-a337-4813-9f44-3a538c4ee8b1@amd.com>
 <aD72alIxu718uri4@infradead.org> <5d36abace6bf492aadd847f0fabc38be@honor.com>
 <a766fbf4-6cda-43a5-a1c7-61a3838f93f9@amd.com>
 <aEZkjA1L-dP_Qt3U@infradead.org> <761986ec0f404856b6f21c3feca67012@honor.com>
Content-Language: en-US
From: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
In-Reply-To: <761986ec0f404856b6f21c3feca67012@honor.com>
X-ClientProxiedBy: BL6PEPF0001641A.NAMP222.PROD.OUTLOOK.COM
 (2603:10b6:22e:400:0:1004:0:6) To PH7PR12MB5685.namprd12.prod.outlook.com
 (2603:10b6:510:13c::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR12MB5685:EE_|MN2PR12MB4421:EE_
X-MS-Office365-Filtering-Correlation-Id: fb58e536-72cc-4cfe-6647-08dda80ce432
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: 
	BCL:0;ARA:13230040|1800799024|376014|7416014|366016|7053199007;
X-Microsoft-Antispam-Message-Info: 
	=?utf-8?B?NlFKNGRyS3ZDYTRDMklUdHgyaGhNUjN1Wllsb0dDcEpTVEZFQ3FsQzdOVk5T?=
 =?utf-8?B?a2ZtWVRqNENkSTJUbTM0Z1lPVDlEUHF4U3lyVGhnSVprWkRJRkNZNllqdEFz?=
 =?utf-8?B?eVg3ZTlTSzIrZ2JuL2kzUkVydDZVY0JOcUs0TFd2ekh4OFg1QXo4SzJ1VVdI?=
 =?utf-8?B?WUVtejVQTlhwbFdZdmNwLzY4R3lUdEMrNm45TzZYck5KMG4vbXVPNnRlVWwr?=
 =?utf-8?B?a2VaMlJOZDBvV0FlYzVXVHUrMVp1cHRlYThJWWljeXp6NUwyV3d3bndCeFpW?=
 =?utf-8?B?QWg3eWx6R1ozUGpyMnMvMG10QzVIem5GbWMvekM1RndTUVVoVVU0OGNRcWlY?=
 =?utf-8?B?R2NyK0pjTlV5YlpEbFQvTzJ3akFSNldrSFh3UnlDay9vWlE3elhHMWd0YnN4?=
 =?utf-8?B?MlgwYk82WGJxYWgwNk1vSXcvcXZ2SWM4M0hqei9EMEY4NTJjQUJjMkRTUGwz?=
 =?utf-8?B?UEFLd29CMXlDWFJhd2liSU9RWkJYa0g0dVc3YVpqZmN0Y2l0a3pqaGo2RE1X?=
 =?utf-8?B?bUoyNUVkdURVcTZiWUY0TFVTZEtBWGtrTGt2a2VJbCtFZTZDeGdIRU40d3VB?=
 =?utf-8?B?WkpuQU9KQ1FvYTgwck5uMXVUZmFZT09NMmpYaW5oWTdiWDRESjN3MWQyWG1o?=
 =?utf-8?B?VHZBZEJKemd1K0JhQXA5cUR4MFVkbHhFc2V1VDZDOEh6dDdHMEhOY3Y4VVdx?=
 =?utf-8?B?Y0hNbWZLOEpRVUxRTGxCYWk5b3Q2N213bTNPQ3BTZm9CMmlVOThjV3JVVzhU?=
 =?utf-8?B?dXg1UmZYYjJwV09iYVBzQkxPTk1CMDRPa1FqMDJBamo3S0hKcHpjcVVWY3Fp?=
 =?utf-8?B?eWxmRGpDYWpsclcranlyNGJHMStFU2trUWlzeGFEZ3RHNnRWVkN1N1pIaWxv?=
 =?utf-8?B?WHljR1FKNUNHVnZSMmx0Sm1GK3d5WkdqOVpvQ0Y0UzR2M2FQemdWb00valNq?=
 =?utf-8?B?dWZKOThaaFNXTUpaU09taXEzYWZLZFhSY0lTRytWN3FxSTRJVzZNQzdTOXJL?=
 =?utf-8?B?b0NGYTRqMW81ZFVzMk9XTmF4NWlUVEhUQzRGYUNlOWpVTllwbktJNlFRSThO?=
 =?utf-8?B?NEYzYjdlOERCcC9iV0ZMMFJ2MlNFQmEvRTBQR0xEYnZQMHBObnUwckZYbkx6?=
 =?utf-8?B?MDVTallHVUJTRFg4dWdoKzdvdDNLcytmWHM5MEd0Qm05TmZxSDA2UUhUNkZP?=
 =?utf-8?B?RFBIZWFjd2F2YVFWT1pkeU5HdHMzZHlqL201cy9UeWpuTkVrRjY5eXg5emxV?=
 =?utf-8?B?OEpzblVESnlzRDZ4a3NCVUg3TGl0dFpmZUR2cUZ4VHpQVEJ2VEE2QzF3YnFu?=
 =?utf-8?B?YXRQWkx4WjM1dERSSENYRjFYV3B4M1pkcTBQUWI4ZkJ6WmtiUDErSjdZeGNa?=
 =?utf-8?B?dnVVN0ZIQXpINFVCZWFpeWJGQklhOXBhK3VrYnIxZS8xaUxxanpQeXYvUzRS?=
 =?utf-8?B?M2p0Y3J5cW4wNll2M05QZjhiNXhFVDAyWmxPdFd4Nm42V3pTdmZTa0prZTMw?=
 =?utf-8?B?SGh1S0Rnb3NEQjF1a3pxNXJEcy9mS1JGVHNUMC9PdHBpSXFkNGc0Q2Q4UDNJ?=
 =?utf-8?B?WEdTNnpibElHTTMrbXNCRWRwOS8rbFRjbXJaSVl5dXJYa3BXeG9MM3R6SGk2?=
 =?utf-8?B?S2hKYjVCbzViaW9kM0MwbW5PZExUcEU3dEZzMGswb1FaVElYU1JzUkRVSXlD?=
 =?utf-8?B?dDkvTEZsWTV5UnY2dW1vekFPaUlJWTR4UDlYSU5Vd3o5SEUzK2hDL0NDNW1k?=
 =?utf-8?B?dy9XVUZrVEdxOERaWXlsM1l1dU5YZTFlTXBMSVFTQ1FMTXpKRFBVYXZxa0Qz?=
 =?utf-8?B?SGNBQ0FFeUg3VW4xTWJubkQzOXg0SGp6RExYc1lHeXc2dHFVVlIyZFhYTTg3?=
 =?utf-8?B?Q0ZzSElRdEtaRVAvbnRONjQvM1Q0MnN1REI4T1BQeXhYUnhaK2dSM0x4L2Ja?=
 =?utf-8?Q?/WZfC7wyBpg=3D?=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH7PR12MB5685.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(376014)(7416014)(366016)(7053199007);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?UktJVVBCeEw0NEtTV2lBZVFyZkJQNGp4QU01NFlKRW03UVpLdDRya2wwQlpx?=
 =?utf-8?B?U1NPdnNlekxlcCtqTUZweDJKQjdTSkNMVU9qV3YyUENucnZoeHFEZC9TYVJa?=
 =?utf-8?B?WklYNU1jYXNJSFgxK0xQV1hFeXE5Z1RYOUN3RWVvNjdUZkIxMjVaRFdrWmcv?=
 =?utf-8?B?bXZ3Tk9TenJmK1M0cEthd09IUDlucGFXQlFUZDJRQVB2OGNnL2RYZ1JTWUlx?=
 =?utf-8?B?ME8xNUFIbWR6ZjNwRjN6TWExcDFVRXBOQ0ZPRkdrZ2wvUmR2dWY3SUJhRk1D?=
 =?utf-8?B?RUNMSzhvSzdRei9JQUVuaDFUemZHcFBSeTZsV0FmWnVzY2VlWTFwWUpZVEln?=
 =?utf-8?B?RjBOY3ZyZmcxWVUvMzlPdG9ENGRqS3RGSFZ2Y1N6d2VDeXhEV2REZk5VY1Zq?=
 =?utf-8?B?dkkzNEF2Tzd5bjk2c2dRWWtyb2lkeitsSVVnTU1jdHRnNzU3NDBhbHpMSHFu?=
 =?utf-8?B?QTVqa1Z5Y1Y0ZitsMFJqdldudHYxNXY5bW9RdEhZSmJiM1E5WE5Kd1hZdU9K?=
 =?utf-8?B?RC8ydmI2Y0NZUGM2Z2hTZ1k5KzZDbkx3TlUray9XR0FwblNvU0UyWlpvRGZk?=
 =?utf-8?B?bEJ4UmFNVlpLeFJFRFhJaDdLNld4OVpKTmhkWDRSejh4aU5DWmN1d2JmeSt5?=
 =?utf-8?B?ZHh3aEtVREE5Rk82VVRLS1FaOHhIVGVOdWdhWklFYUc5cFM4VC9HbENaRlVl?=
 =?utf-8?B?Qm10c3I1akQ1VUUwdWhRa0VUczFtNGZJaHg3eGxYejlGL1pwL3ZMU2xpUjJB?=
 =?utf-8?B?QjVrejFYdTlXcGNLd0RiSFFNVk91SnRsVDdpLzZYZXdmay9qRStjYWZKVzVw?=
 =?utf-8?B?dTkxVElsdWMvTjVWcURNLzlnQU1jSTFocEdaMm1PMXJGamkyWXpRSFpIWHRD?=
 =?utf-8?B?Y0xRbzhNS1RkbUxwdUZ5bUhuYUQyNG1FK1VqTElXNTFQRjZRVVptUHk5MXdK?=
 =?utf-8?B?RFVaM3ppaG1VZkd4dy9HaC9NRlFQTTIxd0VldWdrenlYckNKMG53NzJOVG0y?=
 =?utf-8?B?ODZjK3FCcENrN0hpekUwK3BPRW1QQWlDekNXQ1d1UUhlL2VqYlhsVEh6QjBN?=
 =?utf-8?B?QllTS1kyelg1emhGNjF6SDJZNTAxS1FHclNsSHFFTXZpQWRYQ2dYR1NGQVdz?=
 =?utf-8?B?YXFvSHpZdkNnZkVpVTRCQnN2ZVlqcUZVQlV3THZINGtEa1Nhei9pazhwVlho?=
 =?utf-8?B?cTdJd2c4cXdvREZmc1kxdFRvRHU4VUZiZWJMOEtzSEx3ajRGaFNTKy9QQjJp?=
 =?utf-8?B?cFljRmVkUWVsK2xLYUM1VndTc1Rqa2ptdTRQblJMZlFmNzZ2b1VVZUZ2ZU51?=
 =?utf-8?B?bW5yc29POTRIdjh2b0VKcFhoWDJoVVliWFdPaksyaUpESVkwNlZlalkxd2Z2?=
 =?utf-8?B?elVrb0lNQ3Z3cDIzeVBraDNVZGVZSlJxekw5eTNBbnFJenFIRHlpNFFLMDk2?=
 =?utf-8?B?cXdFWGd2NXU3bFRkSVVDblhpRkpkZnh3TU4rQy9DV295VXZXQ2FXS3JWeFll?=
 =?utf-8?B?YVlUZFM5MFplSEIwaDVhRDhvb2lRbm5NZWFwVlZZQ3prVENwWmppL0RQbS9F?=
 =?utf-8?B?N1Y2b043K1hCM0R2aGhDWlg0RnhlNDFaYXZGYkF0bzlmZ1Y3Sjk0aEVOWGxV?=
 =?utf-8?B?b0o2VGNYNXlTUk55MnEzVW9oU2tpcmU0WFhlNklUVHZGUWZvTkVUcTAwUzJh?=
 =?utf-8?B?a00vVXFjU0FacFdMMVhnNGhHVURQSGs2bGNTS1A4MWUvamcrVnhHU0VES05i?=
 =?utf-8?B?WmVscEhsbUlsNGN5T1QyVHlVVm9acjhCb09rNnBwaENacGIwWERqVk5JYUYy?=
 =?utf-8?B?b05BTnFhbkFsd3Y0OVdOTUdUNlc5RC8vMVZ6OXpSNWN4OHhDcW5DN0hyYkQ4?=
 =?utf-8?B?MXFYY3c0b2FNOUZHL3lYRkRMWWd6cnRHWml1ck1ZNkhhcXFIclZ2UCt5UlJR?=
 =?utf-8?B?d21weEpUdlJLU043RkswVkJ4UXQ4cGZQZVNTdW1qdUlmOTExRFRDKzBJQTJD?=
 =?utf-8?B?L25keVZuNTRFN1lrUS9ST2RjeWJmTUtyb2ZEMHI1VU9hUmRJd3NFZVA5THQx?=
 =?utf-8?B?SHFMTTEySzR0NTVwd0NCWXJiUzlVdUc0VW14cUo0Rjd6SEs0S0xXRDBvcDVl?=
 =?utf-8?Q?+fVc=3D?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: fb58e536-72cc-4cfe-6647-08dda80ce432
X-MS-Exchange-CrossTenant-AuthSource: PH7PR12MB5685.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Jun 2025 10:52:28.0700
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: jFnBUImNiyxHQA0cdQuB14+39q8dBimQjVtETw0+B7AbKnu0SZjePkoLiwdw00sK
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR12MB4421
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Spamd-Result: default: False [-5.00 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[amd.com,quarantine];
	R_DKIM_ALLOW(-0.20)[amd.com:s=selector1];
	R_SPF_ALLOW(-0.20)[+ip4:40.107.0.0/16];
	MIME_GOOD(-0.10)[text/plain];
	ASN(0.00)[asn:8075, ipnet:40.104.0.0/14, country:US];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[26];
	MIME_TRACE(0.00)[0:+];
	RWL_MAILSPIKE_POSSIBLE(0.00)[40.107.100.78:from];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[linaro.org,redhat.com,intel.com,zeniv.linux.org.uk,kernel.org,google.com,linux-foundation.org,gmail.com,collabora.com,arm.com,suse.cz,linux.alibaba.com,vger.kernel.org,lists.freedesktop.org,lists.linaro.org,kvack.org,honor.com];
	TO_DN_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	DKIM_TRACE(0.00)[amd.com:+]
X-Rspamd-Queue-Id: 472FA440F2
X-Spamd-Bar: ----
Message-ID-Hash: SSGH3X2KHSJB5OQLDC5GKXOX2SO75N44
X-Message-ID-Hash: SSGH3X2KHSJB5OQLDC5GKXOX2SO75N44
X-MailFrom: Christian.Koenig@amd.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "sumit.semwal@linaro.org" <sumit.semwal@linaro.org>, "kraxel@redhat.com" <kraxel@redhat.com>, "vivek.kasireddy@intel.com" <vivek.kasireddy@intel.com>, "viro@zeniv.linux.org.uk" <viro@zeniv.linux.org.uk>, "brauner@kernel.org" <brauner@kernel.org>, "hughd@google.com" <hughd@google.com>, "akpm@linux-foundation.org" <akpm@linux-foundation.org>, "amir73il@gmail.com" <amir73il@gmail.com>, "benjamin.gaignard@collabora.com" <benjamin.gaignard@collabora.com>, "Brian.Starkey@arm.com" <Brian.Starkey@arm.com>, "jstultz@google.com" <jstultz@google.com>, "tjmercier@google.com" <tjmercier@google.com>, "jack@suse.cz" <jack@suse.cz>, "baolin.wang@linux.alibaba.com" <baolin.wang@linux.alibaba.com>, "linux-media@vger.kernel.org" <linux-media@vger.kernel.org>, "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>, "linaro-mm-sig@lists.linaro.org" <linaro-mm-sig@lists.linaro.org>, "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "linux-fsdevel@vger.kernel.org" <linux-fsdev
 el@vger.kernel.org>, "linux-mm@kvack.org" <linux-mm@kvack.org>, "wangbintian(BintianWang)" <bintian.wang@honor.com>, yipengxiang <yipengxiang@honor.com>, liulu 00013167 <liulu.liu@honor.com>, hanfeng 00012985 <feng.han@honor.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v4 0/4] Implement dmabuf direct I/O via copy_file_range
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/SSGH3X2KHSJB5OQLDC5GKXOX2SO75N44/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gNi85LzI1IDExOjMyLCB3YW5ndGFvIHdyb3RlOg0KPj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdl
LS0tLS0NCj4+IEZyb206IENocmlzdG9waCBIZWxsd2lnIDxoY2hAaW5mcmFkZWFkLm9yZz4NCj4+
IFNlbnQ6IE1vbmRheSwgSnVuZSA5LCAyMDI1IDEyOjM1IFBNDQo+PiBUbzogQ2hyaXN0aWFuIEvD
tm5pZyA8Y2hyaXN0aWFuLmtvZW5pZ0BhbWQuY29tPg0KPj4gQ2M6IHdhbmd0YW8gPHRhby53YW5n
dGFvQGhvbm9yLmNvbT47IENocmlzdG9waCBIZWxsd2lnDQo+PiA8aGNoQGluZnJhZGVhZC5vcmc+
OyBzdW1pdC5zZW13YWxAbGluYXJvLm9yZzsga3JheGVsQHJlZGhhdC5jb207DQo+PiB2aXZlay5r
YXNpcmVkZHlAaW50ZWwuY29tOyB2aXJvQHplbml2LmxpbnV4Lm9yZy51azsgYnJhdW5lckBrZXJu
ZWwub3JnOw0KPj4gaHVnaGRAZ29vZ2xlLmNvbTsgYWtwbUBsaW51eC1mb3VuZGF0aW9uLm9yZzsg
YW1pcjczaWxAZ21haWwuY29tOw0KPj4gYmVuamFtaW4uZ2FpZ25hcmRAY29sbGFib3JhLmNvbTsg
QnJpYW4uU3RhcmtleUBhcm0uY29tOw0KPj4ganN0dWx0ekBnb29nbGUuY29tOyB0am1lcmNpZXJA
Z29vZ2xlLmNvbTsgamFja0BzdXNlLmN6Ow0KPj4gYmFvbGluLndhbmdAbGludXguYWxpYmFiYS5j
b207IGxpbnV4LW1lZGlhQHZnZXIua2VybmVsLm9yZzsgZHJpLQ0KPj4gZGV2ZWxAbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnOyBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmc7IGxpbnV4LQ0KPj4g
a2VybmVsQHZnZXIua2VybmVsLm9yZzsgbGludXgtZnNkZXZlbEB2Z2VyLmtlcm5lbC5vcmc7IGxp
bnV4LQ0KPj4gbW1Aa3ZhY2sub3JnOyB3YW5nYmludGlhbihCaW50aWFuV2FuZykgPGJpbnRpYW4u
d2FuZ0Bob25vci5jb20+Ow0KPj4geWlwZW5neGlhbmcgPHlpcGVuZ3hpYW5nQGhvbm9yLmNvbT47
IGxpdWx1IDAwMDEzMTY3DQo+PiA8bGl1bHUubGl1QGhvbm9yLmNvbT47IGhhbmZlbmcgMDAwMTI5
ODUgPGZlbmcuaGFuQGhvbm9yLmNvbT4NCj4+IFN1YmplY3Q6IFJlOiBbUEFUQ0ggdjQgMC80XSBJ
bXBsZW1lbnQgZG1hYnVmIGRpcmVjdCBJL08gdmlhDQo+PiBjb3B5X2ZpbGVfcmFuZ2UNCj4+DQo+
PiBPbiBGcmksIEp1biAwNiwgMjAyNSBhdCAwMToyMDo0OFBNICswMjAwLCBDaHJpc3RpYW4gS8O2
bmlnIHdyb3RlOg0KPj4+PiBkbWFidWYgYWN0cyBhcyBhIGRyaXZlciBhbmQgc2hvdWxkbid0IGJl
IGhhbmRsZWQgYnkgVkZTLCBzbyBJIG1hZGUNCj4+Pj4gZG1hYnVmIGltcGxlbWVudCBjb3B5X2Zp
bGVfcmFuZ2UgY2FsbGJhY2tzIHRvIHN1cHBvcnQgZGlyZWN0IEkvTw0KPj4+PiB6ZXJvLWNvcHku
IEknbSBvcGVuIHRvIGJvdGggYXBwcm9hY2hlcy4gV2hhdCdzIHRoZSBwcmVmZXJlbmNlIG9mIFZG
Uw0KPj4+PiBleHBlcnRzPw0KPj4+DQo+Pj4gVGhhdCB3b3VsZCBwcm9iYWJseSBiZSBpbGxlZ2Fs
LiBVc2luZyB0aGUgc2dfdGFibGUgaW4gdGhlIERNQS1idWYNCj4+PiBpbXBsZW1lbnRhdGlvbiB0
dXJuZWQgb3V0IHRvIGJlIGEgbWlzdGFrZS4NCj4+DQo+PiBUd28gdGhpbmcgaGVyZSB0aGF0IHNo
b3VsZCBub3QgYmUgZGlyZWN0bHkgY29uZmxhdGVkLiAgVXNpbmcgdGhlIHNnX3RhYmxlIHdhcw0K
Pj4gYSBodWdlIG1pc3Rha2UsIGFuZCB3ZSBzaG91bGQgdHJ5IHRvIG1vdmUgZG1hYnVmIHRvIHN3
aXRjaCB0aGF0IHRvIGEgcHVyZQ0KPiBJJ20gYSBiaXQgY29uZnVzZWQ6IGRvbid0IGRtYWJ1ZiBp
bXBvcnRlcnMgbmVlZCB0byB0cmF2ZXJzZSBzZ190YWJsZSB0bw0KPiBhY2Nlc3MgZm9saW9zIG9y
IGRtYV9hZGRyL2xlbj8gRG8geW91IG1lYW4gcmVzdHJpY3Rpbmcgc2dfdGFibGUgYWNjZXNzDQo+
IChlLmcuLCBvbmx5IHZpYSBpb3ZfaXRlcikgb3IgcHJvcG9zaW5nIGFsdGVybmF0aXZlIGFwcHJv
YWNoZXM/DQoNCk5vLCBhY2Nlc3NpbmcgcGFnZXMgZm9saW9zIGluc2lkZSB0aGUgc2dfdGFibGUg
b2YgYSBETUEtYnVmIGlzIHN0cmljdGx5IGZvcmJpZGRlbi4NCg0KV2UgaGF2ZSByZW1vdmVkIG1v
c3QgdXNlIGNhc2VzIG9mIHRoYXQgb3ZlciB0aGUgeWVhcnMgYW5kIHB1c2ggYmFjayBvbiBnZW5l
cmF0aW5nIG5ldyBvbmVzLiANCg0KPiANCj4+IGRtYV9hZGRyX3QvbGVuIGFycmF5IG5vdyB0aGF0
IHRoZSBuZXcgRE1BIEFQSSBzdXBwb3J0aW5nIHRoYXQgaGFzIGJlZW4NCj4+IG1lcmdlZC4gIElz
IHRoZXJlIGFueSBjaGFuY2UgdGhlIGRtYS1idWYgbWFpbnRhaW5lcnMgY291bGQgc3RhcnQgdG8g
a2ljayB0aGlzDQo+PiBvZmY/ICBJJ20gb2YgY291cnNlIGhhcHB5IHRvIGFzc2lzdC4NCg0KV29y
ayBvbiB0aGF0IGlzIGFscmVhZHkgdW5kZXJ3YXkgZm9yIHNvbWUgdGltZS4NCg0KTW9zdCBHUFUg
ZHJpdmVycyBhbHJlYWR5IGRvIHNnX3RhYmxlIC0+IERNQSBhcnJheSBjb252ZXJzaW9uLCBJIG5l
ZWQgdG8gcHVzaCBvbiB0aGUgcmVtYWluaW5nIHRvIGNsZWFuIHVwLg0KDQpCdXQgdGhlcmUgYXJl
IGFsc28gdG9ucyBvZiBvdGhlciB1c2VycyBvZiBkbWFfYnVmX21hcF9hdHRhY2htZW50KCkgd2hp
Y2ggbmVlZHMgdG8gYmUgY29udmVydGVkLg0KDQo+PiBCdXQgdGhhdCBub3R3aXRoc3RhbmRpbmcs
IGRtYS1idWYgaXMgVEhFIGJ1ZmZlciBzaGFyaW5nIG1lY2hhbmlzbSBpbiB0aGUNCj4+IGtlcm5l
bCwgYW5kIHdlIHNob3VsZCBwcm9tb3RlIGl0IGluc3RlYWQgb2YgcmVpbnZlbnRpbmcgaXQgYmFk
bHkuDQo+PiBBbmQgdGhlcmUgaXMgYSB1c2UgY2FzZSBmb3IgaGF2aW5nIGEgZnVsbHkgRE1BIG1h
cHBlZCBidWZmZXIgaW4gdGhlIGJsb2NrDQo+PiBsYXllciBhbmQgSS9PIHBhdGgsIGVzcGVjaWFs
bHkgb24gc3lzdGVtcyB3aXRoIGFuIElPTU1VLg0KPj4gU28gaGF2aW5nIGFuIGlvdl9pdGVyIGJh
Y2tlZCBieSBhIGRtYS1idWYgd291bGQgYmUgZXh0cmVtZWx5IGhlbHBmdWwuDQo+PiBUaGF0J3Mg
bW9zdGx5IGxpYi9pb3ZfaXRlci5jIGNvZGUsIG5vdCBWRlMsIHRob3VnaC4NCj4gQXJlIHlvdSBz
dWdnZXN0aW5nIGFkZGluZyBhbiBJVEVSX0RNQUJVRiB0eXBlIHRvIGlvdl9pdGVyLCBvcg0KPiBp
bXBsZW1lbnRpbmcgZG1hYnVmLXRvLWlvdl9idmVjIGNvbnZlcnNpb24gd2l0aGluIGlvdl9pdGVy
Pw0KDQpUaGF0IHdvdWxkIGJlIHJhdGhlciBuaWNlIHRvIGhhdmUsIHllYWguDQoNCj4gDQo+Pg0K
Pj4+IFRoZSBxdWVzdGlvbiBDaHJpc3RvcGggcmFpc2VkIHdhcyByYXRoZXIgd2h5IGlzIHlvdXIg
Q1BVIHNvIHNsb3cgdGhhdA0KPj4+IHdhbGtpbmcgdGhlIHBhZ2UgdGFibGVzIGhhcyBhIHNpZ25p
ZmljYW50IG92ZXJoZWFkIGNvbXBhcmVkIHRvIHRoZQ0KPj4+IGFjdHVhbCBJL08/DQo+Pg0KPj4g
WWVzLCB0aGF0J3MgcmVhbGx5IHB1enpsaW5nIGFuZCBzaG91bGQgYmUgYWRkcmVzc2VkIGZpcnN0
Lg0KPiBXaXRoIGhpZ2ggQ1BVIHBlcmZvcm1hbmNlIChlLmcuLCAzR0h6KSwgR1VQIChnZXRfdXNl
cl9wYWdlcykgb3ZlcmhlYWQNCj4gaXMgcmVsYXRpdmVseSBsb3cgKG9ic2VydmVkIGluIDNHSHog
dGVzdHMpLg0KDQpFdmVuIG9uIGEgbG93IGVuZCBDUFUgd2Fsa2luZyB0aGUgcGFnZSB0YWJsZXMg
YW5kIGdyYWJiaW5nIHJlZmVyZW5jZXMgc2hvdWxkbid0IGJlIHRoYXQgbXVjaCBvZiBhbiBvdmVy
aGVhZC4NCg0KVGhlcmUgbXVzdCBiZSBzb21lIHJlYXNvbiB3aHkgeW91IHNlZSBzbyBtdWNoIENQ
VSBvdmVyaGVhZC4gRS5nLiBjb21wb3VuZCBwYWdlcyBhcmUgYnJva2VuIHVwIG9yIHNpbWlsYXIg
d2hpY2ggc2hvdWxkIG5vdCBoYXBwZW4gaW4gdGhlIGZpcnN0IHBsYWNlLg0KDQpSZWdhcmRzLA0K
Q2hyaXN0aWFuLg0KDQoNCj4gfCAgICAzMngzMk1CIFJlYWQgMTAyNE1CICAgIHxDcmVhdC1tc3xD
bG9zZS1tc3wgIEkvTy1tc3xJL08tTUIvc3wgSS9PJQ0KPiB8LS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tfC0tLS0tLS0tfC0tLS0tLS0tfC0tLS0tLS0tfC0tLS0tLS0tfC0tLS0tDQo+IHwgMSkg
ICAgICAgIG1lbWZkIGRpcmVjdCBSL1d8ICAgICAgMSB8ICAgIDExOCB8ICAgIDMxMiB8ICAgMzQ0
OCB8IDEwMCUNCj4gfCAyKSAgICAgIHUrbWVtZmQgZGlyZWN0IFIvV3wgICAgMTk2IHwgICAgMTIz
IHwgICAgMjk1IHwgICAzNjUxIHwgMTA1JQ0KPiB8IDMpIHUrbWVtZmQgZGlyZWN0IHNlbmRmaWxl
fCAgICAxNzUgfCAgICAxMDIgfCAgICA5NzYgfCAgIDExMDAgfCAgMzElDQo+IHwgNCkgICB1K21l
bWZkIGRpcmVjdCBzcGxpY2V8ICAgIDE3MyB8ICAgIDEwMyB8ICAgIDQ0MyB8ICAgMjQyOCB8ICA3
MCUNCj4gfCA1KSAgICAgIHVkbWFidWYgYnVmZmVyIFIvV3wgICAgMTgzIHwgICAgMTAwIHwgICAg
NDUzIHwgICAyMzc1IHwgIDY4JQ0KPiB8IDYpICAgICAgIGRtYWJ1ZiBidWZmZXIgUi9XfCAgICAg
MzQgfCAgICAgIDQgfCAgICA0MjcgfCAgIDI1MTkgfCAgNzMlDQo+IHwgNykgICAgdWRtYWJ1ZiBk
aXJlY3QgY19mX3J8ICAgIDIwMCB8ICAgIDEwMiB8ICAgIDI3OCB8ICAgMzg3NCB8IDExMiUNCj4g
fCA4KSAgICAgZG1hYnVmIGRpcmVjdCBjX2ZfcnwgICAgIDM2IHwgICAgICA1IHwgICAgMjY5IHwg
ICA0MDAyIHwgMTE2JQ0KPiANCj4gV2l0aCBsb3dlciBDUFUgcGVyZm9ybWFuY2UgKGUuZy4sIDFH
SHopLCBHVVAgb3ZlcmhlYWQgYmVjb21lcyBtb3JlDQo+IHNpZ25pZmljYW50IChhcyBzZWVuIGlu
IDFHSHogdGVzdHMpLg0KPiB8ICAgIDMyeDMyTUIgUmVhZCAxMDI0TUIgICAgfENyZWF0LW1zfENs
b3NlLW1zfCAgSS9PLW1zfEkvTy1NQi9zfCBJL08lDQo+IHwtLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS18LS0tLS0tLS18LS0tLS0tLS18LS0tLS0tLS18LS0tLS0tLS18LS0tLS0NCj4gfCAxKSAg
ICAgICAgbWVtZmQgZGlyZWN0IFIvV3wgICAgICAyIHwgICAgMzkzIHwgICAgOTY5IHwgICAxMTA5
IHwgMTAwJQ0KPiB8IDIpICAgICAgdSttZW1mZCBkaXJlY3QgUi9XfCAgICA1OTIgfCAgICA0MjQg
fCAgICA1NzAgfCAgIDE4ODQgfCAxNjklDQo+IHwgMykgdSttZW1mZCBkaXJlY3Qgc2VuZGZpbGV8
ICAgIDU4NyB8ICAgIDM1NiB8ICAgMjIyOSB8ICAgIDQ4MSB8ICA0MyUNCj4gfCA0KSAgIHUrbWVt
ZmQgZGlyZWN0IHNwbGljZXwgICAgNTY4IHwgICAgMzUyIHwgICAgNzk1IHwgICAxMzUwIHwgMTIx
JQ0KPiB8IDUpICAgICAgdWRtYWJ1ZiBidWZmZXIgUi9XfCAgICA1OTcgfCAgICAzNDMgfCAgIDEy
MzggfCAgICA4NjcgfCAgNzglDQo+IHwgNikgICAgICAgZG1hYnVmIGJ1ZmZlciBSL1d8ICAgICA2
OSB8ICAgICAxMyB8ICAgMTEyOCB8ICAgIDk1MiB8ICA4NSUNCj4gfCA3KSAgICB1ZG1hYnVmIGRp
cmVjdCBjX2ZfcnwgICAgNTk1IHwgICAgMzQ1IHwgICAgMzcyIHwgICAyODg5IHwgMjYwJQ0KPiB8
IDgpICAgICBkbWFidWYgZGlyZWN0IGNfZl9yfCAgICAgODAgfCAgICAgMTMgfCAgICAyNzQgfCAg
IDM5MjkgfCAzNTQlDQo+IA0KPiBSZWdhcmRzLA0KPiBXYW5ndGFvLg0KDQpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcg
bGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2Vu
ZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
