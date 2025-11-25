Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F5ACC855F4
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 25 Nov 2025 15:21:37 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 5C8113F8EB
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 25 Nov 2025 14:21:36 +0000 (UTC)
Received: from PH0PR06CU001.outbound.protection.outlook.com (mail-westus3azon11011057.outbound.protection.outlook.com [40.107.208.57])
	by lists.linaro.org (Postfix) with ESMTPS id 558573F7A5
	for <linaro-mm-sig@lists.linaro.org>; Tue, 25 Nov 2025 14:21:20 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=amd.com header.s=selector1 header.b="jEE/H3ZN";
	spf=pass (lists.linaro.org: domain of Christian.Koenig@amd.com designates 40.107.208.57 as permitted sender) smtp.mailfrom=Christian.Koenig@amd.com;
	dmarc=pass (policy=quarantine) header.from=amd.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=c8IWdS7D1z393SIIUawlLp61Jep2pDHkpSxBgcN4fKpYqd8/f7YF8bpeFyLQjAowSnpQ/wqcA3Amty9INK/6cqZvVJlWX+m1kP4X651MOR6qaINLEtx8zR0I8s42R2M2xg7aZyR/6DLA4PFgid+CnT/AlapKzNQrrWWR32mXXR3P2uLWv9TsGSO/Y0Lg+tNnGEpXtXbg397WMU1cztZhrltDzi2uOyuLn3LuYgVEje8d404ZO0OdNI81u0pdwkhfIRxTXbLYKtTSW8/f1Z2riQDkyXxSKlFVFikb7H5O1R8QmHiYZZsTHZNmvihHfSp9iJpDh9J6CHKi4y+eA3z5cw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=36P11SchtSlHOV7zYur3o47CDU2LEDK+lg7mc0Eornk=;
 b=oxvb8z0uZUXTQsT08Ly0dbG+lky6RIbuy6YhZmBWpKDMFOTLFyucqYcpbbUGZ+TdPH+klSVcTauiUXu++QIFPdP8TeMOngu8w/Tp1xXMcuiAkUMVGbsuJKtYyybpfGR+9DQUqX0VgzPJdWqwsSBmYmHj81JknEpgnaTHNqFoB4k2Kw67C4wIRV/vInTiHYB3KmudH268t/aZe1hnDTWJhxg45uDc1RcGCzOkK3PqD8qnRD7nFjgjrf9kIMdzTgz466Vh0mq28KDp2lS2V9foVdXWW53fR6K7E5m9Ja4Wt4M2I7BU4ZLs/+jIKEZpGUJGj5zl0euH9fRt0E7ZjMGQQA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=36P11SchtSlHOV7zYur3o47CDU2LEDK+lg7mc0Eornk=;
 b=jEE/H3ZNeyIc/P3Pd9T7YQAf98ZVG29f/d8f8LTSaIdfFNE2HlWjzWYCNtoRzrUxR7ExmtTyC02dPFgZIAz9vCUw7GhnMWSoBTiQ2nHavgnabtG4vz3nGHi9khfN2nio9GiNtoAD52Hh65QyihoTMUT/xN3kpPGF12DN4T5Mwec=
Received: from PH7PR12MB5685.namprd12.prod.outlook.com (2603:10b6:510:13c::22)
 by CY5PR12MB6033.namprd12.prod.outlook.com (2603:10b6:930:2f::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9366.11; Tue, 25 Nov
 2025 14:21:16 +0000
Received: from PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::46fb:96f2:7667:7ca5]) by PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::46fb:96f2:7667:7ca5%4]) with mapi id 15.20.9366.009; Tue, 25 Nov 2025
 14:21:15 +0000
Message-ID: <0d0d2a6a-a90c-409c-8d60-b17bad32af94@amd.com>
Date: Tue, 25 Nov 2025 15:21:07 +0100
User-Agent: Mozilla Thunderbird
To: Pavel Begunkov <asml.silence@gmail.com>, linux-block@vger.kernel.org,
 io-uring@vger.kernel.org
