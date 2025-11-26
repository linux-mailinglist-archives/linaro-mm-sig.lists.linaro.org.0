Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id D4B3DC8A839
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 26 Nov 2025 16:04:09 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id EC6F53F8F3
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 26 Nov 2025 15:04:08 +0000 (UTC)
Received: from CH1PR05CU001.outbound.protection.outlook.com (mail-northcentralusazon11010050.outbound.protection.outlook.com [52.101.193.50])
	by lists.linaro.org (Postfix) with ESMTPS id BE96B3F7A5
	for <linaro-mm-sig@lists.linaro.org>; Wed, 26 Nov 2025 15:03:52 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=amd.com header.s=selector1 header.b=gQdUk9ze;
	spf=pass (lists.linaro.org: domain of Christian.Koenig@amd.com designates 52.101.193.50 as permitted sender) smtp.mailfrom=Christian.Koenig@amd.com;
	dmarc=pass (policy=quarantine) header.from=amd.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=iogJlRd/N5TneAI4zgdcniZ7Rxs0Axg0y5p7ShYHelnP9Vi10nziBusTRYIw06JfBLQyFjYb7Aj87OPBjtyEDmFYUe83hsDOblu3HF+MtOaiGpMxBHOhCRWK223RcQHT/9JbdJSTJ+2uP7TEzWf58fBB07iKs1ThpiCmCL+atgVsUre5JmUrGvUYiDOEqEciyPJtKGIWvlKk6gPnZHsl0pVu23A5na+kkOz0w0RcuUoWyxOVFGVg+3H7bVmX0gl/4CcAxC1GC5siagoxj/suh0SYBG81zr3ylYkw5bH1lAUEqKZ+UaUHb2NBRkZo3iZnS1Nc7Cu7gf9hoZLKs0WC0g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=crVuTHAVDtrvpD8rP5m3YT7swADBd7CM4+RwGCsvLqU=;
 b=HjY/OVpJJPAHiEA6nS5G+9pr1w3gSTLv1t5D70yMO2u8LcBw7lctSEoP0seW8jyzww5RX7s/AQSS0HtLtqsf+Iqx4pegIfHPV3pcyun3hEULLJdCdXCpzqLJIuoQKKB5obfykYvL/ejrvVQoPFMUAGoiKb+n7ozCbkxZa3PmEtQW4XG9Whl6OVa8Y7lXiX+3tUI/PFCtQqpB1xqx84g0FyQ53TxFdBdG+Dii1gxt6XKs73YGpiJ6PiUH3/3kiW49w96sE2LyhbWobqZ4QzP8PwrfsnbUiDOgnnYowXYT+3iPlQoD/bFyktcBZKSJaOXqRSp1TSrdMI39/BLsLMS1Fw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=crVuTHAVDtrvpD8rP5m3YT7swADBd7CM4+RwGCsvLqU=;
 b=gQdUk9zeV2UdRTm16f0dSq5gh+DSl3b9MbuJGUiQGsMhKy5ZR6dWzzQ9KVA2ukKbfk+KYmywVBRUjQObZFNloiY+hyXEQB+YJZnit5s1fDWgfw5lj9rqGNPIFGjloWbu8bqPHHRfFJ4+xhX/jLAxA36Wl2ZFiwQ1UmjLtXy0UB4=
Received: from PH7PR12MB5685.namprd12.prod.outlook.com (2603:10b6:510:13c::22)
 by IA0PR12MB7774.namprd12.prod.outlook.com (2603:10b6:208:430::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9366.12; Wed, 26 Nov
 2025 15:03:43 +0000
Received: from PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::46fb:96f2:7667:7ca5]) by PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::46fb:96f2:7667:7ca5%4]) with mapi id 15.20.9366.009; Wed, 26 Nov 2025
 15:03:43 +0000
Message-ID: <6151e7c5-1de2-4857-ae64-1e2fd6cb7513@amd.com>
Date: Wed, 26 Nov 2025 16:03:36 +0100
User-Agent: Mozilla Thunderbird
To: phasta@kernel.org, Lucas Stach <l.stach@pengutronix.de>,
 alexdeucher@gmail.com, simona.vetter@ffwll.ch, faith@gfxstrand.net,
 sumit.semwal@linaro.org
