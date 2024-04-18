Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 78AF88A9372
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 18 Apr 2024 08:46:25 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 10667410BA
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 18 Apr 2024 06:46:24 +0000 (UTC)
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (mail-dm6nam12on2078.outbound.protection.outlook.com [40.107.243.78])
	by lists.linaro.org (Postfix) with ESMTPS id 3BEF6410BA
	for <linaro-mm-sig@lists.linaro.org>; Thu, 18 Apr 2024 06:46:21 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=amd.com header.s=selector1 header.b="r/UpCe65";
	dmarc=pass (policy=quarantine) header.from=amd.com;
	spf=pass (lists.linaro.org: domain of Christian.Koenig@amd.com designates 40.107.243.78 as permitted sender) smtp.mailfrom=Christian.Koenig@amd.com;
	arc=pass ("microsoft.com:s=arcselector9901:i=1")
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=L4LRLAyyxNwe1fZK59qRyKewvZQUJtJwALO3DIvcR0RqDE5xBvyfFlYXBT2OLX+eVtLfbuOSiQg9wfA7OJrqxTH1KeasaThKWvlW2GI7T9JKnljSoxBQvppcPAb+MGXswJDB+2LFA8VwWh3N3LuUDQogYrOoqMf9aYfQBZByL3r47z3Vz6U6k4TOTN6ETOaC500zvtQS86i71K2UHkWUYj3bz8DNskM9AxFuDovVBWvyfmrhnD3mc1BPkx18zCCH5be9Y1d4DndQt5LKecBg8+d2/m7IpIpGdXk5YqH2SiN31v6ZGBK2NonrL/L9Fo8fwgmif36StylkQ07uOlhgBA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=TARrtCyDCfzkoT0VW9l2Z8qCWst5hEfR07nQejtsTFQ=;
 b=fMf2paEpRpTwH3cjCPCS05ymrKEDr+gOaXhJEmE8otVspPueVevDnB05oJirFi5+xpGpmMfkVQpgBhJ+97DhX/nmOi3iSBM031ecZ9I7zwWSGkxFIfSIIAbdfFby0Jtc1va+x1HpIzw6adje4sB8xcUr8IkqMpaRXRdGwqKnoRfzIHQ2d6ppz1dOyNFsLoFmvedeBM+REH7JheO4vqZHr4RB1Uu88NERpIzTU2uGYRn03qT1ctugog4Zy7BSavjzzMhh7JzPu/cVYrCAykBIMcTCU+0NIzy+JWUoIXh1EOUwFbRYPYfgWqq5l/M84GbAMVxawomzsZA7ByJDkcuVLw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=TARrtCyDCfzkoT0VW9l2Z8qCWst5hEfR07nQejtsTFQ=;
 b=r/UpCe65DDNQnNwOFnkg+vCI4BPpsRlJ0RcWSErtRz+A+UY61GFWGohqni+jjmuFFdvKBvbeCiOO66WrJPnaUiBu6VKh3EM2gUW4YxY3mCNI8w/2AqkzpbzimbuPRLgmXzcSAdIY8n4MSXmn71tQm/i+zVd4MM8Y9T0ha66tXgk=
