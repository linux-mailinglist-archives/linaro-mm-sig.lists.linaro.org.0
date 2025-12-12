Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E6ECCB930F
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 12 Dec 2025 16:51:07 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 8B96C3F9AB
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 12 Dec 2025 15:51:06 +0000 (UTC)
Received: from CH4PR04CU002.outbound.protection.outlook.com (mail-northcentralusazon11013070.outbound.protection.outlook.com [40.107.201.70])
	by lists.linaro.org (Postfix) with ESMTPS id 8D0053F8F3
	for <linaro-mm-sig@lists.linaro.org>; Fri, 12 Dec 2025 15:50:50 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=amd.com header.s=selector1 header.b=yMV2TxFj;
	spf=pass (lists.linaro.org: domain of Christian.Koenig@amd.com designates 40.107.201.70 as permitted sender) smtp.mailfrom=Christian.Koenig@amd.com;
	dmarc=pass (policy=quarantine) header.from=amd.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=w/DNg3qw3erx8PHgePv1FeWdczEO3BXuSI/xycEXUsySF88SxOsdu77XpCIcf5gNaHT9Ckb6ymK77QtjcoWuYXNkhdaFm4Ta8pe+m8NwJy42TA9VyD/RTE0Xsaw0Uoc/8Ke/WbaQdZFmMg/em8VkcvxaNt6LwHlIUqXma2wNIqvDOxT6n/hsJfXoQefiUghq22ehgfpkCnY2mfCo+ynO6qvU12qDvBotAIqhy6pU2UDQbU0udBnRwazom8qBwvoZXf1gm64PjiHAnAe5t1omUpOAayPTq47DJQAa+KfxEPCwTZ65s+EEz5mtTA2cz33RpUnYqP6iMCvqxtBuGl/exQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=9JUNAD1Rv5wvgkrbi6bBy8Bm44zKbMiIyjDjJkrBZjo=;
 b=uwQbvgj75/seKXxlEh2/cDXH2/VftBU/VzmFWBPYdQ6IlCHW3GxYXQuq+kRUx6TiJkDJ8VqOuLxl7A1kM98zgiCjYq5yuMwvNY9zEXpzOBCrd52LodjsSiiOVWLuyCu5wxNO1EHOvNxNsvFHuhNZTIL2LQjLtCEtMWDoGaz1rmWGS1PmMx+DGnfp3xxeBOoVIa3j8+w2Zroo0alCAQ4dukdqGg5mb1qL1t8X/7pF4MrbVfhGo9TMTGZsguepUrp9vey+s8sK6mf82xIX7mAcy4ZWDA8uPY2EhWF2VKqNMj+A14aXJl4fW/QTiQtyNRdKHdF9pBjwA36IyeQqqRZPPg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=9JUNAD1Rv5wvgkrbi6bBy8Bm44zKbMiIyjDjJkrBZjo=;
 b=yMV2TxFj1MEyDpzVLXVI0eRufWzGjtcfBQbj7XoARuxUnF9fPjVMdAuF0sh7qLNIzWEgx954Ee+NN6kyz/GhRUUbrCllsyjzdlaz6NEdrOcsC3ekUA+2fvDiAVjpJyVuhk53MTiIHf3bI6KGo9WacBFLdvuRqc/qIP6VYrBaINs=
Received: from PH7PR12MB5685.namprd12.prod.outlook.com (2603:10b6:510:13c::22)
 by DS0PR12MB8043.namprd12.prod.outlook.com (2603:10b6:8:14d::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9412.9; Fri, 12 Dec
 2025 15:50:48 +0000
Received: from PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::46fb:96f2:7667:7ca5]) by PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::46fb:96f2:7667:7ca5%4]) with mapi id 15.20.9412.005; Fri, 12 Dec 2025
 15:50:48 +0000
Message-ID: <587fb06e-cfac-4603-b074-a9b382ecea31@amd.com>
Date: Fri, 12 Dec 2025 16:50:44 +0100
User-Agent: Mozilla Thunderbird
To: Tvrtko Ursulin <tursulin@ursulin.net>, phasta@mailbox.org,
 matthew.brost@intel.com, sumit.semwal@linaro.org
References: <20251211122407.1709-1-christian.koenig@amd.com>
 <20251211122407.1709-10-christian.koenig@amd.com>
 <9ef8686f-820f-41e9-985e-40411b4b9bd3@ursulin.net>