References: <20251120150018.27385-1-christian.koenig@amd.com>
 <20251120150018.27385-2-christian.koenig@amd.com>
 <380012b9d6f0e9ee3c2f125cfe2f37f65c1979e0.camel@mailbox.org>
 <b46913b6-fe61-48cd-a9ca-aa2fe3a12b63@amd.com>
 <1c1a14d42d0a4a25ebce26a2af0a61dc1b7813fc.camel@mailbox.org>
 <508ff709-0f05-4982-8e15-5fea3bbd12e7@amd.com>
 <c2b571a7e74f86c6cb95bebd11274447c3080df9.camel@mailbox.org>
 <52d484c5-6dfb-4e2f-9caa-a61cf1d94801@amd.com>
 <e2c006ca81081ee1afa00b1b52a035c28a267e0f.camel@pengutronix.de>
 <207d50fe-eef3-4baa-97a7-567598e56b55@amd.com>
 <54d6e863fc606d22f245e30012bb5120d5bee7ee.camel@mailbox.org>
Content-Language: en-US
From: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
In-Reply-To: <54d6e863fc606d22f245e30012bb5120d5bee7ee.camel@mailbox.org>
X-ClientProxiedBy: BN9PR03CA0984.namprd03.prod.outlook.com
 (2603:10b6:408:109::29) To PH7PR12MB5685.namprd12.prod.outlook.com
 (2603:10b6:510:13c::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR12MB5685:EE_|IA0PR12MB7774:EE_
X-MS-Office365-Filtering-Correlation-Id: dd93d1b0-95d7-4907-f1b8-08de2cfcfdb6
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: 
	=?utf-8?B?K1lDdTk3eHgyaVNqUkxSSDZjNm54SGI3T0VsZStpUkN2N2JCbTFmWnRiNWxW?=
 =?utf-8?B?dkpHN1dFVjNJYzhpTmt1Z3k5cnpuak1uRitVZURWei9BeTRTWFdYUnlod1Jj?=
 =?utf-8?B?bWc3VGVHYjNNelhKUGpsOGIyQ1U1VGovVWZpVDZoUU5ybFZLdGhIUWJXeFlo?=
 =?utf-8?B?TDZjQitteFhwRm1vbUFJVDJ2VzVZNWtOTGo2SkphUDJuenM4U3BWSjR4K25a?=
 =?utf-8?B?N1dOTDhLVGhVdFRYUVRGa2lYdlBCOVpmNytiOHZueVFiK2FXRFFZZVJVVERE?=
 =?utf-8?B?T0JKUXkxWUhmbGI3RDBtZVZSdXoydFdaQU9IbDZSVmMzQ0JMNnF5VDhqdUlX?=
 =?utf-8?B?ODl1UW1UOS84VGpkSzFpaEtDWERJVlNWamx5NkIrNFZXSUxNcGo5aEpsVEJN?=
 =?utf-8?B?UmpuaERycGJXM2lkVXVRVzgvOFAwUzZrQTZJaGE2VlhBTHMyYXBjb3lhaUJK?=
 =?utf-8?B?MFBudk5IQkpNWkZyTHhUM2tzYkJrVGI1dXM3VHRtRkVOeFdiZkk1THJDZlFP?=
 =?utf-8?B?bm5ITzRkbEthVzRUOFZ3UVpFSC9mcC9WdlhlanZiNklma00wR3JPUGsrWWtW?=
 =?utf-8?B?L3NBdUgxays1dUJmWEFKdUh2cGU0TW1JZDFJc00yMjRMdCtqNitlK0ZNenNz?=
 =?utf-8?B?S2hsZG1UL3dWVm1PbnVXdVM3dzM5bVRFclJFSTZGWjVhaEtOais0elNWRi9T?=
 =?utf-8?B?YXlxcGRWVmJVUVkvcXAvY1orRFFFcU84U1FOZnE2UzZzSWUvTjY3SFVsTVQ4?=
 =?utf-8?B?ZHQrckdsSGNJSnlFVGU5Y3BtdFhkWURLNEdaMUtjRVl6OE1MN0M4MCszVHpK?=
 =?utf-8?B?TkhhQi9PTm9aZHpRRXRHRVM4RFhMUTBiUXNTYTlJUDcrT3JxdTNvY0JJSnl0?=
 =?utf-8?B?NXlteGxVbnBKWHVseXJ0TDN1NUpTbG1JcTA4cVJjbm1TSk5FUEpHOHNXUkV6?=
 =?utf-8?B?Z284RXU1WUMwa2tLWTc5NXBOQWtFc2g0WE8xL0lhQmZwVDdwMlc1WEhDRkZQ?=
 =?utf-8?B?TFRvQzRKc1RnY0dQR0ZUOElISS9qVVhIc2Zia0lEa1B2djF2Uk5BU3o2OHlp?=
 =?utf-8?B?WU8wZjNnRktYN3Q4YlZGam5CZzN6OU5PQzFvejhvMUJqeGRlSS80bysyc3dt?=
 =?utf-8?B?ZVY0NkZFcDl2K1AyNkw2Kzhpb2R3MUhwRlNZSFFSOXl0OFBPZ0gyQXpJSFZ3?=
 =?utf-8?B?SWEvbGdyZ25Gb0MvTzhRS1lRNUNGRlZoYVNwVlZFYlJwbE5wMWE3MkVpYUE1?=
 =?utf-8?B?dmN0b0xQbDB0YW9sc1JkU0Y1clhybWEwRVRsdmhIajFTYk9Ga2pNZER5RnRM?=
 =?utf-8?B?bUlHZEdvY1FOemxnbHFqTmY0WFgrZEJMU1kyTFpJRWUvclUxSnBna3RSNjJz?=
 =?utf-8?B?OEEwZDU3NkN3eFkwb0c1ekx6SU1wR0ZYc2N6Q3lvKzlnYXFWN0FFN3BrTW1D?=
 =?utf-8?B?TjhQRWYvdU1LS3QzbHJ6dm9EOE9qOVI0TUx1ZWtvUVREaEVxS3JQdDlNRTVk?=
 =?utf-8?B?a3lwNTNXOXZPeWRFLy9JamVlWnlXZFdlYnl6NDZtUmtEZ2x2OSsybzhJZ1ZE?=
 =?utf-8?B?YVd0V3phNkp4cFE2aDhFM2xBcjJtYzQ0T05DOUpyUTg3ZmNMMHpCeDVLVE9p?=
 =?utf-8?B?OGpoWVhiOW8zemdsZUk0TWRWRFBwcnhETjFCdDJKakJrV3g2NU9OOC8ybjc4?=
 =?utf-8?B?cnI0T1hKUUNDSXBrRTlKU05PbTM2YnRoU3FKNCtkZWRISlFGejlpMnlPZDR0?=
 =?utf-8?B?SmgxTUdTbnFIMmFYQlNUM3F1SmpyeHFYc2IzZkY1bFpNQmpEU0Y3blVnWCt2?=
 =?utf-8?B?MFB0WkgzQ1pQV25TRTdOQTJncG1sdW5vNVVmaDRoUWRtbExsVnRXY2V1aSt5?=
 =?utf-8?B?K0srODBsZEFZQ0EzTngyditFNEJyTVhlSzlIV0xkRUgvTDRlaTNvMkZZYlF6?=
 =?utf-8?Q?3ZE8MyfP6KDEemiheIo8WHUHtD4P206J?=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH7PR12MB5685.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(366016)(376014);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?M1gyZlRYTWE2UzIvOWlPYmtENkFnY2JQL3FCY3JBUklKeStKenFIRVl4YWx2?=
 =?utf-8?B?WkY5NVZQWm05Q2JkSG1nbkFkUU14R0RPbGNPTzEyZVMwTDVNWkh0MHFTVUkr?=
 =?utf-8?B?SzNRaDNoN3ZDOXVaRmFMZ2dQSVptU0p1Yy9lbWNiZ3J1WnptY2NSRkhydjRq?=
 =?utf-8?B?ZFU5VGdXNEVEc0V0ZmVXd0JzNDd3cEdqL3NrSWRlNWNFUENoeWhvVndTbjBr?=
 =?utf-8?B?VE5wRVRqQ0hQRVI0YVdjQmdITm4rNnZLbEZhYTlPa3M5L3h0ejF3ZjhXbVpO?=
 =?utf-8?B?T2tnWVNrOGd6anFxM2lPMGJMaVhkTVVreWdmUk5KN29tRnhNTE1nZ1ljUDBv?=
 =?utf-8?B?aHJLZ2VJMmF4Z1pQb1NOdmpqMWpiWGc1aXZ4dWV2THZISUFKT0NUWDBTZVli?=
 =?utf-8?B?RE9tQllMajZxcXg2QkdiMFZuTDQ2MEdaMXZKWC9kN0NOcmlQNCt0NlkwR1d6?=
 =?utf-8?B?Z2R2L0dLcXJiMU82WHpxV0N2VmpxeW5MZ0Myck1IZ2RDZnBSeEdzSHJZSm1B?=
 =?utf-8?B?ZGJNQ2UwQlVBWUYyaFIzZDh2RmtLbENQYlJ6NE9HdWI3KzFsY1NBQkd6eC9k?=
 =?utf-8?B?MTRrbnZOaXpEQjNRazdHY2tzb2l1OEhxQnJMQ05Qb1huTERoQTdqYWw3TkIr?=
 =?utf-8?B?cnI3V0FvekwxRFQrUUFRc2pZeTBSYUxMblNyV1p2dDNmdEFnbEZsVmx4RDN4?=
 =?utf-8?B?OXJWUkFHTnVSbHJaOHRyOXhMWnRLekhLSC9EWHZ3YkVaUUJJMGl1VjFvMUc0?=
 =?utf-8?B?NFhZZGxnS2lJYjBPRHJDNFhha2JvRi9mL1pGb1M3blVRL3RYclZIMmdzaDlo?=
 =?utf-8?B?SE1KclhKR1UwV1YzSmV3K1lUakR6Tm1SWjlVQUhjd3ZVTGdzbnI2bU5DTTQr?=
 =?utf-8?B?Sjh3SUFkYzNnVXlOQ1lrWDhrcDM4THVjcUx5eTRnOWYvL0ZaQ2U3UTNDUE4r?=
 =?utf-8?B?eXlyZzYxZFJqVDR2RGVBM3JtRkVaUnRIK1hrdGhtU2Q1RFZ5ZmU5WmI4R0pW?=
 =?utf-8?B?YjRLaHFxYW9jWWtJcFgxVU1QSlJwWWVCb1RHMnN1Q3l1dVl6NUZGTFVaTHVn?=
 =?utf-8?B?RFM2b0VpNld1ZE9pRWYzaU92QmQrMFVSNmVYSVQ2TVZZaE82YXRVd3hhcGZr?=
 =?utf-8?B?ajE4c2JBaE1UTVE3ZnZTVlR0RTIyQlhjb25mUy8vRUgwTEcxalJ2bllCZzJL?=
 =?utf-8?B?dGFzRVZnUXVhUktRMDR6MmZDbXBvSmErcGRYcExKR0drOXRHcnpTTTdLQThO?=
 =?utf-8?B?RlhkbDVpUEIwQkRURStlYWZSMXZmSWRScVMvSmpaVUdmQ1FxTVdsQmZjbmxw?=
 =?utf-8?B?MXBaMHMrc29qcE5YSzZXOXdCcHVaYXB3elFaclhhc1lHSlZkeVBQYk41NURt?=
 =?utf-8?B?aHRrUU5LM2t0RFFXNnViM1AxMXRPZEVtSW9YL2VublBQZ1FFUkpzMW1vb3or?=
 =?utf-8?B?bWlSWUV5RzgrUFNDK05lRkJ3YUVTcXhHRjRNTFdsM1BWM25aVGZzaHlLUUxo?=
 =?utf-8?B?aEh0dUliWGJYRjkzQ3gzbUJMNzA5TTNHWG5tMU9sY2hpN3hjVEFJNy9ydU03?=
 =?utf-8?B?M1pJVFdVc201V1ZZRmlwWlhYNm5IVTB5Y28xRkVNRkxyRlJVcE01RFhvbVpB?=
 =?utf-8?B?eXlBN1FVcUNTUWEyYURHdDZQd2FRZ2YyNVY1Z0cwSW1YMGNDb0J2RGNkMGhJ?=
 =?utf-8?B?MjRuYXFOcnZKYkhlYSs4c3Q0NkdENU1lV1I4YS80SXJpcFNwSC9QcHNpdTBk?=
 =?utf-8?B?dnJNQ1I1WFB0YUZ1RlREc0hUMjBtbFVOOHdHQytPcWpTQ3gwTVdHSnd3dXZy?=
 =?utf-8?B?aDkwYzh1ZmtWL04reHJiTHJOYXp5SjhzSkNWbUNYcGVzQ1loRWo4c0ZMTmpE?=
 =?utf-8?B?YjRDSnJQclhvV3J3NVZEakZYNTBFWGRGaGFWSzNxRUZHWEdNdjIza0NQSE9Z?=
 =?utf-8?B?U0Y1d2FwdGpTd2NJVTJ0cE80T1hNUGtpWW8wRW5TcUljb0ZZcy9JbWUwcGNO?=
 =?utf-8?B?bmtsaTMvaW9YajFxVG1Wd3BOM05Ld1h1YmpiaW1JNEtNeXJCaXp1cUFNUU5X?=
 =?utf-8?B?QlU3akpNTFJrYStLaEEwUm9zZHEzTUxJS1ZLeWNxN3Y5ZGxiL2U5VW54VGVh?=
 =?utf-8?Q?/Yds=3D?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: dd93d1b0-95d7-4907-f1b8-08de2cfcfdb6
X-MS-Exchange-CrossTenant-AuthSource: PH7PR12MB5685.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Nov 2025 15:03:43.5105
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: tZmJ0PcceeHJlKx5uFG1l3Z0HevaFQJ3qppaVCuFPdJRV8QyhRXPQaSvM+5R5tWh
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA0PR12MB7774
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-4.99 / 15.00];
	BAYES_HAM(-2.99)[99.94%];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[amd.com,quarantine];
	R_DKIM_ALLOW(-0.20)[amd.com:s=selector1];
	R_SPF_ALLOW(-0.20)[+ip4:52.100.0.0/15];
	MIME_GOOD(-0.10)[text/plain];
	FREEMAIL_TO(0.00)[kernel.org,pengutronix.de,gmail.com,ffwll.ch,gfxstrand.net,linaro.org];
	RWL_MAILSPIKE_POSSIBLE(0.00)[52.101.193.50:from];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_SEVEN(0.00)[8];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	URIBL_BLOCKED(0.00)[CH1PR05CU001.outbound.protection.outlook.com:helo,mail-northcentralusazon11010050.outbound.protection.outlook.com:rdns];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	RCVD_TLS_LAST(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	DKIM_TRACE(0.00)[amd.com:+]
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: BE96B3F7A5
X-Spamd-Bar: ----
Message-ID-Hash: QGO6NGAFMBO7VKDN65EOUN3YAQQKHPHO
X-Message-ID-Hash: QGO6NGAFMBO7VKDN65EOUN3YAQQKHPHO
X-MailFrom: Christian.Koenig@amd.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: linaro-mm-sig@lists.linaro.org, dri-devel@lists.freedesktop.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 1/4] dma-buf/fence: give some reasonable maximum signaling timeout
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/QGO6NGAFMBO7VKDN65EOUN3YAQQKHPHO/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

