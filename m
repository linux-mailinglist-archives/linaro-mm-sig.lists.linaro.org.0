Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 38DD5C6A081
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 18 Nov 2025 15:38:35 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 45BC03F903
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 18 Nov 2025 14:38:34 +0000 (UTC)
Received: from BL2PR02CU003.outbound.protection.outlook.com (mail-eastusazon11011024.outbound.protection.outlook.com [52.101.52.24])
	by lists.linaro.org (Postfix) with ESMTPS id BC8B93F7E1
	for <linaro-mm-sig@lists.linaro.org>; Tue, 18 Nov 2025 14:37:57 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=amd.com header.s=selector1 header.b="M+SC/lt4";
	spf=pass (lists.linaro.org: domain of Christian.Koenig@amd.com designates 52.101.52.24 as permitted sender) smtp.mailfrom=Christian.Koenig@amd.com;
	dmarc=pass (policy=quarantine) header.from=amd.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Hc8JXXKZQn7KNj34fN2cwTpuWf2Agr+mjtScoRAM15OwLyPxEKCnU8HTCP+lKWjrYAIEWK94xdr5GKRBmkslzIorwGAbQ5gR8CPb802dJaXFZZ5eqrGOxONDkow7VA9AqPEqCjqx3CFbbIcjjEMa+Ms/ySBAOo/0blYMxvhEsrRwOLA3HqPjvP4erX7qju4vZ6oW6yTIwwNUTK/LKDSBI3wHBvzP+U7KnNLUHenWGWvm5xN3AX35ciAAVnh3qp5ivmPCjPuRcC6r/lc/CdTFoPzq7cdR6tyxkYhdm9D71iiSZ5Ol95RfxPZSUrXPpcYetoccPDqbwu3PkdA+SaF6kQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=sojIQ70amDwTTEfvkrexj0JUAUml/vTid36kXPgXSS8=;
 b=RTT7JatR8Z3xMzsZWVzpiymTD0hWKeczibedn+R7qzLlvhvgm3wWL5WVxa99FaSaCU4Z+aPMqtf1V9Aii2lo4nBeeI2j7JMOMvm+lGwEDj9c1gfsMDqxs1eTLXxaHwC8mucOdT2FjjZupKeokr27+Pczp51Dl9jZvIEQbg0eOIvdQjaOX7/TuDlVBnEvyQFD/GyQiuJNAToor3WHleJJc2FS+33RTiKYWnuMlAsBBTFuBbUi0qBSQwGfhu3KsF30y4iN2F5sQdwIcGsbA1oaj3i94I1jrQiyFtXraf0kt1KsYOtTEKyEoeUeS5sTkOzZUavOY2Axfuo32LZmHXzQVw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=sojIQ70amDwTTEfvkrexj0JUAUml/vTid36kXPgXSS8=;
 b=M+SC/lt4/dFX5FJ7ujaLuHAJ86pswPr5uAznuJ6V6jKnNCKBUt47ZUbvPROMscDwVYFdKvdUpQ4SB4DIVgTUTKJA1VCYXlWXuaELaaVn39JYKhtrfy8/JJYYocUpTmrMG1CnhME/yqBe9Mh3tZujeEF5uh29lLtFYPcLNTDv2Z0=
Received: from PH7PR12MB5685.namprd12.prod.outlook.com (2603:10b6:510:13c::22)
 by LV3PR12MB9260.namprd12.prod.outlook.com (2603:10b6:408:1b4::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9320.16; Tue, 18 Nov
 2025 14:37:54 +0000
Received: from PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::46fb:96f2:7667:7ca5]) by PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::46fb:96f2:7667:7ca5%4]) with mapi id 15.20.9320.021; Tue, 18 Nov 2025
 14:37:54 +0000
Message-ID: <3599880e-5b50-4bad-949b-0d3b1fb25f3f@amd.com>
Date: Tue, 18 Nov 2025 15:37:41 +0100
User-Agent: Mozilla Thunderbird
To: Jason Gunthorpe <jgg@ziepe.ca>, Alex Williamson <alex@shazbot.org>
References: <20251106-dmabuf-vfio-v7-0-2503bf390699@nvidia.com>
 <20251110134218.5e399b0f.alex@shazbot.org>
 <da399efa-ad5b-4bdc-964d-b6cc4a4fc55d@amd.com>
 <20251117083620.4660081a.alex@shazbot.org> <20251117171619.GB17968@ziepe.ca>
