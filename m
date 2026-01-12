Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 50C1AD13E85
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 12 Jan 2026 17:12:57 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 646764016C
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 12 Jan 2026 16:12:56 +0000 (UTC)
Received: from CH4PR04CU002.outbound.protection.outlook.com (mail-northcentralusazon11013024.outbound.protection.outlook.com [40.107.201.24])
	by lists.linaro.org (Postfix) with ESMTPS id CDFC53F901
	for <linaro-mm-sig@lists.linaro.org>; Mon, 12 Jan 2026 16:12:49 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=amd.com header.s=selector1 header.b=JCsXoa8f;
	spf=pass (lists.linaro.org: domain of Christian.Koenig@amd.com designates 40.107.201.24 as permitted sender) smtp.mailfrom=Christian.Koenig@amd.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1");
	dmarc=pass (policy=quarantine) header.from=amd.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=wXpVryo49rB68dQkd7saWYKwVFqqVR8LGBs4La5MWW0NQWA2ZENuXsIs+SeaeJwgFt3b4CWYnZcMnLef7S3h482twTuLUMrmshWvqvwfpBiH6rKl0O87ez2fnVpcOoRNGdmrQqd0Dd7ro0zje8BQ5DZgUgDKSDtdfF5YEYtPUsnan5QkoMI7x2hX20gR3LdQYSHK47NqqV69yVPqAYqwaIAht2ofoh0zklDalUzCfsUOXUxIriQZNJLlgkIHqOGmrhlrheHMGxWjGRGAJOm3WZdiCzbqRM6cpWtMgkvSwqbVzYvYLazEdStYBND3fWxZMygU1gc+Nw8qZt7oJ8UXqw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=fC/KvDgBIrcs7qx7bxB780DfAXfGbI7n0cltj83rVEY=;
 b=fCp8hMRoRksqgy6orfG2LJhcaYZmdvTYbgC4ieRpCYk2/hHOpBjbgAAsJFblrGVX278w7oTqe/mOe/XGEODe2LQD/blIif++0g87MuEbIYDHb6aRe7mf1cjY+SgYGNP5iuQdUGPT7jmFQkw57133lN8iURfwCzYzgaC8XSZrs09w59uK/OlALmkcG6npm1YiJWFKeW+pG1epc0Gq1CVMUA+47td0xrwwDudF81AUODfGKaxIdg9sFUsPctcJuO/0Q7bzWxrAgydutedGRZEo3k3Tfpm/vz0zAj4wMFgjvIaarQGs7x2YTu115ycVKh1UlgY55LWJ/BeZRcwGSPObPQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=fC/KvDgBIrcs7qx7bxB780DfAXfGbI7n0cltj83rVEY=;
 b=JCsXoa8f+p2B+m4gw/5HdiEeT4RqFwwova5ZC5Z19Pn5Uc6rVyfDihL5WdxsbMF3wqjJBq1TIBQXmJ1Fc4/nNwZbbWFcV0UQSyEsb40QwX3+WNoA9MEzvEg9kIUzZjk0jWtP0evKvU6XOfjZLPAm4Nf7QynhOJab7s7Vxx21CIU=
Received: from PH7PR12MB5685.namprd12.prod.outlook.com (2603:10b6:510:13c::22)
 by DS7PR12MB5888.namprd12.prod.outlook.com (2603:10b6:8:7b::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9499.7; Mon, 12 Jan
 2026 16:12:45 +0000
Received: from PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::46fb:96f2:7667:7ca5]) by PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::46fb:96f2:7667:7ca5%4]) with mapi id 15.20.9499.005; Mon, 12 Jan 2026
 16:12:45 +0000
Message-ID: <f2f82341-3799-4379-a0e7-6e9d56a7eda1@amd.com>
Date: Mon, 12 Jan 2026 17:12:36 +0100
User-Agent: Mozilla Thunderbird
To: Jason Gunthorpe <jgg@ziepe.ca>
References: <20260111-dmabuf-revoke-v1-0-fb4bcc8c259b@nvidia.com>
 <eed9fd4c-ca36-4f6a-af10-56d6e0997d8c@amd.com>
 <20260112121956.GE14378@unreal>
 <2db90323-9ddc-4408-9074-b44d9178bc68@amd.com>
 <20260112141440.GE745888@ziepe.ca>
 <f7f1856a-44fa-44af-b496-eb1267a05d11@amd.com>
 <20260112153503.GF745888@ziepe.ca>