DQoNCk9uIDExLzI2LzI1IDEzOjM3LCBQaGlsaXBwIFN0YW5uZXIgd3JvdGU6DQo+IE9uIFdlZCwg
MjAyNS0xMS0yNiBhdCAxMzozMSArMDEwMCwgQ2hyaXN0aWFuIEvDtm5pZyB3cm90ZToNCj4+IE9u
IDExLzI1LzI1IDE4OjAyLCBMdWNhcyBTdGFjaCB3cm90ZToNCj4+Pj4+IEkgYWdyZWUgdGhhdCBk
aXN0aW5ndWlzaGluZyB0aGUgdXNlIGNhc2UgdGhhdCB3YXkgaXMgbm90IGlkZWFsLg0KPj4+Pj4g
SG93ZXZlciwgd2hvIGhhcyB0aGUga25vd2xlZGdlIG9mIGhvdyB0aGUgaGFyZHdhcmUgaXMgYmVp
bmcgdXNlZCBieQ0KPj4+Pj4gY3VzdG9tZXJzIC8gdXNlcnMsIGlmIG5vdCB0aGUgZHJpdmVyPw0K
Pj4+Pg0KPj4+PiBXZWxsIHRoZSBlbmQgdXNlci4NCj4+Pj4NCj4+Pj4gTWF5YmUgd2Ugc2hvdWxk
IG1vdmUgdGhlIHdob2xlIHRpbWVvdXQgdG9waWMgaW50byB0aGUgRFJNIGxheWVyIG9yIHRoZSBz
Y2hlZHVsZXIgY29tcG9uZW50Lg0KPj4+Pg0KPj4+PiBTb21ldGhpbmcgbGlrZSAyIHNlY29uZHMg
ZGVmYXVsdCAod2hpY2ggQlRXIGlzIHRoZSBkZWZhdWx0IG9uIFdpbmRvd3MgYXMgd2VsbCksIHdo
aWNoIGNhbiBiZSBvdmVycmlkZGVuIG9uIGEgZ2xvYmFsLCBwZXIgZGV2aWNlLCBwZXIgcXVldWUg
bmFtZSBiYXNpcy4NCj4+Pj4NCj4+Pj4gQW5kIDEwIHNlY29uZHMgbWF4aW11bSB3aXRoIG9ubHkg
YSB3YXJuaW5nIHRoYXQgYSBub3QgZGVmYXVsdCB0aW1lb3V0IGlzIHVzZWQgYW5kIGV2ZXJ5dGhp
bmcgYWJvdmUgMTAgc2Vjb25kcyB0YWludHMgdGhlIGtlcm5lbCBhbmQgc2hvdWxkIHJlYWxseSBv
bmx5IGJlIHVzZWQgZm9yIHRlc3RpbmcvZGVidWdnaW5nLg0KPj4+DQo+Pj4gVGhlIHF1ZXN0aW9u
IHJlYWxseSBpcyB3aGF0IHlvdSB3YW50IHRvIGRvIGFmdGVyIHlvdSBoaXQgdGhlIChsb3dlcmVk
KQ0KPj4+IHRpbWVvdXQ/IFVzZXJzIGdldCBncnVtcHkgaWYgeW91IGJsb2NrIHRoaW5ncyBmb3Ig
MTAgc2Vjb25kcywgYnV0IHRoZXkNCj4+PiBnZXQgZXF1YWxseSBpZiBub3QgbW9yZSBncnVtcHkg
d2hlbiB5b3Uga2ljayBvdXQgYSB2YWxpZCB3b3JrbG9hZCB0aGF0DQo+Pj4ganVzdCBoYXBwZW5z
IHRvIG5lZWQgYSBsb3Qgb2YgR1BVIHRpbWUuDQo+Pg0KPj4gWWVhaCwgZXhhY3RseSB0aGF0IHN1
bW1hcml6ZXMgdGhlIHByb2JsZW0gcHJldHR5IHdlbGwuDQo+Pg0KPj4+IEZlbmNlcyBhcmUgb25s
eSBkZWZpbmVkIHRvIHNpZ25hbCBldmVudHVhbGx5LCB3aXRoIG5vIHJlYWwgY29uY2VwdCBvZiBh
DQo+Pj4gdGltZW91dC4gSU1PIGFsbCB0aW1lb3V0cyB3YWl0aW5nIGZvciBmZW5jZXMgc2hvdWxk
IGJlIGxvbmcgZW5vdWdoIHRvDQo+Pj4gb25seSBiZSBjb25zaWRlcmVkIGxhc3QgcmVzb3J0LiBZ
b3UgbWF5IHdhbnQgdG8gZ2l2ZSB0aGUgdXNlciBzb21lDQo+Pj4gaW5kaWNhdGlvbiBvZiBhIGZh
aWxlZCBmZW5jZSB3YWl0IGluc3RlYWQgb2Ygc3RhbGxpbmcgaW5kZWZpbml0ZWx5LCBidXQNCj4+
PiB5b3UgcmVhbGx5IG9ubHkgd2FudCB0byBkbyB0aGlzIGFmdGVyIGEgcXVpdGUgbG9uZyB0aW1l
b3V0LCBub3QgaW4gYQ0KPj4+IHNlbnNlIG9mICJTb3JyeSwgSSByYW4gb3V0IG9mIHBhdGllbmNl
IGFmdGVyIDIgc2Vjb25kcyIuDQo+Pj4NCj4+PiBTdXJlIG1lbW9yeSBtYW5hZ2VtZW50IGRlcGVu
ZHMgb24gZmVuY2VzIG1ha2luZyBmb3J3YXJkIHByb2dyZXNzLCBidXQNCj4+PiBtbSBhbHNvIGRl
cGVuZHMgb24gc2NoZWR1bGVkIHdyaXRlYmFjayBtYWtpbmcgZm9yd2FyZCBwcm9ncmVzcy4gWW91
DQo+Pj4gZG9uJ3Qga2ljayBvdXQgd3JpdGViYWNrIHJlcXVlc3RzIGFmdGVyIGFuIGFyYml0cmFy
eSB0aW1lb3V0IGp1c3QNCj4+PiBiZWNhdXNlIHRoZSBiYWNraW5nIHN0b3JhZ2UgaGFwcGVucyB0
byBiZSBsb2FkZWQgaGVhdmlseS4NCj4+Pg0KPj4+IFRoaXMgQlRXIGlzIGFsc28gd2h5IGV0bmF2
aXYgaGFzIGFsd2F5cyBoYWQgYSBxdWl0ZSBzaG9ydCB0aW1lb3V0IG9mDQo+Pj4gNTAwbXMsIHdp
dGggdGhlIG9wdGlvbiB0byBleHRlbmQgdGhlIHRpbWVvdXQgd2hlbiB0aGUgR1BVIGlzIHN0aWxs
DQo+Pj4gbWFraW5nIHByb2dyZXNzLiBXZSBkb24ndCBldmVyIHdhbnQgdG8gc2hvb3QgZG93biB2
YWxpZCB3b3JrbG9hZHMgKHdlDQo+Pj4gaGF2ZSBzb21lIHRoYXQgbmVlZCBhIGZldyBzZWNvbmRz
IHRvIHVwbG9hZCB0ZXh0dXJlcywgZXRjIG9uIG91ciB3aW1weQ0KPj4+IEdQVSksIGJ1dCB5b3Ug
YWxzbyBkb24ndCB3YW50IHRvIHdhaXQgbXVsdGlwbGUgc2Vjb25kcyB1bnRpbCB5b3UgZGV0ZWN0
DQo+Pj4gYSByZWFsIEdQVSBoYW5nLg0KPj4NCj4+IFRoYXQgaXMgYSByZWFsbHkgZ29vZCBwb2lu
dC4gV2UgY29uc2lkZXJlZCB0aGF0IGFzIHdlbGwsIGJ1dCB0aGVuIGFiYW5kb25lZCB0aGUgaWRl
YSwgc2VlIGJlbG93IGZvciB0aGUgYmFja2dyb3VuZC4NCj4+DQo+PiBXaGF0IHdlIGNvdWxkIGFs
c28gZG8gaXMgc2V0dGluZyBhIGZsYWcgb24gdGhlIGZlbmNlIHdoZW4gYSBwcm9jZXNzIGlzIGtp
bGxlZCBhbmQgdGhlbiB3YWl0aW5nIGZvciB0aGF0IGZlbmNlIHRvIHNpZ25hbCBzbyB0aGF0IGl0
IGNhbiBjbGVhbiB1cC4gR29pbmcgdG8gcHJvdG90eXBlIHRoYXQuDQo+Pg0KPj4+IFNvIHdlIHVz
ZSB0aGUgc2hvcnQgc2NoZWR1bGVyIHRpbWVvdXQgdG8gY2hlY2sgaW4gb24gdGhlIEdQVSBhbmQg
c2VlIGlmDQo+Pj4gaXQgaXMgc3RpbGwgbWFraW5nIHByb2dyZXNzIChmb3IgZ3JhcGhpY3Mgd29y
a2xvYWRzIGJ5IGxvb2tpbmcgYXQgdGhlDQo+Pj4gZnJvbnRlbmQgcG9zaXRpb24gd2l0aGluIHRo
ZSBjb21tYW5kIGJ1ZmZlciBhbmQgY3VycmVudCBwcmltaXRpdmUgSUQpLg0KPj4+IElmIHdlIGNh
biBkZWR1Y2UgdGhhdCB0aGUgR1BVIGlzIHN0dWNrIHdlIGRvIHRoZSB1c3VhbCByZXNldC9yZWNv
dmVyeQ0KPj4+IGRhbmNlIHdpdGhpbiBhIHJlYXNvbmFibGUgcmVhY3Rpb24gdGltZSwgYWNjZXB0
YWJsZSB0byB1c2VycyBoaXR0aW5nIGENCj4+PiByZWFsIEdQVSBoYW5nLiBCdXQgaWYgdGhlIEdQ
VSBpcyBtYWtpbmcgcHJvZ3Jlc3Mgd2Ugd2lsbCBnaXZlIGFuDQo+Pj4gaW5maW5pdGUgbnVtYmVy
IG9mIHRpbWVvdXQgZXh0ZW5zaW9ucyB3aXRoIG5vIGdsb2JhbCB0aW1lb3V0IGF0IGFsbCwNCj4+
PiBvbmx5IGZ1bGZpbGxpbmcgdGhlIGV2ZW50dWFsIHNpZ25hbGluZyBndWFyYW50ZWUgb2YgdGhl
IGZlbmNlLg0KPj4NCj4+IFdlbGwgdGhlIHF1ZXN0aW9uIGlzIGhvdyBkbyB5b3UgZGV0ZWN0ICpy
ZWxpYWJsZSogdGhhdCB0aGVyZSBpcyBzdGlsbCBmb3J3YXJkIHByb2dyZXNzPw0KPiANCj4gTXkg
dW5kZXJzdGFuZGluZyBpcyB0aGF0IHRoYXQncyBpbXBvc3NpYmxlIHNpbmNlIHRoZSBpbnRlcm5h
bHMgb2YNCj4gY29tbWFuZCBzdWJtaXNzaW9ucyBhcmUgb25seSByZWFsbHkgdW5kZXJzdG9vZCBi
eSB1c2Vyc3BhY2UsIHdobw0KPiBzdWJtaXRzIHRoZW0uDQoNClJpZ2h0LCBidXQgd2UgY2FuIHN0
aWxsIHRyeSB0byBkbyBvdXIgYmVzdCBpbiB0aGUga2VybmVsIHRvIG1pdGlnYXRlIHRoZSBzaXR1
YXRpb24uDQoNCkkgdGhpbmsgZm9yIG5vdyBhbWRncHUgd2lsbCBpbXBsZW1lbnQgc29tZXRoaW5n
IGxpa2UgY2hlY2tpbmcgaWYgdGhlIEhXIHN0aWxsIG1ha2VzIHByb2dyZXNzIGFmdGVyIGEgdGlt
ZW91dCBidXQgb25seSBhIGxpbWl0ZWQgbnVtYmVyIG9mIHJlLXRyaWVzIHVudGlsIHdlIHNheSB0
aGF0J3MgaXQgYW5kIHJlc2V0IGFueXdheS4NCg0KPiBJIHRoaW5rIHRoZSBsb25nLXRlcm0gc29s
dXRpb24gY2FuIG9ubHkgYmUgZnVsbHkgZmxlZGdlZCBHUFUgc2NoZWR1bGluZw0KPiB3aXRoIHBy
ZWVtcHRpb24uIFRoYXQncyB3aHkgd2UgZG9uJ3QgbmVlZCBzdWNoIGEgdGltZW91dCBtZWNoYW5p
c20gZm9yDQo+IHVzZXJzcGFjZSBwcm9jZXNzZXM6IHRoZSBzY2hlZHVsZXIgc2ltcGx5IGludGVy
cnVwdHMgYW5kIGxldHMgc29tZW9uZQ0KPiBlbHNlIHJ1bi4NCg0KWWVhaCBhYnNvbHV0ZWx5LiAN
Cg0KPiANCj4gTXkgaG9wZSB3b3VsZCBiZSB0aGF0IGluIHRoZSBtaWQtdGVybSBmdXR1cmUgd2Un
ZCBnZXQgZmlybXdhcmUgcmluZ3MNCj4gdGhhdCBjYW4gYmUgcHJlZW1wdGVkIHRocm91Z2ggYSBm
aXJtd2FyZSBjYWxsIGZvciBhbGwgbWFqb3IgaGFyZHdhcmUuDQo+IFRoZW4gYSBodWdlIHNoYXJl
IG9mIG91ciBwcm9ibGVtcyB3b3VsZCBkaXNhcHBlYXIuDQoNCkF0IGxlYXN0IG9uIEFNRCBIVyBw
cmUtZW1wdGlvbiBpcyBhY3R1YWxseSBob3JyaWJsZSB1bnJlbGlhYmxlIGFzIHdlbGwuDQoNClVz
ZXJzcGFjZSBiYXNpY2FsbHkgbmVlZHMgdG8gY28tb3BlcmF0ZSBhbmQgcHJvdmlkZSBhIGJ1ZmZl
ciB3aGVyZSB0aGUgc3RhdGUgb24gYSBwcmUtZW1wdGlvbiBpcyBzYXZlZCBpbnRvLg0KDQo+IFdp
dGggdGhlIGN1cnJlbnQgc2l0dWF0aW9uLCBJREsgZWl0aGVyLiBNeSBpbXByZXNzaW9uIHNvIGZh
ciBpcyB0aGF0DQo+IGxldHRpbmcgdGhlIGRyaXZlcnMgYW5kIGRyaXZlciBwcm9ncmFtbWVycyBk
ZWNpZGUgaXMgdGhlIGxlYXN0IGJhZA0KPiBjaG9pY2UuDQoNClllYWgsIGFncmVlLiBJdCdzIHRo
ZSBsZWFzdCBldmlsIHRoaW5nIHdlIGNhbiBkby4NCg0KQnV0IEkgbm93IGhhdmUgYSBwbGFuIGhv
dyB0byBwcm9jZWVkIDopDQoNClRoYW5rcyBmb3IgdGhlIGlucHV0LA0KQ2hyaXN0aWFuLg0KDQo+
IA0KPiANCj4gUC4NCg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0gbGluYXJvLW1tLXNpZ0BsaXN0cy5s
aW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gbGluYXJvLW1tLXNpZy1s
ZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==