Received: from SJ0PR12MB5673.namprd12.prod.outlook.com (2603:10b6:a03:42b::13)
 by CH3PR12MB9023.namprd12.prod.outlook.com (2603:10b6:610:17b::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7472.37; Thu, 18 Apr
 2024 06:46:16 +0000
Received: from SJ0PR12MB5673.namprd12.prod.outlook.com
 ([fe80::f7eb:b717:d637:dcf7]) by SJ0PR12MB5673.namprd12.prod.outlook.com
 ([fe80::f7eb:b717:d637:dcf7%6]) with mapi id 15.20.7452.049; Thu, 18 Apr 2024
 06:46:16 +0000
Message-ID: <d4209754-5f26-422d-aca0-45cccbc44ad0@amd.com>
Date: Thu, 18 Apr 2024 08:46:09 +0200
User-Agent: Mozilla Thunderbird
To: zhiguojiang <justinjiang@vivo.com>, "T.J. Mercier" <tjmercier@google.com>
References: <20240327022903.776-1-justinjiang@vivo.com>
 <5cf29162-a29d-4af7-b68e-aac5c862d20e@amd.com>
 <cc7defae-60c1-4cc8-aee5-475d4460e574@vivo.com>
 <23375ba8-9558-4886-9c65-af9fe8e8e8b6@amd.com>
 <CABdmKX2Kf4ZmVzv3LGTz2GyP-9+rAtFY9hSAxdkrwK8mG0gDvQ@mail.gmail.com>
 <e55cad9b-a361-4d27-a351-f6a4f5b8b734@vivo.com>
 <40ac02bb-efe2-4f52-a4f2-7b56d9b93d2c@amd.com>
 <4fedd80c-d5b6-4478-bfd3-02d1ee1a26e5@vivo.com>
 <aab5ec51-fcff-44f2-a4f5-2979bd776a03@amd.com>
 <2ebca2fd-9465-4e64-b3cc-ffb88ef87800@vivo.com>
Content-Language: en-US
From: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
In-Reply-To: <2ebca2fd-9465-4e64-b3cc-ffb88ef87800@vivo.com>
X-ClientProxiedBy: VI1P190CA0038.EURP190.PROD.OUTLOOK.COM
 (2603:10a6:800:1bb::9) To SJ0PR12MB5673.namprd12.prod.outlook.com
 (2603:10b6:a03:42b::13)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR12MB5673:EE_|CH3PR12MB9023:EE_
X-MS-Office365-Filtering-Correlation-Id: ef0750dd-0b95-4ebe-c1a6-08dc5f733ec2
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	=?utf-8?B?YzhXKzhxUFZwSVJWbUEweGR3YUY3TVE3ckhjUklEYTZ1ZEQ3VUQ0WDVGU0Jl?=
 =?utf-8?B?MTY1QVUrNGMvMElKaitvcXB1eFZ0R0NaYmlTMGFTR0wwM3d2MXpDWEhSbkhx?=
 =?utf-8?B?aUZ2YkZPbmZxMUR4WWYzelRuSEUrcUJENUZIay9HaXlzb2dQU2tYekc0TWFt?=
 =?utf-8?B?L3M4alo5M1IyRjE4eldjdnpUR1lIOTloYmo4NTdNYmhLV21WZ0pFYU55VmNy?=
 =?utf-8?B?c2ZwTnJSdFN2MkVzSXhUWlFZeDJidGt0SUx1Y0gyVTJyNU1JQ0hGVE82dXhP?=
 =?utf-8?B?Ui9TeUNHSXlOKzJJRmRqajQzWkZFZ3FlUHpycTJ2UTdjbHF6YUdOZVlsblRN?=
 =?utf-8?B?bkp6eWtxWjlEM0N5WFFzM3kwZjdxMkVHUm4xVGFQM1dzZS8wSkduZVlTU1N6?=
 =?utf-8?B?U2NJa3ZmYjB5Z2JXc3o4UE16clpDTk5JVHVic1RhNkc5TXZYY3NhQ3A4UU9P?=
 =?utf-8?B?OGdvditGaXF3VSs5WFBuMk01d1FmQWY2dUVIS21RdGYwTjJITlR3blNSemQ2?=
 =?utf-8?B?NkdvMm5OWVNaKzQwa1FVS0RObzVwQXcxMGZwQktPbG5ySFBHN2RnR2JkNkFR?=
 =?utf-8?B?cksvZXlHTllRRnUvMHhudHVKVzdNUzNzdXozb2dEdGpzQ0QrSGwvNVcwWCtT?=
 =?utf-8?B?VFN4L0xudUlJVzhpQmZ5dHBzWm1CL1hJNzBIb3VUL05vc1grZDkzbmFKVHNE?=
 =?utf-8?B?Z1R5aHpabkJ3S1JaUHFRbmI0Z3VpMjgrOUhUK0RQUERpbzR3SDZOc0QwUmxB?=
 =?utf-8?B?S3NpSW1iMVVmbnphb3BlOUNaRi83djJ1SGpkejJSb09BTTVyZE1qSWZoNm1r?=
 =?utf-8?B?bHlnc2tNcGloOVlPMWxVb3BJN0xmWmIwQ3hpV3laTGNzTW5pZGZDVVJ0ZDZC?=
 =?utf-8?B?KzJuakkzbnVxaWRTYXlkaEl0dEcyRmxGZjFYTnZzTXhONlN6VGpxcnp6dWtU?=
 =?utf-8?B?RFRpd2txRkw4NkthcW92TUk4dUcwRnBUSDZpcWZNRDZma040eXZSVzNTNVhK?=
 =?utf-8?B?T3lVaEY3SUt2OW10SnhuVkJjbk9rcjA0SlcrT3VOL0VPS1hQYnMvUGw2Z3NY?=
 =?utf-8?B?NklQa1Y5SWFXZHA5eUk1S0tGcDlBRFc4OWdNM1FtaDQrV0dDQTFBOTBkM2Zh?=
 =?utf-8?B?T3lMVWZ3VCtlRHNNa3FJMXNrUlY5RjI1amhmVkRsdkZkMlBXNjUxYzFUOCs1?=
 =?utf-8?B?OUlYSHkwWlF0bTcwbk1RR2ZXK202T2FFdUxoazNibFE2dWlwekUrN3BIaDdx?=
 =?utf-8?B?MWFDZzcySWpSbjRJR1pLWFFvckFpN0tlNjN4bzAyRXZtMW5zVkRzcjZyOG1D?=
 =?utf-8?B?S0V6aUdZVW1ud2dLbzZURGREaWxoek9rUGJPOCtTdVhCYkNhTXEvUVc2cE5Z?=
 =?utf-8?B?SmIvc2RPOW9zKzM2Z3FsRUdVV3QvYVRWcFpZOE1DUjhsaHRJTUdLT3pEV00x?=
 =?utf-8?B?WFR0bkZDRGIzL3FGNWlPWmVqMFRrRWFkYmQ2UmFUVWZjQldzNkY1cG1ldmRr?=
 =?utf-8?B?QWFuN3RGeG5pYkZQVHVLcUUyU3Q3UHNEMFlUOFkzSlNTc1RwYzhQYjRsUHFy?=
 =?utf-8?B?QzYwcnQxaG8zTHpGSEcyem1QRk9NTkN1UWhsTkhrM2VVVTg4UEpyQnZRcHAr?=
 =?utf-8?B?S3NLeVhUa3pUSlovb2VidmE2V3l1SnBFV1JVTy84SnNTZzhYYkFzcE5ZNHBV?=
 =?utf-8?B?UjdldFloU21MdnJIekV2Yi9PVWJ2cU0xajdDWTE3eUx4MVZGczVrZkN3PT0=?=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SJ0PR12MB5673.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(366007)(376005)(1800799015);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?OGVZMDRiYitseE9oOW1PM1YrejNyc2lERlE1M2VKZFQzbFVCbDhwUnJ1djRo?=
 =?utf-8?B?MUJ6RXptRlpPZUYrdktzdmZnNVl3ejlhR3F6bkxJdFhTaG9vdHljbzNXSGxW?=
 =?utf-8?B?SkFINnVPakVwZkdWZll0UnlWekp6UnI5c2x4YjlXL0pJVGo5dGNiaVNRMUVy?=
 =?utf-8?B?QjJ1dmhxMGJ3VmtremQvQmJRV1htYkw5Qm0yYWRhd2hwb2o4RVN5MWxPWGNN?=
 =?utf-8?B?VGU0VGpNNlZ2Mmt1bGRxLzMzeGZTWThRcU1LQWlkSjFRZUE1K2sxNEorVWNv?=
 =?utf-8?B?YUdhTzdqenFPd1JGMjZUcnpFaS9mOWVmTXZPYXNpeHNVNDE3b0VJUm5jdmla?=
 =?utf-8?B?b3FQa0FxdGg0WUhRbXN3SHh4UE56UStwOGt3N2tDVlBpNk5CVlVvSmVPRy8y?=
 =?utf-8?B?WXFKd3BxZTNMUW5IQW1GamdXQmI2bWF3QTYzSlVSQ1M1VFFCUjR3L1drQnJD?=
 =?utf-8?B?ZSt5dzI2dHAxdmcrK1U5RTZXWEtRWjE2WVk2UE5BemhhVmZuaGtPL3krcmtJ?=
 =?utf-8?B?N2orRnkyckNIWHFBVFVTb0VuNmhqWHJuN3E2emE4LzBjdUdwbEdEb2g2Q2Zk?=
 =?utf-8?B?elgrZW50U25ZL0pGSWZWdFNySG9DSmV6S2dVWFhpT0cvR1BzUDNMZkp2bjla?=
 =?utf-8?B?TFRPQnIzck9XbUdZbFdRTVhRYzVleGFSNUlPWEU3SmZsV3I1MHNVTWVUcUMw?=
 =?utf-8?B?MVZ2YVBYNTQxZUU3T3MzQzd2NXZmS0xEUUxldHFDaFhTdHpJR01kcVVCTkZx?=
 =?utf-8?B?ayt6TWlHN3hKeU94dXdCZTFiR2FUcmlOeDgzVTdnUmIwcmd6YkNMOGVkSVVr?=
 =?utf-8?B?VzBlaUlpNTB1MFQvSHJibC80N1ptOUVGbXZIcWtnMktFVVR1dW4wS1NRUUxx?=
 =?utf-8?B?d0hPUmVNVEx2R3U0cjZOcytGeGtxTC9lRWFpNlJPMEp3dnVoVWtjTGpOMjFp?=
 =?utf-8?B?bjFIeG43RDl3aDRlelBzZFkzOVpTTVFsZWljL1ppRHhUamhXNnpQYmN5dFBH?=
 =?utf-8?B?ZSt0U0dvQmFXNkFyd3BWV2FRNEVOWWpybUtHdjlpanB5ODgrSXhsbW9RUnZL?=
 =?utf-8?B?VXgwYjIrRkNsVGNHamNiQkc5SDc2ZExVU3NDdEhaS3BLSVlGcjY4empoSlNR?=
 =?utf-8?B?cUkzanpXWmpjYkZzd2Z2OE5zUlFkK1JRZW9rYVp2SDFXYWVwaU9RODAxYXlT?=
 =?utf-8?B?anlMajVYUUlZajFIdFRhTkRmV2hIUFZEWlNKZ3Y5WnRRVXFnTmRWaDdZU0Vz?=
 =?utf-8?B?NjlLM0wzMDV4SHNIbmp6SE1kT2cvbmszY2EwdHM4V201RVRsT1c0RHA3aEoz?=
 =?utf-8?B?ZEtGc21WVzFwSmN4c25iMnBRZ252Zllrb0F5NTcrWXdva3c3ekljcDFMS0Iy?=
 =?utf-8?B?Z2NaNEt1UzZRMGJQQjNxVzdqeHJFTThiMW9lczBQNDMxV0NPOEoyQlNySVdI?=
 =?utf-8?B?eHNNalVkbE1OeUZwMEQwYkhEVkJQZU1DMEx1UXQ0UFVjb0pON3dFOG5JZ1Q0?=
 =?utf-8?B?ZWJTZlFQTVNtQkJiTDR6TVVWYmwyQ2xuQnlPYjEyMzdpa3VuTFhUYzh2OWFn?=
 =?utf-8?B?VURKdVhzSCtxS2dOMDY3RVdLT21wUmRERTJVd1hGQTZVRFA1TGdyT0VWTVEr?=
 =?utf-8?B?MGJKNGxBQWgrUFphazgxWXJlTlZ4Yi9pQ1E4UkpmZGZaTXRsRk5Fa2l1cFYw?=
 =?utf-8?B?aTZvcDdaZFFoV1o0L1RuMXpDcnQrcmFEWllSTWdDNnNMOXd6TEFEMkxKa1d2?=
 =?utf-8?B?bWpMOUU2YkhQaFFDaitCUlNhU0w5K2V2S01sZktFYW1Fb2ljdk5ncWVhblg2?=
 =?utf-8?B?Z1VXZ1p1YWlkZlEvaS9LT3E3QkZ3SVhNODNaQk4wYzM5eTdITlFGOGZYdFhY?=
 =?utf-8?B?dzl1UUNycU5zT1lWUmtOZm8rL0Y4L21MUzhhb2c3TmFmNHFhOUxxakFkSEo4?=
 =?utf-8?B?QlVzeTNMZ014MDVoeWFqc1pMQzdzNW42UUFZeUM5UTV2eE1XTU9PZnM5aGtv?=
 =?utf-8?B?TlRNbHJXWjYyMG9ibUlIMjRUbmdrbkU3SWt1MTFENmhzamlRZFlrdGVJVGYr?=
 =?utf-8?B?UGVxSHJvdXBoMEt3VTRrMXN4dkNEN3hqWU1xaC94OVlEUklPY2k1T0JqSldn?=
 =?utf-8?Q?Y9IivweqMQOM6Rjal1V1K8te7?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ef0750dd-0b95-4ebe-c1a6-08dc5f733ec2
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR12MB5673.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Apr 2024 06:46:15.9665
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: SGH65eWGuKOkKAh7WbK5lVN+x/Zdy53towuLOY6CotaM1gF9kRo9vjBONLEtuBmF
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR12MB9023
X-Rspamd-Queue-Id: 3BEF6410BA
X-Spamd-Bar: ----
X-Spamd-Result: default: False [-4.99 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector9901:i=1];
	DMARC_POLICY_ALLOW(-0.50)[amd.com,quarantine];
	R_DKIM_ALLOW(-0.20)[amd.com:s=selector1];
	R_SPF_ALLOW(-0.20)[+ip4:40.107.0.0/16];
	MIME_GOOD(-0.10)[text/plain];
	XM_UA_NO_VERSION(0.01)[];
	MIME_TRACE(0.00)[0:+];
	RWL_MAILSPIKE_POSSIBLE(0.00)[40.107.243.78:from];
	ASN(0.00)[asn:8075, ipnet:40.104.0.0/14, country:US];
	RCPT_COUNT_SEVEN(0.00)[8];
	NEURAL_HAM(-0.00)[-1.000];
	TO_DN_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	RCVD_TLS_LAST(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	DKIM_TRACE(0.00)[amd.com:+]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: Z46KV6UXAVZYNSAHLZA7CIBSOZCCPOAL
X-Message-ID-Hash: Z46KV6UXAVZYNSAHLZA7CIBSOZCCPOAL
X-MailFrom: Christian.Koenig@amd.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Sumit Semwal <sumit.semwal@linaro.org>, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, opensource.kernel@vivo.com
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] dmabuf: fix dmabuf file poll uaf issue
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/Z46KV6UXAVZYNSAHLZA7CIBSOZCCPOAL/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

QW0gMTguMDQuMjQgdW0gMDM6MzMgc2NocmllYiB6aGlndW9qaWFuZzoNCj4g5ZyoIDIwMjQvNC8x
NSAxOTo1NywgQ2hyaXN0aWFuIEvDtm5pZyDlhpnpgZM6DQo+PiBbU29tZSBwZW9wbGUgd2hvIHJl
Y2VpdmVkIHRoaXMgbWVzc2FnZSBkb24ndCBvZnRlbiBnZXQgZW1haWwgZnJvbSANCj4+IGNocmlz
dGlhbi5rb2VuaWdAYW1kLmNvbS4gTGVhcm4gd2h5IHRoaXMgaXMgaW1wb3J0YW50IGF0IA0KPj4g
aHR0cHM6Ly9ha2EubXMvTGVhcm5BYm91dFNlbmRlcklkZW50aWZpY2F0aW9uIF0NCj4+DQo+PiBB
bSAxNS4wNC4yNCB1bSAxMjozNSBzY2hyaWViIHpoaWd1b2ppYW5nOg0KPj4+IOWcqCAyMDI0LzQv
MTIgMTQ6MzksIENocmlzdGlhbiBLw7ZuaWcg5YaZ6YGTOg0KPj4+PiBbU29tZSBwZW9wbGUgd2hv
IHJlY2VpdmVkIHRoaXMgbWVzc2FnZSBkb24ndCBvZnRlbiBnZXQgZW1haWwgZnJvbQ0KPj4+PiBj
aHJpc3RpYW4ua29lbmlnQGFtZC5jb20uIExlYXJuIHdoeSB0aGlzIGlzIGltcG9ydGFudCBhdA0K
Pj4+PiBodHRwczovL2FrYS5tcy9MZWFybkFib3V0U2VuZGVySWRlbnRpZmljYXRpb24gXQ0KPj4+
Pg0KPj4+PiBBbSAxMi4wNC4yNCB1bSAwODoxOSBzY2hyaWViIHpoaWd1b2ppYW5nOg0KPj4+Pj4g
W1NOSVBdDQo+Pj4+PiAtPiBIZXJlIHRhc2sgMjIyMCBkbyBlcG9sbCBhZ2FpbiB3aGVyZSBpbnRl
cm5hbGx5IGl0IHdpbGwgZ2V0L3B1dCANCj4+Pj4+IHRoZW4NCj4+Pj4+IHN0YXJ0IHRvIGZyZWUg
dHdpY2UgYW5kIGxlYWQgdG8gZmluYWwgY3Jhc2guDQo+Pj4+Pg0KPj4+Pj4gSGVyZSBpcyB0aGUg
YmFzaWMgZmxvdzoNCj4+Pj4+DQo+Pj4+PiAxLiBUaHJlYWQgQSBpbnN0YWxsIHRoZSBkbWFfYnVm
X2ZkIHZpYSBkbWFfYnVmX2V4cG9ydCwgdGhlIGZkIA0KPj4+Pj4gcmVmY291bnQNCj4+Pj4+IGlz
IDENCj4+Pj4+DQo+Pj4+PiAyLiBUaHJlYWQgQSBhZGQgdGhlIGZkIHRvIGVwb2xsIGxpc3Qgdmlh
IGVwb2xsX2N0bChFUE9MTF9DVExfQUREKQ0KPj4+Pj4NCj4+Pj4+IDMuIEFmdGVyIHVzZSB0aGUg
ZG1hIGJ1ZiwgVGhyZWFkIEEgY2xvc2UgdGhlIGZkLCB0aGVuIGhlcmUgZmQgDQo+Pj4+PiByZWZj
b3VudA0KPj4+Pj4gaXMgMCwNCj4+Pj4+IMKgIGFuZCBpdCB3aWxsIHJ1biBfX2ZwdXQgZmluYWxs
eSB0byByZWxlYXNlIHRoZSBmaWxlDQo+Pj4+DQo+Pj4+IFN0b3AsIHRoYXQgaXNuJ3QgY29ycmVj
dC4NCj4+Pj4NCj4+Pj4gVGhlIGZzIGxheWVyIHdoaWNoIGNhbGxzIGRtYV9idWZfcG9sbCgpIHNo
b3VsZCBtYWtlIHN1cmUgdGhhdCB0aGUgZmlsZQ0KPj4+PiBjYW4ndCBnbyBhd2F5IHVudGlsIHRo
ZSBmdW5jdGlvbiByZXR1cm5zLg0KPj4+Pg0KPj4+PiBUaGVuIGluc2lkZSBkbWFfYnVmX3BvbGwo
KSB3ZSBhZGQgYW5vdGhlciByZWZlcmVuY2UgdG8gdGhlIGZpbGUgd2hpbGUNCj4+Pj4gaW5zdGFs
bGluZyB0aGUgY2FsbGJhY2s6DQo+Pj4+DQo+Pj4+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqAgLyogUGFpcmVkIHdpdGggZnB1dCBpbiBkbWFfYnVmX3BvbGxf
Y2IgKi8NCj4+Pj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oCBnZXRfZmlsZShkbWFidWYtPmZpbGUpOw0KPj4+IEhpLA0KPj4+DQo+Pj4gVGhlIHByb2JsZW0g
bWF5IGp1c3Qgb2NjdXJyZWQgaGVyZS4NCj4+Pg0KPj4+IElzIGl0IHBvc3NpYmxlIGZpbGUgcmVm
ZXJlbmNlIGNvdW50IGFscmVhZHkgZGVjcmVhc2VkIHRvIDAgYW5kIGZwdXQNCj4+PiBhbHJlYWR5
IGJlaW5nIGluIHByb2dyZXNzaW5nIGp1c3QgYmVmb3JlIGNhbGxpbmcNCj4+PiBnZXRfZmlsZShk
bWFidWYtPmZpbGUpIGluIGRtYV9idWZfcG9sbCgpPw0KPj4NCj4+IE5vLCBleGFjdGx5IHRoYXQg
aXNuJ3QgcG9zc2libGUuDQo+Pg0KPj4gSWYgYSBmdW5jdGlvbiBnZXRzIGEgZG1hX2J1ZiBwb2lu
dGVyIG9yIGV2ZW4gbW9yZSBnZW5lcmFsIGFueSByZWZlcmVuY2UNCj4+IGNvdW50ZWQgcG9pbnRl
ciB3aGljaCBoYXMgYWxyZWFkeSBkZWNyZWFzZWQgdG8gMCB0aGVuIHRoYXQgaXMgYSBtYWpvcg0K
Pj4gYnVnIGluIHRoZSBjYWxsZXIgb2YgdGhhdCBmdW5jdGlvbi4NCj4+DQo+PiBCVFc6IEl0J3Mg
Y29tcGxldGVseSBpbGxlZ2FsIHRvIHdvcmsgYXJvdW5kIHN1Y2ggaXNzdWVzIGJ5IHVzaW5nDQo+
PiBmaWxlX2NvdW50KCkgb3IgUkNVIGZ1bmN0aW9ucy4gU28gd2hlbiB5b3Ugc3VnZ2VzdCBzdHVm
ZiBsaWtlIHRoYXQgaXQNCj4+IHdpbGwgaW1tZWRpYXRlbHkgZmFjZSByZWplY3Rpb24uDQo+Pg0K
Pj4gUmVnYXJkcywNCj4+IENocmlzdGlhbi4NCj4gSGksDQo+DQo+IFRoYW5rcyBmb3IgeW91ciBr
aW5kIGNvbW1lbnQuDQo+DQo+ICdJZiBhIGZ1bmN0aW9uIGdldHMgYSBkbWFfYnVmIHBvaW50ZXIg
b3IgZXZlbiBtb3JlIGdlbmVyYWwgYW55IHJlZmVyZW5jZQ0KPg0KPiBjb3VudGVkIHBvaW50ZXIg
d2hpY2ggaGFzIGFscmVhZHkgZGVjcmVhc2VkIHRvIDAgdGhlbiB0aGF0IGlzIGEgbWFqb3INCj4N
Cj4gYnVnIGluIHRoZSBjYWxsZXIgb2YgdGhhdCBmdW5jdGlvbi4nDQo+DQo+IEFjY29yZGluZyB0
byB0aGUgaXNzdWUgbG9nLCB3ZSBjYW4gc2VlIHRoZSBkbWEgYnVmIGZpbGUgY2xvc2UgYW5kIA0K
PiBlcG9sbCBvcGVyYXRpb24gcnVubmluZyBpbiBwYXJhbGxlbC4NCj4NCj4gQXBwYXJlbnRseSBh
dCB0aGUgbW9tZW50IGNhbGxlciBjYWxscyBlcG9sbCwgYWx0aG91Z2ggYW5vdGhlciB0YXNrIA0K
PiBjYWxsZXIgYWxyZWFkeSBjYWxsZWQgY2xvc2Ugb24gdGhlIHNhbWUgZmQsIGJ1dCB0aGlzIGZk
IHdhcyBzdGlsbCBpbiANCj4gcHJvZ3Jlc3MgdG8gY2xvc2UsIHNvIGZkIGlzIHN0aWxsIHZhbGlk
LCB0aHVzIG5vIEVCQURGIHJldHVybmVkIHRvIA0KPiBjYWxsZXIuDQoNCk5vLCBleGFjdGx5IHRo
YXQgY2FuJ3QgaGFwcGVuIGVpdGhlci4NCg0KQXMgZmFyIGFzIEkgY2FuIHNlZSB0aGUgRVBPTEwg
aG9sZHMgYSByZWZlcmVuY2UgdG8gdGhlIGZpbGVzIGl0IA0KY29udGFpbnMuIFNvIGl0IGlzIHBl
cmZlY3RseSB2YWxpZCB0byBhZGQgdGhlIGZpbGUgZGVzY3JpcHRvciB0byBFUE9MTCANCmFuZCB0
aGVuIGNsb3NlIGl0Lg0KDQpJbiB0aGlzIGNhc2UgdGhlIGZpbGUgd29uJ3QgYmUgY2xvc2VkLCBi
dXQgYmUga2VwdCBhbGl2ZSBieSBpdCdzIA0KcmVmZXJlbmNlIGluIHRoZSBFUE9MTCBmaWxlIGRl
c2NyaXB0b3IuDQoNCj4NCj4gVGhlbiB0aGUgdHdvIHRhc2sgY29udGV4dHMgb3BlcmF0ZSBvbiBz
YW1lIGRtYSBidWYgZmQob25lIGlzIGNsb3NlLCANCj4gYW5vdGhlciBpcyBlcG9sbCkgaW4ga2Vy
bmVsIHNwYWNlLg0KPg0KPiBQbGVhc2Uga2luZGx5IGhlbHAgdG8gY29tbWVudCB3aGV0aGVyIGFi
b3ZlIHNjZW5hcmlvIGlzIHBvc3NpYmxlLg0KPg0KPiBJZiB0aGVyZSBpcyBzb21lIGJ1ZyBpbiB0
aGUgY2FsbGVyIGxvZ2ljLCBDYW4gdSBoZWxwIHRvIHBvaW50IGl0IG91dD8gOikNCg0KV2VsbCB3
aGF0IGNvdWxkIGJlIGlzIHRoYXQgdGhlIEVQT0xMIGltcGxlbWVudGF0aW9uIGlzIGJyb2tlbiBz
b21laG93LCANCmJ1dCBJIGhhdmUgcmVhbGx5IGRvdWJ0cyBvbiB0aGF0Lg0KDQpBcyBJIHNhaWQg
YmVmb3JlIHRoZSBtb3N0IGxpa2VseSBleHBsYW5hdGlvbiBpcyB0aGF0IHlvdSBoYXZlIGEgYnJv
a2VuIA0KZGV2aWNlIGRyaXZlciB3aGljaCBtZXNzZXMgdXAgdGhlIERNQS1idWYgZmlsZSByZWZl
cmVuY2UgY291bnQgc29tZWhvdy4NCg0KUmVnYXJkcywNCkNocmlzdGlhbi4NCg0KPg0KPiBSZWdh
cmRzLA0KPiBaaGlndW8NCj4+DQo+Pj4NCj4+Pj4NCj4+Pj4gVGhpcyByZWZlcmVuY2UgaXMgb25s
eSBkcm9wcGVkIGFmdGVyIHRoZSBjYWxsYmFjayBpcyBjb21wbGV0ZWQgaW4NCj4+Pj4gZG1hX2J1
Zl9wb2xsX2NiKCk6DQo+Pj4+DQo+Pj4+IMKgwqDCoMKgwqDCoMKgIC8qIFBhaXJlZCB3aXRoIGdl
dF9maWxlIGluIGRtYV9idWZfcG9sbCAqLw0KPj4+PiDCoMKgwqDCoMKgwqDCoCBmcHV0KGRtYWJ1
Zi0+ZmlsZSk7DQo+Pj4+DQo+Pj4+IFNvIHlvdXIgZXhwbGFuYXRpb24gZm9yIHRoZSBpc3N1ZSBq
dXN0IHNlZW1zIHRvIGJlIGluY29ycmVjdC4NCj4+Pj4NCj4+Pj4+DQo+Pj4+PiA0LiBIZXJlIFRo
cmVhZCBBIG5vdCBkbyBlcG9sbF9jdGwoRVBPTExfQ1RMX0RFTCkgbWFudW5hbGx5LCBzbyBpdA0K
Pj4+Pj4gc3RpbGwgcmVzaWRlcyBpbiBvbmUgZXBvbGxfbGlzdC4NCj4+Pj4+IMKgIEFsdGhvdWdo
IF9fZnB1dCB3aWxsIGNhbGwgZXZlbnRwb2xsX3JlbGVhc2UgdG8gcmVtb3ZlIHRoZSBmaWxlIGZy
b20NCj4+Pj4+IGJpbmRlZCBlcG9sbCBsaXN0LA0KPj4+Pj4gwqAgYnV0IGl0IGhhcyBzbWFsbCB0
aW1lIHdpbmRvdyB3aGVyZSBUaHJlYWQgQiBqdW1wcyBpbi4NCj4+Pj4NCj4+Pj4gV2VsbCBpZiB0
aGF0IGlzIHJlYWxseSB0aGUgY2FzZSB0aGVuIHRoYXQgd291bGQgdGhlbiBiZSBhIGJ1ZyBpbg0K
Pj4+PiBlcG9sbF9jdGwoKS4NCj4+Pj4NCj4+Pj4+DQo+Pj4+PiA1LiBEdXJpbmcgdGhlIHNtYWxs
IHdpbmRvdywgVGhyZWFkIEIgZG8gdGhlIHBvbGwgYWN0aW9uIGZvcg0KPj4+Pj4gZG1hX2J1Zl9m
ZCwgd2hlcmUgaXQgd2lsbCBmZ2V0L2ZwdXQgZm9yIHRoZSBmaWxlLA0KPj4+Pj4gwqAgdGhpcyBt
ZWFucyB0aGUgZmQgcmVmY291bnQgd2lsbCBiZSAwIC0+IDEgLT4gMCwgYW5kIGl0IHdpbGwgY2Fs
bA0KPj4+Pj4gX19mcHV0IGFnYWluLg0KPj4+Pj4gwqAgVGhpcyB3aWxsIGxlYWQgdG8gX19mcHV0
IHR3aWNlIGZvciB0aGUgc2FtZSBmaWxlLg0KPj4+Pj4NCj4+Pj4+IDYuIFNvIHRoZSBwb3Rlbmlh
bCBmaXggaXMgdXNlIGdldF9maWxlX3JjdSB3aGljaCB0byBjaGVjayBpZiBmaWxlDQo+Pj4+PiBy
ZWZjb3VudCBhbHJlYWR5IHplcm8gd2hpY2ggbWVhbnMgdW5kZXIgZnJlZS4NCj4+Pj4+IMKgIElm
IHNvLCB3ZSBqdXN0IHJldHVybiBhbmQgbm8gbmVlZCB0byBkbyB0aGUgZG1hX2J1Zl9wb2xsLg0K
Pj4+Pg0KPj4+PiBXZWxsIHRvIHNheSBpdCBibHVudGx5IGFzIGZhciBhcyBJIGNhbiBzZWUgdGhp
cyBzdWdnZXN0aW9uIGlzIA0KPj4+PiBjb21wbGV0ZWx5DQo+Pj4+IG5vbnNlbnNlLg0KPj4+Pg0K
Pj4+PiBXaGVuIHRoZSByZWZlcmVuY2UgdG8gdGhlIGZpbGUgZ29lcyBhd2F5IHdoaWxlIGRtYV9i
dWZfcG9sbCgpIGlzDQo+Pj4+IGV4ZWN1dGVkIHRoZW4gdGhhdCdzIGEgbWFzc2l2ZSBidWcgaW4g
dGhlIGNhbGxlciBvZiB0aGF0IGZ1bmN0aW9uLg0KPj4+Pg0KPj4+PiBSZWdhcmRzLA0KPj4+PiBD
aHJpc3RpYW4uDQo+Pj4+DQo+Pj4+Pg0KPj4+Pj4gSGVyZSBpcyB0aGUgcmFjZSBjb25kaXRpb246
DQo+Pj4+Pg0KPj4+Pj4gVGhyZWFkIEEgVGhyZWFkIEINCj4+Pj4+IGRtYV9idWZfZXhwb3J0DQo+
Pj4+PiBmZF9yZWZjb3VudCBpcyAxDQo+Pj4+PiBlcG9sbF9jdGwoRVBPTExfQUREKQ0KPj4+Pj4g
YWRkIGRtYV9idWZfZmQgdG8gZXBvbGwgbGlzdA0KPj4+Pj4gY2xvc2UoZG1hX2J1Zl9mZCkNCj4+
Pj4+IGZkX3JlZmNvdW50IGlzIDANCj4+Pj4+IF9fZnB1dA0KPj4+Pj4gZG1hX2J1Zl9wb2xsDQo+
Pj4+PiBmZ2V0DQo+Pj4+PiBmcHV0DQo+Pj4+PiBmZF9yZWZjb3VudCBpcyB6ZXJvIGFnYWluDQo+
Pj4+Pg0KPj4+Pj4gVGhhbmtzDQo+Pj4+Pg0KPj4+Pg0KPj4+DQo+Pg0KPg0KDQpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxp
bmcgbGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUg
c2VuZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