Content-Language: en-US
From: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
In-Reply-To: <9ef8686f-820f-41e9-985e-40411b4b9bd3@ursulin.net>
X-ClientProxiedBy: BN0PR04CA0003.namprd04.prod.outlook.com
 (2603:10b6:408:ee::8) To PH7PR12MB5685.namprd12.prod.outlook.com
 (2603:10b6:510:13c::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR12MB5685:EE_|DS0PR12MB8043:EE_
X-MS-Office365-Filtering-Correlation-Id: c40c7016-ff21-4b77-1b1d-08de3996380b
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info: 
	=?utf-8?B?SUp5R1VWYkxURzdEMmZFRUpGTGljYTdxVWhuR0VsZnVDQnR3UVJNTUVta1lM?=
 =?utf-8?B?eHZXd2lMNk9VQUE3a3RkMGRLK1RuamZlUTRJYklhbUQyTHBUT3lWb1hmL2ky?=
 =?utf-8?B?QWlhbU1iQmZ0eStrcUNUYjJaRjNOOXJGWDRWQit5VFBqYzhnMEFDRHBhLzlq?=
 =?utf-8?B?L1d5cnV3VGxuNnFmYmswWnowcllRdWZSa1VXRzlPdTI3aVpCZlB4UzB5MWN5?=
 =?utf-8?B?U3BkQ3kxNFc1UU1FZ0p0ZlFvNXh5WjRUeFBOSGRsV0JxUHVLbU94bWpGR3Nm?=
 =?utf-8?B?MWR5aWJEcENjU1AzQWJrTzJCSml5N2pJbDFvZ1NFQW1hZzVxRjJUZ0E1bnJi?=
 =?utf-8?B?NWkxOWNsMEcyVllxVWsvOVRBcFlLSEk0YnJFSTZVcXdOL0hXN0VhY0QyMUU3?=
 =?utf-8?B?Um9kakVMdFJ1cERDcGFhNmhYRmxUSW9vT1BNeXRpZ3h5QldQbGpGNitaQ2xy?=
 =?utf-8?B?Nys1OUczRWVHbGxMcTZLaXc4YUNVYjN3NW8wMFFKa1loTFBEMEF1WW0vbExU?=
 =?utf-8?B?U2MrOEl3dUZCaWtuMEtXNnVCa29rQmxVdW9zbFMydHFXcmhDRW91OVlad0xm?=
 =?utf-8?B?UTM2NzZIYnNpNElCL3BGOXFnR0hYRHRtQ2V0RzBlWWN1ZGlzM0Njd0EzUXdr?=
 =?utf-8?B?TDMrb2cxN0RiSlRWUy91N3dRSWxSRUh2Y1k1anJlOFBzQktmWGFIaTc1KytF?=
 =?utf-8?B?dTEzVW5IbVNSZDNzUk5DaExIdXFNT1IzaHpzc3JGSzE3bWFpdlpQSS9EOTdQ?=
 =?utf-8?B?QjBXMHMweFFJdlZZbDVObktsYlNFTStCNkUwNnFwK2pYOWRITGZxUlBQVU9D?=
 =?utf-8?B?b0ljL0N0emtlTjFkalhicWxMQnlKQ2JUS3JSLzQ1NXdUU1pNbFViQWpQdWRt?=
 =?utf-8?B?cDYvc1JlVHIrUDBERTd5TllOMERvR3IrWWU2ZFZCb1lVcDhYTEhQR3JTemJR?=
 =?utf-8?B?ZHhHRGptM3Iyc0k1MkR2eG93bUpSZ2Rqc3UyMVhFcmRSSzRJamZRL1VHYUps?=
 =?utf-8?B?NlBxL3BGVXlId29aSS95THJXL2dDWXUvLzdqUEJGTDg1VmRMNnd6YjFkQ2c2?=
 =?utf-8?B?SDVnNGhjbjByNW0vTEZxKzhtQTdRRmxlMkptSFpDVU42a1dkSDFhVFI1amRl?=
 =?utf-8?B?RnRXci85a0hYTWtvR2VOdGNhMkVqeFlHVXcrVytpYUR3cFZNckhPTUlDUWU3?=
 =?utf-8?B?TFBPLzM5M2d0aG9CZUtVQTdaNHNtamNqZ2tEaVdST3JERE1GamhLUHN0THJK?=
 =?utf-8?B?Zjg4c2NueC96dUpFcmlxU0RjYlF0cFBQV3VCaWp1RndYcUgyWFZKZkMvZ0tt?=
 =?utf-8?B?Q1pYRTV1ZENBRXN3WE1SZXFqd3V2VXRRWXQ2WEYrQngvTEdIQVdOVjZWQUhX?=
 =?utf-8?B?WkVWS01IeTV3RGM4RzdMeTlXSVI2RUp4R0ZEcDluRWFqSDZzUXp1NzBXWUZD?=
 =?utf-8?B?UEVpaHJNWFdmRFhPN2p2dlBWNEx6U0V0SjBLamhJV0xac2M5dmdLU1VzNU9X?=
 =?utf-8?B?VklpR082a1hNYWErb29qaWw5c3paUE5YQmlxY0lDSmM0VWhYNFVNSUVQWXZU?=
 =?utf-8?B?SHBWRnlEWVY5OHdYRTR6TUd5QmJvSmhmeit4cHRWVVpBbktXOFV4R3ZHSk02?=
 =?utf-8?B?bk9jckdVTUhmTW5vMjVNQmI0ajFpMjRpenltUmNSMWRrdER3WmZqOC9KZ25v?=
 =?utf-8?B?TjVPcWZNbnFlRHUvZXJXTFJrTEM0bW9EampHNjZxUWpyM0ppM3VsWHBCbU5N?=
 =?utf-8?B?MzdBakppOXFWOXRvREFOY0ZMRUY5eE80amFoS0ZCWVZpdys0YnhsS1NBZ0JO?=
 =?utf-8?B?MmhPOWRueWVyWWJNZGFlM24rdm81RjBGZnorOElPRjV1RVBicUVZSGJMNHd3?=
 =?utf-8?B?eEs0TGExeU5aVEtwbE1SRG41SERWY2hkSmw2Wm0wMmhPc0FDeU1hWWFEOFB5?=
 =?utf-8?Q?nnDEKlZq2SCdCCeO75r24r6TgjNbHOD7?=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH7PR12MB5685.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(376014)(1800799024);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?cjlDUEJlSVZlWEhIZEpCL1djQ3VWZmRJSTkrRkFXZXJtYklDVGZ4UHZza2ZO?=
 =?utf-8?B?am5lZFcvSlNFeTdYYVl0M1NUTjBCVjZpQTRpZzRONkZTTm9LOUNkcjViN3NW?=
 =?utf-8?B?YkE5K2l1QTU1RCtja2FFLzZYZXVzQmhKVyswLzZVWnhjZm0xNTV3U1VBRXJl?=
 =?utf-8?B?RTF4UlF0NmRDTVdWMDJtUk96SEQ4Q0txTW1UNDlUa2dtMlRhSkhGeUhicUk1?=
 =?utf-8?B?SEZRRzVuQ0NxdkxabG5OcDRQNUFUN3ZzSld2cjROZlhpWnVDSWgvR3YyNlZx?=
 =?utf-8?B?eHhUQmRuYzk0MlAvMnEwVWluT0dZc3ZKY2xaRVpWRjk3bUg3NmtSWE9LWHBw?=
 =?utf-8?B?UzBxbmp5LzZnK2dMazBEQWJBWHhEaFBSbzBYNWorSHdKcm1kK1J6Zk5nUHRz?=
 =?utf-8?B?emcvZmN6c1liYnd5WjFTdStpSGVvd2xXaHc3R2NLOG5SVE90VldVR00rMXZC?=
 =?utf-8?B?c0tuelR1eElxaWQySndkdTgvRjJ4OEJmb1EzNlUyNy90VkZzZERMQXkyWXIz?=
 =?utf-8?B?aEpmNFFiSVlubHhlQ0lEc3A2VEd3SmN2MURHTkY4NjZIOHJBbUMvM3U0WFQ5?=
 =?utf-8?B?bFcyTGNvekVwaGlza1pUR3hTVVVoSlR4c05POUJxWjh0YXp5enU5RkU0aE5m?=
 =?utf-8?B?dENyVnZNcW52NDNidGxodDFWcTJ5MUROTmdhZHAxVTUzNjUvSC8zRm4xekJ3?=
 =?utf-8?B?azZIMnFhT3hnWGNsNWZ1bG12NTJmZW5Gd1VFRTYyWDZVNmVONDN6Nk5sMUhn?=
 =?utf-8?B?TjJJUDVGUVZENDJjVk0vay9VbzNhRjIrVGI1NGpJOVBoN2M2S0xzZ2lwS1pw?=
 =?utf-8?B?Q25TOU9jbzlqcmo3U3BwMUVzdHlFcXgrSEhNREJmdUUzdVhUZkpXcTREVzZS?=
 =?utf-8?B?V2U0bUt4eXZ4ZWYrYlFLQXdQdXdWc0Z2VSt4em1nMGQrZHV6dW40Tm5kTnlH?=
 =?utf-8?B?MHl3MkFYVWx0ak1UbTNvV2wwMUI2bHBXMVNqa3RXKzV6NXl5UG1YL0UvUVgx?=
 =?utf-8?B?VXNHb09uTGMwOHdWUTZEcHVXTkVnaGIrMmpIc0RpUDN1Qi9DK2k0WmJMdUxN?=
 =?utf-8?B?eW9rMGlHVitKM2NLOEpjUXNZMEdESjJOcEFZdHhWWk4xclZVazNVejZzRzVF?=
 =?utf-8?B?c1pQOHd6SldSNytzd3pEMDI5UVZuem9OTzBzYVJQTUxsOHNCYTdxVTdHSU5h?=
 =?utf-8?B?RDhPcTRrczBLYjZRSnlTY0pCNU5RWW5IS3lhTHZnSC9ESXpJdG1jN2JKaXpz?=
 =?utf-8?B?UVBkb2x1eXR1Y0svWEtReU1aTEhxN3JvT0dJU2NMdGhUTzduSlRCaHZlbkdv?=
 =?utf-8?B?a3ZsMERsTDIzL0dYWFFMVm03Sk9aeXpyN2xIVk51RDFhdU1udkdBUDYyaU1O?=
 =?utf-8?B?YjNWcm00UFh0VXVtblpPUHR0VXJnMDFYZWsrbGtXNXA1MU9QTHNZVVBMQ29z?=
 =?utf-8?B?NkliOTl4MmpXUGM2UEROOXJGQU83RmR3UzRueU1KSHVlM0hXTGw4SkNuU1Qr?=
 =?utf-8?B?VzIzaC9Cb3hMeDFoODREWllqbEppSlE3NUhTaHlmYzNxcDhQK3lKN00vMEJE?=
 =?utf-8?B?cExTOUdBb0RPUTJUcCs4WXIrSnhGcERhS21kQVc3YUhiNEZ6KzJ6MkVOb2Fq?=
 =?utf-8?B?KzloM0U2SU9pem51dnRzWElKR1E3TXVGOVJKSWNLcE5qTHJKUkRzTzVieDdZ?=
 =?utf-8?B?ZkpaWW16RGpBV1o2Rlh3VTB4YzFCY0M0aWxhTGNXMFhCUU16MDZWaG9iU2hk?=
 =?utf-8?B?c1JDd0xQQmo1YjJGRFJEZFY5bm5IQTdHWGNJVHlkamc3aGs1dElVY2hMeHhU?=
 =?utf-8?B?K2lSQnRYK1Qydm56YUticE1TSGZabVBVSzE5VUdoWUlRY2ZxUERFNmdsNzJo?=
 =?utf-8?B?VHFYWnJ3YUU3ekI2UWNzTG5GbEtsNldKb2pFQVdVeisxcVA2dXdtYTZRMG96?=
 =?utf-8?B?dDluSEp2cllUU2ludE1XTjdGYTZPVW15WUYxczRFOUs3cmtxOE54SW1KY2c1?=
 =?utf-8?B?blRleUttTUlYZzRvaXFCanFJSnRiTFJMa2k1MVBWaDJhSzgwT2Y2OWlnejls?=
 =?utf-8?B?NENHL2t4L0ZKRStDT2lrZGVoM0V2dzROUWgyQktzQ2piRDdhZXptZy94RFJ1?=
 =?utf-8?Q?uuq9Iu370+aN23NkGyF3LADEM?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c40c7016-ff21-4b77-1b1d-08de3996380b
X-MS-Exchange-CrossTenant-AuthSource: PH7PR12MB5685.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Dec 2025 15:50:48.4419
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: VoUePfGfVCc7wHEtWrEU/z8bobovF1ZDyJ0tX7Cgde/pQD16wTz0gZhkEPXYtntc
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR12MB8043
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-5.00 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[amd.com,quarantine];
	R_DKIM_ALLOW(-0.20)[amd.com:s=selector1];
	R_SPF_ALLOW(-0.20)[+ip4:40.107.0.0/16];
	MIME_GOOD(-0.10)[text/plain];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:8075, ipnet:40.104.0.0/14, country:US];
	TO_DN_SOME(0.00)[];
	RWL_MAILSPIKE_POSSIBLE(0.00)[40.107.201.70:from];
	BLOCKLISTDE_FAIL(0.00)[40.107.201.70:server fail];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	URIBL_BLOCKED(0.00)[amd.com:mid,amd.com:email,amd.com:dkim,amd.com:from_smtp,amd.com:from_mime,CH4PR04CU002.outbound.protection.outlook.com:helo,mail-northcentralusazon11013070.outbound.protection.outlook.com:rdns];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	RCVD_COUNT_TWO(0.00)[2];
	DNSWL_BLOCKED(0.00)[2603:10b6:510:13c::22:received,40.107.201.70:from];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[amd.com:+]
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 8D0053F8F3
X-Spamd-Bar: -----
Message-ID-Hash: JXKJJJVI6QLJJLDWGFHT5PCUQDBUBQNL
X-Message-ID-Hash: JXKJJJVI6QLJJLDWGFHT5PCUQDBUBQNL
X-MailFrom: Christian.Koenig@amd.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 09/19] drm/sched: use inline locks for the drm-sched-fence
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/JXKJJJVI6QLJJLDWGFHT5PCUQDBUBQNL/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gMTIvMTEvMjUgMTY6MTMsIFR2cnRrbyBVcnN1bGluIHdyb3RlOg0KPiANCj4gT24gMTEvMTIv
MjAyNSAxMzoxNiwgQ2hyaXN0aWFuIEvDtm5pZyB3cm90ZToNCj4+IFVzaW5nIHRoZSBpbmxpbmUg
bG9jayBpcyBub3cgdGhlIHJlY29tbWVuZGVkIHdheSBmb3IgZG1hX2ZlbmNlIGltcGxlbWVudGF0
aW9ucy4NCj4+DQo+PiBTbyB1c2UgdGhpcyBhcHByb2FjaCBmb3IgdGhlIHNjaGVkdWxlciBmZW5j
ZXMgYXMgd2VsbCBqdXN0IGluIGNhc2UgaWYNCj4+IGFueWJvZHkgdXNlcyB0aGlzIGFzIGJsdWVw
cmludCBmb3IgaXRzIG93biBpbXBsZW1lbnRhdGlvbi4NCj4+DQo+PiBBbHNvIHNhdmVzIGFib3V0
IDQgYnl0ZXMgZm9yIHRoZSBleHRlcm5hbCBzcGlubG9jay4NCj4+DQo+PiBTaWduZWQtb2ZmLWJ5
OiBDaHJpc3RpYW4gS8O2bmlnIDxjaHJpc3RpYW4ua29lbmlnQGFtZC5jb20+DQo+PiAtLS0NCj4+
IMKgIGRyaXZlcnMvZ3B1L2RybS9zY2hlZHVsZXIvc2NoZWRfZmVuY2UuYyB8IDcgKysrLS0tLQ0K
Pj4gwqAgaW5jbHVkZS9kcm0vZ3B1X3NjaGVkdWxlci5owqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
IHwgNCAtLS0tDQo+PiDCoCAyIGZpbGVzIGNoYW5nZWQsIDMgaW5zZXJ0aW9ucygrKSwgOCBkZWxl
dGlvbnMoLSkNCj4+DQo+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL3NjaGVkdWxlci9z
Y2hlZF9mZW5jZS5jIGIvZHJpdmVycy9ncHUvZHJtL3NjaGVkdWxlci9zY2hlZF9mZW5jZS5jDQo+
PiBpbmRleCAwOGNjYmRlOGIyZjUuLjQ3NDcxYjllNDNmOSAxMDA2NDQNCj4+IC0tLSBhL2RyaXZl
cnMvZ3B1L2RybS9zY2hlZHVsZXIvc2NoZWRfZmVuY2UuYw0KPj4gKysrIGIvZHJpdmVycy9ncHUv
ZHJtL3NjaGVkdWxlci9zY2hlZF9mZW5jZS5jDQo+PiBAQCAtMTYxLDcgKzE2MSw3IEBAIHN0YXRp
YyB2b2lkIGRybV9zY2hlZF9mZW5jZV9zZXRfZGVhZGxpbmVfZmluaXNoZWQoc3RydWN0IGRtYV9m
ZW5jZSAqZiwNCj4+IMKgwqDCoMKgwqAgLyogSWYgd2UgYWxyZWFkeSBoYXZlIGFuIGVhcmxpZXIg
ZGVhZGxpbmUsIGtlZXAgaXQ6ICovDQo+PiDCoMKgwqDCoMKgIGlmICh0ZXN0X2JpdChEUk1fU0NI
RURfRkVOQ0VfRkxBR19IQVNfREVBRExJTkVfQklULCAmZi0+ZmxhZ3MpICYmDQo+PiDCoMKgwqDC
oMKgwqDCoMKgwqAga3RpbWVfYmVmb3JlKGZlbmNlLT5kZWFkbGluZSwgZGVhZGxpbmUpKSB7DQo+
PiAtwqDCoMKgwqDCoMKgwqAgc3Bpbl91bmxvY2tfaXJxcmVzdG9yZSgmZmVuY2UtPmxvY2ssIGZs
YWdzKTsNCj4+ICvCoMKgwqDCoMKgwqDCoCBkbWFfZmVuY2VfdW5sb2NrX2lycXJlc3RvcmUoZiwg
ZmxhZ3MpOw0KPiANCj4gUmViYXNlIGVycm9yIEkgZ3Vlc3MuIFB1bGwgaW50byB0aGUgbG9ja2lu
ZyBoZWxwZXJzIHBhdGNoLg0KDQpObyB0aGF0IGlzIGFjdHVhbGx5IGNvbXBsZXRlbHkgaW50ZW50
aW9uYWwgaGVyZS4NCg0KUHJldmlvdXNseSB3ZSBoYWQgYSBzZXBhcmF0ZSBsb2NrIHdoaWNoIHBy
b3RlY3RlZCBib3RoIHRoZSBETUEtZmVuY2VzIGFzIHdlbGwgYXMgdGhlIGRlYWRsaW5lIHN0YXRl
Lg0KDQpOb3cgd2UgdHVybiB0aGF0IHVwc2lkZSBkb3duIGJ5IGRyb3BwaW5nIHRoZSBzZXBhcmF0
ZSBsb2NrIGFuZCBwcm90ZWN0aW5nIHRoZSBkZWFkbGluZSBzdGF0ZSB3aXRoIHRoZSBkbWFfZmVu
Y2UgbG9jayBpbnN0ZWFkLg0KDQpSZWdhcmRzLA0KQ2hyaXN0aWFuLg0KDQo+IA0KPiBSZWdhcmRz
LA0KPiANCj4gVHZydGtvDQo+IA0KPj4gwqDCoMKgwqDCoMKgwqDCoMKgIHJldHVybjsNCj4+IMKg
wqDCoMKgwqAgfQ0KPj4gwqAgQEAgLTIxNyw3ICsyMTcsNiBAQCBzdHJ1Y3QgZHJtX3NjaGVkX2Zl
bmNlICpkcm1fc2NoZWRfZmVuY2VfYWxsb2Moc3RydWN0IGRybV9zY2hlZF9lbnRpdHkgKmVudGl0
eSwNCj4+IMKgIMKgwqDCoMKgwqAgZmVuY2UtPm93bmVyID0gb3duZXI7DQo+PiDCoMKgwqDCoMKg
IGZlbmNlLT5kcm1fY2xpZW50X2lkID0gZHJtX2NsaWVudF9pZDsNCj4+IC3CoMKgwqAgc3Bpbl9s
b2NrX2luaXQoJmZlbmNlLT5sb2NrKTsNCj4+IMKgIMKgwqDCoMKgwqAgcmV0dXJuIGZlbmNlOw0K
Pj4gwqAgfQ0KPj4gQEAgLTIzMCw5ICsyMjksOSBAQCB2b2lkIGRybV9zY2hlZF9mZW5jZV9pbml0
KHN0cnVjdCBkcm1fc2NoZWRfZmVuY2UgKmZlbmNlLA0KPj4gwqDCoMKgwqDCoCBmZW5jZS0+c2No
ZWQgPSBlbnRpdHktPnJxLT5zY2hlZDsNCj4+IMKgwqDCoMKgwqAgc2VxID0gYXRvbWljX2luY19y
ZXR1cm4oJmVudGl0eS0+ZmVuY2Vfc2VxKTsNCj4+IMKgwqDCoMKgwqAgZG1hX2ZlbmNlX2luaXQo
JmZlbmNlLT5zY2hlZHVsZWQsICZkcm1fc2NoZWRfZmVuY2Vfb3BzX3NjaGVkdWxlZCwNCj4+IC3C
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgICZmZW5jZS0+bG9jaywgZW50aXR5LT5mZW5jZV9j
b250ZXh0LCBzZXEpOw0KPj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgTlVMTCwgZW50
aXR5LT5mZW5jZV9jb250ZXh0LCBzZXEpOw0KPj4gwqDCoMKgwqDCoCBkbWFfZmVuY2VfaW5pdCgm
ZmVuY2UtPmZpbmlzaGVkLCAmZHJtX3NjaGVkX2ZlbmNlX29wc19maW5pc2hlZCwNCj4+IC3CoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgICZmZW5jZS0+bG9jaywgZW50aXR5LT5mZW5jZV9jb250
ZXh0ICsgMSwgc2VxKTsNCj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIE5VTEwsIGVu
dGl0eS0+ZmVuY2VfY29udGV4dCArIDEsIHNlcSk7DQo+PiDCoCB9DQo+PiDCoCDCoCBtb2R1bGVf
aW5pdChkcm1fc2NoZWRfZmVuY2Vfc2xhYl9pbml0KTsNCj4+IGRpZmYgLS1naXQgYS9pbmNsdWRl
L2RybS9ncHVfc2NoZWR1bGVyLmggYi9pbmNsdWRlL2RybS9ncHVfc2NoZWR1bGVyLmgNCj4+IGlu
ZGV4IGZiODgzMDFiM2M0NS4uYjc3ZjI0YTc4M2UzIDEwMDY0NA0KPj4gLS0tIGEvaW5jbHVkZS9k
cm0vZ3B1X3NjaGVkdWxlci5oDQo+PiArKysgYi9pbmNsdWRlL2RybS9ncHVfc2NoZWR1bGVyLmgN
Cj4+IEBAIC0yOTcsMTAgKzI5Nyw2IEBAIHN0cnVjdCBkcm1fc2NoZWRfZmVuY2Ugew0KPj4gwqDC
oMKgwqDCoMKgwqDCoMKgwqAgKiBiZWxvbmdzIHRvLg0KPj4gwqDCoMKgwqDCoMKgwqDCoMKgwqAg
Ki8NCj4+IMKgwqDCoMKgwqAgc3RydWN0IGRybV9ncHVfc2NoZWR1bGVywqDCoMKgICpzY2hlZDsN
Cj4+IC3CoMKgwqDCoMKgwqDCoCAvKioNCj4+IC3CoMKgwqDCoMKgwqDCoMKgICogQGxvY2s6IHRo
ZSBsb2NrIHVzZWQgYnkgdGhlIHNjaGVkdWxlZCBhbmQgdGhlIGZpbmlzaGVkIGZlbmNlcy4NCj4+
IC3CoMKgwqDCoMKgwqDCoMKgICovDQo+PiAtwqDCoMKgIHNwaW5sb2NrX3TCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgIGxvY2s7DQo+PiDCoMKgwqDCoMKgwqDCoMKgwqAgLyoqDQo+PiDCoMKgwqDCoMKg
wqDCoMKgwqDCoCAqIEBvd25lcjogam9iIG93bmVyIGZvciBkZWJ1Z2dpbmcNCj4+IMKgwqDCoMKg
wqDCoMKgwqDCoMKgICovDQo+IA0KDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0tc2ln
QGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBsaW5hcm8t
bW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
