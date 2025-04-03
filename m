Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id D2DE0A7A2BA
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  3 Apr 2025 14:22:54 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id A8ECA450AC
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  3 Apr 2025 12:22:53 +0000 (UTC)
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (mail-dm6nam11on2063.outbound.protection.outlook.com [40.107.223.63])
	by lists.linaro.org (Postfix) with ESMTPS id F01E23F648
	for <linaro-mm-sig@lists.linaro.org>; Thu,  3 Apr 2025 12:22:49 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=amd.com header.s=selector1 header.b=yw8eayrw;
	dmarc=pass (policy=quarantine) header.from=amd.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1");
	spf=pass (lists.linaro.org: domain of Christian.Koenig@amd.com designates 40.107.223.63 as permitted sender) smtp.mailfrom=Christian.Koenig@amd.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=rFTHJssTHY5DWOAbaXqHaI+pmMDHeWsVYrJcoRDZVmE/4+QTv3V5Ku3+HgccSduCjMwBIz+OTTRWtPI3JZ59f0VoHR53rk9P8sAUwL5419r6M1RxRt5TUTUfR8INTakOvT4sifuIRvqPOpRuwNcN1iwqDpMUTEtjZfghvRiKq1ilG4dEjBruQ9wZ4MXEtGGIj9QAk7Glh6fxOwRqEJ6x6dXdNX8piGiBWfwbjxOcTEEG8a7gEos3lFqB4Opzylr2QpynfUX4yXItaXYQOXLenj3Qkaj3wH7MzUQym5SOkdDVc+4CfEPtb+/iBLCULquiGPhluTjEA6KrLk7OBqpNlA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=OltYQnaWPyrlEeNo+t0F7yYo4D31m3Eur4jIWsOD2V0=;
 b=osbUjBoZ68sgFI6CHgDXvTLIgOVuktced+6ngcl89UyztXcNZryLyeu3h+qlrmTddrfKqPnt3QM2o2YUv8SIFfJ3Co8W7DwfRUmLVXoIYLNc1OSuasnTMkqIS1XRjFIHvZE1rtf/isnzF1C0jMiOekAY8cPzWJqhMVzxBR+bSE2gClPh5ptA8sDsgxIqkLcP94b8WfdENWQDqc1aY9wUUEA5LAirhC3oriSfYA8wiMZunJ6pNBEejaGIVWNtxP6KTZmCRZ+taqnBY8KZGL5eRkvYZa7Q41yz0U92+KPaJIt/3hZBotuiIVH4e/wcO19sGfhXFNXD4tuwYPmhF+LKjw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=OltYQnaWPyrlEeNo+t0F7yYo4D31m3Eur4jIWsOD2V0=;
 b=yw8eayrwZpTKUXriN1PkX5KLpAL94mt23N+57DXoLxFvBNkvfd0Cp8xPuhxSvZ/ekaE5xe+eZOWbI+PW+aAUUs8Vh1gpiEGxTOhEnr9h1U2/5h+PyqvzJL8lwinDdBJQvIaYPlK3DWaPxMLLpMFp9AIx6rHIZht8Z/gwbsMPloI=
Received: from SJ0PR12MB5673.namprd12.prod.outlook.com (2603:10b6:a03:42b::13)
 by DS0PR12MB6464.namprd12.prod.outlook.com (2603:10b6:8:c4::5) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.8534.54; Thu, 3 Apr 2025 12:22:47 +0000
Received: from SJ0PR12MB5673.namprd12.prod.outlook.com
 ([fe80::ec7a:dd71:9d6c:3062]) by SJ0PR12MB5673.namprd12.prod.outlook.com
 ([fe80::ec7a:dd71:9d6c:3062%3]) with mapi id 15.20.8534.045; Thu, 3 Apr 2025
 12:22:47 +0000
Message-ID: <28343002-1a64-4409-b6c5-f9764705d939@amd.com>
Date: Thu, 3 Apr 2025 14:22:41 +0200
User-Agent: Mozilla Thunderbird
To: Danilo Krummrich <dakr@kernel.org>, phasta@kernel.org
References: <20250403101353.42880-2-phasta@kernel.org>
 <84b0db2de7a26aab00778bcaca15a0dffaa9c32a.camel@mailbox.org>
 <Z-5iK-mIYPIhanX-@pollux>