Content-Language: en-US
From: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
In-Reply-To: <20260112153503.GF745888@ziepe.ca>
X-ClientProxiedBy: FR2P281CA0185.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:9f::18) To PH7PR12MB5685.namprd12.prod.outlook.com
 (2603:10b6:510:13c::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR12MB5685:EE_|DS7PR12MB5888:EE_
X-MS-Office365-Filtering-Correlation-Id: 90daa5e2-d153-46e6-6946-08de51f56b7b
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|7416014|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: 
	=?utf-8?B?VXArem0yRHRrNnQ2VUxlbWpTZ3hWUE8yYVE5NlE5ajhpVWZLSUJuZ01SZEtJ?=
 =?utf-8?B?dk1YQUplbHdVVDNybnhkSi9QMFlKM0xBYkJhTkc5M2dra2hvb0FvUFhWVjFS?=
 =?utf-8?B?VzVXakQxajV4dUh2M0VPRWFKYVhJZVhkby9aT3FmUERHUHlFQkZJMWJGSjB1?=
 =?utf-8?B?WkJWcmo0WXFaTitQdTRkSlZaald1SU1kUVF5cGNtL2F4bWFGK0Ztb1NRTi9t?=
 =?utf-8?B?cGw1UVhlSTRoRHc3aVhrMHIxRXkrNXJrS09YekprS1M4U1VLZlNIT05rbHFT?=
 =?utf-8?B?NlpIOWtSdlp6Q0ZBR1oyQk5HcnNMRFpwKzVMandPdkQ4clkwaExtaCtpd1Z6?=
 =?utf-8?B?WWxDbEszMGFpQkMwYWtSbmFJY1kzckhEemJ4RXpTalVPRXRhdFdpTEczVXdi?=
 =?utf-8?B?NjJHb0lTbUNRU3lQZGFocTY0RXNscmJzL0pYdko1RmtKYjdRL09OVmNaaVUy?=
 =?utf-8?B?R2VUcG1WeUtIZngzYURFa01nSys0T2l1RHlhdjhibHlqVU9KMzgyd3h4anBm?=
 =?utf-8?B?RmRMQzg4eFQwV0pYbUUxQkJiSklxSkRqMS9nSDh0WERhWFI1U3lqZ09aeFA4?=
 =?utf-8?B?N05PWWlhYld1YWtzM2lXYXhmRXlXQ1ZZUGNzWHBqNEE0bWg2TzJTSmh6cmY4?=
 =?utf-8?B?RHo1eEFXakFGd291bkwxSnpBNFNXczVvMWt1NjgwaW80Tkh1L3NPSHhLM1E5?=
 =?utf-8?B?L0IwZktWMHNFYlVEV0xwOEEzNXRZZTRXWUMxL0kvTDM1dDh3cU9aZVQ2TXF4?=
 =?utf-8?B?S0lCdkxNaXl6NDFLNzE0SGhnanJZeGNKdHB5ZFZwb2c3c1dVZ3d4dGFFZDdr?=
 =?utf-8?B?VjN4K0RzWGp5eGNBN095c0YrL0F5T0JIT3dlR05ONXlmams4bW1tZnpkMVRs?=
 =?utf-8?B?QWpHNU13bFBOa3hHelMrMkZyaGl2TmdleXJrYkNBa09hcmI1OFYvVkN0Y21y?=
 =?utf-8?B?RmZwdTJnYVBySEJ6bS9tRGFCMEhzb0RFSkNvY3lXbDZnRElsMktBMjFOU2pl?=
 =?utf-8?B?dnJZUHhXRUVxRFc3RGh5d2RpTytTVTJsZmU2d3VFY3MvbEhLUmN5S0RaTnEw?=
 =?utf-8?B?V2E4d3VsMDFxZlFIVnpvWTY4Rm5oM2RYZFp4MldKMWV6OStEUUJvTnVETkxm?=
 =?utf-8?B?ZXljMDhoR0NNemFYSWUrYUJKTzdYb0VCcHIydkVHUUJreXZUQlVYbUJ1VjFm?=
 =?utf-8?B?dUovU0o5NmQ5R3FmRUJyYjV5NzNSVTJGUEZMdmUxYmduR0pCcHNIL25Tckxu?=
 =?utf-8?B?dE94bzAzUU5HaGVDeElLQU1LVzc4NERsOVlrdTlyWHo2YVNTM1ROTFZXcUVT?=
 =?utf-8?B?OTIrOURYSVpwZ3ZCWUFvaWgxQzJiYVd2WDd2bDA3dmxqY2llWXNuaysyMkpv?=
 =?utf-8?B?RFlUYjlGbnN0WFFiWHZDNnY4THpNaXkxSmtFWHRRMUQ4d2xubmE2RnhqejZl?=
 =?utf-8?B?S0lHbTFMREYrYUFtcUdHQjhWRWw5bnZYWmRMU1p4ZnZheVhVclliV1NaTFYr?=
 =?utf-8?B?aEdnVEdLNmhTWDRqWXYvNWNEWGFKbnVkK0piZ0EvRHZqL0xkK05XcTFuRXZ5?=
 =?utf-8?B?eE5DeUhTVElaUkxBQ0JJc091cUsrbVpuYUpvRXg3T3Bqanh0Sm5lTHUwZTZm?=
 =?utf-8?B?aEIwc2dCZmprZWZ2alB5OFNGZmdsMnFZT0dlQ1RlYk42SFYrR01YckJsa3JG?=
 =?utf-8?B?TkVSMmpZT2tyY0FnY3VKanVKNzIwVUZ0R3VwREZYM0V3aEdGblJHNFk2ejRy?=
 =?utf-8?B?aHZYdmEwKzlLOGppQmVSZFIvMW9ha1ZrY3RPMzNVMEZMc2VBK1JxWWMrOWEw?=
 =?utf-8?B?QytBQ1RBTTNoa05nejNLSklYSnVXRk5mTnZwNitPOTlScW40ckFtWVZhbk9z?=
 =?utf-8?B?eldha3pNbTI2bmFWVkwycUJ5M3lDSzhYSHBlWUE4V3h2L2pKUlRaMkxUcUFM?=
 =?utf-8?Q?R3pqXw1TNHfwgonysu5Yt15NLczYVrVA?=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH7PR12MB5685.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(7416014)(376014)(366016)(1800799024);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?b3F6TDJvL1Vid1NvaGQ5bUVlYnVrbGNPeThBWFZsS21YdGx1c1lRRXFyRWZ6?=
 =?utf-8?B?SW1VOWg4dVpLMnNxbnlITFBFMEZkeXpwSUhMK3hxRUFGeFJjU1lPMXlIdVoy?=
 =?utf-8?B?a09CMHR2N0pPdlpWQ282Nmt4VkF5MEtzb29GdUdLWS9UWlliS3E4ZDRXeDVt?=
 =?utf-8?B?aDhidWc2T0dQaE5PV25JekVoTlY0TzlGekhONUdyM2gvcWZCbjRrbTMzQ3Nw?=
 =?utf-8?B?YjdZeGpBUGRHWHJVWHV6ancwajVZTWZXOVZ5T1R2c2NxM25XWW1GZkx5ZGV1?=
 =?utf-8?B?WTlQVmViK04zYmJIKzlwY0hPdE5FOWt0MXhPc1ZpNWhmYzBUWnIxOHJZS2M4?=
 =?utf-8?B?TTh4NmJFYW1xWmN1UmZnLzVaVVFYMG5kYmJiL25WTThnUzF1aUxXL0dCUmty?=
 =?utf-8?B?WUNoVWtaMEwxWXMxWGpkN0ZmRW04aVpnVjhEeHJTV244Uk9BZFhsdWRUYXEx?=
 =?utf-8?B?SUQ3b2pOWklTaE5oZE1sTnhMTnZIVXduQ2Z2SDljdm10RHI3UUxpWHBvamQ4?=
 =?utf-8?B?cjVYcnIzb05vMWlKV1RKWlp4NG1hcnpFMXovTXgxajB2WThaTWIxczg4U0dw?=
 =?utf-8?B?TllWNndabTk0dkZlUUl6NDM5d2N5bFRqUzd0ZlVZMk5EdzlDdEh1TWVKZGpq?=
 =?utf-8?B?VlVzS3RTSHFCaFBhNWlzUW0zeUo5bnN2dWRSUkgrVDg2YzJrL0Q5ZEFXTWE5?=
 =?utf-8?B?SjRpMEs4aGN6U28wRUFoWnNKMG5oOFYvSDdDWDEvazQzY0F1K1hxN3lwc01m?=
 =?utf-8?B?b25Id2VuZG1xc21SMmlRTTI1RFRyRkFTaWI0T3FFM0lqVll1akhhQ25DcW1Z?=
 =?utf-8?B?MlQ5ekxXckJvSmpjZU85TE9MeHAra2lneVk0UWtHWlNjU3hpWWlvK0t1Y0hW?=
 =?utf-8?B?Y1FDeEsyb3NXMGdGUGpaSDVudWlzZ3VORFMyNzVDSytRTDdYK3o3dXZRYXd3?=
 =?utf-8?B?Vmt3Y0JWRHZER2s0VVV3SEZYYVlUUFZSZ3E2Q2grNmcyeG5MdmlqdUt1L1Vy?=
 =?utf-8?B?SHY3NmpqaEV6OG80dmRLWXE1SndOWmdPeXg0STBJSXNsY3luTnN0dDZKSVVY?=
 =?utf-8?B?U0czNVdwakhRN1Uxd1B0MXltZ2N1WTIycjZaemMycDB0cE9IQlk2Z282Q3hH?=
 =?utf-8?B?b1FYeUo5ZDFDQ3lWUkZxZlh4aDJjMldzR3VSQXRYYWJHSHVzNzZUT1NuYUhT?=
 =?utf-8?B?RmtrOEVKUEUwNzJjV2t0UWdsWUpnWVY0ZHdZSEF6NTgzQitCbDVGdW13Y1py?=
 =?utf-8?B?OFByNVdxK2VuRlI0QVU0SVp5YUZ2OWQ1NngwR2x6MlRkcWIwVVhqdm5rYnJl?=
 =?utf-8?B?M05ydjdDdXl3Q0FrcU9wcklZUnZxUlN3TEtXaEJyRSs2cVdmQ3dDQUNtRlBW?=
 =?utf-8?B?dHBJcXkvR1JUVk9HMmFaeDNQWllUK0lRdVlGcDJtOVN0aWlzYkkwUGRRMnpp?=
 =?utf-8?B?TndkL3AvSUNycWZ1cE1OWDhscDl4RXVHRUNUOVl2TzZ0bGY4ZVpNOUhjZ2lZ?=
 =?utf-8?B?VnQvc2RRM1RCM1R4Q1JTQ2p3bS9lTnFyNjdJUEREYVFEOU8xdzl6Y00xck1v?=
 =?utf-8?B?aXZWMlpNZUN2UHRaeDNQUW5rQ0oweGgwUWtER01MVEx6TXhlOGEyNCtZbXBN?=
 =?utf-8?B?RU5zc0dDa0F0UXhoa0x2YXYwa3NpTVZRdlpHYnlJa2xBTHc2WjRFWVl3RzJl?=
 =?utf-8?B?RzFFTFlPS0hpbGJjMlNQRHM0SjhYekVuaC9KOTBsYjFrVTNoQ3ErNjIwZGda?=
 =?utf-8?B?alQ1cjBCT2JMcUVwMkx4NXRJb1RyYitDc29KZmZKK0I1SWtOYzdCaXJTb3Bs?=
 =?utf-8?B?MEU3Zmp5dUg0eFlHZThTekJGY0pab01QdUdHWkR6N0w0WDRVY0Z6THNnVkJx?=
 =?utf-8?B?cmVaa1YrQnFWTHNSbWsvdTA5V1pvVk4ydEhiRmp3c0lMWUp3dTVJY1IybFU4?=
 =?utf-8?B?MEg0YndzbWtpSTRQYzhHcysxRENwUFlBZGo2bUl2VEFYYm5nOTBGcWRQcWhw?=
 =?utf-8?B?VkdZZlAvTGRiR1ZRUWoyMjVIaENrVXVZOVdIZmZ4NkdmaDNsVnZmL2RlTHdM?=
 =?utf-8?B?VEVtS3VUbFFZeVByc096RW0yRHJodE1jMkphNTBmdDNtMzRJZGVXclJDVHV2?=
 =?utf-8?B?SEVqeVpKbDlxUDBCSkFOYnBCZEovSzJ2TkowMklBTERka21jdXFWa3BHN2Ft?=
 =?utf-8?B?L21mOFZ6MUVLaTlFZHNYUG03czFxWlJLRmFsYVJ0QnRlWWdUZW5wM2puN3NV?=
 =?utf-8?B?bmFOaytIRHB0YnUwb0UrTnZyaVBLUVBEek9ob0RCY2R1WXdDeFFlbStrdFNl?=
 =?utf-8?Q?PaswKQQmBB3VUf/9X2?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 90daa5e2-d153-46e6-6946-08de51f56b7b
X-MS-Exchange-CrossTenant-AuthSource: PH7PR12MB5685.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Jan 2026 16:12:44.9722
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: LQyKTMz/V0odcoaSlsxz5hvScDy7lQ0ZmC2xm2gv1cSajp+QjwC21HH2nZwOHNJZ
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR12MB5888
X-Rspamd-Queue-Id: CDFC53F901
X-Spamd-Bar: ----
X-Spamd-Result: default: False [-5.00 / 15.00];
	BAYES_HAM(-3.00)[99.98%];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[amd.com,quarantine];
	R_DKIM_ALLOW(-0.20)[amd.com:s=selector1];
	R_SPF_ALLOW(-0.20)[+ip4:40.107.0.0/16];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_POSSIBLE(0.00)[40.107.201.24:from];
	ASN(0.00)[asn:8075, ipnet:40.104.0.0/14, country:US];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[16];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-0.998];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCVD_IN_DNSWL_NONE(0.00)[40.107.201.24:from];
	RCVD_COUNT_TWO(0.00)[2];
	DNSWL_BLOCKED(0.00)[2603:10b6:510:13c::22:received];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[amd.com:+]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: SAVU75QFX4IEUI3V3U7AW5LTMPMJZQXF
