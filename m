Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 73BF2A82746
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  9 Apr 2025 16:11:06 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 87ED3459C1
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  9 Apr 2025 14:11:05 +0000 (UTC)
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (mail-bn8nam11on2088.outbound.protection.outlook.com [40.107.236.88])
	by lists.linaro.org (Postfix) with ESMTPS id F2CA144304
	for <linaro-mm-sig@lists.linaro.org>; Wed,  9 Apr 2025 14:10:49 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=amd.com header.s=selector1 header.b=E4EBVk4V;
	spf=pass (lists.linaro.org: domain of Christian.Koenig@amd.com designates 40.107.236.88 as permitted sender) smtp.mailfrom=Christian.Koenig@amd.com;
	dmarc=pass (policy=quarantine) header.from=amd.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=n5lRKNBT4ze5CBSfVFcsTlPPa7rXk9Nq4RACOQ4A90ZqtLyCRuKk2Uor/FWEt7YoyD2NrlHCLbFWZ3l2O5YShd8ErmLz7rDYIUl/UynEs1Un06zSn5F4ZMVl9jyrAfnkdI4W+F2TLRa6u/HvGsnVzUr7Qaxc1214frvAdL42/s2tgjZwzlYgCDMCuOq1OQS8y2SvMS5K7OP80WgBwdYBVOTKF5Ygxn+rZXpnmINx1deg/06Jm0RbkeeF2bPxUdFiU2FZ9GPLFgcXGxrUsmb2m9gPp0vnvgXsDnwqMdeu/ILLkMmIYvcIYvSiYKqjtXCn/pfq/fNzuqQI+erL+AlTow==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=J5gm/pWGj+7ED1yjql1cFf353+H6d1DolAXK/7P2vQM=;
 b=r0h60jFqQd48CkfPjL7eCDDFwKF7g16Nwvj4N7RgGnJe7Rp3BmvjtN0CB9sHd2ASi6staBFfWsAkLdqpziA35sLpmwLdSD6Tt8Zt7xL4uJEJbSWHjciPGVGTezmdebvuB1WfCFcI1Sc8AgIkEsWxqVIcj1dGoRUgyuBDak31NJavw7Cno4vYK7GSxW77EhSxdEVwAMHmZohlFvPSbuLDLT3HT7W1IrbYxjb1k7ChhoDC2WGc8sdKLv+v5yK4i27r5IYJ5Kngn1omjtd2zveF0s2e9ZXnKdXD/YCQ/iInfUQtmXspToWWxetqhhJrfEKVyZXizHoBRJAKb+yOsNkIYQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=J5gm/pWGj+7ED1yjql1cFf353+H6d1DolAXK/7P2vQM=;
 b=E4EBVk4VPNNoTU/u7S9QuLBzdaYTEX808PsYYBGU8FG1X4R4QjB2qdLkJ7xrxwN6HzFCyh5XHGFf7aXXuQA1TLoqT1LSpBN2bOBUM/oe7kMqpApmWfz6CKApRccWcY8x6W/qaKz3LdzSpxzsapn9cmlBuUPetFtnCdDiVhQryTE=
Received: from PH7PR12MB5685.namprd12.prod.outlook.com (2603:10b6:510:13c::22)
 by PH8PR12MB7181.namprd12.prod.outlook.com (2603:10b6:510:22a::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8632.21; Wed, 9 Apr
 2025 14:10:46 +0000
Received: from PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::46fb:96f2:7667:7ca5]) by PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::46fb:96f2:7667:7ca5%5]) with mapi id 15.20.8632.021; Wed, 9 Apr 2025
 14:10:46 +0000
Message-ID: <334e843c-d7fe-4e33-b4fc-f3d18226465a@amd.com>
Date: Wed, 9 Apr 2025 16:10:25 +0200
User-Agent: Mozilla Thunderbird
To: phasta@kernel.org, Boris Brezillon <boris.brezillon@collabora.com>
References: <20250409120640.106408-2-phasta@kernel.org>
 <20250409120640.106408-3-phasta@kernel.org>
 <20250409143917.31303d22@collabora.com>
 <73d41cd84c73b296789b654e45125bfce88e0dbf.camel@mailbox.org>
 <72eb974dfea8fa1167cf97e29848672223f6fc5b.camel@mailbox.org>
 <ab7d1937-d0e9-45f8-8f7d-ddd7a1a9d3d5@amd.com>
 <9a90f7f14c22c01aa28d89aa91bf4dfa4049c062.camel@mailbox.org>