Content-Language: en-US
From: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
In-Reply-To: <Z-5iK-mIYPIhanX-@pollux>
X-ClientProxiedBy: FR2P281CA0052.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:93::15) To SJ0PR12MB5673.namprd12.prod.outlook.com
 (2603:10b6:a03:42b::13)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR12MB5673:EE_|DS0PR12MB6464:EE_
X-MS-Office365-Filtering-Correlation-Id: 17c99835-90c0-43aa-94ed-08dd72aa3e69
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|7416014|376014;
X-Microsoft-Antispam-Message-Info: 
	=?utf-8?B?L2dQanQ2bm1WSVZCdVJEMkE3c1BVdTNhdllOMzlJcTlJSy8wVm1uYnQxRk9P?=
 =?utf-8?B?cUhGKzlJT1pMYTFaTHN0c0F3UkovYVJwL0FUYmpnbm80WkRpNW4xWWNHWFZv?=
 =?utf-8?B?VUdhbUNhcURMRmNkVVJmNWNRbUVIdUFkTUZIU3A1Si93aUtoNlBoQndaQVlO?=
 =?utf-8?B?aTdlcVdvbE9ZSmYxQWZFOUo2cnJBL0ZGR2k2TUF3SDdIenhPL1p3QWhQQk1J?=
 =?utf-8?B?VXJHT2doWE84UFFmYk9JcVFnMkozbG91T1JZQkJZR081NkpvcS92WDNUL2RG?=
 =?utf-8?B?Q013ZW1DZmNXbmxkcWZKWmgvbEJmazRqMXU5MDVtZEQ1Vll5ZXdtNEJNczNu?=
 =?utf-8?B?ZjhoUjRWU3A4anVBaUN5NERlYlc1RE5WV2ZCWHBEYW5uV1JGSnk1Z0pMQ1Aw?=
 =?utf-8?B?RzdTMVl3dXZtT3c4Z3RIN2J2ZSsvZVJJT2FaMlE2TndYZlFDKy9qbmtUckFx?=
 =?utf-8?B?cUR0aS9IZzJvS0lnVVRDcjRBWSswS0JLMUJGTVRnL0IySk9YSjF5bmZiWmpl?=
 =?utf-8?B?bFc4SUhqcXR6ZnhZeldvNk5Jdm1CcGh5cDMxODRYUW0zMUFtQmJvYnBTVjFF?=
 =?utf-8?B?QjVFandHYnZJZStWek81d1JjbTJZN0xyREpYVnc2TG1ZR282WWw5bXQwYTZV?=
 =?utf-8?B?cFN6dHE3UFhaSlB1RVVVaFZFNks5a29XY3ZiNmJDb09kbmx2VEcxbVdNTzBo?=
 =?utf-8?B?d2ZPbUpZdjJBaHJjVW5oZTZZK1p5OUt2dnJKcjNraTB0KzdISzVjd05GeVFI?=
 =?utf-8?B?eCtWR0xqMjd3ajE2Tzk5VFEvODFxa1prYnIrOGM5QXBvQXVselREZURHUWVO?=
 =?utf-8?B?MVpxcCtQQ2x5bDliM21URFM4M1BwU29rRDBEck81ajZvNzJWSjlyNkM2bUlz?=
 =?utf-8?B?eUJ2UWEzNEo1UzhtZzNtS2QrZmdGa1c0UWVKeG9uOUlzNXpidDhaQTVYWStQ?=
 =?utf-8?B?QU1XOEQ2NHFhOUJKUTNhem8ybTRpcHF0KytxajdYTURYbS9CNEp1MXVZR3BU?=
 =?utf-8?B?NUEwOENXZkxPWk5mVHd0dmRKRmVZQnpQQmlYZlVBRUMzN3p1WHFiRHhNT1BE?=
 =?utf-8?B?R1VRczZMWjkzL0FXL2lTQkV0Y2swVXlBS1cvNHBaSXJya0lDeHZ2c29CQWRW?=
 =?utf-8?B?WXRQcVpLUVB6L0JPeHN3ZmRNaER1eEZZN0dET21iZU5GczdpK0E5Kzg0QmZk?=
 =?utf-8?B?K0FNM29ONldCbEgrQUN6WHdReHFva1MxcjVnc05ReDA5Wm9IT3pXZ053YkE4?=
 =?utf-8?B?a3lYZlN4RWJSMTYrdEdvYllGQXZEeUhPWXQrNzU1QWxsNEdSTUVwTDhMczgz?=
 =?utf-8?B?TFJtenBTTWErZ2FNbmc0MFNNczNONWhFQ3VIaE5VVjk2RDFKY3NyQXpPZlNi?=
 =?utf-8?B?UkVCK2FJQ2pJOHJ3NnVQUjQ3a1h6dUNKSHFkS2lZNjZkTjBPT0JEZHpxNUgz?=
 =?utf-8?B?WjRKZE1saWRkN3c2SlJQMzBPdlNvWEdZMDRzL25nK1ZXQXVSZ09QWERZK1VY?=
 =?utf-8?B?eC85blRCU2JkRnpTekhRZWNqcDJSd1pjbWIvWnlJS1Jmcm1mWFhGQmxSb2xZ?=
 =?utf-8?B?THBISjVGVmZlSk9keTZOU3dIU0ZDLzdUMzdwTjEwZHNETmN1eW9UKzhHTVpY?=
 =?utf-8?B?UjgyTCt3a1dMdVlTbGJvRmdYcjBYT3IwZzFrc3BqYVNOempWRlY4MTVCL3JM?=
 =?utf-8?B?VHJXM3NWc0FtOHU1NDhMeU00amx6dmx1V2x6VUlwM1V4eEtZMXl2VnhMUFhk?=
 =?utf-8?B?MlRSNWdZbklnRWFrb1AwckVSQThHUnNuRTlEb1U2ZkNqc0dBVVk0OENBN2h0?=
 =?utf-8?B?NXFQbnJQZXo1dWV6b3RDR1FBM1F5blZMVHA5bWJyWTAvYXVoNUNoUUpQNWQ1?=
 =?utf-8?Q?tJlLWK/s5f3Fu?=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SJ0PR12MB5673.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(366016)(7416014)(376014);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?WkhiSkJISVlGRnVWK29NdFJ0aFFydUI5bC9ka0ZhV0p4TEc2U0kybmxXaUJZ?=
 =?utf-8?B?ejhvVmhCWVVtS0FWcElHR0NLbXpWbVZBZ25CUGlrL2RuNWhubVNHYTdiVGw3?=
 =?utf-8?B?dittVG9tQVBvN2dVNHdZelBpQ3ZNV1NFcFZ0WWlxN1Q4UnBDWk44a2dTR2lZ?=
 =?utf-8?B?MmpHTHJBUm1USEVBTS8yMm5xNE13c2VHUjNBUXRqS3NiVHMrSzBDWlNjdkpr?=
 =?utf-8?B?UmgrUkdUd2I0R0RPeVhIajA2MmdtRGdKQWREYU16ak9OWDlHT1NEK1RabGlW?=
 =?utf-8?B?TnRubjNDcGF0dkJBRnpjTXoxUW1pOWJYNTA4aytQY2UxVFR2QklWcmMyL0tY?=
 =?utf-8?B?RnlRdG9iTTNZR0RMbjJkWS9tazFaV2JyTkZoczlQZGZDWUh3eGtSOXBvMGxj?=
 =?utf-8?B?NFQwTlRYS211b1BybStnalN2M2ZTTS9uMDN2ZSswT2NUVFRqUEFBcTFWclp5?=
 =?utf-8?B?bk5td3NQQzB2YUlneitFZmZyMzZKS1F6SUFyQTJ6clBTaXZyL0lVaEY1RHZw?=
 =?utf-8?B?SFA4Y1licUdOWEZaQmpGTkd5ZFl6cXk1YldzZ2R5dmJ6T0lPRnU5aHBPQXhV?=
 =?utf-8?B?cFdGTUU1U1VJL3hyLzIvZlNKUDljNkdKNTB5UmhQdnNuMjRnSFNCTi9vUjEz?=
 =?utf-8?B?QWZEWXBPYmRCU0ltSFh0Qm5Pcnp5U1hpbkxDSW1YRks5eS9WMkdZMWFrTDdr?=
 =?utf-8?B?SEp6VkZuRDE3M3RPcjg1Qk8zV2xhekFZRjNGRm84N0gyMnhyS2FPL0l6Z3BX?=
 =?utf-8?B?OGZwRVVXcmZOb2lBTVUrVjA0b1ZUblU0N3ZsZkorOTBITWJlcmVHSHlHdkhs?=
 =?utf-8?B?N0xGWTBPZlNQOXVUQ3NxSjAvZUlNUW1acnp4U0IrS0xDUXYzb3lVWjZJQlRk?=
 =?utf-8?B?cG51NXUwZTcxdWdSWC8waHZUYVpDaktxNEVYNGxGUlM0eHdOS0I1THlycmpX?=
 =?utf-8?B?MCtiY2k2NE5Fa1BQOUNyY0xUUjJDd0lwOGZSdDhIZUxVSU8vZkRLYml3aVQy?=
 =?utf-8?B?d21ZYkFPaHV4SWk4QXA4bWpZYkpISDZKMzY1YXRnT3UxZGlOSW9BcExvQU14?=
 =?utf-8?B?bG4vK25HMlhKa0p2TWEyUmxsK1ByWEo2ZUJsM0x1UGw3bk11ZXZjVk5vWE1I?=
 =?utf-8?B?OVZ1MTVJUDVBLzNvdnZFNnVlcE81ZVlObFVSVHh4emd5YlhaN01HbDR4Ly8x?=
 =?utf-8?B?c1hseTI4UjkzM3hpOHlSdUNkZ0NmNVZSeTk0aVNKdGljUWFqRHZadm9Pbndq?=
 =?utf-8?B?eEh0ZUw5aXdzd2szRk1JRURsSUQ4UDBQSUlRZndsU0NpbWhvb2pyaVNvWU1P?=
 =?utf-8?B?SndYSTQ5NURETWNLMmZpcFAwSnp5K2JKcFJrNjVkWG5yT04rakFsaU5xT3NE?=
 =?utf-8?B?Qmt5eHoxWWtGQ1FxOHRuUS9lWDBZcmlIRTY5SUlXL29VUFVIVUMxc3dncy9Z?=
 =?utf-8?B?UHRhSFh4bzN5RTU4ZkVjdTVRd1RML2JPRFE5Z2hTeUJueWxnV3NBVVNjc3RR?=
 =?utf-8?B?cjhQSXZxN0E4a1NQMjhadmtSRENPeThrQ0RKaG1sb0R5akl4d2dtUURxemFn?=
 =?utf-8?B?YXh0a1AzOTA4TUNiblhHVm1RUFhFWU9LVWNJdjVjUUxsdHQ0cXh4QnNCdElL?=
 =?utf-8?B?akYvOUhrOGVjYVBnMms0empoRXEvYk5JUjZrMmV3OVhLMTlZbEZFOTl5VWhE?=
 =?utf-8?B?KzdralMxVGdqTDBiYWdDZ2lYRjl5OHdERFVvdWNrZUJDVDRWcEo1bHo4ZUZP?=
 =?utf-8?B?TUlWNHRibGtkWHJtK05UWHRlM2NaaVpFNlZEM3NFRnNFVkt6SjZOU2hRWE9k?=
 =?utf-8?B?RklraXVxSWpPU0V2UTVqT1crRUhRSmZwTUVzSU9venpWQVg4MGcrY2R2NHdM?=
 =?utf-8?B?T20ya2ZiaGh0eDduaDc1QXR0NHJSbEU3Wmg0RldHMGtFMDVkcHBJQlZtKzhR?=
 =?utf-8?B?ZStEd2VoZkZLbUw5K29ucWdZcVpVMDZTM0FLT1IzelRLcWlGVk9XUEVyamlR?=
 =?utf-8?B?YmpiUDVPSU54bVhBQ1M1a0haM1o0eDFBN1dDY1dGM2I0UFNoNU4vcDBjNHNK?=
 =?utf-8?B?N3VEQlkyQVNtTTZ6azk0MURuQmhJdlR6a3kzR25aOXZBdXVxTVM0TU5aMW5B?=
 =?utf-8?Q?kSky2d6z2l3mYzhXmvRnmQcJP?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 17c99835-90c0-43aa-94ed-08dd72aa3e69
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR12MB5673.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Apr 2025 12:22:47.4809
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: HnifgguqHh/agpQVX9XH7GRLe0fbWL3VpgzK1fH5CWUPxxy7e4GoJFFjmDUpDNNJ
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR12MB6464
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
	RWL_MAILSPIKE_POSSIBLE(0.00)[40.107.223.63:from];
	RBL_SENDERSCORE_REPUT_8(0.00)[40.107.223.63:from];
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
X-Rspamd-Queue-Id: F01E23F648
X-Spamd-Bar: ----
Message-ID-Hash: V5X37QH25TXTDTIKS6SM3FMETEYLRBWF
X-Message-ID-Hash: V5X37QH25TXTDTIKS6SM3FMETEYLRBWF
X-MailFrom: Christian.Koenig@amd.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Lyude Paul <lyude@redhat.com>, Simona Vetter <simona@ffwll.ch>, Sumit Semwal <sumit.semwal@linaro.org>, dri-devel@lists.freedesktop.org, nouveau@lists.freedesktop.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, stable@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v2] drm/nouveau: Prevent signalled fences in pending list
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/V5X37QH25TXTDTIKS6SM3FMETEYLRBWF/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