X-Message-ID-Hash: SAVU75QFX4IEUI3V3U7AW5LTMPMJZQXF
X-MailFrom: Christian.Koenig@amd.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Simona Vetter <simona.vetter@ffwll.ch>, Leon Romanovsky <leon@kernel.org>, Sumit Semwal <sumit.semwal@linaro.org>, Alex Williamson <alex@shazbot.org>, Kevin Tian <kevin.tian@intel.com>, Joerg Roedel <joro@8bytes.org>, Will Deacon <will@kernel.org>, Robin Murphy <robin.murphy@arm.com>, linux-rdma@vger.kernel.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, kvm@vger.kernel.org, iommu@lists.linux.dev
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 0/4] dma-buf: add revoke mechanism to invalidate shared buffers
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/SAVU75QFX4IEUI3V3U7AW5LTMPMJZQXF/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gMS8xMi8yNiAxNjozNSwgSmFzb24gR3VudGhvcnBlIHdyb3RlOg0KPiBPbiBNb24sIEphbiAx
MiwgMjAyNiBhdCAwMzo1NjozMlBNICswMTAwLCBDaHJpc3RpYW4gS8O2bmlnIHdyb3RlOg0KPj4+
IFRoZSBwcm9ibGVtIHJldm9rZSBpcyBkZXNpZ25lZCB0byBzb2x2ZSBpcyB0aGF0IG1hbnkgaW1w
b3J0ZXJzIGhhdmUNCj4+PiBoYXJkd2FyZSB0aGF0IGNhbiBlaXRoZXIgYmUgRE1BJ2luZyBvciBm
YWlsaW5nLiBUaGVyZSBpcyBubyBmYXVsdA0KPj4+IG1lY2hhbmltcyB0aGF0IGNhbiBiZSB1c2Vk
IHRvIGltcGxlbWVudCB0aGUgZnVsbCAibW92ZSBhcm91bmQgZm9yIG5vDQo+Pj4gcmVhc29uIiBz
ZW1hbnRpY3MgdGhhdCBhcmUgaW1wbGllZCBieSBtb3ZlX25vdGlmeS4NCj4+DQo+PiBJbiB0aGlz
IGNhc2UganVzdCBjYWxsIGRtYV9idWZfcGluKCkuIFdlIGFscmVhZHkgc3VwcG9ydCB0aGF0DQo+
PiBhcHByb2FjaCBmb3IgUkRNQSBkZXZpY2VzIHdoaWNoIGNhbid0IGRvIE9EUC4NCj4gDQo+IFRo
YXQgYWxvbmUgaXNuJ3QgZ29vZCBlbm91Z2ggLSB0aGUgcGF0Y2ggYWRkaW5nIHRoZSBub24tT0RQ
IHN1cHBvcnQNCj4gYWxzbyBjb250YWluZWQgdGhpczoNCj4gDQo+IHN0YXRpYyB2b2lkDQo+IGli
X3VtZW1fZG1hYnVmX3Vuc3VwcG9ydGVkX21vdmVfbm90aWZ5KHN0cnVjdCBkbWFfYnVmX2F0dGFj
aG1lbnQgKmF0dGFjaCkNCj4gew0KPiAJc3RydWN0IGliX3VtZW1fZG1hYnVmICp1bWVtX2RtYWJ1
ZiA9IGF0dGFjaC0+aW1wb3J0ZXJfcHJpdjsNCj4gDQo+IAlpYmRldl93YXJuX3JhdGVsaW1pdGVk
KHVtZW1fZG1hYnVmLT51bWVtLmliZGV2LA0KPiAJCQkgICAgICAgIkludmFsaWRhdGUgY2FsbGJh
Y2sgc2hvdWxkIG5vdCBiZSBjYWxsZWQgd2hlbiBtZW1vcnkgaXMgcGlubmVkXG4iKTsNCj4gfQ0K
DQpZZWFoLCBJIGtub3cuIFRoYXQncyB3aGF0IEkgbWVhbnQgd2UgaGF2ZSB0byBiZXR0ZXIgZG9j
dW1lbnQgdGhpcy4NCg0KPiANCj4gc3RhdGljIHN0cnVjdCBkbWFfYnVmX2F0dGFjaF9vcHMgaWJf
dW1lbV9kbWFidWZfYXR0YWNoX3Bpbm5lZF9vcHMgPSB7DQo+IAkuYWxsb3dfcGVlcjJwZWVyID0g
dHJ1ZSwNCj4gCS5tb3ZlX25vdGlmeSA9IGliX3VtZW1fZG1hYnVmX3Vuc3VwcG9ydGVkX21vdmVf
bm90aWZ5LA0KPiB9Ow0KPiANCj4gU28gd2UgY2FuJ3QganVzdCBhbGxvdyBpdCB0byBhdHRhY2gg
dG8gZXhwb3J0ZXJzIHRoYXQgYXJlIGdvaW5nIHRvDQo+IHN0YXJ0IGNhbGxpbmcgbW92ZV9ub3Rp
Znkgd2hpbGUgcGlubmVkLg0KDQpUaGUgcG9pbnQgaXMgZXhwb3J0ZXJzIGFyZSBhbHJlYWR5IGRv
aW5nIHRoaXMuDQoNCj4gTG9va2luZyBhcm91bmQgSSBkb24ndCBzZWUgYW55b25lIGVsc2UgZG9p
bmcgc29tZXRoaW5nIGxpa2UgdGhpcywgYW5kDQo+IHJlYWRpbmcgeW91ciByZW1hcmtzIEkgdGhp
bmsgRUZBIGd1eXMgZ290IGl0IHdyb25nLiBTbyBJJ20gd29uZGVyaW5nDQo+IGlmIHRoaXMgc2hv
dWxkIG5vdCBoYXZlIGJlZW4gYWxsb3dlZC4gVW5mb3J0dW5hdGVseSA1IHllYXJzIGxhdGVyIEkn
bQ0KPiBwcmV0dHkgc3VyZSBpdCBpcyBiZWluZyB1c2VkIGluIHBsYWNlcyB3aGVyZSB3ZSBkb24n
dCBoYXZlIEhXIHN1cHBvcnQNCj4gdG8gaW52YWxpZGF0ZSBhdCBhbGwsIGFuZCBpdCBpcyBub3cg
d2VsbCBlc3RhYmxpc2hlZCB1QVBJIHRoYXQgd2UNCj4gY2FuJ3QganVzdCBicmVhay4NCj4gDQo+
IFdoaWNoIGlzIHdoeSB3ZSBhcmUgY29taW5nIHRvIG5lZ290aWF0aW9uIGJlY2F1c2UgYXQgbGVh
c3QgdGhlIGFib3ZlDQo+IGlzbid0IGdvaW5nIHRvIHdvcmsgaWYgbW92ZV9ub3RpZnkgaXMgY2Fs
bGVkIGZvciByZXZva2UgcmVhc29ucywgYW5kDQo+IHdlJ2QgbGlrZSB0byBibG9jayBhdHRhY2hp
bmcgZXhwb3J0ZXJzIHRoYXQgbmVlZCByZXZva2UgZm9yIHRoZSBhYm92ZS4NCg0KQWgsIHllcyB0
aGF0IG1ha2VzIHNlbnNlLiBUaGlzIGlzIGNsZWFybHkgYSBuZXcgcmVxdWlyZW1lbnQuDQoNClNv
IGJhc2ljYWxseSBmb3IgUENJZSBob3RwbHVnIHdhcyBhIHJhcmUgZXZlbnQgd2VyZSB3ZSBzYWlk
IHdlIGhhdmUgc29tZSBwcm9ibGVtcyB3aXRoIG5vbi1PRFAgYnV0IHdlIGNhbiBsaXZlIHdpdGgg
dGhhdCwgYnV0IGZvciB0aGlzIHVzZSBjYXNlIGhlcmUgaXQncyBtb3JlIGxpa2UgYSBwZXJmZWN0
bHkgbm9ybWFsIGNvbmRpdGlvbiB0aGF0IHVzZXJzcGFjZSBjYW4gdHJpZ2dlci4NCg0KU28gdGhl
IGV4cG9ydGVyIHdhbnRzIHRvIHJlamVjdCBpbXBvcnRlcnMgd2hpY2ggY2FuJ3QgaGFuZGxlIGEg
bWFwcGluZyBpbnZhbGlkYXRpb24gd2hpbGUgdGhlIEJPIGlzIHBpbm5lZCwgY29ycmVjdD8NCg0K
PiANCj4gU28sIHdvdWxkIHlvdSBiZSBoYXBwaWVyIHdpdGggdGhpcyBpZiB3ZSBkb2N1bWVudGVk
IHRoYXQgbW92ZV9ub3RpZnkNCj4gY2FuIGJlIGNhbGxlZCBmb3IgcGlubmVkIGltcG9ydGVycyBm
b3IgcmV2b2tlIHB1cnBvc2VzIGFuZCBmaWd1cmUgb3V0DQo+IHNvbWV0aGluZyB0byBtYXJrIHRo
ZSBhYm92ZSBhcyBzcGVjaWFsIHNvIGV4cG9ydGVycyBjYW4gZmFpbCBwaW4gaWYNCj4gdGhleSBh
cmUgZ29pbmcgdG8gY2FsbCBtb3ZlX25vdGlmeT8NCg0KVGhhdCB3b3VsZCB3b3JrIGZvciBtZS4g
SSBtZWFuIGl0IGlzIGFscmVhZHkgY3VycmVudCBwcmFjdGljZSwgd2UganVzdCBuZXZlciBmdWxs
eSBkb2N1bWVudGVkIGl0Lg0KDQo+IA0KPiBUaGVuIHRoaXMgc2VyaWVzIHdvdWxkIHRyYW5zZm9y
bSBpbnRvIGRvY3VtZW50YXRpb24sIG1ha2luZyBWRklPDQo+IGFjY2VwdCBwaW4gYW5kIGNvbnRp
bnVlIHRvIGNhbGwgbW92ZV9ub3RpZnkgYXMgaXQgZG9lcyByaWdodCBub3csIGFuZA0KPiBzb21l
IGxvZ2ljIHRvIHJlamVjdCB0aGUgUkRNQSBub24tT0RQIGltcG9ydGVyLg0KDQpJIHRoaW5rIHdl
IGp1c3QgbmVlZCB0byBleHBvc2UgdGhpcyB3aXRoIGZsYWdzIG9yIHNpbWlsYXIgZnJvbSB0aGUg
aW1wb3J0ZXIgc2lkZS4gQXMgZmFyIGFzIEkga25vdyBSRE1BIHdpdGhvdXQgT0RQIGlzIGN1cnJl
bnRseSB0aGUgb25seSBvbmUgcmVhbGx5IG5lZWRpbmcgdGhpcyAoZXhjZXB0IGZvciBjcm9zcyBk
ZXZpY2Ugc2Nhbm91dCwgYnV0IHRoYXQgaXMgc3BlY2lhbCBhbnl3YXkpLg0KDQpDaHJpc3RpYW4u
DQoNCj4gDQo+IEphc29uDQoNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlz
dHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1z
aWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=