Content-Language: en-US
From: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
In-Reply-To: <9a90f7f14c22c01aa28d89aa91bf4dfa4049c062.camel@mailbox.org>
X-ClientProxiedBy: FR3P281CA0154.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:a2::7) To PH7PR12MB5685.namprd12.prod.outlook.com
 (2603:10b6:510:13c::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR12MB5685:EE_|PH8PR12MB7181:EE_
X-MS-Office365-Filtering-Correlation-Id: 9cd019ed-815f-482c-1a46-08dd7770525e
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: 
	BCL:0;ARA:13230040|1800799024|7416014|376014|366016|7053199007;
X-Microsoft-Antispam-Message-Info: 
	=?utf-8?B?ekVCK1Z4aUc1R0pmQ0ZYaVlJVmx1UVFheVMycFgyNEh3RVAvdFUycTkzRlJY?=
 =?utf-8?B?bVR6TDF1KytKUkMyUlVFQzYxTDBUYXg5MHhUUlF1QjE2OGh2bk9MWnJUVHFy?=
 =?utf-8?B?c1ptbDhsUFp2eS9ndHoxbllaS2hnZUFCV2s3c1BWMFd4aHY1dUdwbGJLVVhq?=
 =?utf-8?B?Q05zOTlpbEFsTjd1WDhRWHRRUFJVR2pFWkQ2M0l4ZnhjWnNJZnh3aldBUmhM?=
 =?utf-8?B?d0lJMFdFSVNESWowa1Zoem13MlkvZXhjRVRGajhUcVp2dHZkNE13VFEvakpQ?=
 =?utf-8?B?cVdQaHBSSjUySktwNmY0Rllxd2htdHR5bWs0ZElhMmNIajl5UGhCOHdGVnVY?=
 =?utf-8?B?Z1owZ2hZYWZ3bmd4U29kcjZORXEyQ2UvalJrNi9zRzdZUzlIVUxuN05yU3BZ?=
 =?utf-8?B?R1F0VUloRTdKN0t5MWlFM3diWXg1ZW8vTTVKeEVFeURLK0pEVmN2d3cwVzkr?=
 =?utf-8?B?d0xHNUhJYzJUdG9mY240RXNBb3pNQWRxSmV1d1lNQ2JlK3JRVi9IUWY4d3Vu?=
 =?utf-8?B?bDZXdG1ZM0tZd05CN09VaiszUVlKNWQvRXc0NmZTeUs4YWlhMldJb2x3WjdQ?=
 =?utf-8?B?YXJPOHNIKzdreVpBcEh1UkNkZzAvVGhOWTZPZFFQL3pIRE1xK1Q4ZDR1b0l1?=
 =?utf-8?B?dUhZK3NqS1dPQ0tXYmdMMWRIRFZSSmFYeFRyN0tWRUxFZ2V3UEFqRHArck9s?=
 =?utf-8?B?aU1iWUYyTnRMOFlQWDNRbHB0MHBPb29rSW9xQVBWdngrdXJxb1FlNUs2Yk9B?=
 =?utf-8?B?STE3SHp4MlBVaDZJZkJCZFFsMnVWcnZPdGhxNHM0R3BkVk1ETnFlUHpFSTNI?=
 =?utf-8?B?QWFLQnNSVGFPa3U4bWR3UGQyL2JxaDhvK05YTHo1UEVTWEhHVk1ad0x4UW12?=
 =?utf-8?B?TmpiNEg0TTVDd3JVYU9DQnlleXlyVUFhc2hlQ1daTVdXMEFXMWdKaUhkZjBQ?=
 =?utf-8?B?VDd5VUpJYVVMTHBMdThnaTRTNWJ6MGtMUFV1RlowS2Q3eXIrUFJTMVlFenNO?=
 =?utf-8?B?M1BLTFBaZGgrb3Z6dk1HL0Ivb01RbitmYmo2Z3Bac09MN1lFcTVlc215ank1?=
 =?utf-8?B?QndjTFF3bEc0a203Zy96UnNLbHYrTGdoZTlzNDhxTzlrSFBySDVlcGpNbzlt?=
 =?utf-8?B?RXB0bGZwUjNHdmJldjl3ZkVJcmFlS2NSV012T24vZStLM2pUUGNOUWFkek1O?=
 =?utf-8?B?ditBV29GNkwzNzNTRGdSOXUvUUFaa0tPZjd0cmZKQ3ltN2VLUWJQUjZwWkdK?=
 =?utf-8?B?clhIQlZ5QmVJQjFZc29oSlQvNWtVdGVET1FGMjZ1MXVWV1NaZXVMRllHc0dl?=
 =?utf-8?B?dWthL1FabHJjazRLTk45QWV4Y0JUaWdxcVlwOXJZTnltWXc5VFFoV0lKUFc2?=
 =?utf-8?B?RXh4UHpRK2paL0h4THJUalFyL3JGSGw2NCt3RTh6WHZTQ3cwaFJESmp0RTFq?=
 =?utf-8?B?R3kwc2JTaEFHbERwbjkraFk2bURubVIyeGZ1Zjk4c3BMQmgyYzE5MzNpZjAv?=
 =?utf-8?B?aDBWS3RydWhSNnRaRWp0Vk1pa3RUUll4NzBjN2lRWFZOOWpveTQ0VUFvT3BN?=
 =?utf-8?B?YmlURTg2dDE1bDEwL1JNZXJZbnl2djdmbGF2Z252OWVJMWVhWkhvUWRCZFhk?=
 =?utf-8?B?cG5qcVFCcVJBeW9zeG9Td0Zvd3RSd2p2S0xiMWZ6bElQUE4ybVg3VllrdTZ0?=
 =?utf-8?B?eGxBQmIybStYcStwdHh0MDI3R0ZTVTRNNVh5T0NuOHgzdXRXOWhYeWxINThS?=
 =?utf-8?B?V1pUS2ZiMnlOaml2ZGhudW41T1BuSFlNek1kRDFZNytIKzZ6TFg3aXVFL052?=
 =?utf-8?B?eTlGQzhibHkvRWdNQWt2T002R3dvMy8vVDdTZGFHNENWanlGZ0t3RllPWlR3?=
 =?utf-8?Q?xBo2M35OcowmX?=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH7PR12MB5685.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(7416014)(376014)(366016)(7053199007);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?RlJOMEttOFh6b29oMDVSdTNBd2Z5bGlCSTNXR3g0cldqenNEUUM0dFBGbkpp?=
 =?utf-8?B?c3pVcnl4RmhHVDdNUS85L0FvY3BubUo1OFlDV2pOd1NXY2I5bnFtcmdGenMr?=
 =?utf-8?B?SVllWE1RRGp5a0MraXdMc2Zsa3F4KzV6VFB5YU4yckhvVDNJcFVqR3ZPOHB0?=
 =?utf-8?B?clY5TTBXKzJMTHBnd0dhT0NrbUZEeFk2d2I5KzJaZTZRNC9zTld4L3kvRHVK?=
 =?utf-8?B?d1Y3UFA1elIxS0pDVktyVkVSWS9HQXRncjZqSmppQThHVTFCRG9jS2dYZTJW?=
 =?utf-8?B?aVBuemF3dFdxaU81aURVNTEwV3F3cmVJV096ektSK3pSY2R3MjFlU1RUSlJB?=
 =?utf-8?B?K1RPQVlodlBWN3l4V29zdnZOWitzd0xUaUlZdUttbnFYQzZaWmdTaGxhQ1Nk?=
 =?utf-8?B?eGk4NDVaNmphUlV2STN0MkZYenZrQ2pzOFQyMFUxeDRpQk5zWG9EYnBrUTFN?=
 =?utf-8?B?WVpkUGE4ZDd5QUhOcGJFamFORVZ6NkhudytvT1d6bk1uNkFXNiswenhUMElm?=
 =?utf-8?B?M0k3bGhMNnNnS3dkYVRrRGtnWTRaZkdHQUQvWGVGQnNkUEpUL1ViakFOTVZW?=
 =?utf-8?B?TFpwZG5ON0ZZRmhMQU5RS0EyWjVKYlB2ZmpseG5DdnVmNWs0dE5EYmU1SFh3?=
 =?utf-8?B?T2xlQzVBRG8xZisrREowWExHTWpiVWs2T2Z5bVBRNzNScGRpcWNwUEZrUEpD?=
 =?utf-8?B?V2xodFl2OFYydFUwbHRRTmxIbjF2VTB5RDRvZm1JbXBFa3lLMk8rWkcxQjk4?=
 =?utf-8?B?UGNENHJIMmQvN25oT053MVJMbzZwQ0tEd3BrVXRlYXYyRnNFVW82RXBHWDhJ?=
 =?utf-8?B?MlNEOURNZmI4TFlpY0JXdTJ6Z0hKbXhkNFVidlJvWDRDOVZQenZLbXZWZWZP?=
 =?utf-8?B?bDJsWmV2MDl2YlNUc1BuYVJ4Rk1YSXljZjJhdDQ1UHNxL09qL3gxbFhKQ0VR?=
 =?utf-8?B?cmswTTRYQUhNSGMreG9uYStMTjJuWVBrOEFSWjlEM05oQzZzUzhneXd0WmIx?=
 =?utf-8?B?TzV1eFUvemRzcUZtUHdkU09BeDdBUmhxZ3JYcXpvZW5SRk44cmhpU1JtQWk4?=
 =?utf-8?B?RnlJdHE2VHg5R1ZxaEFDOGd2dUxaYkROaVZINCtuOEt4SEZmWGhocWQxbksv?=
 =?utf-8?B?Tk1rYWlWOFZJaVoxM2Ewd0pSL21FTG4wZ0JHL1RPYzlTVFVxTEg0ekRvOXZa?=
 =?utf-8?B?eXRUYjhaYyszcnRQRGhQR1RpY2dNNG5YaGMyZHlHM1l1YlhxY2ZxOFNGUlE5?=
 =?utf-8?B?NGpuanp0bXVLbVN6N0hGV3NyRko0VXRWYnhsbENybENVTUdmU2RzUnQ3YlVQ?=
 =?utf-8?B?blBSREphSEVyTThTUkt5eFVsVkZNZUIzakxDWHI4cTArbDk5MHR3REFtUVdt?=
 =?utf-8?B?U2toa2YwSVhxbmoxQTVIcjZzM2pWL3lML0IzZUxHOEg2SjBFL1BZQ0krajhy?=
 =?utf-8?B?bXY1TzBsUm1yTHlHakdkaW9KWGNXVGxCY3dNeHAvc2Y3UkpxcC83NWZKNGli?=
 =?utf-8?B?T2c2YnF5UFRURXdtOHRvQWEwZWJNQlJpQm9jUytIeGc2cGs3elRNd2JBU08y?=
 =?utf-8?B?MWI2SVFIbnBxVS9wbEh0Ykh2RFp5eDNiQkdNeS9Eemk4R3J2TGNFOGFMVFdi?=
 =?utf-8?B?RzFGWnI3emYyRnEvRTV3WTdGbkV1akc3eUVmQkloTUZXSDEzZE9DSnZhNVFj?=
 =?utf-8?B?My9kZTc5MXU5WW1mZ3czYUN3QlRiQStLL0hwUHk2TUhQcmMxN3FUTVMrYkhB?=
 =?utf-8?B?bU43ancyYkhNd3doeURsOHo4ZUtwYTdkODdqYllWMStoOGswQ1VBLzRZMDlq?=
 =?utf-8?B?Y1hnYnZWQWc1azF0L2MyN0VUbHZXc0NmMi9uYWJ4TzJVaWUrYkZCK0ljMFhF?=
 =?utf-8?B?UHhac1ZtekdrQi9odXBjZ2pHbFQ3blIvMTVRYVNBU2NYTkEzUGZHci9sREJ0?=
 =?utf-8?B?c2VIeFIzK2RPWi80eC9MRHlGK2JTQzQvc2gxZVZmcGloMCt1TjBGQnJzcE42?=
 =?utf-8?B?N3NBRHg0TUhRYWdWK0NmZWg1VG1vYllNWGp5MldXd1BwM2dQakNWTmtxWkFK?=
 =?utf-8?B?ZkhTR243ZERuemxTaTZPM1F6eFJZM0NLUlNMd2prNkhqcEp3VXBkbWltNUJJ?=
 =?utf-8?Q?tsMzOE4IsmVFn6Tzkqy+AJENV?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9cd019ed-815f-482c-1a46-08dd7770525e
X-MS-Exchange-CrossTenant-AuthSource: PH7PR12MB5685.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Apr 2025 14:10:46.1606
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: BqkYUP04hlzALEOAK1ebLVP68+FMla8PSl7i430KrBlKO3HgVv+npQmgci0yszC7
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR12MB7181
X-Rspamd-Queue-Id: F2CA144304
X-Spamd-Bar: /
X-Spamd-Result: default: False [-0.50 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	SUSPICIOUS_RECIPS(1.50)[];
	RBL_SENDERSCORE_REPUT_6(1.00)[40.107.236.88:from];
	MIME_GOOD(-0.10)[text/plain];
	BAD_REP_POLICIES(0.10)[];
	RWL_MAILSPIKE_POSSIBLE(0.00)[40.107.236.88:from];
	DMARC_POLICY_ALLOW(0.00)[amd.com,quarantine];
	R_SPF_ALLOW(0.00)[+ip4:40.107.0.0/16];
	ARC_ALLOW(0.00)[microsoft.com:s=arcselector10001:i=1];
	TO_DN_SOME(0.00)[];
	TAGGED_RCPT(0.00)[etnaviv];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:8075, ipnet:40.104.0.0/14, country:US];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-0.987];
	R_DKIM_ALLOW(0.00)[amd.com:s=selector1];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[linaro.org,padovan.org,amd.com,gmail.com,ffwll.ch,linux.intel.com,kernel.org,suse.de,pengutronix.de,armlinux.org.uk,intel.com,ursulin.net,imgtec.com,poorly.run,quicinc.com,somainline.org,redhat.com,arm.com,igalia.com,broadcom.com,basnieuwenhuizen.nl,gmx.de,linux-m68k.org,linutronix.de,vger.kernel.org,lists.freedesktop.org,lists.linaro.org,lists.linux.dev];
	RCVD_TLS_LAST(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCPT_COUNT_GT_50(0.00)[79];
	DKIM_TRACE(0.00)[amd.com:+]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: UCGW2QI3OPTCYHEQHOZNR4JG7GAVEL6B
X-Message-ID-Hash: UCGW2QI3OPTCYHEQHOZNR4JG7GAVEL6B
X-MailFrom: Christian.Koenig@amd.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Sumit Semwal <sumit.semwal@linaro.org>, Gustavo Padovan <gustavo@padovan.org>, Felix Kuehling <Felix.Kuehling@amd.com>, Alex Deucher <alexander.deucher@amd.com>, Xinhui Pan <Xinhui.Pan@amd.com>, Simona Vetter <simona@ffwll.ch>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, Russell King <linux+etnaviv@armlinux.org.uk>, Christian Gmeiner <christian.gmeiner@gmail.com>, Jani Nikula <jani.nikula@linux.intel.com>, Joonas Lahtinen <joonas.lahtinen@linux.intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>, Tvrtko Ursulin <tursulin@ursulin.net>, Frank Binns <frank.binns@imgtec.com>, Matt Coster <matt.coster@imgtec.com>, Qiang Yu <yuq825@gmail.com>, Rob Clark <robdclark@gmail.com>, Sean Paul <sean@poorly.run>, Konrad Dybcio <konradybcio@kernel.org>, Abhinav Kumar <quic_abhinavk@quicinc.com>, Dmitry Baryshkov <dmitry.baryshkov@linaro.org>, Marijn Suijten <marijn.suijten@somainline.org>, Lyude Paul <lyude@red
 hat.com>, Danilo Krummrich <dakr@kernel.org>, Rob Herring <robh@kernel.org>, Steven Price <steven.price@arm.com>, Dave Airlie <airlied@redhat.com>, Gerd Hoffmann <kraxel@redhat.com>, Matthew Brost <matthew.brost@intel.com>, Huang Rui <ray.huang@amd.com>, Matthew Auld <matthew.auld@intel.com>, Melissa Wen <mwen@igalia.com>, =?UTF-8?Q?Ma=C3=ADra_Canal?= <mcanal@igalia.com>, Zack Rusin <zack.rusin@broadcom.com>, Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>, Lucas De Marchi <lucas.demarchi@intel.com>, =?UTF-8?Q?Thomas_Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>, Bas Nieuwenhuizen <bas@basnieuwenhuizen.nl>, Yang Wang <kevinyang.wang@amd.com>, Jesse Zhang <jesse.zhang@amd.com>, Tim Huang <tim.huang@amd.com>, Sathishkumar S <sathishkumar.sundararaju@amd.com>, Saleemkhan Jamadar <saleemkhan.jamadar@amd.com>, Sunil Khatri <sunil.khatri@amd.com>, Lijo Lazar <lijo.lazar@amd.com>, Hawking Zhang <Hawking.Zhang@amd.com>, Ma Jun <Jun.Ma2@amd.com>, Yunxiang L
 i <Yunxiang.Li@amd.com>, Eric Huang <jinhuieric.huang@amd.com>, Asad Kamal <asad.kamal@amd.com>, Srinivasan Shanmugam <srinivasan.shanmugam@amd.com>, Jack Xiao <Jack.Xiao@amd.com>, Friedrich Vock <friedrich.vock@gmx.de>, =?UTF-8?Q?Michel_D=C3=A4nzer?= <mdaenzer@redhat.com>, Geert Uytterhoeven <geert@linux-m68k.org>, Anna-Maria Behnsen <anna-maria@linutronix.de>, Thomas Gleixner <tglx@linutronix.de>, Frederic Weisbecker <frederic@kernel.org>, Dan Carpenter <dan.carpenter@linaro.org>, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, amd-gfx@lists.freedesktop.org, etnaviv@lists.freedesktop.org, intel-gfx@lists.freedesktop.org, lima@lists.freedesktop.org, linux-arm-msm@vger.kernel.org, freedreno@lists.freedesktop.org, nouveau@lists.freedesktop.org, virtualization@lists.linux.dev, spice-devel@lists.freedesktop.org, intel-xe@lists.freedesktop.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 1/2] dma-fence: Rename dma_fence_is_signaled()
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/UCGW2QI3OPTCYHEQHOZNR4JG7GAVEL6B/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

