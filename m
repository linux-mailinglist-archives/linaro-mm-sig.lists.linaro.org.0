Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D906C6F236
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 19 Nov 2025 15:06:53 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id A54193F8F9
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 19 Nov 2025 14:06:52 +0000 (UTC)
Received: from CO1PR03CU002.outbound.protection.outlook.com (mail-westus2azon11010032.outbound.protection.outlook.com [52.101.46.32])
	by lists.linaro.org (Postfix) with ESMTPS id D4CF43F786
	for <linaro-mm-sig@lists.linaro.org>; Wed, 19 Nov 2025 14:06:30 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=amd.com header.s=selector1 header.b=eHTkBcoE;
	spf=pass (lists.linaro.org: domain of Christian.Koenig@amd.com designates 52.101.46.32 as permitted sender) smtp.mailfrom=Christian.Koenig@amd.com;
	dmarc=pass (policy=quarantine) header.from=amd.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=bNCisLbtgLv7+XSWBx6uIMlyAkRqs49RpNLx982MjBKEwzNF1UHw5hTCD90Wuq8AkcJqg6WpnYX/hOQBiCRc735RZhf/7tqLYM74wdN+f61biNH/ylJlQEOVm82uspZKP8ac0WOUMDZew3ol61J1M7zwqBcpun4PJxjdEugl+RpHarUbSP1VE6kIQXp+yFzIFA+r05S9yGRkvJC3lYXmbW1PiEdDC4osNGliCSS7W7uGNi1ugdH1IuKtfjAtoeJ6rE3j9T2JNYp1aE5BI16JDK36B4BLwPH9QqMriM1CWYCGp56PVbB4BrozsfiLDigx90v2a5UYaHETdAkOoYgtHQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=RodIlqiCVlrGXPsR3ERXgJajNGk+sw1kRTH5SeTDbhg=;
 b=JqQIAA3R2hQxXKajJZIZ5wjuOQBmZYbay5vDZ/o53ne78sNuTswv4s38RMVOzN6zVPpAZwmr7qL9qWCUHcXBXh/Pf8oi4pgDorX9HBtR0V9wSahhgRWQrEHd3mdi+F0nWwKrB2vOC5nq7V/uJjpYurcpvuE4CV4GAzmfLE6oqtOESzh0SjOc9elr5GiNDzjgi+P/9I5t7x0MMa3lpI0ImFlvmCOiXSSGKOTUCiGBtyrntkigQLgOEa/RzUa4EbXWrQXHE8XTMtaxo5z6rKB5l/4Ns/PjyGH/FOSiPAe14wdrF+WD1Ol9q+OOSq94yp1wzwuy4kwLgq1TGxxxPDUqLg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=RodIlqiCVlrGXPsR3ERXgJajNGk+sw1kRTH5SeTDbhg=;
 b=eHTkBcoEOun01arH6EyTQHDDCj+HijuB0t4CxtKWYr6hsV0CFgBUCvu5nditWV0BmhCM6cNq4MuIN83Lr/vhN5eWfBCCY//7JEK7oplYD5lfl+K2vwkcyr5Qk97o3d6qQr94oru4QG0KZbhj2gXd1yXkefisc6Lu8Wpn2qfqAVw=
Received: from PH7PR12MB5685.namprd12.prod.outlook.com (2603:10b6:510:13c::22)
 by MN2PR12MB4343.namprd12.prod.outlook.com (2603:10b6:208:26f::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9343.10; Wed, 19 Nov
 2025 14:06:27 +0000
Received: from PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::46fb:96f2:7667:7ca5]) by PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::46fb:96f2:7667:7ca5%4]) with mapi id 15.20.9320.021; Wed, 19 Nov 2025
 14:06:26 +0000
Message-ID: <ad36ef4e-a485-4bbf-aaa9-67cd517ca018@amd.com>
Date: Wed, 19 Nov 2025 15:06:18 +0100
User-Agent: Mozilla Thunderbird
To: Jason Gunthorpe <jgg@ziepe.ca>
References: <20251111-dmabuf-vfio-v8-0-fd9aa5df478f@nvidia.com>
 <20251111-dmabuf-vfio-v8-5-fd9aa5df478f@nvidia.com>
 <9798b34c-618b-4e89-82b0-803bc655c82b@amd.com>
 <20251119133529.GL17968@ziepe.ca>