QW0gMDMuMDQuMjUgdW0gMTI6MjUgc2NocmllYiBEYW5pbG8gS3J1bW1yaWNoOg0KPiBPbiBUaHUs
IEFwciAwMywgMjAyNSBhdCAxMjoxNzoyOVBNICswMjAwLCBQaGlsaXBwIFN0YW5uZXIgd3JvdGU6
DQo+PiBPbiBUaHUsIDIwMjUtMDQtMDMgYXQgMTI6MTMgKzAyMDAsIFBoaWxpcHAgU3Rhbm5lciB3
cm90ZToNCj4+PiAtc3RhdGljIGludA0KPj4+IC1ub3V2ZWF1X2ZlbmNlX3NpZ25hbChzdHJ1Y3Qg
bm91dmVhdV9mZW5jZSAqZmVuY2UpDQo+Pj4gK3N0YXRpYyB2b2lkDQo+Pj4gK25vdXZlYXVfZmVu
Y2VfY2xlYW51cF9jYihzdHJ1Y3QgZG1hX2ZlbmNlICpkZmVuY2UsIHN0cnVjdA0KPj4+IGRtYV9m
ZW5jZV9jYiAqY2IpDQo+Pj4gwqB7DQo+Pj4gLQlpbnQgZHJvcCA9IDA7DQo+Pj4gKwlzdHJ1Y3Qg
bm91dmVhdV9mZW5jZV9jaGFuICpmY3R4Ow0KPj4+ICsJc3RydWN0IG5vdXZlYXVfZmVuY2UgKmZl
bmNlOw0KPj4+ICsNCj4+PiArCWZlbmNlID0gY29udGFpbmVyX29mKGRmZW5jZSwgc3RydWN0IG5v
dXZlYXVfZmVuY2UsIGJhc2UpOw0KPj4+ICsJZmN0eCA9IG5vdXZlYXVfZmN0eChmZW5jZSk7DQo+
Pj4gwqANCj4+PiAtCWRtYV9mZW5jZV9zaWduYWxfbG9ja2VkKCZmZW5jZS0+YmFzZSk7DQo+Pj4g
wqAJbGlzdF9kZWwoJmZlbmNlLT5oZWFkKTsNCj4+PiDCoAlyY3VfYXNzaWduX3BvaW50ZXIoZmVu
Y2UtPmNoYW5uZWwsIE5VTEwpOw0KPj4+IMKgDQo+Pj4gwqAJaWYgKHRlc3RfYml0KERNQV9GRU5D
RV9GTEFHX1VTRVJfQklUUywgJmZlbmNlLT5iYXNlLmZsYWdzKSkNCj4+PiB7DQo+Pj4gLQkJc3Ry
dWN0IG5vdXZlYXVfZmVuY2VfY2hhbiAqZmN0eCA9DQo+Pj4gbm91dmVhdV9mY3R4KGZlbmNlKTsN
Cj4+PiAtDQo+Pj4gwqAJCWlmICghLS1mY3R4LT5ub3RpZnlfcmVmKQ0KPj4+IC0JCQlkcm9wID0g
MTsNCj4+PiArCQkJbnZpZl9ldmVudF9ibG9jaygmZmN0eC0+ZXZlbnQpOw0KPj4+IMKgCX0NCj4+
PiDCoA0KPj4+IMKgCWRtYV9mZW5jZV9wdXQoJmZlbmNlLT5iYXNlKTsNCj4+IFdoYXQgSSByZWFs
aXplZCB3aGlsZSBjb2RpbmcgdGhpcyB2MiBpcyB0aGF0IHdlIG1pZ2h0IHdhbnQgdG8gdGhpbmsN
Cj4+IGFib3V0IHdoZXRoZXIgd2UgcmVhbGx5IHdhbnQgdGhlIGRtYV9mZW5jZV9wdXQoKSBpbiB0
aGUgZmVuY2UgY2FsbGJhY2s/DQo+Pg0KPj4gSXQgc2hvdWxkIHdvcmsgZmluZSwgc2luY2UgaXQn
cyBleGFjdGx5IGlkZW50aWNhbCB0byB0aGUgcHJldmlvdXMNCj4+IGNvZGUncyBiZWhhdmlvciDi
gJMgYnV0IGVmZmVjdGl2ZWx5IGl0IG1lYW5zIHRoYXQgdGhlIGRyaXZlcidzIHJlZmVyZW5jZQ0K
Pj4gd2lsbCBiZSBkcm9wcGVkIHdoZW5ldmVyIGl0IHNpZ25hbHMgdGhhdCBmZW5jZS4NCj4gTm90
IHF1aXRlLCBpdCdzIHRoZSByZWZlcmVuY2Ugb2YgdGhlIGZlbmNlIGNvbnRleHQncyBwZW5kaW5n
IGxpc3QuDQo+DQo+IFdoZW4gdGhlIGZlbmNlIGlzIGVtaXR0ZWQsIGRtYV9mZW5jZV9pbml0KCkg
aXMgY2FsbGVkLCB3aGljaCBpbml0aWFsaXplcyB0aGUNCj4gcmVmZXJlbmNlIGNvdW50IHRvIDEu
IFN1YnNlcXVlbnRseSwgYW5vdGhlciByZWZlcmVuY2UgaXMgdGFrZW4sIHdoZW4gdGhlIGZlbmNl
DQo+IGlzIGFkZGVkIHRvIHRoZSBwZW5kaW5nIGxpc3QuIE9uY2UgdGhlIGZlbmNlIGlzIHNpZ25h
bGVkIGFuZCBoZW5jZSByZW1vdmVkIGZyb20NCj4gdGhlIHBlbmRpbmcgbGlzdCwgd2UgY2FuIChh
bmQgaGF2ZSB0bykgZHJvcCB0aGlzIHJlZmVyZW5jZS4NCg0KVGhlIGdlbmVyYWwgaWRlYSBpcyB0
aGF0IHRoZSBjYWxsZXIgbXVzdCBob2xkIHRoZSByZWZlcmVuY2UgdW50aWwgdGhlIHNpZ25hbGlu
ZyBpcyBjb21wbGV0ZWQuDQoNClNvIGZvciBzaWduYWxpbmcgZnJvbSB0aGUgaW50ZXJydXB0IGhh
bmRsZXIgaXQgbWVhbnMgdGhhdCB5b3UgbmVlZCB0byBjYWxsIGRtYV9mZW5jZV9wdXQoKSBmb3Ig
dGhlIGxpc3QgcmVmZXJlbmNlICphZnRlciogeW91IGNhbGxlZCBkbWFfZmVuY2Vfc2lnbmFsX2xv
Y2tlZCgpLg0KDQpGb3Igc2lnbmFsaW5nIGZyb20gdGhlIC5lbmFibGVfc2lnbmFsaW5nIG9yIC5z
aWduYWxlZCBjYWxsYmFjayB5b3UgbmVlZCB0byByZW1vdmUgdGhlIGZlbmNlIGZyb20gdGhlIGxp
bmtlZCBsaXN0IGFuZCBjYWxsIGRtYV9mZW5jZV9wdXQoKSAqYmVmb3JlKiB5b3UgcmV0dXJuIChi
ZWNhdXNlIHRoZSBjYWxsZXIgaXMgaG9sZGluZyB0aGUgcG90ZW50aWFsIGxhc3QgcmVmZXJlbmNl
KS4NCg0KVGhhdCdzIHdoeSBJJ20gcHJldHR5IHN1cmUgdGhhdCB0aGUgYXBwcm9hY2ggd2l0aCBp
bnN0YWxsaW5nIHRoZSBjYWxsYmFjayB3b24ndCB3b3JrLiBBcyBmYXIgYXMgSSBrbm93IG5vIG90
aGVyIERNQSBmZW5jZSBpbXBsZW1lbnRhdGlvbiBpcyBkb2luZyB0aGF0Lg0KDQpSZWdhcmRzLA0K
Q2hyaXN0aWFuLg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0gbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5h
cm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2
ZUBsaXN0cy5saW5hcm8ub3JnCg==