QW0gMDkuMDQuMjUgdW0gMTY6MDEgc2NocmllYiBQaGlsaXBwIFN0YW5uZXI6DQo+IE9uIFdlZCwg
MjAyNS0wNC0wOSBhdCAxNToxNCArMDIwMCwgQ2hyaXN0aWFuIEvDtm5pZyB3cm90ZToNCj4+IEFt
IDA5LjA0LjI1IHVtIDE0OjU2IHNjaHJpZWIgUGhpbGlwcCBTdGFubmVyOg0KPj4+IE9uIFdlZCwg
MjAyNS0wNC0wOSBhdCAxNDo1MSArMDIwMCwgUGhpbGlwcCBTdGFubmVyIHdyb3RlOg0KPj4+PiBP
biBXZWQsIDIwMjUtMDQtMDkgYXQgMTQ6MzkgKzAyMDAsIEJvcmlzIEJyZXppbGxvbiB3cm90ZToN
Cj4+Pj4+IEhpIFBoaWxpcHAsDQo+Pj4+Pg0KPj4+Pj4gT24gV2VkLMKgIDkgQXByIDIwMjUgMTQ6
MDY6MzcgKzAyMDANCj4+Pj4+IFBoaWxpcHAgU3Rhbm5lciA8cGhhc3RhQGtlcm5lbC5vcmc+IHdy
b3RlOg0KPj4+Pj4NCj4+Pj4+PiBkbWFfZmVuY2VfaXNfc2lnbmFsZWQoKSdzIG5hbWUgc3Ryb25n
bHkgcmVhZHMgYXMgaWYgdGhpcw0KPj4+Pj4+IGZ1bmN0aW9uDQo+Pj4+Pj4gd2VyZQ0KPj4+Pj4+
IGludGVuZGVkIGZvciBjaGVja2luZyB3aGV0aGVyIGEgZmVuY2UgaXMgYWxyZWFkeSBzaWduYWxl
ZC4NCj4+Pj4+PiBBbHNvDQo+Pj4+Pj4gdGhlDQo+Pj4+Pj4gYm9vbGVhbiBpdCByZXR1cm5zIGhp
bnRzIGF0IHRoYXQuDQo+Pj4+Pj4NCj4+Pj4+PiBUaGUgZnVuY3Rpb24ncyBiZWhhdmlvciwgaG93
ZXZlciwgaXMgbW9yZSBjb21wbGV4OiBpdCBjYW4NCj4+Pj4+PiBjaGVjaw0KPj4+Pj4+IHdpdGgg
YQ0KPj4+Pj4+IGRyaXZlciBjYWxsYmFjayB3aGV0aGVyIHRoZSBoYXJkd2FyZSdzIHNlcXVlbmNl
IG51bWJlcg0KPj4+Pj4+IGluZGljYXRlcw0KPj4+Pj4+IHRoYXQNCj4+Pj4+PiB0aGUgZmVuY2Ug
Y2FuIGFscmVhZHkgYmUgdHJlYXRlZCBhcyBzaWduYWxlZCwgYWx0aG91Z2ggdGhlDQo+Pj4+Pj4g
aGFyZHdhcmUncyAvDQo+Pj4+Pj4gZHJpdmVyJ3MgaW50ZXJydXB0IGhhbmRsZXIgaGFzIG5vdCBz
aWduYWxlZCBpdCB5ZXQuIElmIHRoYXQncw0KPj4+Pj4+IHRoZQ0KPj4+Pj4+IGNhc2UsDQo+Pj4+
Pj4gdGhlIGZ1bmN0aW9uIGFsc28gc2lnbmFscyB0aGUgZmVuY2UuDQo+Pj4+Pj4NCj4+Pj4+PiAo
UHJlc3VtYWJseSkgdGhpcyBoYXMgY2F1c2VkIGEgYnVnIGluIE5vdXZlYXUgKHVua25vd24NCj4+
Pj4+PiBjb21taXQpLA0KPj4+Pj4+IHdoZXJlDQo+Pj4+Pj4gbm91dmVhdV9mZW5jZV9kb25lKCkg
dXNlcyB0aGUgZnVuY3Rpb24gdG8gY2hlY2sgYSBmZW5jZSwNCj4+Pj4+PiB3aGljaA0KPj4+Pj4+
IGNhdXNlcyBhDQo+Pj4+Pj4gcmFjZS4NCj4+Pj4+Pg0KPj4+Pj4+IEdpdmUgdGhlIGZ1bmN0aW9u
IGEgbW9yZSBvYnZpb3VzIG5hbWUuDQo+Pj4+PiBUaGlzIGlzIGp1c3QgbXkgcGVyc29uYWwgdmll
dyBvbiB0aGlzLCBidXQgSSBmaW5kIHRoZSBuZXcgbmFtZQ0KPj4+Pj4ganVzdA0KPj4+Pj4gYXMN
Cj4+Pj4+IGNvbmZ1c2luZyBhcyB0aGUgb2xkIG9uZS4gSXQgc291bmRzIGxpa2Ugc29tZXRoaW5n
IGlzIGNoZWNrZWQsDQo+Pj4+PiBidXQNCj4+Pj4+IGl0J3MNCj4+Pj4+IGNsZWFyIHdoYXQsIGFu
ZCB0aGVuIHRoZSBmZW5jZSBpcyBmb3JjaWJseSBzaWduYWxlZCBsaWtlIGl0DQo+Pj4+PiB3b3Vs
ZA0KPj4+Pj4gYmUNCj4+Pj4+IGlmDQo+Pj4+PiB5b3UgY2FsbCBkcm1fZmVuY2Vfc2lnbmFsKCku
IE9mIGNvdXJzZSwgdGhpcyBjbGFyaWZpZWQgYnkgdGhlDQo+Pj4+PiBkb2MsDQo+Pj4+PiBidXQN
Cj4+Pj4+IGdpdmVuIHRoZSBnb2FsIHdhcyB0byBtYWtlIHRoZSBmdW5jdGlvbiBuYW1lIGNsZWFy
bHkgcmVmbGVjdA0KPj4+Pj4gd2hhdA0KPj4+Pj4gaXQNCj4+Pj4+IGRvZXMsIEknbSBub3QgY29u
dmluY2VkIGl0J3Mgc2lnbmlmaWNhbnRseSBiZXR0ZXIuDQo+Pj4+Pg0KPj4+Pj4gTWF5YmUgZG1h
X2ZlbmNlX2NoZWNrX2h3X3N0YXRlX2FuZF9wcm9wYWdhdGUoKSwgdGhvdWdoIGl0IG1pZ2h0DQo+
Pj4+PiBiZQ0KPj4+Pj4gdG9vIGxvbmcgb2YgbmFtZS4gT2ggd2VsbCwgZmVlbCBmcmVlIHRvIGln
bm9yZSB0aGlzIGNvbW1lbnRzIGlmDQo+Pj4+PiBhDQo+Pj4+PiBtYWpvcml0eSBpcyBmaW5lIHdp
dGggdGhlIG5ldyBuYW1lLg0KPj4+PiBZb2EsIHRoZSBuYW1lIGlzbid0IHBlcmZlY3QgKHRoZSBw
ZXJmZWN0IG5hbWUgZGVzY3JpYmluZyB0aGUNCj4+Pj4gd2hvbGUNCj4+Pj4gYmVoYXZpb3Igd291
bGQgYmUNCj4+Pj4gZG1hX2ZlbmNlX2NoZWNrX2lmX2FscmVhZHlfc2lnbmFsZWRfdGhlbl9jaGVj
a19oYXJkd2FyZV9zdGF0ZV9hbmQNCj4+Pj4gX3Bybw0KPj4+PiBwYQ0KPj4+PiBnYXRlKCkgXl4n
DQo+Pj4+DQo+Pj4+IE15IGludGVudGlvbiBoZXJlIGlzIHRvIGhhdmUgdGhlIHJlYWRlciByZWFs
aXplICJ3YXRjaCBvdXQsIHRoZQ0KPj4+PiBmZW5jZQ0KPj4+PiBtaWdodCBnZXQgc2lnbmFsZWQg
aGVyZSEiLCB3aGljaCBpcyBwcm9iYWJseSB0aGUgbW9zdCBpbXBvcnRhbnQNCj4+Pj4gZXZlbnQN
Cj4+Pj4gcmVnYXJkaW5nIGZlbmNlcywgd2hpY2ggY2FuIHJhY2UsIGludm9rZSB0aGUgY2FsbGJh
Y2tzIGFuZCBzbyBvbi4NCj4+Pj4NCj4+Pj4gRm9yIGRldGFpbHMgcmVhZGVycyB3aWxsIHRoZW4g
Y2hlY2sgdGhlIGRvY3VtZW50YXRpb24uDQo+Pj4+DQo+Pj4+IEJ1dCBJJ20gb2YgY291cnNlIG9w
ZW4gdG8gc2VlIGlmIHRoZXJlJ3MgYSBtYWpvcml0eSBmb3IgdGhpcyBvcg0KPj4+PiB0aGF0DQo+
Pj4+IG5hbWUuDQo+Pj4gaG93IGFib3V0Og0KPj4+DQo+Pj4gZG1hX2ZlbmNlX2NoZWNrX2h3X2Fu
ZF9zaWduYWwoKSA/DQo+PiBJIGRvbid0IHRoaW5rIHRoYXQgcmVuYW1pbmcgdGhlIGZ1bmN0aW9u
IGlzIGEgZ29vZCBpZGVhIGluIHRoZSBmaXJzdA0KPj4gcGxhY2UuDQo+Pg0KPj4gV2hhdCB0aGUg
ZnVuY3Rpb24gZG9lcyBpbnRlcm5hbGx5IGlzIGFuIGltcGxlbWVudGF0aW9uIGRldGFpbCBvZiB0
aGUNCj4+IGZyYW1ld29yay4NCj4+DQo+PiBGb3IgdGhlIGNvZGUgdXNpbmcgdGhpcyBmdW5jdGlv
biBpdCdzIGNvbXBsZXRlbHkgaXJyZWxldmFudCBpZiB0aGUNCj4+IGZ1bmN0aW9uIG1pZ2h0IGFs
c28gc2lnbmFsIHRoZSBmZW5jZSwgd2hhdCBtYXR0ZXJzIGZvciB0aGUgY2FsbGVyIGlzDQo+PiB0
aGUgcmV0dXJuZWQgc3RhdHVzIG9mIHRoZSBmZW5jZS4gSSB0aGluayB0aGlzIGFsc28gY291bnRz
IGZvciB0aGUNCj4+IGRtYV9mZW5jZV9pc19zaWduYWxlZCgpIGRvY3VtZW50YXRpb24uDQo+IEl0
IGRvZXMgb2J2aW91c2x5IG1hdHRlci4gQXMgaXQncyBjdXJyZW50bHkgaW1wbGVtZW50ZWQsIGEg
bG90IG9mDQo+IGltcG9ydGFudCB0aGluZ3MgaGFwcGVuIGltcGxpY2l0bHkuDQoNClllYWgsIGJ1
dCB0aGF0J3Mgb2suDQoNClRoZSBjb2RlIHdobyBjYWxscyB0aGlzIGlzIHRoZSBjb25zdW1lciBv
ZiB0aGUgaW50ZXJmYWNlIGFuZCBzbyBzaG91bGRuJ3QgbmVlZCB0byBrbm93IHRoaXMuIFRoYXQn
cyB3aHkgd2UgaGF2ZSBjcmVhdGVkIHRoZSBETUEgZmVuY2UgZnJhbWV3b3JrIGluIHRoZSBmaXJz
dCBwbGFjZS4NCg0KRm9yIHRoZSBwcm92aWRlciBzaWRlIHdoZW4gYSBkcml2ZXIgb3Igc2ltaWxh
ciBpbXBsZW1lbnRzIHRoZSBpbnRlcmZhY2UgdGhlIHJlbGV2YW50IGRvY3VtZW50YXRpb24gaXMg
dGhlIGRtYV9mZW5jZV9vcHMgc3RydWN0dXJlLg0KDQo+IEkgb25seSBzZWUgaW1wcm92ZW1lbnQg
YnkgbWFraW5nIHRoaW5ncyBtb3JlIG9idmlvdXMuDQo+DQo+IEluIGFueSBjYXNlLCBob3cgd291
bGQgeW91IGNhbGwgYSB3cmFwcGVyIHRoYXQganVzdCBkb2VzDQo+IHRlc3RfYml0KElTX1NJR05B
TEVELCDigKYpID8NCg0KQnJva2VuLCB0aGF0IHdhcyB2ZXJ5IGludGVudGlvbmFsbHkgcmVtb3Zl
ZCBxdWl0ZSBzaG9ydGx5IGFmdGVyIHdlIGNyZWF0ZWQgdGhlIGZyYW1ld29yay4NCg0KV2UgaGF2
ZSBhIGZldyBjYXNlcyB3ZXJlIGltcGxlbWVudGF0aW9ucyBkbyBjaGVjayB0aGF0IGZvciB0aGVp
ciBmZW5jZXMsIGJ1dCBjb25zdW1lcnMgc2hvdWxkIG5ldmVyIGJlIGFsbG93ZWQgdG8gdG91Y2gg
c3VjaCBpbnRlcm5hbHMuDQoNClJlZ2FyZHMsDQpDaHJpc3RpYW4uDQoNCj4NCj4gUC4NCj4NCj4+
IFdoYXQgd2Ugc2hvdWxkIGltcHJvdmUgaXMgdGhlIGRvY3VtZW50YXRpb24gb2YgdGhlIGRtYV9m
ZW5jZV9vcHMtDQo+Pj4gZW5hYmxlX3NpZ25hbGluZyBhbmQgZG1hX2ZlbmNlX29wcy0+c2lnbmFs
ZWQgY2FsbGJhY2tzLg0KPj4gRXNwZWNpYWxseSBzZWUgdGhlIGNvbW1lbnQgYWJvdXQgcmVmZXJl
bmNlIGNvdW50cyBvbiBlbmFibGVfc2lnbmFsaW5nDQo+PiB3aGljaCBpcyBtaXNzaW5nIG9uIHRo
ZSBzaWduYWxlZCBjYWxsYmFjay4gVGhhdCBpcyBtb3N0IGxpa2VseSB0aGUNCj4+IHJvb3QgY2F1
c2Ugd2h5IG5vdXZlYXUgaW1wbGVtZW50ZWQgZW5hYmxlX3NpZ25hbGluZyBjb3JyZWN0bHkgYnV0
IG5vdA0KPj4gdGhlIG90aGVyIG9uZS4NCj4+DQo+PiBCdXQgcHV0dGluZyB0aGF0IGFzaWRlIEkg
dGhpbmsgd2Ugc2hvdWxkIG1ha2UgbmFpbHMgd2l0aCBoZWFkcyBhbmQNCj4+IGxldCB0aGUgZnJh
bWV3b3JrIGd1YXJhbnRlZSB0aGF0IHRoZSBmZW5jZXMgc3RheSBhbGl2ZSB1bnRpbCB0aGV5IGFy
ZQ0KPj4gc2lnbmFsZWQgKG9uZSB3YXkgb3IgYW5vdGhlcikuIFRoaXMgY29tcGxldGVseSByZW1v
dmVzIHRoZSBidXJkZW4gdG8NCj4+IGtlZXAgYSByZWZlcmVuY2Ugb24gdW5zaWduYWxlZCBmZW5j
ZXMgZnJvbSB0aGUgZHJpdmVycyAvDQo+PiBpbXBsZW1lbnRhdGlvbnMgYW5kIG1ha2UgdGhpbmdz
IG1vcmUgb3ZlciBhbGwgbW9yZSBkZWZlbnNpdmUuDQo+Pg0KPj4gUmVnYXJkcywNCj4+IENocmlz
dGlhbi4NCj4+DQo+Pj4gUC4NCj4+Pg0KPj4+PiBQLg0KPj4+Pg0KPj4+Pg0KPj4+Pj4gUmVnYXJk
cywNCj4+Pj4+DQo+Pj4+PiBCb3Jpcw0KDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0t
c2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBsaW5h
cm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