Content-Language: en-US
From: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
In-Reply-To: <20251119133529.GL17968@ziepe.ca>
X-ClientProxiedBy: FR2P281CA0048.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:92::19) To PH7PR12MB5685.namprd12.prod.outlook.com
 (2603:10b6:510:13c::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR12MB5685:EE_|MN2PR12MB4343:EE_
X-MS-Office365-Filtering-Correlation-Id: 87e99477-a4ec-41d0-1404-08de2774d454
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|7416014|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: 
	=?utf-8?B?MHluUHVtR1pTcXo3VUZoOFNBTHdpcjkvMHViUXdXRm9QaE9sa2VRT1BiMlMr?=
 =?utf-8?B?ckxrOTNDRG5Xb1V0TTE0Z3BUT0hBcXJKNWt5K1dkajZreUM0WEp6bFB4T0VR?=
 =?utf-8?B?K1BzdmFzbVlFZkZhdGxXREVsTTBlSHRBWVQ2VkpTdmlsSlUrWHJvSm12SnRz?=
 =?utf-8?B?L0pXVWdHRTVUcDhJemwxZjBVTVVoY3Ntd2l1RG9Cc3hLeVBLLys0QnZpaDQ0?=
 =?utf-8?B?NE5jbFZTNGU0cG9KdklIUnpFb2Fvc0FUYVhXZXRrcUFlVm1XbFhLa1pOaEVS?=
 =?utf-8?B?S0pHbGlLaWdrT3hXbG1mdU45ZHRZQVZ6SWVWZGRhbVRYcXAyTW1wakt1ZWly?=
 =?utf-8?B?bVcyRlhpdWZXbTk1N0l5VEUvN05LRVZVY3YxSEZQVXpCZWdXNTRqZEppTXA2?=
 =?utf-8?B?NklLaVRXekNqU1orWkNhUHJuL1AwdU5ub015eFNGdGpmeG1MWVJ4bmV3YU5q?=
 =?utf-8?B?MjFuSmhueFBZWmQ3RUhlS1VFNnFWRE9YWDRRMDA2QSs0SEovL2tYMS9KQUd6?=
 =?utf-8?B?MnU2WXMvU1BKdUFQQVdQYWFxK1l1YjN2UzNPL2Y0OUh6RmtHNVlubkxiS3g2?=
 =?utf-8?B?MGNUcmFQWkt4Y201a244WFBPMHpNN2ZnV2dYSVF3MUhZamFJcmY4K3lnek5G?=
 =?utf-8?B?MTI1anowVUpzRk80L091UE12TlVMWnpLK0lMajNqUUo3U2RFNXFOQWtOaU9B?=
 =?utf-8?B?WjB5ejdmc0g2RS9JWTc2UWNlTWhHbWNscjgvWFIrejdOYzRwS3BFNU8zWkFP?=
 =?utf-8?B?ZWgxZlpEV2xxZzRoMFlHM1FqV0xIUWxQaUVMVGpKSmllVy91WnM4RHdaWmV2?=
 =?utf-8?B?RzlrL2hVVWRIZk1kZHZEUHJFeFdPZmpnZkhVVElhVnQzejRrMVN5d2l0YzBZ?=
 =?utf-8?B?USs5bTROZzdwWFU1NjBiZ2Jlc3VLOUlDd3lSbHpYWWxKS0l1L1g0aGRGQWtT?=
 =?utf-8?B?RU9ubjM2VDExakw0K2ZaREJoYTJhVS81UXVyTGcyalRpMEZ6ZHBPZ2V6VHZi?=
 =?utf-8?B?NkVJRTlhQ29SbjJCUThmb3luUTNwd1Y5bHlaWjJadTcrOTJGbmc1MEkrTGdC?=
 =?utf-8?B?elRvbERjTFZoQzhaV2VUdXJvaTl0SkI3MlRCR2VhU2ZiUnpPcWxBVW9pRGE0?=
 =?utf-8?B?Slc5dGcvL0xoZDhVS2FqYUVpYVFwdmNkdFJtRytXRXA0VEg5SWgzRnY0M0I5?=
 =?utf-8?B?NkJJVGVycENhNHpaeTV3eWwzZHB1NE82RkZuL1JVK244QVZjNFVEUWFvd3lS?=
 =?utf-8?B?MUxOTTE3RjA4TU5IL0hBb1o2THZLc2dYbFZoRFhkb1MreUJpTU1IN2haeUkz?=
 =?utf-8?B?WDdXRVFxRWhGU0Q0TFBUN1RDV0w1bmM5UE80Zys5a09ORm0weFpqVTBzb3hG?=
 =?utf-8?B?MExRNDlYSFRRN3I0U1F4K3VnQWxnY3V1V2dMWk5CL0I0UGxGcFU4RnJwckJK?=
 =?utf-8?B?bS9mZ3FRQ0VBNmJTaFJ0eGZGbzFLZVlSR0hhaUtRMHdua0txQ1BSaERQaksz?=
 =?utf-8?B?cTd0d2JoOXIrK3NMbE02Rmt6RTdpdDd2YlVlOExhazRvMDEwREd0QVd0cE9L?=
 =?utf-8?B?WjM0WUdOMldJRkM0TGVkRzBQRENWcm5kNnhSMzRickExMDA4ZVN6dVR0eUpv?=
 =?utf-8?B?WUJsVWpCQ1RFd25kUWs3Mk1kbXNrdzlLczNGd2Y3Z0NCTWc5YjRpOVptZlFs?=
 =?utf-8?B?MlFUYnUrTW9aSjhFaDhjQjZBSTRtaFFudHNMQnkzT2Q5eEpZRzluYXE0NGQ4?=
 =?utf-8?B?aUdQd3I4WmhVRmFIdUsvZjlqY0hRUVNDVFBjbVM0VnhFZjZLaWlPazlRcktp?=
 =?utf-8?B?aUxGUWQ5a1p3U0pydGFSY1VWdjFIQjhlYTFLbEhGVURkak1TUUZQZldKSW1N?=
 =?utf-8?B?WWtTbk5HOU96azlpdUV3YWFmSUNlSEZ6dmRXZWRpZHhnUVQ1eVRTQ0hhZ2Mx?=
 =?utf-8?Q?1dI5GZIUeHeful+qKhKNxmPZYGtl7+jc?=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH7PR12MB5685.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(7416014)(376014)(366016)(1800799024);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?UEdOenRHUTVIcXFWYi80V0pwMXdWRDg0WHB5Z1IraVU0RGZJR3FJTXdRL1ZT?=
 =?utf-8?B?NGdqdFY3UjZpYkNHNkMyWTI1bjZZdzBRb2RvTk5pUmpzMkZlbTY3dGF6LzNO?=
 =?utf-8?B?Wk8rcVJ4VnR3WE84OTNnZHhRTGJJbGpTOWxndm5xWUt4YkdCZTBIZ21STEpt?=
 =?utf-8?B?c09Ta0NKeENvd3RvYzBhaDBGa2IwOVpwRGFrZW96UmFBMjY0MkhTYWxoMXJx?=
 =?utf-8?B?d1krbzZtVEU1clZhSlZCV2luQmpIWUFkZWZJV0VSaHVWUlcwdzltY1dTZFdE?=
 =?utf-8?B?NTlveFNOUnRyNC9hTjE4bnhDWURsenlqdTZ1c2thOVEyZGJVNlRNaTR0VEVi?=
 =?utf-8?B?Ulp5ZndLcjRSWDA1WHpUVXJiU0JhRmozSWRzS1ptdXdpVEZodythOGltWkRF?=
 =?utf-8?B?cnVobEdpTFMxQkNvOWxnN1VDdzZTbDNxc3RqVUw4WjZSUGJtMkVpMWpScU5m?=
 =?utf-8?B?NVZ6YlJMTDRpdWRvditIbVMrRU54eFJhVGNCcHFDNmpGVkJISEVUaWtzQ0ta?=
 =?utf-8?B?ZlVOeWtUZzhCclVaRXcwWUxIaWdUOUJGSSt0cGJweFZXY0FmaFAxTmd2eDA5?=
 =?utf-8?B?YWxVR0pSRjJlZitjMTNyd3dGS3haR0JZTENOVlBZeVVJc3VOZGVFZUZtWHpR?=
 =?utf-8?B?V0lXbGNiRmp2Z2pHVW9hbE9GQmZWRjRWSFNWZGlaLys3c21hY3lCbnpLUzdx?=
 =?utf-8?B?RUNzMVZ6ZzBqYytWQlpUdnNDMk5IdEFCbzJ2TkdDN3VPNi9yME1WU09SVnNy?=
 =?utf-8?B?NEdVZDVHRVAzeFBQNU1FbSs4MHdRWmdHY0NkdkZ0R3J0dkJ0ZVNHMUdWbUVY?=
 =?utf-8?B?aWpJSVpHQmh2cmE0K0JUVnJGMkJKaFByVUFpT2p1SHdWMnp6V0FyYllDWlFJ?=
 =?utf-8?B?L25XUzl0LzVwYkYyMmtHa1E1VWFleTFlQ2xNWEsxQ0lQbFlZdkhYMFNwMWJa?=
 =?utf-8?B?L0dNZjdmVjczWDBCWHcrL2dsL21KMFJ4VEs5Y1ZxN2Y5RjlURDZSdDFJK3lo?=
 =?utf-8?B?WlNLQ0RiREczeEMrcE9YVHdCeElIYUgyYmJ5a2N0cWIzZnZtSXpkNEswdWJK?=
 =?utf-8?B?eEFoY3FPYXBnRUFERkJyYktjYnN5V1BqbXBqSDFXc2tBSGV0dUVYdHM1b0dr?=
 =?utf-8?B?bVZWVVA3SUtHQnVrSVRjemIreWNTeDhQK20rL2VVMWNveGZZMm5EbzBmUlFX?=
 =?utf-8?B?UHRjVWp6Uys2NjMwYktKclMxdWt2RWtIYUZzTG1tUGVWUWh0VGNPUzBPbThW?=
 =?utf-8?B?SERTdEpUN3V3c1BDeDZLWmFQczJuNnd3R0VRd3dFQWhRd1FaVytXTlcybU9y?=
 =?utf-8?B?UGpETTV2OHNlb0QxMGpJQVRIUm8rWTNjdVRzQVcyVEVpcFl2OWl6bVFtcEFw?=
 =?utf-8?B?Qm9Pa1lKaHVnU0ZYYVBiemdEdFRsQ0VGOUhTdk9DeXRQRWh4MDJJR2RFazNK?=
 =?utf-8?B?YzdDbG1IUDhmSlB6SUJubEN5bzFHNTBFUytzRHBPQzEwSkxkQlZGL2l4Qmk2?=
 =?utf-8?B?R2lUMFlFc1lOa3p0V1kxblQwblVxc3NmTitGeG1Td2prYU03c1B3ZC9wVitT?=
 =?utf-8?B?VTJtRTlIOE9HODJVWmh5ZzFWR3lwVVpkVElmYW94Z29lZ0ptc2lVMW96NlN1?=
 =?utf-8?B?aVNhL3NmQzFvSm92QUtzb2R0a0N1dHo4aTVGSXlNSTM1V2lBUzZBWCtTZ24x?=
 =?utf-8?B?NlVzK1pVcWxmRzJNWGc0aHlnQXVWRS9zMmhZL1BxNE9HNTdYTHlZTU1QUTIv?=
 =?utf-8?B?NWVpMXU5MTUzaGVkdTREb2ZkZVkxTjZuZUU2NW9XR3NhY0tmSWxzY0VpNVAr?=
 =?utf-8?B?a2hzektwMWkxSEs5UGhwS1VSb2pmRkxUYnIxaGdhTWV5bmZDZEgxdEQvaHFC?=
 =?utf-8?B?QVpyakpveXRQUVZsNFljK3M3QjB6N1B0dE9sRUYxdTFTcm1JNU5CM2dJN0w1?=
 =?utf-8?B?NHhTajBiUlhPRFNQSkQxbXNxVVhnTytkdlhUNmhJekp0djhTSm5sSVZ2MnlY?=
 =?utf-8?B?Sk5vNDJPQW51dWltZGc0bHAyUVVwVnhpd0tob0lIR0Rtczl3M0x0VFQwYlJ3?=
 =?utf-8?B?K0ltd3NSaTI1NVZBZFRXL1pKU2FRWEFSUmhRaEtJcnlUdm1JNGlXUE1kbC9o?=
 =?utf-8?Q?k13nGerExg0UWYXeDpwl3lxdz?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 87e99477-a4ec-41d0-1404-08de2774d454
X-MS-Exchange-CrossTenant-AuthSource: PH7PR12MB5685.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Nov 2025 14:06:26.8266
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: djCzkXeBdruYECvbipxbQfad1TBt2kTeP8tDXCBMBWh46twJm+AZ76kKKSAJ4NHp
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR12MB4343
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-5.00 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[amd.com,quarantine];
	R_DKIM_ALLOW(-0.20)[amd.com:s=selector1];
	R_SPF_ALLOW(-0.20)[+ip4:52.100.0.0/15];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_POSSIBLE(0.00)[52.101.46.32:from];
	ASN(0.00)[asn:8075, ipnet:52.96.0.0/12, country:US];
	BLOCKLISTDE_FAIL(0.00)[2603:10b6:510:13c::22:server fail,52.101.46.32:query timed out];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[32];
	DWL_DNSWL_BLOCKED(0.00)[amd.com:dkim];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	DNSWL_BLOCKED(0.00)[2603:10b6:510:13c::22:received];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[amd.com:+]
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: D4CF43F786
X-Spamd-Bar: ----
Message-ID-Hash: LTEBRQNXWPRZDO5NIC4H5A66GCGMIWS2
X-Message-ID-Hash: LTEBRQNXWPRZDO5NIC4H5A66GCGMIWS2
X-MailFrom: Christian.Koenig@amd.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Leon Romanovsky <leon@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>, Logan Gunthorpe <logang@deltatee.com>, Jens Axboe <axboe@kernel.dk>, Robin Murphy <robin.murphy@arm.com>, Joerg Roedel <joro@8bytes.org>, Will Deacon <will@kernel.org>, Andrew Morton <akpm@linux-foundation.org>, Jonathan Corbet <corbet@lwn.net>, Sumit Semwal <sumit.semwal@linaro.org>, Kees Cook <kees@kernel.org>, "Gustavo A. R. Silva" <gustavoars@kernel.org>, Ankit Agrawal <ankita@nvidia.com>, Yishai Hadas <yishaih@nvidia.com>, Shameer Kolothum <skolothumtho@nvidia.com>, Kevin Tian <kevin.tian@intel.com>, Alex Williamson <alex@shazbot.org>, Krishnakant Jaju <kjaju@nvidia.com>, Matt Ochs <mochs@nvidia.com>, linux-pci@vger.kernel.org, linux-kernel@vger.kernel.org, linux-block@vger.kernel.org, iommu@lists.linux.dev, linux-mm@kvack.org, linux-doc@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, kvm@vger.kernel.org, linux-hardening@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v8 05/11] PCI/P2PDMA: Document DMABUF model
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/LTEBRQNXWPRZDO5NIC4H5A66GCGMIWS2/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gMTEvMTkvMjUgMTQ6MzUsIEphc29uIEd1bnRob3JwZSB3cm90ZToNCj4gT24gV2VkLCBOb3Yg
MTksIDIwMjUgYXQgMTA6MTg6MDhBTSArMDEwMCwgQ2hyaXN0aWFuIEvDtm5pZyB3cm90ZToNCj4+
PiArQXMgdGhpcyBpcyBub3Qgd2VsbC1kZWZpbmVkIG9yIHdlbGwtc3VwcG9ydGVkIGluIHJlYWwg
SFcgdGhlIGtlcm5lbCBkZWZhdWx0cyB0bw0KPj4+ICtibG9ja2luZyBzdWNoIHJvdXRpbmcuIFRo
ZXJlIGlzIGFuIGFsbG93IGxpc3QgdG8gYWxsb3cgZGV0ZWN0aW5nIGtub3duLWdvb2QgSFcsDQo+
Pj4gK2luIHdoaWNoIGNhc2UgUDJQIGJldHdlZW4gYW55IHR3byBQQ0llIGRldmljZXMgd2lsbCBi
ZSBwZXJtaXR0ZWQuDQo+Pg0KPj4gVGhhdCBzZWN0aW9uIHNvdW5kcyBub3QgY29ycmVjdCB0byBt
ZS4gDQo+IA0KPiBJdCBpcyBjb3JyZWN0IGluIHRoYXQgaXQgZGVzY3JpYmVzIHdoYXQgdGhlIGtl
cm5lbCBkb2VzIHJpZ2h0IG5vdy4NCj4gDQo+IFNlZSBjYWxjX21hcF90eXBlX2FuZF9kaXN0KCks
IGhvc3RfYnJpZGdlX3doaXRlbGlzdCgpLCBjcHVfc3VwcG9ydHNfcDJwZG1hKCkuDQoNCldlbGwg
SSdtIHRoZSBvbmUgd2hvIG9yaWdpbmFsbHkgc3VnZ2VzdGVkIHRoYXQgd2hpdGVsaXN0IGFuZCB0
aGUgZGVzY3JpcHRpb24gc3RpbGwgZG9lc24ndCBzb3VuZCBjb3JyZWN0IHRvIG1lLg0KDQpJIHdv
dWxkIHdyaXRlIHNvbWV0aGluZyBsaWtlICJUaGUgUENJZSBzcGVjaWZpY2F0aW9uIGRvZXNuJ3Qg
ZGVmaW5lIHRoZSBmb3J3YXJkaW5nIG9mIHRyYW5zYWN0aW9ucyBiZXR3ZWVuIGhpZXJhcmNoeSBk
b21haW5zLi4uLiINCg0KVGhlIHByZXZpb3VzIHRleHQgd2FzIGFjdHVhbGx5IG11Y2ggYmV0dGVy
IHRoYW4gdGhpcyBzdW1tYXJ5IHNpbmNlIG5vdyBpdCBsZWF2ZXMgb3V0IHRoZSBpbXBvcnRhbnQg
aW5mb3JtYXRpb24gd2hlcmUgYWxsIG9mIHRoaXMgaXMgY29tZXMgZnJvbS4NCg0KV2hhdCB0aGUg
a2VybmVsIGRvZXMgY2FuIGJlIGZpZ3VyZSBvdXQgYnkgcmVhZGluZyB0aGUgY29kZSwgYnV0IHdl
IG5lZWQgdG8gZGVzY3JpYmUgd2h5IGl0IGRvZXMgaXQuDQoNCj4gDQo+PiBUaGlzIGlzIHdlbGwg
c3VwcG9ydGVkIGluIGN1cnJlbnQgSFcsIGl0J3MganVzdCBub3QgZGVmaW5lZCBpbiBzb21lDQo+
PiBvZmZpY2lhbCBzcGVjaWZpY2F0aW9uLg0KPiANCj4gT25seSBBTUQgSFcuDQo+IA0KPiBJbnRl
bCBIVyBpcyBhIGJpdCBoaXQgYW5kIG1pc3MuDQo+IA0KPiBBUk0gU09DcyBhcmUgZnJlcXVlbnRs
eSBub3Qgc3VwcG9ydGluZyBldmVuIG9uIHNlcnZlciBDUFVzLg0KSUlSQyBBUk0gYWN0dWFsbHkg
aGFzIGEgdmFsaWRhdGlvbiBwcm9ncmFtIGZvciB0aGlzLCBidXQgSSd2ZSBmb3Jnb3R0ZW4gdGhl
IG5hbWUgb2YgaXQgYWdhaW4uDQoNClJhbmR5IHNob3VsZCBrbm93IHRoZSBuYW1lIG9mIGl0IGFu
ZCBJIHRoaW5rIG1lbnRpb25pbmcgdGhlIHN0YXR1cyBvZiB0aGUgdmVuZG9ycyBoZXJlIHdvdWxk
IGJlIGEgZ29vZCBpZGVhLg0KPj4+ICtBdCB0aGUgbG93ZXN0IGxldmVsIHRoZSBQMlAgc3Vic3lz
dGVtIG9mZmVycyBhIG5ha2VkIHN0cnVjdCBwMnBfcHJvdmlkZXIgdGhhdA0KPj4+ICtkZWxlZ2F0
ZXMgbGlmZWN5Y2xlIG1hbmFnZW1lbnQgdG8gdGhlIHByb3ZpZGluZyBkcml2ZXIuIEl0IGlzIGV4
cGVjdGVkIHRoYXQNCj4+PiArZHJpdmVycyB1c2luZyB0aGlzIG9wdGlvbiB3aWxsIHdyYXAgdGhl
aXIgTU1JTyBtZW1vcnkgaW4gRE1BQlVGIGFuZCB1c2UgRE1BQlVGDQo+Pj4gK3RvIHByb3ZpZGUg
YW4gaW52YWxpZGF0aW9uIHNodXRkb3duLg0KPj4NCj4+PiBUaGVzZSBNTUlPIHBhZ2VzIGhhdmUg
bm8gc3RydWN0IHBhZ2UsIGFuZA0KPj4NCj4+IFdlbGwgcGxlYXNlIGRyb3AgInBhZ2VzIiBoZXJl
LiBKdXN0IHNheSBNTUlPIGFkZHJlc3Nlcy4NCj4gDQo+ICJUaGVzZSBNTUlPIGFkZHJlc3NlcyBo
YXZlIG5vIHN0cnVjdCBwYWdlLCBhbmQiDQoNCisxDQoNCj4gDQo+Pj4gK0J1aWxkaW5nIG9uIHRo
aXMsIHRoZSBzdWJzeXN0ZW0gb2ZmZXJzIGEgbGF5ZXIgdG8gd3JhcCB0aGUgTU1JTyBpbiBhIFpP
TkVfREVWSUNFDQo+Pj4gK3BnbWFwIG9mIE1FTU9SWV9ERVZJQ0VfUENJX1AyUERNQSB0byBjcmVh
dGUgc3RydWN0IHBhZ2VzLiBUaGUgbGlmZWN5Y2xlIG9mDQo+Pj4gK3BnbWFwIGVuc3VyZXMgdGhh
dCB3aGVuIHRoZSBwZ21hcCBpcyBkZXN0cm95ZWQgYWxsIG90aGVyIGRyaXZlcnMgaGF2ZSBzdG9w
cGVkDQo+Pj4gK3VzaW5nIHRoZSBNTUlPLiBUaGlzIG9wdGlvbiB3b3JrcyB3aXRoIE9fRElSRUNU
IGZsb3dzLCBpbiBzb21lIGNhc2VzLCBpZiB0aGUNCj4+PiArdW5kZXJseWluZyBzdWJzeXN0ZW0g
c3VwcG9ydHMgaGFuZGxpbmcgTUVNT1JZX0RFVklDRV9QQ0lfUDJQRE1BIHRocm91Z2gNCj4+PiAr
Rk9MTF9QQ0lfUDJQRE1BLiBUaGUgdXNlIG9mIEZPTExfTE9OR1RFUk0gaXMgcHJldmVudGVkLiBB
cyB0aGlzIHJlbGllcyBvbiBwZ21hcA0KPj4+ICtpdCBhbHNvIHJlbGllcyBvbiBhcmNoaXRlY3R1
cmUgc3VwcG9ydCBhbG9uZyB3aXRoIGFsaWdubWVudCBhbmQgbWluaW11bSBzaXplDQo+Pj4gK2xp
bWl0YXRpb25zLg0KPj4NCj4+IEFjdHVhbGx5IHRoYXQgaXMgdXAgdG8gdGhlIGV4cG9ydGVyIG9m
IHRoZSBETUEtYnVmIHdoYXQgYXBwcm9hY2ggaXMgdXNlZC4NCj4gDQo+IFRoZSBhYm92ZSBpcyBu
b3QgdGFsa2luZyBhYm91dCBETUEtYnVmLCBpdCBpcyBkZXNjcmliaW5nIHRoZSBleGlzdGluZw0K
PiBpbnRlcmZhY2UgdGhhdCBpcyBhbGwgc3RydWN0IHBhZ2UgYmFzZWQuIFRoZSBkcml2ZXIgaW52
b2tpbmcgdGhlDQo+IFAyUERNQSBBUElzIGdldHMgdG8gcGljayBpZiBpdCB1c2VzIHRoZSBzdHVj
dCBwYWdlIGJhc2VkIGludGVyZmFjZQ0KPiBkZXNjcmliZWQgYWJvdmUgb3IgdGhlIGxvd2VyIGxl
dmVsIHAycCBwcm92aWRlciBpbnRlcmZhY2UgdGhpcyBzZXJpZXMNCj4gaW50cm9kdWNlcy4NCj4g
DQo+PiBGb3IgdGhlIFAyUERNQSBBUEkgaXQgc2hvdWxkIGJlIGlycmVsZXZhbnQgaWYgc3RydWN0
IHBhZ2VzIGFyZSB1c2VkIG9yIG5vdC4NCj4gDQo+IE9ubHkgZm9yIHRoZSBsb3dlc3QgbGV2ZWwg
cDJwIHByb3ZpZGVyIGJhc2VkIFAyUERNQSBBUEkgLSB0aGVyZSBpcyBhDQo+IGhpZ2hlciBsZXZl
bCBBUEkgZmFtaWx5IHdpdGhpbiBQMlBETUEncyBBUEkgdGhhdCBpcyBhbGwgYWJvdXQgY3JlYXRp
bmcNCj4gYW5kIG1hbmFnaW5nIFpPTkVfREVWSUNFIHN0cnVjdCBwYWdlcyBhbmQgYSBwZ21hcCwg
dGhlIGFib3ZlIGRlc2NyaWJlcw0KPiB0aGF0IGZhbWlseS4NCg0KSSBjb21wbGV0ZWx5IGFncmVl
IHRvIGFsbCBvZiB0aGlzLCBidXQgdGhhdCdzIG5vdCB3aGF0IEkgbWVhbnQuDQoNClRoZSBkb2N1
bWVudGF0aW9uIG1ha2VzIGl0IHNvdW5kIGxpa2UgRE1BLWJ1ZiBpcyBsaW1pdGVkIHRvIG5vdCB1
c2luZyBzdHJ1Y3QgcGFnZXMgYW5kIGRpcmVjdCBJL08sIGJ1dCB0aGF0IGlzIG5vdCB0cnVlLg0K
DQpZb3UgY2FuIGhhdmUgRE1BLWJ1ZnMgYmFja2VkIGJ5IHBhZ2VzLCBib3RoIHN5c3RlbSBtZW1v
cnkgYW5kIHpvbmUgZGV2aWNlIHBhZ2VzLg0KDQpCdXQgRE1BLWJ1ZiBjYW4gYWxzbyBoYW5kbGUg
UENJZSBNTUlPIEJBUnMgd2hpY2ggYXJlIG1pY3JvIGNvbnRyb2xsZXIgZG9vcmJlbGxzIG9yIGV2
ZW4gY2xhc3NpY2FsIEhXIHJlZ2lzdGVycy4NCg0KUmVnYXJkcywNCkNocmlzdGlhbi4NCg0KPiAN
Cj4gVGhhbmtzLA0KPiBKYXNvbg0KDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0tc2ln
QGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBsaW5hcm8t
bW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
