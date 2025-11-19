Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id C96ACC6EF71
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 19 Nov 2025 14:42:49 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id D20AC3F840
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 19 Nov 2025 13:42:48 +0000 (UTC)
Received: from SJ2PR03CU001.outbound.protection.outlook.com (mail-westusazon11012038.outbound.protection.outlook.com [52.101.43.38])
	by lists.linaro.org (Postfix) with ESMTPS id 7E16C3F788
	for <linaro-mm-sig@lists.linaro.org>; Wed, 19 Nov 2025 13:42:31 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=amd.com header.s=selector1 header.b=TqBsS4Dm;
	spf=pass (lists.linaro.org: domain of Christian.Koenig@amd.com designates 52.101.43.38 as permitted sender) smtp.mailfrom=Christian.Koenig@amd.com;
	dmarc=pass (policy=quarantine) header.from=amd.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=w4KkTQhpqe4foZiXRMgQ1qPpQ8WSmEG45j/+7kQ+WFQlsl44bWRxeVsJjhg4RfwC9UYd/kmeTgQqKfuR4FB602esweSc/Fis6gtkODsQjP+NIw7Nm4F1NiMUS4w2cUXiDBigK6WeaS+7D+NgXoUOyWsjuzYPgoJSpXTq5ziRLPX2oTHDsxUNotLXOzXcrXANjeukOxMQF8J/koV64r/5EPYewELYE4ZbKGbiBYsxwz60NfcMzM0b6pUCI9VXHG9tMheNF8QiFkX83TdM1KV14J461XX/C5HOwyDS35Vb6MtfW90dRpKZMs9Sdg4rClVDmRt6xfxuOl5aQWmeXl1OPg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=SptarLRnYfOUYk/a5WuNCuLi6/HVNG04w/Ch2ewNJbo=;
 b=doZRYZmPfRVlzdJ49xCsMgKAVC5gDygQokkt46Yxtl6XaxMFN7zLU4ptanMlY3diipQOx+0j5txuK0p05p1nSywBPw1Q8jw4udWaplRWdV26knhvOKUm+eNdP13xbc411nf7hBh6SqfPdZbIz30YvE/Sd8//3QG/SYMwp4mE+PmnpYVgD/A/uHMKaKubt0gUm8UQYPnqZjbGUWEpAVu7tdykkLmny3lUkt0t7lI9gZo8huNf83VyUzjbjs8sUDPxzoVLCOxbsvd6RvjVYOznQLyO6dnNjS36duC3nFWmyzAAWLekrAt27+ScnNpYHzQTbaHw2s5dOhVsiNrQZ4rG+g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=SptarLRnYfOUYk/a5WuNCuLi6/HVNG04w/Ch2ewNJbo=;
 b=TqBsS4DmIveBZVrzRcayuh34qNImR4fcHl2XYU/Ay7q9MudKKkqNQulk3la6OF4HlcQxm8I78IUvnqpAvr2NosRUJW5nPedeSqzvmTGXqLdnLscXEmy/A1Q0+MIELY2BZH3B0fOSRht9HR/PetP3xJETaSDzBe5t2VolT1lsCl8=
Received: from PH7PR12MB5685.namprd12.prod.outlook.com (2603:10b6:510:13c::22)
 by CY8PR12MB7707.namprd12.prod.outlook.com (2603:10b6:930:86::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9320.22; Wed, 19 Nov
 2025 13:42:29 +0000
Received: from PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::46fb:96f2:7667:7ca5]) by PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::46fb:96f2:7667:7ca5%4]) with mapi id 15.20.9320.021; Wed, 19 Nov 2025
 13:42:27 +0000
Message-ID: <69436b2a-108d-4a5a-8025-c94348b74db6@amd.com>
Date: Wed, 19 Nov 2025 14:42:18 +0100
User-Agent: Mozilla Thunderbird
To: Jason Gunthorpe <jgg@ziepe.ca>
References: <20251111-dmabuf-vfio-v8-0-fd9aa5df478f@nvidia.com>
 <20251111-dmabuf-vfio-v8-6-fd9aa5df478f@nvidia.com>
 <8a11b605-6ac7-48ac-8f27-22df7072e4ad@amd.com>
 <20251119132511.GK17968@ziepe.ca>
