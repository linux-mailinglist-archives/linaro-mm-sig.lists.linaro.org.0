Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id E6B9EC83DF6
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 25 Nov 2025 09:04:07 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id AFD6A3F8EC
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 25 Nov 2025 08:04:06 +0000 (UTC)
Received: from CH5PR02CU005.outbound.protection.outlook.com (mail-northcentralusazon11012047.outbound.protection.outlook.com [40.107.200.47])
	by lists.linaro.org (Postfix) with ESMTPS id A0EE23F712
	for <linaro-mm-sig@lists.linaro.org>; Tue, 25 Nov 2025 08:03:50 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=amd.com header.s=selector1 header.b=fjkInYp5;
	spf=pass (lists.linaro.org: domain of Christian.Koenig@amd.com designates 40.107.200.47 as permitted sender) smtp.mailfrom=Christian.Koenig@amd.com;
	dmarc=pass (policy=quarantine) header.from=amd.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=v9Z+A5/uoxWgCwFWqlb6mUtsFcM2srgDFTWSyq+yGm8W754YIJ8D7exL4j1lS7Bt9zWDZ94k6YPY7UOPazCSbdW/FK7hgqMP02U9XiIQBdg6Z84hoEA/38CL/FhEWO8tx8D/or/WbDm9QwzqhLwLt3Zpv08qvouWFISie72zvL4SugqfdnQrYMBciSZGpPZjkXOocRHmwvjQRwcKCWSQ3mdUTlj5lEgKxs42bXhVxMw1MKSWXoW4iIrKoQpS11OisYdSkPL/sAgKDWr5y1y16b/XMLoUyAWc91JiRhE3BV3WqChnXWRecOalNlsAayGWm8AfY/49VmDQkSCgwR8pjA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=4Gzkmyoxvg1SXRh/8axJqZxzCDs93FQFb4cmlzy7OOQ=;
 b=FjMLLBlYc5Ay7SiUSNOq8pwjBXDTaT/F97txXYGMWx9kTcWqf3vF00mU6Ca0/tknGseHV28LQ5r7OwQTIhRsuh1EngCgiVCsyM6zM5aa7c5lyn/Lz/O7OifdSgaR+v9ghDyOpDAiskgfAAACwSf8Cxr3dar9tN2xUqWKkLKmDxM/O5jYTQ6arBpjMQihVsIwhGNlL3LcrOE57btR9gwF7kpANi2GjbRsGLVVYvTnxexd7RASnr4gytmnBAvf+Ojv/EWU2h2bsUCq1BDSSLGQ5Yix07L3ticdDSdF14yr/G46VnocNbQRGhMXDIjnFKHMbOzvMRwIYcL6ND2zhxbJ1Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=4Gzkmyoxvg1SXRh/8axJqZxzCDs93FQFb4cmlzy7OOQ=;
 b=fjkInYp5i4q2NMUsyeOxHgbWNyK3pUt52V5ZFAbzs71bVTG6NSu+5R9Vrn05vNWe+6jtuXoSgle/K4qdV5qC5GzcXss9jJ1FVO4TYpf9XiN9PHwpQH0plcZvw+mWFNpbeoJHc2WOMLEU+4P/3dWNMynv1P0PlQlGtIAne9Hdm1c=
Received: from PH7PR12MB5685.namprd12.prod.outlook.com (2603:10b6:510:13c::22)
 by MW6PR12MB8707.namprd12.prod.outlook.com (2603:10b6:303:241::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9343.17; Tue, 25 Nov
 2025 08:03:48 +0000
Received: from PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::46fb:96f2:7667:7ca5]) by PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::46fb:96f2:7667:7ca5%4]) with mapi id 15.20.9343.016; Tue, 25 Nov 2025
 08:03:48 +0000
Message-ID: <b46913b6-fe61-48cd-a9ca-aa2fe3a12b63@amd.com>
Date: Tue, 25 Nov 2025 09:03:44 +0100
User-Agent: Mozilla Thunderbird
To: phasta@kernel.org, alexdeucher@gmail.com, simona.vetter@ffwll.ch,
 faith@gfxstrand.net, sumit.semwal@linaro.org
References: <20251120150018.27385-1-christian.koenig@amd.com>
 <20251120150018.27385-2-christian.koenig@amd.com>
 <380012b9d6f0e9ee3c2f125cfe2f37f65c1979e0.camel@mailbox.org>