Content-Language: en-US
From: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
In-Reply-To: <20251117171619.GB17968@ziepe.ca>
X-ClientProxiedBy: BN9PR03CA0773.namprd03.prod.outlook.com
 (2603:10b6:408:13a::28) To PH7PR12MB5685.namprd12.prod.outlook.com
 (2603:10b6:510:13c::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR12MB5685:EE_|LV3PR12MB9260:EE_
X-MS-Office365-Filtering-Correlation-Id: 2bdb606f-d51d-4fa0-44e9-08de26b00ed4
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|7416014|376014;
X-Microsoft-Antispam-Message-Info: 
	=?utf-8?B?aEhZUURmZE1MMmNlSCt4bHI2aFNWZmZBbjE5a0xaUXQxcElzWVVmRUVBcm9w?=
 =?utf-8?B?UDYrYU5xaDVlN3lLUVJva2hOR0JHNFNiSnZ5Y2JHcUU2TzlyS1JuMjFnSmI1?=
 =?utf-8?B?Tkw2RWtrSjlHTjN0U1dXaUlMTm1OL1hiMGhRZjk2c1dyU1BjbVBZRmU4ZmVE?=
 =?utf-8?B?SFpZOStxN3B0Ym1MOFFtazMxRWFrU2FhcXBYcHdBOWZJMXBZMEYvczZER2dZ?=
 =?utf-8?B?eVJDbGo0MW16ejJOUzZFOWczb2RNQXV0ZVNvVmFNVkh2NGV4RjhHSnhFSnVo?=
 =?utf-8?B?aGt6cTZaSlViaUk1b2kxelc3T1VINStuSVdyREFQYUpxdHl2MEpOdi9sRFJQ?=
 =?utf-8?B?OEQ2MW9QWW1DTzFJTDcyNlRHVGRSb3huZmJSckZCK3JxQ0xXOTV6bitPS25x?=
 =?utf-8?B?Ky96RW5ZWXRMc1N5L1JXRVpzb3RxbG5iN3p5aHNQWFF2c1M4QUNadE5PMkRJ?=
 =?utf-8?B?ZVV1MjJvdnpJUU93VnFmYmVidWN2cHM1Nkxqck16a3JGMi9wZFMyVFBqZVAz?=
 =?utf-8?B?ZzJ2SVd2TFdVQW0zSG53UGZEcGNHUzNnTlNWUVVQeWFMbnZtQkNOOEV3VnV3?=
 =?utf-8?B?c3lVUmxEczhkQmNVNjZCMW1ib1pTS1Q2L0pWTGhYWms3MUVnZzR4SnkrOWlX?=
 =?utf-8?B?Q0x5aHRTVGd2QVlWWEpHQi9mVEZVZStQTEdCdVpybDVLZWVKUFcycFBxN3FS?=
 =?utf-8?B?bGpMNUViVGU1czgrWjNVSzZZTTNpeDFPb2tzMytXNEpiOGFFdW5FM3lOVkIx?=
 =?utf-8?B?M0xXL2tSUUVlTlhUOHFvUHVRQUJ5cmc4bVBpNnhGR2hESEhZc1ZnTmQ2cGdI?=
 =?utf-8?B?UFA2a1U1NUVSVHpDOGVrSE1sMTkyMVpPK0VSRkNkQzFvLzBpSFZCUm0vVVNa?=
 =?utf-8?B?cVFDbGpIOHlQUERLWmRnVSt2clROMDB2V05kaHdCaFZUa1FhMDdoL3d0NzYr?=
 =?utf-8?B?L296SXQrdVN5WmREWC9XRjNEN1gwLzEvVFlpcTFXYkxlVVpVVXM2K05MdWZy?=
 =?utf-8?B?a0RidmZOSG5QMjVPWlRqQ2dHOXZQVlFyMXBKR1U3WXJlZmh1OU01Z0FMSTdh?=
 =?utf-8?B?WDVNME5PQVZWSFBXYkUvclBQUkxqYW82NnJlR0lXZUdqV1R2T0drWXE4QXJu?=
 =?utf-8?B?MUdleHNPWCt2NVl3aWdDM0FnNC9rb1pUOFUzV1VFKzJQZjBaWlVFSXA3dHVK?=
 =?utf-8?B?WnNIWFBmNXRpdWt6Z2s4Zk96RWh5VysyaHFUTUFKL3oxNmVFdGNQRERQeU15?=
 =?utf-8?B?UVJ6UzZZeTgyWFM4cXNqZWVLSldwNm9nbzdxR3U4WWV2WDQ0S0ZpZXFkMlFo?=
 =?utf-8?B?Zm5JbmdEL1d0SFdjUHkraUlpYnNNUmdzbDBHb1pQTEMvNEZITEpKNEVVbm51?=
 =?utf-8?B?bWlVYVAyVjhBM1RFRjNoeElyWGpJai9GNUpZRUUvdHNpeWI1TmJaNmJVRnc2?=
 =?utf-8?B?VnJGbFpYWDkyRU5jQ3c2cC9PYWlISXErbS9JeWpzT3YzempJblV6R2pZT0cz?=
 =?utf-8?B?QlBJN3dZMzB4R1kyWWVQV05NNUNVVDN2ZnlVNFNzSkpBeU5hc2ROYngrVWVz?=
 =?utf-8?B?WTNZRTRWNkQzR2U5UVJiNWNVZk1ZK28zQWt4MHNLT1hyMEVuek8vdU02WTB0?=
 =?utf-8?B?YmVEMmFGbm9nRkVLMVJ5dDBrT2ZobFFiNStiUTVGUjNwZ0psQ2VqUzk5eUwr?=
 =?utf-8?B?VFZTbDkxSUJ6SzNxUnMvZ3lzQm5JVG14dnQwZFpRcG9qeHo3RllyU3NqVlhl?=
 =?utf-8?B?NmpUNW13bEd5ZXgzZzRxWFF1N05mMnhVZlNqKzRWUkFHenV6M3QyTVRvUGty?=
 =?utf-8?B?Zm9qSkF3K29PL3NOaWFqVDFBYmUxVGYyRk5RYmcwc1VUQWx4aWRZSXdaa2dw?=
 =?utf-8?B?N2ZwbCtORk94bG40V3ZZV09DOGZhcSs2L0t6UWh2RW5KVGxsTEtWM0ErNDVS?=
 =?utf-8?Q?BUD9FRzKc8dcVQIUYlMaHtmYMPLBC/4B?=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH7PR12MB5685.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(1800799024)(7416014)(376014);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?ZGcxK01Iem94RjZtZGJjb0tXSzV6T3VkbHowT2NXdVM0WjlESEs4OFB6K0t4?=
 =?utf-8?B?aHdKQWRTb3gzS1dnQWQ1M1UxTHN5Sjlpb0R3aUt2WVhDSGZjQytJa0xVNG4r?=
 =?utf-8?B?SlhSTUFhSlIra2NmTlBRWHJxckQvVk1sS2k1eFFHbEFuZTFVUWdIUVMvZUFZ?=
 =?utf-8?B?WUYyemJnMWNta1lZRnVLVDhxbzZ0R3VLY3VwVFVVWEovZ1FDZkJmc2x0eWxu?=
 =?utf-8?B?YVJ5dGtxVWJPWEpGUi9LVmdQUDRmdFRZZjVGOFFaeDkvdjN5R2hDY2hBU3dR?=
 =?utf-8?B?dUdMb24wWldmRU9rTS9MRS9KSTFRR2I1cElHTjJYUnQ0U1V6dVIwcHptb3BV?=
 =?utf-8?B?djh0anFMVTFsWm9yYUxvVmZ1TUE0QnBrTG8vZVhHWjRQNGZBUDlYMW9hUkFs?=
 =?utf-8?B?eU1wV2pGNTY5Y3BmeFpYV1V0TTF3SENTa3BRNEdNdTdaM3hJRU1kc3Awc2ph?=
 =?utf-8?B?UHdMOFZXa2dlTW9ZOVNwVUljNnpSQjBkTExGWTNhWVE4L3ZUOGxIeUlHSGJ4?=
 =?utf-8?B?dTRDOCtucHRmMUdGVDZxS3h3ZTJxS01QRldjLzZqUkR3VldRbmtncjA4ZE1Q?=
 =?utf-8?B?dXlxVmZHemw5YnlDa2M2TDRLRGprTUZ4T0s5eDlSRnBkK3lCYjFzVCt5OEZu?=
 =?utf-8?B?U2hKaXQ4THBxeTFYZnBvOUNGN1pJY1p3N0VURnU0ZDlWNkR2a1dSME0wTUlq?=
 =?utf-8?B?RUMzK01NUVJLOGVQaDlmMWVFVkdrZ2lkTFVZNE1PaWtJUXBoRXFtd0NwVUlt?=
 =?utf-8?B?bmNLeFlQT1YzWnlqM0Jzcnk0YXV2NXVpcXpZMlQvV01Lb3ZadngwTGdHY2x0?=
 =?utf-8?B?cGpZWlVKalA0R0dnNXdnMXhybFY4YUU3clkycGxoTlNaRm1vVGd0QTB2TGN1?=
 =?utf-8?B?OVd2UXQ2OFN0TkpzY3NhYXREQnozNlQvZmJvTmliNXpZbGdQTVB1elVCU2RO?=
 =?utf-8?B?UmJ1Wk16V2trMzJxUHZHZ0VOaUt3S2JFYkp1dk1pQXgvb1ZmL0h2R3FvVUlO?=
 =?utf-8?B?OEJyUnB4N0VlbXpMV3RvenlxOC8yYUd1NWgvV3B4M3QxRFovZ3hlMkZ5UHl5?=
 =?utf-8?B?YWZOaDdKejRZeDhHU2VYKzBncDBIQWUxYmZ6VTZjNFUxZE14c05vRXU3UWJ4?=
 =?utf-8?B?cHgyTGZLa2dhTE9vbm9hOWE4QTFYeGRnVnZNb2U2TkVjRGxKVWhJNGRiakEx?=
 =?utf-8?B?YVJ5SHlDQzJKYTN5SHNNZnBlQzJIV2M0UnI2QXN2aTlqSDc1NitwM3ZsTlVK?=
 =?utf-8?B?dDQwckkrbU9naTNMRXRYQlNXamZjWWtBSDZwMUZxbFI1cVQzZlNBQjlkczlu?=
 =?utf-8?B?Zm53N0prYW1WQURoemx3bXNsYTNzYllGVnNNNVVmcmMvU2F3YnpQQnhJOEcr?=
 =?utf-8?B?K3FnLzZ2YmkwOU54ekpVR2hKY3UwTjN6bnY0WVJwc1VCWVExUWJISW56WE1Y?=
 =?utf-8?B?YitzYTI2eGpVUDdtZUhhcFFHbGxid0pycVVoNzhiVlB2a3p4ZHl0MXJ4SjhW?=
 =?utf-8?B?ZkJrZ1FCbFovSlI2U2dLNEE2M1BGUFFnVGlCUUdraG1kWFVkN0xIY2RySlRs?=
 =?utf-8?B?Uis3VFphWnNleVlINXBhQ2JNRWdibjlWemRBZTFQZzd6VzlQU2V1aHorNEFp?=
 =?utf-8?B?N3cvVGJyWHRZU3pYd09udjRuaXNjZ05ZdUhyT2xTVTk1aWJNNTdqZEQ5UUtI?=
 =?utf-8?B?RXloSW8vNWZvOHkrNGpNVWFGYzFvY0RHWlhXV1J5QkR6YUNobkZhWWo5aEEy?=
 =?utf-8?B?QXpvOTFnVnUzYlphdFlFbzk4Vnp6RzNWQit2aXo3SkZaZzdHNjVPYnYvYVpu?=
 =?utf-8?B?LzliTGJ6WEtTNnVxeTNQdEo3K2ZCSmQ0ZHk2bG9Zbk1zK1RGVVppOW14VUJU?=
 =?utf-8?B?K0FMQkhFbGFINzR0ODlLL0xZZWcza1pvTzBod1VvZ3N2eWE4dklWUytIU2h6?=
 =?utf-8?B?L1BKWDA4Yml4OWVON0NlWDQ4NzZyVng2eG5iMTdwS2psRUlXc1hLTjdqQU9u?=
 =?utf-8?B?VWZ0UVNTeGVqVER6dHVTUWY5Qm5yekUveW9nWWZHV0l2SnVydlowd3lwcnAz?=
 =?utf-8?B?RThmRkFDWUp2YjQzcFNnMFlPT2J0bHptT25pYi9nQm56TG4rVDBhd053T29H?=
 =?utf-8?Q?CZjzXlJnOmX+CsVpIuR3DgEig?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2bdb606f-d51d-4fa0-44e9-08de26b00ed4
X-MS-Exchange-CrossTenant-AuthSource: PH7PR12MB5685.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Nov 2025 14:37:54.4101
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: lp3cxAYHodvzb7TqTXezTcR1s8lUWsc48CP5TpXXGWths1tQECeAz/fAW5OjNHU4
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV3PR12MB9260
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-5.00 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[amd.com,quarantine];
	R_DKIM_ALLOW(-0.20)[amd.com:s=selector1];
	R_SPF_ALLOW(-0.20)[+ip4:52.100.0.0/15];
	MIME_GOOD(-0.10)[text/plain];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:8075, ipnet:52.96.0.0/12, country:US];
	RCPT_COUNT_TWELVE(0.00)[35];
	RWL_MAILSPIKE_POSSIBLE(0.00)[52.101.52.24:from];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	URIBL_BLOCKED(0.00)[BL2PR02CU003.outbound.protection.outlook.com:helo,mail-eastusazon11011024.outbound.protection.outlook.com:rdns];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	RCVD_TLS_LAST(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	DKIM_TRACE(0.00)[amd.com:+]
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: BC8B93F7E1
X-Spamd-Bar: ----
Message-ID-Hash: 2YWA7JW2SJ32YPS5YLU2ROYKH7LH2AC3
X-Message-ID-Hash: 2YWA7JW2SJ32YPS5YLU2ROYKH7LH2AC3
X-MailFrom: Christian.Koenig@amd.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Leon Romanovsky <leon@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>, Logan Gunthorpe <logang@deltatee.com>, Jens Axboe <axboe@kernel.dk>, Robin Murphy <robin.murphy@arm.com>, Joerg Roedel <joro@8bytes.org>, Will Deacon <will@kernel.org>, Andrew Morton <akpm@linux-foundation.org>, Jonathan Corbet <corbet@lwn.net>, Sumit Semwal <sumit.semwal@linaro.org>, Kees Cook <kees@kernel.org>, "Gustavo A. R. Silva" <gustavoars@kernel.org>, Ankit Agrawal <ankita@nvidia.com>, Yishai Hadas <yishaih@nvidia.com>, Shameer Kolothum <skolothumtho@nvidia.com>, Kevin Tian <kevin.tian@intel.com>, Krishnakant Jaju <kjaju@nvidia.com>, Matt Ochs <mochs@nvidia.com>, linux-pci@vger.kernel.org, linux-kernel@vger.kernel.org, linux-block@vger.kernel.org, iommu@lists.linux.dev, linux-mm@kvack.org, linux-doc@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, kvm@vger.kernel.org, linux-hardening@vger.kernel.org, Alex Mastro <amastro@fb.com>, Nicolin Ch
 en <nicolinc@nvidia.com>, Vivek Kasireddy <vivek.kasireddy@intel.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v7 00/11] vfio/pci: Allow MMIO regions to be exported through dma-buf
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/2YWA7JW2SJ32YPS5YLU2ROYKH7LH2AC3/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gMTEvMTcvMjUgMTg6MTYsIEphc29uIEd1bnRob3JwZSB3cm90ZToNCj4gT24gTW9uLCBOb3Yg
MTcsIDIwMjUgYXQgMDg6MzY6MjBBTSAtMDcwMCwgQWxleCBXaWxsaWFtc29uIHdyb3RlOg0KPj4g
T24gVHVlLCAxMSBOb3YgMjAyNSAwOTo1NDoyMiArMDEwMA0KPj4gQ2hyaXN0aWFuIEvDtm5pZyA8
Y2hyaXN0aWFuLmtvZW5pZ0BhbWQuY29tPiB3cm90ZToNCj4+DQo+Pj4gT24gMTEvMTAvMjUgMjE6
NDIsIEFsZXggV2lsbGlhbXNvbiB3cm90ZToNCj4+Pj4gT24gVGh1LCAgNiBOb3YgMjAyNSAxNjox
Njo0NSArMDIwMA0KPj4+PiBMZW9uIFJvbWFub3Zza3kgPGxlb25Aa2VybmVsLm9yZz4gd3JvdGU6
DQo+Pj4+ICAgDQo+Pj4+PiBDaGFuZ2Vsb2c6DQo+Pj4+PiB2NzoNCj4+Pj4+ICAqIERyb3BwZWQg
cmVzdG9yZV9yZXZva2UgZmxhZyBhbmQgYWRkZWQgdmZpb19wY2lfZG1hX2J1Zl9tb3ZlDQo+Pj4+
PiAgICB0byByZXZlcnNlIGxvb3AuDQo+Pj4+PiAgKiBGaXhlZCBzcGVsbGluZyBlcnJvcnMgaW4g
ZG9jdW1lbnRhdGlvbiBwYXRjaC4NCj4+Pj4+ICAqIFJlYmFzZWQgb24gdG9wIG9mIHY2LjE4LXJj
My4NCj4+Pj4+ICAqIEFkZGVkIGluY2x1ZGUgdG8gc3RkZGVmLmggdG8gdmZpby5oLCB0byBrZWVw
IHVhcGkgaGVhZGVyIGZpbGUgaW5kZXBlbmRlbnQuICANCj4+Pj4NCj4+Pj4gSSB0aGluayB3ZSdy
ZSB3aW5kaW5nIGRvd24gb24gcmV2aWV3IGNvbW1lbnRzLiAgSXQnZCBiZSBncmVhdCB0byBnZXQN
Cj4+Pj4gcDJwZG1hIGFuZCBkbWEtYnVmIGFja3Mgb24gdGhpcyBzZXJpZXMuICBPdGhlcndpc2Ug
aXQncyBiZWVuIHBvc3RlZA0KPj4+PiBlbm91Z2ggdGhhdCB3ZSdsbCBhc3N1bWUgbm8gb2JqZWN0
aW9ucy4gIFRoYW5rcywgIA0KPj4+DQo+Pj4gQWxyZWFkeSBoYXZlIGl0IG9uIG15IFRPRE8gbGlz
dCB0byB0YWtlIGEgY2xvc2VyIGxvb2ssIGJ1dCBubyBpZGVhIHdoZW4gdGhhdCB3aWxsIGJlLg0K
Pj4+DQo+Pj4gVGhpcyBwYXRjaCBzZXQgaXMgb24gcGxhY2UgNCBvciA1IG9uIGEgcmF0aGVyIGxv
bmcgbGlzdCBvZiBzdHVmZiB0byByZXZpZXcvZmluaXNoLg0KPj4NCj4+IEhpIENocmlzdGlhbiwN
Cj4+DQo+PiBHZW50bGUgbnVkZ2UuICBMZW9uIHBvc3RlZCB2OFsxXSBsYXN0IHdlZWssIHdoaWNo
IGlzIG5vdCBkcmF3aW5nIGFueQ0KPj4gbmV3IGNvbW1lbnRzLiAgRG8geW91IGZvcmVzZWUgaGF2
aW5nIHRpbWUgZm9yIHJldmlldyB0aGF0IEkgc2hvdWxkDQo+PiBzdGlsbCBob2xkIG9mZiBtZXJn
aW5nIGZvciB2Ni4xOSBhIGJpdCBsb25nZXI/ICBUaGFua3MsDQo+IA0KPiBJIHJlYWxseSB3YW50
IHRoaXMgbWVyZ2VkIHRoaXMgY3ljbGUsIGFsb25nIHdpdGggdGhlIGlvbW11ZmQgcGFydCwNCj4g
d2hpY2ggbWVhbnMgaXQgbmVlZHMgdG8gZ28gaW50byB5b3VyIHRyZWUgYnkgdmVyeSBlYXJseSBu
ZXh0IHdlZWsgb24gYQ0KPiBzaGFyZWQgYnJhbmNoIHNvIEkgY2FuIGRvIHRoZSBpb21tdWZkIHBh
cnQgb24gdG9wLg0KPiANCj4gSXQgaXMgdGhlIGxhc3QgYmxvY2tpbmcga2VybmVsIHBpZWNlIHRv
IGNvbmNsdWRlIHRoZSB2aW9tbXUgc3VwcG9ydA0KPiByb2xsIG91dCBpbnRvIHFlbXUgZm9yIGlv
bW11ZmQgd2hpY2ggcXVpdGUgYSBsb3Qgb2YgcGVvcGxlIGhhdmUgYmVlbg0KPiB3b3JraW5nIG9u
IGZvciB5ZWFycyBub3cuDQo+IA0KPiBJTUhPIHRoZXJlIGlzIG5vdGhpbmcgcHJvZm91bmQgaW4g
dGhlIGRtYWJ1ZiBwYXRjaCwgaXQgd2FzIHdyaXR0ZW4gYnkNCj4gdGhlIGV4cGVydCBpbiB0aGUg
bmV3IERNQSBBUEkgb3BlcmF0aW9uLCBhbmQgZG9lc24ndCBmb3JtIGFueQ0KPiB0cm91Ymxlc29t
ZSBBUEkgY29udHJhY3RzLiBJdCBpcyBhbHNvIHRoZSBzYW1lIGJhc2ljIGNvZGUgYXMgZnJvbSB0
aGUNCj4gdjEgaW4gSnVseSBqdXN0IG1vdmVkIGludG8gZG1hYnVmIC5jIGZpbGVzIGluc3RlYWQg
b2YgdmZpbyAuYyBmaWxlcyBhdA0KPiBDaHJpc3RvcGgncyByZXF1ZXN0Lg0KDQpBcyBsb25nIGFz
IGl0IGlzIG9ubHkgYW4gaW50ZXJuYWwgQVBJIGJldHdlZW4gaW9tbXUgYW5kIHZmaW8gd2hpY2gg
YWxzbyByZXNwZWN0cyB0aGUgc3RhbmRhcmQgRE1BLWJ1ZiBzZW1hbnRpY3MgdG8gZWl0aGVyIHBp
biBidWZmZXJzIG9yIHByb3ZpZGUgYSBtb3ZlX25vdGlmeSBpbnRlcmZhY2UgdGhlbiBmZWVsIGZy
ZWUgdG8gZ28gYWhlYWQgd2l0aCBpdC4NCg0KU2tpbW1pbmcgb3ZlciBpdCBteSBvbmx5IGNvbmNl
cm4gaXMgcGF0Y2ggIzYgd2hpY2ggYWRkcyB0aGUgaGVscGVyIHRvIHRoZSBjb21tb24gRE1BLWJ1
ZiBjb2RlIGFuZCB0aGF0IGluIHR1cm4gd291bGQgbmVlZCBhbiBpbi1kZWVwIHJldmlldyB3aGlj
aCBJIGN1cnJlbnRseSBkb24ndCBoYXZlIHRpbWUgZm9yLg0KDQpTbyBpZiB3ZSBjb3VsZCBrZWVw
IHRob3NlIGluc2lkZSB0aGUgVkZJTyBkcml2ZXIgZm9yIG5vdyBJIHRoaW5rIHRoYXQgc2hvdWxk
IGJlIGdvb2QgdG8gZ28uDQoNClJlZ2FyZHMsDQpDaHJpc3RpYW4uDQoNCg0KPiBNeSBob3BlIGlz
IERSTSBmb2xrcyB3aWxsIHBpY2sgdXAgdGhlIGJhdG9uIGFuZCBjb250aW51ZSB0byBpbXByb3Zl
DQo+IHRoaXMgdG8gbW92ZSBvdGhlciBkcml2ZXJzIGF3YXkgZnJvbSBkbWFfbWFwX3Jlc291cmNl
KCkuIFNpbW9uYSB0b2xkDQo+IG1lIHBlb3BsZSBoYXZlIHdhbnRlZCBETUEgQVBJIGltcHJvdmVt
ZW50cyBmb3IgYWdlcywgbm93IHdlIGhhdmUgdGhlbSwNCj4gbm93IGlzIHRoZSB0aW1lIQ0KPiAN
Cj4gQW55IHJlbWFya3MgYWZ0ZXIgdGhlIGZhY3QgY2FuIGJlIGFkZHJlc3NlZCBpbmNyZW1lbnRh
bGx5Lg0KPiANCj4gSWYgdGhlcmUgYXJlIG5vIGNvbmNyZXRlIHRlY2huaWNhbCByZW1hcmtzIHBs
ZWFzZSB0YWtlIGl0LiA2IG1vbnRocyBpcw0KPiBsb25nIGVub3VnaCB0byB3YWl0IGZvciBmZWVk
YmFjay4NCj4gDQo+IFRoYW5rcywNCj4gSmFzb24NCg0KX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0gbGlu
YXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwg
dG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==