Content-Language: en-US
From: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
In-Reply-To: <20251119132511.GK17968@ziepe.ca>
X-ClientProxiedBy: FR4P281CA0277.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:e6::9) To PH7PR12MB5685.namprd12.prod.outlook.com
 (2603:10b6:510:13c::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR12MB5685:EE_|CY8PR12MB7707:EE_
X-MS-Office365-Filtering-Correlation-Id: d372d7d3-50d7-4ef1-6dc0-08de27717a85
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014|7416014;
X-Microsoft-Antispam-Message-Info: 
	=?utf-8?B?RTZITFozNlQvUGtmdHFYYTJ1VUM2NnRJUXdqOW43d01JZXZBOS9SMWtoRUtV?=
 =?utf-8?B?YWt2aG8wdThSVFpKOUJ3VUlva3I4akg5aG4rdk1wL2pyV3d5Tlo3R1RpamVw?=
 =?utf-8?B?RFVXNTZEeld3amZ1Y0hNN3A4bmtpYlZZRTFTVEJDaktPcGd2N1pPME12V0JR?=
 =?utf-8?B?SWRvclpGdnQ3VG8zK1ZlaUxWTEo5ME45TDZ1dmpzOGV4bUZCOGsrTlNpbHRK?=
 =?utf-8?B?Q0ZnM2xTVXhNMVNiUVpjdktHNXB2akxtOGI2VFJuSTg1bWN2Nlc1N2tlYjZ2?=
 =?utf-8?B?dGxLVzRjai9mVlNMOGgrb0podzRtRlRpS1NRVWQza2hCZFpTejVzRGo4VnpP?=
 =?utf-8?B?cThDc3VQaCtlb25wSmdGTnVHelc4L2xMdkw0bm1HNHlsNWoyWlZoaG9XMVVv?=
 =?utf-8?B?aFMwYWJmb1VHMWl5WXZSTGlJcko4dW9vY2FmbmFDdDVwLzYxeUlCNzdBcWNq?=
 =?utf-8?B?dEJUdVo3SWJveSs3eHZXUHZ0Yldocm84R1hEcEw0eUw1YnplY1dTQ051MC82?=
 =?utf-8?B?Yk92QlRES3MrK1ZQUWxvblgyQWdURkl2RVpHaUFZUkd4MmloYkFjNDU2cjBs?=
 =?utf-8?B?bWUweEFmQXdyMngwMFpuQjRYdlU1Q2k1M2NDSzB6Zk9kYlZkN3U4L2RTRzQ0?=
 =?utf-8?B?WXdRVkZNdStLaFB1M2loVFRDVTNHRG0wUWowSHhmM1Jock1LUzI4YVMyZmVN?=
 =?utf-8?B?V3h1c2FWYXExN1FxWDZtR3Z5MTdMVW9PWGd4M3oxc0wxOWsvbFkvQWN1RDJD?=
 =?utf-8?B?b1o2Y3hGZjNCQjM0VGY5eHpTRjRvUmR4QkFVMTkycmk5d05EK1VCNC9mWUpQ?=
 =?utf-8?B?VWJnYXdWT2FDUzJTVHowSEVSYzlrdU1XanZ5M1NxcmtiSWZMRDl4eU1qeGJp?=
 =?utf-8?B?THdQcXMxdmswejNOZVlQZWo0VHRDR1daZHR5bkFOVFJlMm1DaDFKenkvc1Ev?=
 =?utf-8?B?R2FGdVIxRERBeE1qZmQ3VWJxVE1PMmdUVmNURUM1akxBUUJhUi9jaFVLeDhm?=
 =?utf-8?B?RHlQOGVMUGRHVlNLWEw4bUtuSVRCZUVqVzg5UnU1YVAwUG44aUNlMWlGQm51?=
 =?utf-8?B?UWI3R3h6aXUreEhHRi8veVFDODM1ZW83MTVCMHJKVlBsT01vQjZzUDVyNjdu?=
 =?utf-8?B?U2JzRkZkMVoyRmxNd2tBcnd6bWZ0V1pqR2JnRE43WFEyYVViMmNmbGwxK1Ix?=
 =?utf-8?B?MzhvcUxua3pxTnROSDJkMno2Q2hEdkE0V2dYNjU3ZUt3N2R2UDkvS2Yrd0lr?=
 =?utf-8?B?bFo1enRHWmx3MDhhRlFuL3J6dFBXZTZ1aEFKVS82aDVMYmh0clBxMlJTQU1q?=
 =?utf-8?B?YWJ6bHB3MHRHcGV5dFpiVGJoUzN2TEsrQ3NFNU9CdGYvd3FnQmFtL3RrcTBs?=
 =?utf-8?B?MnpaSk1lUDlDZnNzbGdoYXBtK09nMnJibUFMVzZrQlQ0Y1NCSHNRN1JGQ0Nq?=
 =?utf-8?B?TzRtcXdYRmNUY3NNTjlzRStpY0krMHNSUWpCSHcxZDdka0w0V1BVRlFZY0tB?=
 =?utf-8?B?bHAyQm4zUElqclVPbDFUZ2Y2M05SZzd5VDlLNTdjeDl3cWRPTGJQUFI2OHIr?=
 =?utf-8?B?MlMrWlFvV25pbndhb29rYUJ1KzFzMXdiOTdmYTd5SUwwd002aFRLQytHQXFH?=
 =?utf-8?B?KzdoaUltaS9SOE80S2dmM0lTWm16VDRDQ0JsZzNSQmNMVFQ3K2NxNTlrY0NB?=
 =?utf-8?B?dHVaQ01UYkxuczcvN1MrSkFBYkk2QTNiRTFOL2orL2gvdmpYV2g2bUgrTVdK?=
 =?utf-8?B?Qld4alZXOFZUSmY0TnYyN0J2SnJYQWlaQ3J1RVRlbzRDaGhaajdBRkNNOXNk?=
 =?utf-8?B?cTJGbmo4VlFvNUVWaVRmWjFVQ1h1d1ZFTVVnUFZVK0RCT3hmTmlkNnAzL2Yv?=
 =?utf-8?B?NVorNENEUElrOGVzWngwVUlTUTZ0WEZRcWtERnpldkVSWFExRy9wVzc1bUhs?=
 =?utf-8?Q?aASJ0lv2paih8o9t6+ukh6+LNt9vE+Su?=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH7PR12MB5685.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(1800799024)(376014)(7416014);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?SUc2Q2xCNStNcUxxWGtHb2lGazJYVnVpZUI5QW55UTBHcmw1V2xabW5mWFh3?=
 =?utf-8?B?Zmc0TXBsdmwwdmQ1V1N2MUZEM3hnbUltenV6V2dpdU8wWlJaaXFPVTBCMHhl?=
 =?utf-8?B?SDhDZFJacFU5Vk9aaDRBbERKRmN5Rlk4TVJpWEgrMnNPRXRlckJGZGVVM0tW?=
 =?utf-8?B?Ym9KelJzUDBnUGdFc2c2TFdNK21xYWRDMzhOUFBtWlRzN2s3aURxNUkyengv?=
 =?utf-8?B?aFNGYlNvUlQ2SUh5Ynd3YzZWSzhpODRoUHNFQTE4UUZDV2tUZll1MFlJNVZL?=
 =?utf-8?B?NkdqcjhBTVpyUjNtRXpPOFR4Q0Fzdm1jQk5BUTQxdFFHM0wzR1g3QjVrOTUx?=
 =?utf-8?B?Y3dydmRIZEZYWW1NM0htMjBCVkt1bUwzVmJDeHBLd0owMEdWZWZoT3F4SS9G?=
 =?utf-8?B?VmJXQm9STUhTaVVIOU9waUhGYVFrRjFEcDBwLy8xNSthd3JDZ0dnc0RJUEF6?=
 =?utf-8?B?VlYvNTZydnNPY1kzS2JBYnV5ckJQUEVmVTlJRTZ2ZkllZXpMV3IvcUM5aTZP?=
 =?utf-8?B?UE0wblUzMEFRTERaa2YyRUJldlhkNTE0YjkxRXBHU09NZmlEN2tEaWtXbzg3?=
 =?utf-8?B?dEo4UjJXUk9oM2kxdTRMSzYxbUFBNDljeUVVVkRtWWtQK2hLRWhHRDZLdGQ5?=
 =?utf-8?B?Y2JGRXpPU2d2U2lod0tvNVBZaWxlVGdSWGRRTGluNWx5R1NIdlM4VDIyMlFp?=
 =?utf-8?B?SWxUZXl0MWRlVENoejUyT2ROT213MVlmU1NsNkswRldKYXFCYkovcDkranZU?=
 =?utf-8?B?dEtxeml2ZGdZcDBCVW0vNG04dnVNTTBkWjJ3a1kzTTBvdFBWdkN1ZGF2NUph?=
 =?utf-8?B?ZE1RTTFuZGdUbjIvOG5nRW91aTNjYitPYW9YNXJna0JGVHdFNkpuSThTVWtv?=
 =?utf-8?B?YjZrT3laVy9jUXRiZk1EMEVrUUdtSUI0WjhHc1hMRjVVMVoxamJoeVg5QU1p?=
 =?utf-8?B?L1BQSkE2NUh3ZzNaVWU2Sm93N1dYZHo5NXpRd1hPRmdlYzJ4bm82MlQrMEtv?=
 =?utf-8?B?VGVOUnBtSmVLYnBPMGUzcytla1A5SlRRK0hpL2VnNnUvQWswc1pkenI2bTQr?=
 =?utf-8?B?bEFBR0JBdzhhbENqZE1lVzRBNnlLcURaeE8zMURWL0JuY1pKTmNYRmZIa0lm?=
 =?utf-8?B?UzZqOFZzUW1XMjNSdS9xS25vM3E0WWYrR0dodTBGdmZlbGxzZUFpQjVJREVN?=
 =?utf-8?B?ekNpNENoeUJPTUhMMmpwM2pJTHlGVlBJV2FETURSK0lJRDAwQStndzlxU3Jn?=
 =?utf-8?B?dTdrajhac20zeW9iaFV4V0MxekpTT1pKODlJZFFTYUJRZFdFZmV4ckpnRXNx?=
 =?utf-8?B?SmhQb2llZzBPZEp6Y0Rka1BVUzJxNWlPazRkdjJ2QUpaVm9acm5FNFI0OURj?=
 =?utf-8?B?RGQ4eE5jNiszM3NyTGRKKy91MHd2ZTVHSFRGRDM3bjFpL1BVdzF1U05hNlF4?=
 =?utf-8?B?K0QyZlovVFJlN3B5OHMxOTBWWlJHYnc2eis4ZXVHcWlKYnJUTmJCdTVDbjU1?=
 =?utf-8?B?K2w3bzkxMEdMRGh0T0wxeUUyNlQ4R2JuZDhJRFNMMTNwQ3hnL2pNUVgwSVdO?=
 =?utf-8?B?MTliUjYrb1paaXk2MUt4Q1ZjcURjSW1udHU5d3F5NjRBWFhWdEFseTFGYW1B?=
 =?utf-8?B?cDc4VWtDaG5xYm5KWE13VkVPTDhsQUhEOTROZ3lnTkRoOXA2ckp3YzhwWmF4?=
 =?utf-8?B?NWZhSDhuSDFlQUJKdmVkRzhSbnZ1cG1nSmNUa1RiNmxKSkxUVWRjU2FCZS9k?=
 =?utf-8?B?V2U3c0tvRWhaT3ppQmdRbzluT1BQaWlQOExmc25OTHVVYkZpVFFuSWNjZzZD?=
 =?utf-8?B?NEEvT2h3ei9jWkZoZHdmNXFlTmZRdFByZ3kzWjYyVmdsalpZSzNOTE9paVZ3?=
 =?utf-8?B?OWR5UVZxRVhZMmdVS1l1SnJUMm1hQ2lJd1gvcjFyc3JMZTZ5cnAxNVd0UDYr?=
 =?utf-8?B?R1pvdFdCRC9uSldqV1lhdktPamtkM05kanRna0lsenVtTnIvYUJRbGdWSDg3?=
 =?utf-8?B?YWIwTWhKeit6Umt2WitjK2hIUURsVVhsbHR0MmtBY0cvTDBYNlAxMlFBVnAv?=
 =?utf-8?B?SncwTVJudzRBUFZYMFh6U2hoamtYSjcycWdMczUxd2VKdGNMSXZOSjdXZ3ZE?=
 =?utf-8?Q?JFhD5+A3sLLUtsF95m/aDvtGf?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d372d7d3-50d7-4ef1-6dc0-08de27717a85
X-MS-Exchange-CrossTenant-AuthSource: PH7PR12MB5685.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Nov 2025 13:42:27.4997
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: mGLdCC6Nlm3dKS89ZeoBL79XyWUD8tMMPXBb3Oc3DKbSqCFw0Bj32cBrAWaFlCRc
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR12MB7707
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-5.00 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[amd.com,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:52.100.0.0/15];
	R_DKIM_ALLOW(-0.20)[amd.com:s=selector1];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_POSSIBLE(0.00)[52.101.43.38:from];
	RCPT_COUNT_TWELVE(0.00)[34];
	BLOCKLISTDE_FAIL(0.00)[52.101.43.38:server fail];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:8075, ipnet:52.96.0.0/12, country:US];
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
X-Rspamd-Queue-Id: 7E16C3F788
X-Spamd-Bar: ----
Message-ID-Hash: E7QGE3JKUTJ2R6YJF6LUPTF4IIKE65AJ
X-Message-ID-Hash: E7QGE3JKUTJ2R6YJF6LUPTF4IIKE65AJ
X-MailFrom: Christian.Koenig@amd.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Leon Romanovsky <leon@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>, Logan Gunthorpe <logang@deltatee.com>, Jens Axboe <axboe@kernel.dk>, Robin Murphy <robin.murphy@arm.com>, Joerg Roedel <joro@8bytes.org>, Will Deacon <will@kernel.org>, Andrew Morton <akpm@linux-foundation.org>, Jonathan Corbet <corbet@lwn.net>, Sumit Semwal <sumit.semwal@linaro.org>, Kees Cook <kees@kernel.org>, "Gustavo A. R. Silva" <gustavoars@kernel.org>, Ankit Agrawal <ankita@nvidia.com>, Yishai Hadas <yishaih@nvidia.com>, Shameer Kolothum <skolothumtho@nvidia.com>, Kevin Tian <kevin.tian@intel.com>, Alex Williamson <alex@shazbot.org>, Krishnakant Jaju <kjaju@nvidia.com>, Matt Ochs <mochs@nvidia.com>, linux-pci@vger.kernel.org, linux-kernel@vger.kernel.org, linux-block@vger.kernel.org, iommu@lists.linux.dev, linux-mm@kvack.org, linux-doc@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, kvm@vger.kernel.org, linux-hardening@vger.kernel.org, Alex
  Mastro <amastro@fb.com>, Nicolin Chen <nicolinc@nvidia.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v8 06/11] dma-buf: provide phys_vec to scatter-gather mapping routine
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/E7QGE3JKUTJ2R6YJF6LUPTF4IIKE65AJ/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gMTEvMTkvMjUgMTQ6MjUsIEphc29uIEd1bnRob3JwZSB3cm90ZToNCj4gT24gV2VkLCBOb3Yg
MTksIDIwMjUgYXQgMDI6MTY6NTdQTSArMDEwMCwgQ2hyaXN0aWFuIEvDtm5pZyB3cm90ZToNCj4+
PiArLyoqDQo+Pj4gKyAqIGRtYV9idWZfbWFwIC0gUmV0dXJucyB0aGUgc2NhdHRlcmxpc3QgdGFi
bGUgb2YgdGhlIGF0dGFjaG1lbnQgZnJvbSBhcnJheXMNCj4+PiArICogb2YgcGh5c2ljYWwgdmVj
dG9ycy4gVGhpcyBmdW5jaXRvbiBpcyBpbnRlbmRlZCBmb3IgTU1JTyBtZW1vcnkgb25seS4NCj4+
PiArICogQGF0dGFjaDoJW2luXQlhdHRhY2htZW50IHdob3NlIHNjYXR0ZXJsaXN0IGlzIHRvIGJl
IHJldHVybmVkDQo+Pj4gKyAqIEBwcm92aWRlcjoJW2luXQlwMnBkbWEgcHJvdmlkZXINCj4+PiAr
ICogQHBoeXNfdmVjOglbaW5dCWFycmF5IG9mIHBoeXNpY2FsIHZlY3RvcnMNCj4+PiArICogQG5y
X3JhbmdlczoJW2luXQludW1iZXIgb2YgZW50cmllcyBpbiBwaHlzX3ZlYyBhcnJheQ0KPj4+ICsg
KiBAc2l6ZToJW2luXQl0b3RhbCBzaXplIG9mIHBoeXNfdmVjDQo+Pj4gKyAqIEBkaXI6CVtpbl0J
ZGlyZWN0aW9uIG9mIERNQSB0cmFuc2Zlcg0KPj4+ICsgKg0KPj4+ICsgKiBSZXR1cm5zIHNnX3Rh
YmxlIGNvbnRhaW5pbmcgdGhlIHNjYXR0ZXJsaXN0IHRvIGJlIHJldHVybmVkOyByZXR1cm5zIEVS
Ul9QVFINCj4+PiArICogb24gZXJyb3IuIE1heSByZXR1cm4gLUVJTlRSIGlmIGl0IGlzIGludGVy
cnVwdGVkIGJ5IGEgc2lnbmFsLg0KPj4+ICsgKg0KPj4+ICsgKiBPbiBzdWNjZXNzLCB0aGUgRE1B
IGFkZHJlc3NlcyBhbmQgbGVuZ3RocyBpbiB0aGUgcmV0dXJuZWQgc2NhdHRlcmxpc3QgYXJlDQo+
Pj4gKyAqIFBBR0VfU0laRSBhbGlnbmVkLg0KPj4+ICsgKg0KPj4+ICsgKiBBIG1hcHBpbmcgbXVz
dCBiZSB1bm1hcHBlZCBieSB1c2luZyBkbWFfYnVmX3VubWFwKCkuDQo+Pj4gKyAqLw0KPj4+ICtz
dHJ1Y3Qgc2dfdGFibGUgKmRtYV9idWZfbWFwKHN0cnVjdCBkbWFfYnVmX2F0dGFjaG1lbnQgKmF0
dGFjaCwNCj4+DQo+PiBUaGF0IGlzIGNsZWFybHkgbm90IGEgZ29vZCBuYW1lIGZvciB0aGlzIGZ1
bmN0aW9uLiBXZSBhbHJlYWR5IGhhdmUgb3ZlcmxvYWRlZCB0aGUgdGVybSAqbWFwcGluZyogd2l0
aCBzb21ldGhpbmcgY29tcGxldGVseSBkaWZmZXJlbnQuDQo+Pg0KPj4+ICsJCQkgICAgIHN0cnVj
dCBwMnBkbWFfcHJvdmlkZXIgKnByb3ZpZGVyLA0KPj4+ICsJCQkgICAgIHN0cnVjdCBkbWFfYnVm
X3BoeXNfdmVjICpwaHlzX3ZlYywNCj4+PiArCQkJICAgICBzaXplX3QgbnJfcmFuZ2VzLCBzaXpl
X3Qgc2l6ZSwNCj4+PiArCQkJICAgICBlbnVtIGRtYV9kYXRhX2RpcmVjdGlvbiBkaXIpDQo+Pj4g
K3sNCj4+PiArCXVuc2lnbmVkIGludCBuZW50cywgbWFwcGVkX2xlbiA9IDA7DQo+Pj4gKwlzdHJ1
Y3QgZG1hX2J1Zl9kbWEgKmRtYTsNCj4+PiArCXN0cnVjdCBzY2F0dGVybGlzdCAqc2dsOw0KPj4+
ICsJZG1hX2FkZHJfdCBhZGRyOw0KPj4+ICsJc2l6ZV90IGk7DQo+Pj4gKwlpbnQgcmV0Ow0KPj4+
ICsNCj4+PiArCWRtYV9yZXN2X2Fzc2VydF9oZWxkKGF0dGFjaC0+ZG1hYnVmLT5yZXN2KTsNCj4+
PiArDQo+Pj4gKwlpZiAoV0FSTl9PTighYXR0YWNoIHx8ICFhdHRhY2gtPmRtYWJ1ZiB8fCAhcHJv
dmlkZXIpKQ0KPj4+ICsJCS8qIFRoaXMgZnVuY3Rpb24gaXMgc3VwcG9zZWQgdG8gd29yayBvbiBN
TUlPIG1lbW9yeSBvbmx5ICovDQo+Pj4gKwkJcmV0dXJuIEVSUl9QVFIoLUVJTlZBTCk7DQo+Pj4g
Kw0KPj4+ICsJZG1hID0ga3phbGxvYyhzaXplb2YoKmRtYSksIEdGUF9LRVJORUwpOw0KPj4+ICsJ
aWYgKCFkbWEpDQo+Pj4gKwkJcmV0dXJuIEVSUl9QVFIoLUVOT01FTSk7DQo+Pj4gKw0KPj4+ICsJ
c3dpdGNoIChwY2lfcDJwZG1hX21hcF90eXBlKHByb3ZpZGVyLCBhdHRhY2gtPmRldikpIHsNCj4+
PiArCWNhc2UgUENJX1AyUERNQV9NQVBfQlVTX0FERFI6DQo+Pj4gKwkJLyoNCj4+PiArCQkgKiBU
aGVyZSBpcyBubyBuZWVkIGluIElPVkEgYXQgYWxsIGZvciB0aGlzIGZsb3cuDQo+Pj4gKwkJICov
DQo+Pj4gKwkJYnJlYWs7DQo+Pj4gKwljYXNlIFBDSV9QMlBETUFfTUFQX1RIUlVfSE9TVF9CUklE
R0U6DQo+Pj4gKwkJZG1hLT5zdGF0ZSA9IGt6YWxsb2Moc2l6ZW9mKCpkbWEtPnN0YXRlKSwgR0ZQ
X0tFUk5FTCk7DQo+Pj4gKwkJaWYgKCFkbWEtPnN0YXRlKSB7DQo+Pj4gKwkJCXJldCA9IC1FTk9N
RU07DQo+Pj4gKwkJCWdvdG8gZXJyX2ZyZWVfZG1hOw0KPj4+ICsJCX0NCj4+PiArDQo+Pj4gKwkJ
ZG1hX2lvdmFfdHJ5X2FsbG9jKGF0dGFjaC0+ZGV2LCBkbWEtPnN0YXRlLCAwLCBzaXplKTsNCj4+
DQo+PiBPaCwgdGhhdCBpcyBhIGNsZWFyIG5vLWdvIGZvciB0aGUgY29yZSBETUEtYnVmIGNvZGUu
DQo+Pg0KPj4gSXQncyBpbnRlbnRpb25hbGx5IHVwIHRvIHRoZSBleHBvcnRlciBob3cgdG8gY3Jl
YXRlIHRoZSBETUENCj4+IGFkZHJlc3NlcyB0aGUgaW1wb3J0ZXIgY2FuIHdvcmsgd2l0aC4NCj4g
DQo+IEkgY2FuJ3QgZnVsbHkgdW5kZXJzdGFuZCB0aGlzIHJlbWFyaz8NCg0KVGhlIGV4cG9ydGVy
IHNob3VsZCBiZSBhYmxlIHRvIGRlY2lkZSBpZiBpdCBhY3R1YWxseSB3YW50cyB0byB1c2UgUDJQ
IHdoZW4gdGhlIHRyYW5zZmVyIGhhcyB0byBnbyB0aHJvdWdoIHRoZSBob3N0IGJyaWRnZSAoZS5n
LiB3aGVuIElPTU1VL2JyaWRnZSByb3V0aW5nIGJpdHMgYXJlIGVuYWJsZWQpLg0KDQpUaGlua2lu
ZyBtb3JlIGFib3V0IGl0IGV4cG9ydGVycyBjYW4gbm93IHByb2JhYmx5IGNhbGwgcGNpX3AycGRt
YV9tYXBfdHlwZShwcm92aWRlciwgYXR0YWNoLT5kZXYpIGJlZm9yZSBjYWxsaW5nIHRoaXMgZnVu
Y3Rpb24gc28gdGhhdCBpcyBwcm9iYWJseSBvay4NCg0KPj4gV2UgY291bGQgYWRkIHNvbWV0aGlu
ZyBsaWtlIGEgZG1hX2J1Zl9zZ19oZWxwZXIuYyBvciBzaW1pbGFyIGFuZCBwdXQgaXQgaW4gdGhl
cmUuDQo+IA0KPiBZZXMsIHRoZSBpbnRlbnRpb24gaXMgdGhpcyBmdW5jdGlvbiBpcyBhbiAiZXhw
b3J0ZXIgaGVscGVyIiB0aGF0IGFuDQo+IGV4cG9ydGVyIGNhbiBjYWxsIGlmIGl0IHdhbnRzIHRv
IGhlbHAgZ2VuZXJhdGUgdGhlIHNjYXR0ZXJsaXN0Lg0KPiANCj4gU28geW91ciAibm8tZ28iIGlz
IGp1c3QgYWJvdXQgd2hhdCBmaWxlIGl0IGlzIGluLCBub3QgYW55dGhpbmcgYWJvdXQNCj4gaG93
IGl0IHdvcmtzPw0KDQpZZXMsIGV4YWN0bHkgdGhhdC4gSnVzdCBtb3ZlIGl0IGludG8gYSBzZXBh
cmF0ZSBmaWxlIHNvbWV3aGVyZSBhbmQgaXQncyBwcm9iYWJseSBnb29kIHRvIGdvIGFzIGZhciBh
cyBJIGNhbiBzZWUuDQoNCkJ1dCBvbmx5IHRha2UgdGhhdCBhcyBBY2tlZC1ieSwgSSB3b3VsZCBu
ZWVkIGF0IGxlYXN0IGEgZGF5IChvciB3ZWVrKSBvZiBmcmVlIHRpbWUgdG8gd3JhcCBteSBoZWFk
IGFyb3VuZCBhbGwgdGhlIHRlY2huaWNhbCBkZXRhaWxzIGFnYWluLiBBbmQgdGhhdCBpcyBzb21l
dGhpbmcgSSB3b24ndCBoYXZlIGJlZm9yZSBKYW51YXJ5IG9yIGV2ZW4gbGF0ZXIuDQoNClJlZ2Fy
ZHMsDQpDaHJpc3RpYW4uDQoNCj4gDQo+IFRoYW5rcywNCj4gSmFzb24NCg0KX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5n
IGxpc3QgLS0gbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNl
bmQgYW4gZW1haWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==