Content-Language: en-US
From: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
In-Reply-To: <380012b9d6f0e9ee3c2f125cfe2f37f65c1979e0.camel@mailbox.org>
X-ClientProxiedBy: FR4P281CA0210.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:e5::11) To PH7PR12MB5685.namprd12.prod.outlook.com
 (2603:10b6:510:13c::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR12MB5685:EE_|MW6PR12MB8707:EE_
X-MS-Office365-Filtering-Correlation-Id: fe9511c6-5993-4e94-d451-08de2bf929cf
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info: 
	=?utf-8?B?MW5nOXpUQWVSVmhyNXJOTWhJb0RjNnZwdTN3Y0RiT2liMWI1RXdNeVVwVGho?=
 =?utf-8?B?RUJ4eU5ackVCZVU2UGJGVzZidXMwSnpmMkkwQndyc216MXZXamI2Q2dIbmZy?=
 =?utf-8?B?dTJ1REwrY1VBdUMxZm1vNEhXUlRCc2dyc3dTSDJ4RTZOemZRMk1iL1doTEhU?=
 =?utf-8?B?UXBuQ09CajN4MTJ5RDFTejlXY1Q2bExGVC9YMUJ6VmZSR1NIL0FKcFlObWxa?=
 =?utf-8?B?cG5SRUZRUmtWS3ZlWFZwTmRjV0U1MUd6MmtiTi9EbU80ZEc4QUIwbmE2T3kz?=
 =?utf-8?B?VkRmYllmM3J5eEllUFhGRUFQK3UyU2IvbGhpcEV3Y1FmTGJBcGVLTzVRTGFl?=
 =?utf-8?B?YllLNityWG0zWDNBSllMbUhBaFpaSk5Wc2hHblNGaGo3Q0Z0VHZiVU0xaTJM?=
 =?utf-8?B?a1Rrc0R0R042TTRwMVE0YzNYVS9ETHhmQTREREtsNHB5dENIbmdOcjdKalJD?=
 =?utf-8?B?NXI1a0xwR1ZMRVVtaTNPc2pmdGt2ZTc5QW9YU21remxRZTQrN1BOb2t2MTNG?=
 =?utf-8?B?UlBBOElSVWZBbHdwenBMMkUrZlF6amUwMmErdVdhbjZkQ3Z6cXFHeHVyQjc1?=
 =?utf-8?B?bWJrcThWTHgxSWF1dW5ld1RFOXNGckZDVTIwanNoNEJLNm5JR3kzSU52aDVo?=
 =?utf-8?B?VjBGVFN0cEo0eDFlUStqcTg2UTRocXVqemx2NStELzRMZytqcTdZWG9DbGZ1?=
 =?utf-8?B?Sld3Z0VHdGsxVW5LN2k4RzgwaTdkOGxsZmxBWERlVUZhM3pMa3NLejRKTWdN?=
 =?utf-8?B?SUt4YXhmNGRXcW8vQnY1UWlhSFk5MXFEZU5mejVsTko1NVdRTUJ0dzVKbmRu?=
 =?utf-8?B?NDdnSGZ0R2p2VlhOWVRaamUwTmZRT1A2SnE4R2c3bkJvQ0d0K3ZmU3U4cUMz?=
 =?utf-8?B?ek5rcm54WHhzdGp2NSs5R3hLRGlCZ0xHWXB1Mk83UzRsNDNkMi9LMjNhSHNK?=
 =?utf-8?B?c3dlN0VsRE9yZmU2cWtmdC9JVkZNT1lnQ1J0eWVKNUlKbTlDRlp0OWpGWUJN?=
 =?utf-8?B?NTVoWUtrajMzWHVTMWhValRZczY2ZU1hNE5oWnNWaEZRWlp2UzJQdjV1L29s?=
 =?utf-8?B?WnZ6RnI0MklwczQzQWVtTWk1eERHVU5iYk9Na1BxdWlIWEZnTGorSGdYWGxN?=
 =?utf-8?B?d1B3ZkJqTVdTSW45S2lsZHo2Tm5HV2p2Z2JwemxJUk1sWDV2cjhFZkV3MTBD?=
 =?utf-8?B?Mm41UXlRZFhuN201c3lNSWtyeEpWd1p0VVk3ME5PSXNhUE1LcnU1SXJBNjhY?=
 =?utf-8?B?alJuVHVWd2MydGIxRVI5QkkvUHlxZE5Ic1hnanpMS3M3ZFkvMzRnU1pBbmph?=
 =?utf-8?B?SkJTLzJYcG0zdUJjeHAzT2NlY1ducENxV0cydGxubnpJT0xYWEVNTys4U0RY?=
 =?utf-8?B?cVBESTVXdUVCRDJkTGxGZFJJd3l5RVVaS052TmhvblV4V1NQZTU5VXhoNGF3?=
 =?utf-8?B?NkZQMFpTSHRiL2ZTejBIQzJZbnFMNkUyNjlZMEhMQUk1MHlJY1F6bTdjOEww?=
 =?utf-8?B?RFlUMUFnNVBWaUJyWFU1aExqbm9PdktzVW5SVHY3VGlrOHZLbUpFWldZTmE1?=
 =?utf-8?B?TWQ4RHh5ZnR1ZEFzMlJlQXcydi8rVHZTNHM3QmdTMUVnVEpHYUU2U0lkN3I3?=
 =?utf-8?B?RGRBNjJVSmxHYklSNnhWQ3NvWHBHSnNabzlYUWdtQThTb3RwcDhwZzZNcWJE?=
 =?utf-8?B?ZE5McmdrY1FPNEs4L2g1Zk8yN2czM1FtcHdxRlBGZDV0bzFvSXIrTFJVeU5M?=
 =?utf-8?B?V0psSDlnMG9ETjllMnBONGIxNjFEK2xSbjhHS1J5aVJ0OVdEUFlXR05laEZk?=
 =?utf-8?B?TzBLb1lsd2k1dzAzSW0ycVRWWVVMb0JRU3A2MXJwVW1OVGFHclhmNXBsUThy?=
 =?utf-8?B?Tzh1LzJNci8raWh5YkVLcVRHWTRtUHlVNVNGbVRZd0V6RXpHRS9NdE42RlA3?=
 =?utf-8?Q?HiyvMjzmOLjNnLmwe0zWiSpuzX2GlQJY?=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH7PR12MB5685.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(376014)(1800799024);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?aFUzd2NTOFJJNUI2WTNvVUhBMVFuaUg4RFFHV2htYlM4K0o5VVVRclZRdHZk?=
 =?utf-8?B?MXYvV1VHeUN1OFRodEVTb05zYmNad0tjSFFzcURkZnFNZlFYcFlhOGsxTVZU?=
 =?utf-8?B?OWFtZnkwN0FUMXUwTmNmWFZDeEhuWlRuRjdBdkRWUDZoQzZLOFFtUlYyMDdR?=
 =?utf-8?B?MGUwTUx6Y20xL0pNV25wYkxJdE9GWitzejV4ZTlxbGx6Tm5oaUFleFk2QVBK?=
 =?utf-8?B?WjlKcFZ2UmsxbCtOa1V1Kzg4OC81TlBYSVJ1L0ZUMWVwemhtRmtkbVBwNWdq?=
 =?utf-8?B?WmVNTGltZGRiM1NDVWtJKy9GRFhyK1J3aHk4Sy9rZVRWb3o1SzhyT0JsREpi?=
 =?utf-8?B?Sm94RS9ycjdCTEJ0SU95ejkvTnloaHpUcEloeklvZSt5YmpRcDFReVY2TWJj?=
 =?utf-8?B?c2VrbzJmaW11azZKaXdiWnU5Q0ZEWUVuTjFjQ2M1eXRHVEZSRDd4NDUyeXhP?=
 =?utf-8?B?T1VhUGgwbjBVUGEzSVJINmFjb3RhcW9menJxVHFVdEFiRG44YVNEY2tmc3RJ?=
 =?utf-8?B?UFBSc0VVcTBNVmNXOXVrUTFzTFhUbnptblRtK1dOdU1MZm9jVHBhT1M5OGVG?=
 =?utf-8?B?QlBCS3RRV1ZLNjE5bXJhNHFva24yemI1Z0VNM1QrTjFpTzlOMURoc2svalNy?=
 =?utf-8?B?QURBcFhscTJrTWFCZ1ZLZHVJdXozWEdwM1cwWkFjcjFLMWp6S2dwZzUvWlZQ?=
 =?utf-8?B?dzlwaUJWU1dMMlFybU5FZ0tHY2ZYTmxLUVFXd1cwbnptZklDNU80dENnSUlB?=
 =?utf-8?B?NmtBTStTaUhkK05YUTA5K0J2cDhWMEFGK1d2Y0xpOVNJQ214UHloSDMxZHhJ?=
 =?utf-8?B?VXoyRlRIZjZaOXZYY2ljOWQyQVJYcVJ3M25HN1hvVUtHdnBRZHYvbUdFMnJB?=
 =?utf-8?B?UnZaZm85TVgyeGRFN091ZVBGSjc3VW0zaWcyb3NsMmVFQysvekRIMHdNR2lW?=
 =?utf-8?B?UEpSMzhPTSt0SWJDMWhUUW1UMUxvSGJ2eTI0RndIb0N0YTU3SnExVmpVejRT?=
 =?utf-8?B?ekwyYmY5QmhPQ0h5YjhyeGx1VmFWSENRNWhPb25Kc2d2NzZDTW94QnJvQ1hn?=
 =?utf-8?B?TDZMbVdVOTh4K3o2S0FWZ2EvbnpSUUFFT0NmL3lCRElyMmFmNnJHMDJxNDBO?=
 =?utf-8?B?UlIyREhZcnNXM2VhKzk2RUhBcDdabC9RVTZxMkVKbW9tTk5WWUY4dEpnd0pZ?=
 =?utf-8?B?YjgrR1pXaXRkb0VsL0VyQ2FEOEN5Wnd3UVluOC9WNW1BZjg2L2NoSmx6WGMz?=
 =?utf-8?B?M29mR0o0ZmJpdkNaakMvcmwwK0JmK1d3ek5STm80S2dQQ0F2U0dyTVRHdFo1?=
 =?utf-8?B?R2lUQXJ0VldUSTUvZTFrMmdSK1lvdGZwZTU3ekU3M0RvbGtrekg5UjNvSlZG?=
 =?utf-8?B?Sitod1krNDlrMGFUZkE2cXl2bUlQRWt1RHAzMnRLMzdqaEVVQ3VWbjc4OFRu?=
 =?utf-8?B?dkhVYWQwUm5WeGowbWgxU2wvaHhKMEFhczBtckQycytjbHRualRqWHNHK3RV?=
 =?utf-8?B?V0JkZ3JCWnlnVkxpMGZLamRzWXdPTG83N1MxcytvbldqSmczUnh1TXd3bWJv?=
 =?utf-8?B?MjlJaU5DMWZUTjh6VzFHMnRLVlhWYVhWN2Z0T25xaUpONXNOWUdiZ0FXV1hj?=
 =?utf-8?B?dDlvUldlZzluV2ZKdDdvSkYra2NMZWJNNjF5dzRDV3ZSS3puSFdrZlg4ZkFM?=
 =?utf-8?B?ckRsWjhYUEZPdDMwazJITmlQckltUy9aRDRMU3FvdjFCTkRtYVZKcnRSbjAw?=
 =?utf-8?B?UmZEMzZYdytEQWIvNk9iN2FaRVQzS2xzRFRxNjZ3VGt1NVNQWjYxam1oNnI5?=
 =?utf-8?B?eFM3K0JjK3dQeWpOaE9qZ0dOUzlWS083dzl3MHZVMFVYM0JhOWcrb0xzYmcx?=
 =?utf-8?B?TEUwTkt1MVNLc0hPZVpqZTlDK2J3T3VVbWtEYUp1bVg0OE1rUk5ZUE5xdHY1?=
 =?utf-8?B?TVVSbWU4SWJlemFSZnF5dEdtWS9wNzA0L3QxdkRieldxWVhPWGQzRjVHZCtQ?=
 =?utf-8?B?LzBqZncvOElvNnhjaWJSZ1lMSStWeUFUVUlobSt0b1Yvenl2cTJMek5KK0k0?=
 =?utf-8?B?d0VnQ29MbWpzS1NmR1c5d0lpbmphc3VUMUJJcVF4MTRYa3ZoMGNoSXNSSnhp?=
 =?utf-8?Q?Z4/Q=3D?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: fe9511c6-5993-4e94-d451-08de2bf929cf
X-MS-Exchange-CrossTenant-AuthSource: PH7PR12MB5685.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Nov 2025 08:03:48.3955
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: NTouZRzR75xkV/95wDKCMgL3g4DkBNwZUqT6dVZoKLO3TxwZYvR7eJIKNX56soOs
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW6PR12MB8707
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-5.00 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[amd.com,quarantine];
	R_DKIM_ALLOW(-0.20)[amd.com:s=selector1];
	R_SPF_ALLOW(-0.20)[+ip4:40.107.0.0/16];
	MIME_GOOD(-0.10)[text/plain];
	RCPT_COUNT_SEVEN(0.00)[7];
	RWL_MAILSPIKE_POSSIBLE(0.00)[40.107.200.47:from];
	FREEMAIL_TO(0.00)[kernel.org,gmail.com,ffwll.ch,gfxstrand.net,linaro.org];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_TLS_LAST(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_TWO(0.00)[2];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	TO_DN_NONE(0.00)[];
	DKIM_TRACE(0.00)[amd.com:+]
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: A0EE23F712
X-Spamd-Bar: ----
Message-ID-Hash: UD5Z4ZAOGT3ZFSTG75QMKT4CLG5S4M6I
X-Message-ID-Hash: UD5Z4ZAOGT3ZFSTG75QMKT4CLG5S4M6I
X-MailFrom: Christian.Koenig@amd.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: linaro-mm-sig@lists.linaro.org, dri-devel@lists.freedesktop.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 1/4] dma-buf/fence: give some reasonable maximum signaling timeout
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/UD5Z4ZAOGT3ZFSTG75QMKT4CLG5S4M6I/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gMTEvMjUvMjUgMDg6NTUsIFBoaWxpcHAgU3Rhbm5lciB3cm90ZToNCj4gT24gVGh1LCAyMDI1
LTExLTIwIGF0IDE1OjQxICswMTAwLCBDaHJpc3RpYW4gS8O2bmlnIHdyb3RlOg0KPj4gQWRkIGEg
ZGVmaW5lIGltcGxlbWVudGF0aW9ucyBjYW4gdXNlIGFzIHJlYXNvbmFibGUgbWF4aW11bSBzaWdu
YWxpbmcNCj4+IHRpbWVvdXQuIERvY3VtZW50IHRoYXQgaWYgdGhpcyB0aW1lb3V0IGlzIGV4Y2Vl
ZGVkIGJ5IGNvbmZpZyBvcHRpb25zDQo+PiBpbXBsZW1lbnRhdGlvbnMgc2hvdWxkIHRhaW50IHRo
ZSBrZXJuZWwuDQo+Pg0KPj4gVGFpbnRpbmcgdGhlIGtlcm5lbCBpcyBpbXBvcnRhbnQgZm9yIGJ1
ZyByZXBvcnRzIHRvIGRldGVjdCB0aGF0IGVuZA0KPj4gdXNlcnMgbWlnaHQgYmUgdXNpbmcgYSBw
cm9ibGVtYXRpYyBjb25maWd1cmF0aW9uLg0KPj4NCj4+IFNpZ25lZC1vZmYtYnk6IENocmlzdGlh
biBLw7ZuaWcgPGNocmlzdGlhbi5rb2VuaWdAYW1kLmNvbT4NCj4+IC0tLQ0KPj4gwqBpbmNsdWRl
L2xpbnV4L2RtYS1mZW5jZS5oIHwgMTQgKysrKysrKysrKysrKysNCj4+IMKgMSBmaWxlIGNoYW5n
ZWQsIDE0IGluc2VydGlvbnMoKykNCj4+DQo+PiBkaWZmIC0tZ2l0IGEvaW5jbHVkZS9saW51eC9k
bWEtZmVuY2UuaCBiL2luY2x1ZGUvbGludXgvZG1hLWZlbmNlLmgNCj4+IGluZGV4IDY0NjM5ZTEw
NDExMC4uYjMxZGZhNTAxYzg0IDEwMDY0NA0KPj4gLS0tIGEvaW5jbHVkZS9saW51eC9kbWEtZmVu
Y2UuaA0KPj4gKysrIGIvaW5jbHVkZS9saW51eC9kbWEtZmVuY2UuaA0KPj4gQEAgLTI4LDYgKzI4
LDIwIEBAIHN0cnVjdCBkbWFfZmVuY2Vfb3BzOw0KPj4gwqBzdHJ1Y3QgZG1hX2ZlbmNlX2NiOw0K
Pj4gwqBzdHJ1Y3Qgc2VxX2ZpbGU7DQo+PiDCoA0KPj4gKy8qKg0KPj4gKyAqIGRlZmluZSBETUFf
RkVOQ0VfTUFYX1JFQVNPTkFCTEVfVElNRU9VVCAtIG1heCByZWFzb25hYmxlIHNpZ25hbGluZyB0
aW1lb3V0DQo+PiArICoNCj4+ICsgKiBUaGUgZG1hX2ZlbmNlIG9iamVjdCBoYXMgYSBkZWVwIGlu
dGVyIGRlcGVuZGVuY3kgd2l0aCBjb3JlIG1lbW9yeQ0KPj4gKyAqIG1hbmFnZW1lbnQsIGZvciBh
IGRldGFpbGVkIGV4cGxhbmF0aW9uIHNlZSBzZWN0aW9uIERNQSBGZW5jZXMgdW5kZXINCj4+ICsg
KiBEb2N1bWVudGF0aW9uL2RyaXZlci1hcGkvZG1hLWJ1Zi5yc3QuDQo+PiArICoNCj4+ICsgKiBC
ZWNhdXNlIG9mIHRoaXMgYWxsIGRtYV9mZW5jZSBpbXBsZW1lbnRhdGlvbnMgbXVzdCBndWFyYW50
ZWUgdGhhdCBlYWNoIGZlbmNlDQo+PiArICogY29tcGxldGVzIGluIGEgZmluaXRlIHRpbWUuIFRo
aXMgZGVmaW5lIGhlcmUgbm93IGdpdmVzIGEgcmVhc29uYWJsZSB2YWx1ZSBmb3INCj4+ICsgKiB0
aGUgdGltZW91dCB0byB1c2UuIEl0IGlzIHBvc3NpYmxlIHRvIHVzZSBhIGxvbmdlciB0aW1lb3V0
IGluIGFuDQo+PiArICogaW1wbGVtZW50YXRpb24gYnV0IHRoYXQgc2hvdWxkIHRhaW50IHRoZSBr
ZXJuZWwuDQo+PiArICovDQo+PiArI2RlZmluZSBETUFfRkVOQ0VfTUFYX1JFQVNPTkFCTEVfVElN
RU9VVCAoMipIWikNCj4gDQo+IEhaIGNhbiBjaGFuZ2UgZGVwZW5kaW5nIG9uIHRoZSBjb25maWcu
IElzIHRoYXQgcmVhbGx5IGEgZ29vZCBjaG9pY2U/IEkNCj4gY291bGQgc2VlIHJhY3kgc2l0dWF0
aW9ucyBhcmlzaW5nIGluIHNvbWUgY29uZmlncyB2cyBvdGhlcnMNCg0KMipIWiBpcyBhbHdheXMg
dHdvIHNlY29uZHMgZXhwcmVzc2VkIGluIG51bWJlciBvZiBqaWZmaWVzLCBJIGNhbiB1c2UgbXNl
Y3NfdG9famlmZmllcygyMDAwKSB0byBtYWtlIHRoYXQgbW9yZSBvYnZpb3VzLg0KDQpUaGUgR1BV
IHNjaGVkdWxlciBoYXMgYSB2ZXJ5IHNpbWlsYXIgZGVmaW5lLCBNQVhfV0FJVF9TQ0hFRF9FTlRJ
VFlfUV9FTVBUWSB3aGljaCBpcyBjdXJyZW50bHkganVzdCAxIHNlY29uZC4NCg0KVGhlIHJlYWwg
cXVlc3Rpb24gaXMgd2hhdCBpcyB0aGUgbWF4aW11bSBhbW91bnQgb2YgdGltZSB3ZSBjYW4gd2Fp
dCBmb3IgdGhlIEhXIGJlZm9yZSB3ZSBzaG91bGQgdHJpZ2dlciBhIHRpbWVvdXQ/DQoNClNvbWUg
QU1EIGludGVybmFsIHRlYW0gaXMgcHVzaGluZyBmb3IgMTAgc2Vjb25kcywgYnV0IHRoYXQgYWxz
byBtZWFucyB0aGF0IGZvciBleGFtcGxlIHdlIHdhaXQgMTAgc2Vjb25kcyBmb3IgdGhlIE9PTSBr
aWxsZXIgdG8gZG8gc29tZXRoaW5nLiBUaGF0IHNvdW5kcyBsaWtlIHdheSB0byBsb25nLg0KDQpS
ZWdhcmRzLA0KQ2hyaXN0aWFuLg0KDQo+IA0KPiBQLg0KDQpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBs
aW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFp
bCB0byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