References: <cover.1763725387.git.asml.silence@gmail.com>
 <fd10fe48-f278-4ed0-b96b-c4f5a91b7f95@amd.com>
 <905ff009-0e02-4a5b-aa8d-236bfc1a404e@gmail.com>
 <53be1078-4d67-470f-b1af-1d9ac985fbe2@amd.com>
 <a80a1e7d-e387-448f-8095-0aa22a07af17@gmail.com>
Content-Language: en-US
From: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
In-Reply-To: <a80a1e7d-e387-448f-8095-0aa22a07af17@gmail.com>
X-ClientProxiedBy: BN9P222CA0002.NAMP222.PROD.OUTLOOK.COM
 (2603:10b6:408:10c::7) To PH7PR12MB5685.namprd12.prod.outlook.com
 (2603:10b6:510:13c::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR12MB5685:EE_|CY5PR12MB6033:EE_
X-MS-Office365-Filtering-Correlation-Id: 0a7ac453-0888-4eab-5fea-08de2c2de4d5
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: 
	BCL:0;ARA:13230040|1800799024|366016|7416014|376014|7053199007;
X-Microsoft-Antispam-Message-Info: 
	=?utf-8?B?M2g0eWMvTy9EbnJudTljaVk0QlA5S0FwdGY5WSsrRFpnQjBLUVRUMzR1Rm0y?=
 =?utf-8?B?MEw1R0daZjR3bXBmTmdHRmRBMFpScjI5cVNRWW9rb2pZbTU4OE94dVFobDUz?=
 =?utf-8?B?bGpxMjVac0xUK2NVQTljd1M0b1ZNUVkrWTdjdXZwY2c4MjlCTDBjZHQ0c1ll?=
 =?utf-8?B?dW9DWnY4Wmx4U0lKSGZIRlhKRjRjcG1GSFB4N1F2ZlJwcnZVSXMrNllXUTBj?=
 =?utf-8?B?TFRreG1jelpEalhvTnFFNERoaStjeXFGL0QxTmxjTzVya2tkaUgySWwvS05N?=
 =?utf-8?B?TVZsRy9IWXJpT29SeDNXc1cyQkZkbVBqTCtvbVNpNGEwRllPNVFGdE1UQmI1?=
 =?utf-8?B?L21keGxBZThpcVhYN2lsNXA0bjh5QlhSMFl0SkR6cWFEUFgrTFRZMGphdEY5?=
 =?utf-8?B?Z1RGV0JKMCtpSWU3TGxPeGpEWTlBWHNjeW5VK2dQTXA5R2NnYW5zOEkxZXo1?=
 =?utf-8?B?ME5OaEoybi91anlUaUJCc0JhWnFVM3Q0QkFsRVVHcEZ0SGV4dFg0Y0V3UXE2?=
 =?utf-8?B?OFVEVlVERldrczl5YUdCRGFiTm1PNHZXcjJiNnBEL1BxQWlsc2RtaDFNdUtk?=
 =?utf-8?B?SHd6NEZXTHZVR0hCbjE0Vm9yVjk4KzhBdG03R2tveHR0aXR2S2xZTXpUbmZD?=
 =?utf-8?B?eDMzekEwV1NmbVZJeWluWDA4eDNTN005TlNCc0JoNVRZbmhzSmdFeWxtWWpv?=
 =?utf-8?B?R0xqY2ZpbTg0ZnBVZTN3MGVYR3ZzK0JXZDA5Ylg5b21abDdyU0hkS0RlQUhW?=
 =?utf-8?B?eDJPZnVBeHViRVJYRFZabU5yU0lrK0dxeEQ1dGR0dlpWVk95TnUxOGQyMkov?=
 =?utf-8?B?dkt2QXZsM3FSbS9BZ204R29VU3pNUnFSaVB1Wlg4T3lTTkJCUkVWSEs3eDVy?=
 =?utf-8?B?SGh2TUtycUplcGVabzc5MHhFTk9KdWYydGkxRGd4UVVMWXQ1MmtFaGxRUmRy?=
 =?utf-8?B?RFZ3R0VhR3grMWtLU0wrcmhsU2xQTVBHMDEzTlN3R09ZdFUyaTJZb3dxM1cy?=
 =?utf-8?B?Z0pZNC9qcUsvcmVNVW9vV0VwQ1ptanFhWVJuNDhYdXQxb0NzRWRHam91blJY?=
 =?utf-8?B?TjhTd2ZRYUIyeXhVVTJMdVNmbFAwc3hFSCtsVHE1YW1QaWN1ZzUwcFFIcTJ0?=
 =?utf-8?B?blVDM0VjVmdpRUVCQjNHbVZiZnZnTTJnVzJ6NFZ5OCtrREhRa1RXaEQ3Y3Ny?=
 =?utf-8?B?TVJvckpkQm96S1pwdExhMkdlWGZmcStpVUkwQWNHeHl4d2VYMGZBRnlKb0Fp?=
 =?utf-8?B?ckF1SHhvZHhta2ZYdHJuT0JQZUd5WXJaa0hKQ2JsM3AzWHdmdndOdWFxK2FE?=
 =?utf-8?B?RWR6WEFuY3p1a0l0WklITnB0bFdDbVc1K0YrN1NyV3Z1ZXIvd0RCZmFvbUVU?=
 =?utf-8?B?NEIrS0ErWG1NMEhnaDRPc2MzbXFKcXozSjVubTlHMTBGOGR1MHc0YkZkN1g2?=
 =?utf-8?B?SVlyWkNzVkFyTnVBdUErcVQzNXNOY3REUE12SHE0Sy81YldPeFBscFVGQUsz?=
 =?utf-8?B?aC9hcitzYkI0SWowSkRkMnpnZGZXck1lM3h1VnJyWU9nYWNjVFYvUndaSlp4?=
 =?utf-8?B?c1lZOWt2S3VZeGVmU1Jnam51UFdiazcrWGJLUnE5aWdEQUxHMEtsMXorWENX?=
 =?utf-8?B?ZlZZbHdMNTZpL3VVWnZsbUNPMG9qRUFkL3VKQ0c3bStGanViRUtQY1hSbnZR?=
 =?utf-8?B?Wk1JYnB0NWlST2pDSVpta2hSN2JtRjY2WlY2RG92VU9xVEdoSkZtMzhFd2ZX?=
 =?utf-8?B?RDVFUGxjbnZmRnJSa1hHUis2Ny9MNFVTNWIxL1N4RHZ3TnRxYjR0NVptM1dB?=
 =?utf-8?B?T2dLMVpmWTJvUUh4UHBCcklrY1M2MWZVVXRsU1FnRkkydnJpa1hqWmNUSHNi?=
 =?utf-8?B?ZVFGUFlGa2lKZ1ZzaTA3RHJES2RvNUNSZmVOTjFhUlE4ZmFxSkRrUHpnYklX?=
 =?utf-8?B?ZG9OTEpvS2pwdVl6L3QvTEh2bFk5TGxIUnhKTVc5WFo4MmFDWjJFeGV5cG5M?=
 =?utf-8?B?OEh3YVg1N1BnPT0=?=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH7PR12MB5685.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(366016)(7416014)(376014)(7053199007);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?UlI3Nng3YXFQNk5iY1lIOVhETGxIR2pNandvU2ZNTFA4R08zem9kOE9PREcy?=
 =?utf-8?B?b1ZMeWZhdWpNbStwVE9OYkxMcDVlc0gxdnFOQjFvNjNiTVp5alhqZmV4emR6?=
 =?utf-8?B?Tyt5YVZycmYxcFVwcFh3UUJ0SjUwOHdMTFlFTURWWWxxTmRUL0F3M1FnUmN6?=
 =?utf-8?B?UWorRFNveUsybXU2RkJRdkJXelkwbldDbTc5NUp1OXJJKzdLTExIdU1GYmV4?=
 =?utf-8?B?OWJsRG5pRHJndGg1N2hQRUlkdXpEc0JaZHdhRmdOSjgyVHdFd3lJbU5OVytr?=
 =?utf-8?B?RU5nQlE4OTIvcTk5dHgxWXhrV1V5elRJYm12aDNKRmI0VlcrcmZPeWJLL2FZ?=
 =?utf-8?B?ZXBPYy9JQ1Y1UFVxYjc3OWJpWTh4ZnN2NlZyaXBVOTRNVHBpTC9HL3JOMkY0?=
 =?utf-8?B?VURXNVVyUjB2Qjg2RTd1eHpKaDIzSlZCN2sxR21jVVZ5Y0NtcFloeXo1L1l6?=
 =?utf-8?B?VlFYaC96OHRQYUhLS0ZjV0Y5a0RPbFRoZ2lwSGlzTkFzc2pxejY4T1A0UmRu?=
 =?utf-8?B?ZHdDaVJUUUp1eE56K1BCeUNMb3Mrb0JkVGZJS081UFdxSlgrY2dkZW8xOHp5?=
 =?utf-8?B?VHhoS0lHRDd2UGtqeWZvelZOSldTNldWME9qK0xpTWx2YVd4OVUvbW9JeVVj?=
 =?utf-8?B?MXhVZkZPeDh3d0l0Q3Y3cVhsdFluWENxd1J5UXhqbjlDNkpQMTFkcm1mR0lq?=
 =?utf-8?B?b2lxdjJkWkJzeHp4TENyYTZIcG9Pemg0UkE5SjFXRklOdFhuUVgxVEpmZ2Ev?=
 =?utf-8?B?YVZQeDlzRUFTSmFpRDZYOFJPZ00yT1VOUnh4NXl2Y3dLc0IvZXNOL1FHZXNG?=
 =?utf-8?B?YVhsNTRXSDA3OCtISG50S0g1d2JLSXU0OEVIVUFLVEVQeHJsT2dCQmxxYVhG?=
 =?utf-8?B?bDdlSE1DL1JDYUJIdHk2T0JUdGhZbHBPbnBBbm1YdXFHYzUySkhNYmQ5Ukds?=
 =?utf-8?B?UDFDU1B1VlZ6cUY4b2VKcytWTlYrcC92SFdqM1Y2dzlwWjBKZitNZ1lBRzg5?=
 =?utf-8?B?NnVkNEFSYTBBdFFxOTRtMjRpTzY2bjVWaWVYNUVRMmxUMkNQQWI3MVFqK0FJ?=
 =?utf-8?B?Y2RvRng1WjZQYjRIUWdOK3ZYQzUxZjFuY1JGYXN0L0lETldwNG9WV2d6QS8x?=
 =?utf-8?B?RkxmdnF0NE5ZUWlLaVZnMEZweWRQbFE2TUM5dTgrY2JlN3k5c1FudlJveUJp?=
 =?utf-8?B?MmtmVVpGSFBoN0pjWVM4QmN1R09mb2Q1aWxpWnFaTkNIYm5YckNUMXN3ZWJE?=
 =?utf-8?B?RFRhZ3dBOUJrZHVHS243TWlROHhOdktjRkZWMmMyRUVFelZ3bGZzZU9oTG5n?=
 =?utf-8?B?N2NCWlZOVDFvbVhacWF5aU5mOFBmcTYyT2ZqWndBYnAxeTlDNkJWb2Z5Z2VQ?=
 =?utf-8?B?alppemFsSmMzU3RSQkNwdVMyMVJzVWxEYUd0M2tjbm1lM0hiTTZjQy8zdW5K?=
 =?utf-8?B?K0NRVVFkTDY1aFVqSk5LOW9MR0ZaSE9VZ0JaYkJqUHd6VzZXVzBKSXhCVTVt?=
 =?utf-8?B?alBweGc4dXFMbGNHTHpiMXE5YlZpWjZ6SExOdFh0VS9yTFUwKzBJL25OVllq?=
 =?utf-8?B?bkR0cUtsak1oSVhaMUUxZkJVQUh5ZElma1Fmc2FFMDAzRFJ2QXloVXhiVHcz?=
 =?utf-8?B?TlkwVDhLdldHWDhkNm9iV2xHSFJuWEJVeGh0bGRLMzhXbjB2U2xUU0NGcnN4?=
 =?utf-8?B?cVkxNFNFOTVJeWR5TXhYQUtmYmp0aUFaRW5aTlFBK2tDd2NtWUR1MWl2eks3?=
 =?utf-8?B?TUo0SzdTTDZtcjFra1IwTzZQRUVTeGJLMTZzbWZSdWgrTit4bXBoTGNhbFlD?=
 =?utf-8?B?WjFRZnRqUG1jLzY1elFGZjM5M1Z2ZUthUWdQOFlDbS9PZ29aLzRyWERxOC8y?=
 =?utf-8?B?eFBsUjJsbHJqZmpJSUwxUkk4UFZGelk2eGdGdXArUDA0bVVuUkp3THhkbk1I?=
 =?utf-8?B?K2ZwK2p6SHN2QXkwcTVYcWdZL0tpcGs4WXVDNmFJb3NDUzYzY3dVTkR5MXlt?=
 =?utf-8?B?a0IvU29vekoxblh0VEc0cGpqdTI3enBNQS9BZVhXYlN4ZTNvL1NhTXRlZnA4?=
 =?utf-8?B?dEdJbHYrS0VBT1czMXFsTmZkTTY5czJLRzRsUVk5SkhCa3o0bitmVEE5NTFr?=
 =?utf-8?Q?40hHZbeq6tDx9bzVZ8ve9H1Gc?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0a7ac453-0888-4eab-5fea-08de2c2de4d5
X-MS-Exchange-CrossTenant-AuthSource: PH7PR12MB5685.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Nov 2025 14:21:15.8810
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 8ilSXVNQYVonfkvo8lDQ7Sh2BytcQTUXmuRbB251iTaNLHXVIVzwJtuz+0pZyO/l
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY5PR12MB6033
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-5.00 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[amd.com,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:40.107.0.0/16];
	R_DKIM_ALLOW(-0.20)[amd.com:s=selector1];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_POSSIBLE(0.00)[40.107.208.57:from];
	RCPT_COUNT_TWELVE(0.00)[19];
	FREEMAIL_TO(0.00)[gmail.com,vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:8075, ipnet:40.104.0.0/14, country:US];
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
X-Rspamd-Queue-Id: 558573F7A5
X-Spamd-Bar: ----
Message-ID-Hash: CSRRPRMWMRC3WSKYGBWRJPX2AFKOGLGM
X-Message-ID-Hash: CSRRPRMWMRC3WSKYGBWRJPX2AFKOGLGM
X-MailFrom: Christian.Koenig@amd.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Vishal Verma <vishal1.verma@intel.com>, tushar.gohad@intel.com, Keith Busch <kbusch@kernel.org>, Jens Axboe <axboe@kernel.dk>, Christoph Hellwig <hch@lst.de>, Sagi Grimberg <sagi@grimberg.me>, Alexander Viro <viro@zeniv.linux.org.uk>, Christian Brauner <brauner@kernel.org>, Andrew Morton <akpm@linux-foundation.org>, Sumit Semwal <sumit.semwal@linaro.org>, linux-kernel@vger.kernel.org, linux-nvme@lists.infradead.org, linux-fsdevel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [RFC v2 00/11] Add dmabuf read/write via io_uring
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/CSRRPRMWMRC3WSKYGBWRJPX2AFKOGLGM/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gMTEvMjUvMjUgMTQ6NTIsIFBhdmVsIEJlZ3Vua292IHdyb3RlOg0KPiBPbiAxMS8yNC8yNSAx
NDoxNywgQ2hyaXN0aWFuIEvDtm5pZyB3cm90ZToNCj4+IE9uIDExLzI0LzI1IDEyOjMwLCBQYXZl
bCBCZWd1bmtvdiB3cm90ZToNCj4+PiBPbiAxMS8yNC8yNSAxMDozMywgQ2hyaXN0aWFuIEvDtm5p
ZyB3cm90ZToNCj4+Pj4gT24gMTEvMjMvMjUgMjM6NTEsIFBhdmVsIEJlZ3Vua292IHdyb3RlOg0K
Pj4+Pj4gUGlja2luZyB1cCB0aGUgd29yayBvbiBzdXBwb3J0aW5nIGRtYWJ1ZiBpbiB0aGUgcmVh
ZC93cml0ZSBwYXRoLg0KPj4+Pg0KPj4+PiBJSVJDIHRoYXQgd29yayB3YXMgY29tcGxldGVseSBz
dG9wcGVkIGJlY2F1c2UgaXQgdmlvbGF0ZWQgY29yZSBkbWFfZmVuY2UgYW5kIERNQS1idWYgcnVs
ZXMgYW5kIGFmdGVyIHNvbWUgcHJpdmF0ZSBkaXNjdXNzaW9uIHdhcyBjb25zaWRlcmVkIG5vdCBk
b2FibGUgaW4gZ2VuZXJhbC4NCj4+Pj4NCj4+Pj4gT3IgYW0gSSBtaXhpbmcgc29tZXRoaW5nIHVw
IGhlcmU/DQo+Pj4NCj4+PiBUaGUgdGltZSBnYXAgaXMgcHVyZWx5IGR1ZSB0byBtZSBiZWluZyBi
dXN5LiBJIHdhc24ndCBDQydlZCB0byB0aG9zZSBwcml2YXRlDQo+Pj4gZGlzY3Vzc2lvbnMgeW91
IG1lbnRpb25lZCwgYnV0IHRoZSB2MSBmZWVkYmFjayB3YXMgdG8gdXNlIGR5bmFtaWMgYXR0YWNo
bWVudHMNCj4+PiBhbmQgYXZvaWQgcGFzc2luZyBkbWEgYWRkcmVzcyBhcnJheXMgZGlyZWN0bHku
DQo+Pj4NCj4+PiBodHRwczovL2xvcmUua2VybmVsLm9yZy9hbGwvY292ZXIuMTc1MTAzNTgyMC5n
aXQuYXNtbC5zaWxlbmNlQGdtYWlsLmNvbS8NCj4+Pg0KPj4+IEknbSBsb3N0IG9uIHdoYXQgcGFy
dCBpcyBub3QgZG9hYmxlLiBDYW4geW91IGVsYWJvcmF0ZSBvbiB0aGUgY29yZQ0KPj4+IGRtYS1m
ZW5jZSBkbWEtYnVmIHJ1bGVzPw0KPj4NCj4+IEkgbW9zdCBsaWtlbHkgbWl4ZWQgdGhhdCB1cCwg
aW4gb3RoZXIgd29yZHMgdGhhdCB3YXMgYSBkaWZmZXJlbnQgZGlzY3Vzc2lvbi4NCj4+DQo+PiBX
aGVuIHlvdSB1c2UgZG1hX2ZlbmNlcyB0byBpbmRpY2F0ZSBhc3luYyBjb21wbGV0aW9uIG9mIGV2
ZW50cyB5b3UgbmVlZCB0byBiZSBzdXBlciBkdXBlciBjYXJlZnVsIHRoYXQgeW91IG9ubHkgZG8g
dGhpcyBmb3IgaW4gZmxpZ2h0IGV2ZW50cywgaGF2ZSB0aGUgZmVuY2UgY3JlYXRpb24gaW4gdGhl
IHJpZ2h0IG9yZGVyIGV0Yy4uLg0KPiANCj4gSSdtIGN1cmlvdXMsIHdoYXQgY2FuIGhhcHBlbiBp
ZiB0aGVyZSBpcyBuZXcgSU8gdXNpbmcgYQ0KPiBtb3ZlX25vdGlmeSgpZWQgbWFwcGluZywgYnV0
IGxldCdzIHNheSBpdCdzIGd1YXJhbnRlZWQgdG8gY29tcGxldGUNCj4gc3RyaWN0bHkgYmVmb3Jl
IGRtYV9idWZfdW5tYXBfYXR0YWNobWVudCgpIGFuZCB0aGUgZmVuY2UgaXMgc2lnbmFsZWQ/DQo+
IElzIHRoZXJlIHNvbWUgbG9zcyBvZiBkYXRhIG9yIGNvcnJ1cHRpb24gdGhhdCBjYW4gaGFwcGVu
Pw0KDQpUaGUgcHJvYmxlbSBpcyB0aGF0IHlvdSBjYW4ndCBndWFyYW50ZWUgdGhhdCBiZWNhdXNl
IHlvdSBydW4gaW50byBkZWFkbG9ja3MuDQoNCkFzIHNvb24gYXMgYSBkbWFfZmVuY2UoKSBpcyBj
cmVhdGVkIGFuZCBwdWJsaXNoZWQgYnkgY2FsbGluZyBhZGRfZmVuY2UgaXQgY2FuIGJlIG1lbW9y
eSBtYW5hZ2VtZW50IGxvb3BzIGJhY2sgYW5kIGRlcGVuZHMgb24gdGhhdCBmZW5jZS4NCg0KU28g
eW91IGFjdHVhbGx5IGNhbid0IGlzc3VlIGFueSBuZXcgSU8gd2hpY2ggbWlnaHQgYmxvY2sgdGhl
IHVubWFwIG9wZXJhdGlvbi4NCg0KPiANCj4gc2dfdGFibGUgPSBtYXBfYXR0YWNoKCnCoMKgwqDC
oMKgwqDCoMKgIHwNCj4gbW92ZV9ub3RpZnkoKcKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoCB8DQo+IMKgIC0+IGFkZF9mZW5jZShmZW5jZSnCoMKgwqDCoMKgwqDCoMKgwqDCoCB8
DQo+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgIHwgaXNzdWVfSU8oc2dfdGFibGUpDQo+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHwgLy8gSU8gY29tcGxldGVk
DQo+IHVubWFwX2F0dGFjaG1lbnQoc2dfdGFibGUpwqDCoMKgwqDCoCB8DQo+IHNpZ25hbF9mZW5j
ZShmZW5jZSnCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgfA0KPiANCj4+IEZvciBleGFtcGxlIG9u
Y2UgdGhlIGZlbmNlIGlzIGNyZWF0ZWQgeW91IGNhbid0IG1ha2UgYW55IG1lbW9yeSBhbGxvY2F0
aW9ucyBhbnkgbW9yZSwgdGhhdCdzIHdoeSB3ZSBoYXZlIHRoaXMgZGFuY2Ugb2YgcmVzZXJ2aW5n
IGZlbmNlIHNsb3RzLCBjcmVhdGluZyB0aGUgZmVuY2UgYW5kIHRoZW4gYWRkaW5nIGl0Lg0KPiAN
Cj4gTG9va3MgSSBoYXZlIHNvbWUgdGVybWlub2xvZ3kgZ2FwIGhlcmUuIEJ5ICJtZW1vcnkgYWxs
b2NhdGlvbnMiIHlvdQ0KPiBkb24ndCBtZWFuIGttYWxsb2MsIHJpZ2h0PyBJIGFzc3VtZSBpdCdz
IGFib3V0IG5ldyB1c2VycyBvZiB0aGUNCj4gbWFwcGluZy4NCg0Ka21hbGxvYygpIGFzIHdlbGwg
YXMgZ2V0X2ZyZWVfcGFnZSgpIGlzIGV4YWN0bHkgd2hhdCBpcyBtZWFudCBoZXJlLg0KDQpZb3Ug
Y2FuJ3QgbWFrZSBhbnkgbWVtb3J5IGFsbG9jYXRpb24gYW55IG1vcmUgYWZ0ZXIgY3JlYXRpbmcv
cHVibGlzaGluZyBhIGRtYV9mZW5jZS4NCg0KVGhlIHVzdWFsbHkgZmxvdyBpcyB0aGUgZm9sbG93
aW5nOg0KDQoxLiBMb2NrIGRtYV9yZXN2IG9iamVjdA0KMi4gUHJlcGFyZSBJL08gb3BlcmF0aW9u
LCBtYWtlIGFsbCBtZW1vcnkgYWxsb2NhdGlvbnMgZXRjLi4uDQozLiBBbGxvY2F0ZSBkbWFfZmVu
Y2Ugb2JqZWN0DQo0LiBQdXNoIEkvTyBvcGVyYXRpb24gdG8gdGhlIEhXLCBtYWtpbmcgc3VyZSB0
aGF0IHlvdSBkb24ndCBhbGxvY2F0ZSBtZW1vcnkgYW55IG1vcmUuDQo1LiBDYWxsIGRtYV9yZXN2
X2FkZF9mZW5jZSh3aXRoIGZlbmNlIGFsbG9jYXRlIGluICMzKS4NCjYuIFVubG9jayBkbWFfcmVz
diBvYmplY3QNCg0KSWYgeW91IHN0cmlkZSBmcm9tIHRoYXQgeW91IG1vc3QgbGlrZWx5IGVuZCB1
cCBpbiBhIGRlYWRsb2NrIHNvb25lciBvciBsYXRlci4NCg0KUmVnYXJkcywNCkNocmlzdGlhbi4N
Cg0KPj4+PiBTaW5jZSBJIGRvbid0IHNlZSBhbnkgZG1hX2ZlbmNlIGltcGxlbWVudGF0aW9uIGF0
IGFsbCB0aGF0IG1pZ2h0IGFjdHVhbGx5IGJlIHRoZSBjYXNlLg0KPj4+DQo+Pj4gU2VlIFBhdGNo
IDUsIHN0cnVjdCBibGtfbXFfZG1hX2ZlbmNlLiBJdCdzIHVzZWQgaW4gdGhlIG1vdmVfbm90aWZ5
DQo+Pj4gY2FsbGJhY2sgYW5kIGlzIHNpZ25hbGVkIHdoZW4gYWxsIGluZmxpZ2h0IElPIHVzaW5n
IHRoZSBjdXJyZW50DQo+Pj4gbWFwcGluZyBhcmUgY29tcGxldGUuIEFsbCBuZXcgSU8gcmVxdWVz
dHMgd2lsbCB0cnkgdG8gcmVjcmVhdGUgdGhlDQo+Pj4gbWFwcGluZywgYW5kIGhlbmNlIHBvdGVu
dGlhbGx5IHdhaXQgd2l0aCBkbWFfcmVzdl93YWl0X3RpbWVvdXQoKS4NCj4+DQo+PiBXaXRob3V0
IGxvb2tpbmcgYXQgdGhlIGNvZGUgdGhhdCBhcHByb2FjaCBzb3VuZHMgbW9yZSBvciBsZXNzIGNv
cnJlY3QgdG8gbWUuDQo+Pg0KPj4+PiBPbiB0aGUgb3RoZXIgaGFuZCB3ZSBoYXZlIGRpcmVjdCBJ
L08gZnJvbSBETUEtYnVmIHdvcmtpbmcgZm9yIHF1aXRlIGEgd2hpbGUsIGp1c3Qgbm90IHVwc3Ry
ZWFtIGFuZCB3aXRob3V0IGlvX3VyaW5nIHN1cHBvcnQuDQo+Pj4NCj4+PiBIYXZlIGFueSByZWZl
cmVuY2U/DQo+Pg0KPj4gVGhlcmUgaXMgYSBXSVAgZmVhdHVyZSBpbiBBTURzIEdQVSBkcml2ZXIg
cGFja2FnZSBmb3IgUk9DbS4NCj4+DQo+PiBCdXQgdGhhdCBjYW4ndCBiZSB1c2VkIGFzIGdlbmVy
YWwgcHVycG9zZSBETUEtYnVmIGFwcHJvYWNoLCBiZWNhdXNlIGl0IG1ha2VzIHVzZSBvZiBpbnRl
cm5hbCBrbm93bGVkZ2UgYWJvdXQgaG93IHRoZSBHUFUgZHJpdmVyIGlzIHVzaW5nIHRoZSBiYWNr
aW5nIHN0b3JlLg0KPiANCj4gR290IGl0DQo+IA0KPj4gQlRXIHdoZW4geW91IHVzZSBETUEgYWRk
cmVzc2VzIGZyb20gRE1BLWJ1ZiBhbHdheXMga2VlcCBpbiBtaW5kIHRoYXQgdGhpcyBtZW1vcnkg
Y2FuIGJlIHdyaXR0ZW4gYnkgb3RoZXJzIGF0IHRoZSBzYW1lIHRpbWUsIGUuZy4geW91IGNhbid0
IGRvIHRoaW5ncyBsaWtlIGNvbXB1dGUgYSBDUkMgZmlyc3QsIHRoZW4gd3JpdGUgdG8gYmFja2lu
ZyBzdG9yZSBhbmQgZmluYWxseSBjb21wYXJlIENSQy4NCj4gDQo+IFJpZ2h0LiBUaGUgZGlyZWN0
IElPIHBhdGggYWxzbyB3b3JrcyB3aXRoIHVzZXIgcGFnZXMsIHNvIHRoZQ0KPiBjb25zdHJhaW50
cyBhcmUgc2ltaWxhciBpbiB0aGlzIHJlZ2FyZC4NCj4gDQoNCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0IC0t
IGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVt
YWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=
