Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id CF2A3C6F70A
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 19 Nov 2025 15:54:00 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id DF5603F831
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 19 Nov 2025 14:53:59 +0000 (UTC)
Received: from PH0PR06CU001.outbound.protection.outlook.com (mail-westus3azon11011062.outbound.protection.outlook.com [40.107.208.62])
	by lists.linaro.org (Postfix) with ESMTPS id 6B3573F70E
	for <linaro-mm-sig@lists.linaro.org>; Wed, 19 Nov 2025 14:53:43 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=amd.com header.s=selector1 header.b=m2AKZFQk;
	spf=pass (lists.linaro.org: domain of Christian.Koenig@amd.com designates 40.107.208.62 as permitted sender) smtp.mailfrom=Christian.Koenig@amd.com;
	dmarc=pass (policy=quarantine) header.from=amd.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=eoCCJIC2Yn8/MQygf6+QMVJqXBklnboMQXFkR5tXOqqpXgyMSKG8kzAKAvpJHiZKMKIuYSJpP+mmHOmD5X30H/9FjHi8jCsku3SmM1yvZTuCk2CMq2UflSSOqqt6fvWc4gD3vzhozQ9TUpz+pHKQcuIalcjZW5T4YvLy8L/TlScT56DONdle+hbFTW720LMjAdL16eLAqMVr0YJc8TKE+3zTkwI7Cl77PvzwnlzXs7/IhklhZlG5BRHJRBBoevhzZO5JaQZEMzdplRnMPF/qBdYoTMDvP2jBnFzh9CxZfd74Qhqdlr6mprZ2oOiZJ0+zTBdP3qk4Aj1VTkF0f624cg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=12ACATNbzileaDoqo3EoAjrShJw+rL7FwsR50NoiEvk=;
 b=G8eygHShglMI6xmktpuGiCZqI6LdR8HHq8g0R52CXQOfOHXUfmFumoFqEcDdAc7DPpxYD7X8pVV4uYul03X/9uKt0FSnuXM+PuMeNBxe7LBYmReEOgNnXEeYnl5v3B4SOhNym8vWXufP010dv8tRDFDs7PPMBZ0fKhPF2ki8jYjuGAbaLqrjoXT/N6gSl62V7ZwuOhqpZSHl3tp23KAgOIDiwnoXCNA3pIhqWcp7OoFB7E073maCxTJ/MHBopp0nT+McfpeLuwLiG1LnxoLeQIxk7jLEOPqZyl1f6dIFYFVfBT0yl/0GAJ29aaJ8ZTyXOkIIX2VLPcRg6UPvHG52Rg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=12ACATNbzileaDoqo3EoAjrShJw+rL7FwsR50NoiEvk=;
 b=m2AKZFQk8iURZLahgg0aAKk5EC9k9hlcS5vXTwx9YeG6ICwVgnKQSnfZAONK1RCDtc4HL9ANbAfw5jNPHpW4N5uiAJZk4ZiNd9MgQxsEijxTLp6gBdU2OYIbejstxkuoXZ8ok8lbIfBDzGu2Ctui96X9RN4hIF7zZ9zgQxRQEtc=
Received: from PH7PR12MB5685.namprd12.prod.outlook.com (2603:10b6:510:13c::22)
 by MW4PR12MB6707.namprd12.prod.outlook.com (2603:10b6:303:1ee::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9343.10; Wed, 19 Nov
 2025 14:53:39 +0000
Received: from PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::46fb:96f2:7667:7ca5]) by PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::46fb:96f2:7667:7ca5%4]) with mapi id 15.20.9320.021; Wed, 19 Nov 2025
 14:53:39 +0000
Message-ID: <26d7ecab-33ed-4aab-82d5-954b0d1d1718@amd.com>
Date: Wed, 19 Nov 2025 15:53:30 +0100
User-Agent: Mozilla Thunderbird
To: Leon Romanovsky <leon@kernel.org>
References: <20251111-dmabuf-vfio-v8-0-fd9aa5df478f@nvidia.com>
 <20251111-dmabuf-vfio-v8-6-fd9aa5df478f@nvidia.com>
 <8a11b605-6ac7-48ac-8f27-22df7072e4ad@amd.com>
 <20251119134245.GD18335@unreal>
 <6714dc49-6b5c-4d58-9a43-95bb95873a97@amd.com>
 <20251119145007.GJ18335@unreal>
Content-Language: en-US
From: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
In-Reply-To: <20251119145007.GJ18335@unreal>
X-ClientProxiedBy: FR2P281CA0003.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:a::13) To PH7PR12MB5685.namprd12.prod.outlook.com
 (2603:10b6:510:13c::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR12MB5685:EE_|MW4PR12MB6707:EE_
X-MS-Office365-Filtering-Correlation-Id: a6766521-bc9a-4885-9cf1-08de277b6c8e
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|7416014|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: 
	=?utf-8?B?R2tiSFpIZ0xweXdtek9xQnFKMExPMHlldGV0bDBlV3FtS3BFU3FOQmdPTVNH?=
 =?utf-8?B?RXN3K25WSmZicFFBTUtGSFd6TVVTMHZIc0kvQlU4cWMrQ0FzUDJObWgvc1Nn?=
 =?utf-8?B?QkpzRm9BUG00MjBUZFZtUVRFN0x5OWd0eUY0OTEwRkljQlNjYW92dmoraTIv?=
 =?utf-8?B?K2JOMlV6VCs5aVFPaHZZSnZJblJkbHJJYnVnbmlYRCtpaW54cS80NFFQWDJa?=
 =?utf-8?B?bTU3bHNrc1VOVGdjYkxoQ2prWkpWOElXcVNxMGNSTmMzR3pmMm1pRFB5RUM0?=
 =?utf-8?B?YUZ5MVZuTXhpeHJNS0MzY0R4VVpGNEs5a1pHYTAwN0FISDJ0YzYwaXVtdGFH?=
 =?utf-8?B?OUxsbFdqNDBaS0lYdXU4OWNMSWE2L0ptVkNXQzZROHNRaTUvMTI3NC9oRjJF?=
 =?utf-8?B?aHhkNUxTUVB6VnAwSkVBRk91Y1RkdStVRXZRVE9RYTdGOU5zeCtKYXZlVEgv?=
 =?utf-8?B?anByWFVrSnllOGMxK3hnTWZIUnF5NVhrd3ZaLzZmUytiRFZOeWtjbWNUYTR3?=
 =?utf-8?B?WmtkRG4vTzhoVHpjNjBZY2M0cjUvUG1QditiYTdUSVNTMzlwZXNGeWV5ZVhN?=
 =?utf-8?B?Z1o5cWdteC9WR3hvcVlWNTBwM3hOUm00NSthMjlHeFk3b3hzcmk4RHUyTndQ?=
 =?utf-8?B?bjc2a2RWL2IyR3FHYlFjZFByNFpsNlRzM3U3Y0gwTHFseGZXbVY0SmJ2ZEMz?=
 =?utf-8?B?NmxFRHVoTUkrd24xeDdhOElMWmd2SmdOeXBlTWFTMVZTeEFndytmYTdFMnQ5?=
 =?utf-8?B?eGlIZGxKbkl5SEhqbXhoeVhLakY2dUFxYzNKSlpTWXFKb3gyTjZ0ZTRCcStD?=
 =?utf-8?B?T1V6dDFTekdBdmphbFZBM2lUNmJqUkRUQ2c3YktiVVBVaU15Mm9iSkUrczMy?=
 =?utf-8?B?SFBPR1pJWWxqaWU1WVFKTDVoMU12UHRvU0t0aTdzWnBrRjJtYm9vSGtqRGhM?=
 =?utf-8?B?TXNQUC9CU2dJR2RPd0M1UXl2bFNmdzRIdHlUUndZSE5IMndCMFdmbkZKcmhy?=
 =?utf-8?B?TUdIK2lrNXM5RjhpdklEMW1JU3REMzN3QXRhRTBFTWhLaUUxVyswVFBOKzJi?=
 =?utf-8?B?UHFkSUwrSXNERUE4V2lVd3FvazVSSWo4S2haRmhqSjBuSzN1cFZZTm1PRWg1?=
 =?utf-8?B?NnRiVDN6NWh4SlQ0Z2F6RFQySWF0Snd6WkdYZms2YjNzMzBzSXlKOElsckV3?=
 =?utf-8?B?Uk14aEUvZTI4WWprZ1Zzd2d4R2tJZGpXMGpQMUpjbTdvNlZEUnVuSTkvYk5z?=
 =?utf-8?B?M0JqamswTTVTL2JHRGpSeWQxSDZWUWxCM2hCQ1RoTDhvS3ZoZk8rWk9MOFl1?=
 =?utf-8?B?Y1Y5eVBlNVZqdmZnWHV4TXZWWlVzZk9OaE5CL29TbjVCRjBQMW5Dc3Jobktn?=
 =?utf-8?B?b3dxcVh3bklQR3RZeVoxblVqSFFmS3ZhZ1lqL3VBQzhTeEUvdDdVdkNJUEFm?=
 =?utf-8?B?bkg4LzhWK1Y3eGFHaFNvNVloM0ZaT0d0eUJBTkxNd09rK0Yva2dtaUR0YmJa?=
 =?utf-8?B?TjN3aSsyY2JTbWtPN29wVHZLdjdlajg3czg5c1BxcytEM295L01CRlM1NXJ6?=
 =?utf-8?B?dEw4SkRXalNTa0dCUU1QTTZPOUpYNmpndURRM1B1VDVSLzZKUDR0ZVNucGor?=
 =?utf-8?B?VFJOenVhZTBzRFlXUnY4VFVqazZJVWdNN0xIWXJFSjFpekFCYkxTaUNrb0JP?=
 =?utf-8?B?eFhlREtGcGdGUk8zUlNleEJqbDNhUWtXMVBmTmVyaEZYK1dyNTluNWVQVDdz?=
 =?utf-8?B?YzlVbzBwZGJSNWFiL0Jja3lVV3RwOUJrOW1zbFM5M3ptRmpEbWo0NjJuL3p4?=
 =?utf-8?B?TWFzVHVkUk9EWDJGd0RSQ2R2VGErUDU5cVZ2dWVwWi80QlhjQTcyOUs0RUp1?=
 =?utf-8?B?clNvVndNQUdsM1grc3ZGRXNQam5CcGRYdnZGOTZ3cnZTU01MVW5RMjRSaTl2?=
 =?utf-8?Q?ByReOjyq3jFWt9PECRHozOdLJW3bJOt5?=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH7PR12MB5685.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(7416014)(376014)(1800799024)(366016);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?UHFJRVU5MnU2VnMxSm5QdnRnRCt2TXR2cFVnZ200bStCYytBN1JxSlZ5TmNG?=
 =?utf-8?B?a0UrcmpBMUE1SXo0Y25BRnNlVmswajVHMVdOdWhPV3dVOWhSd3hVUDR1UEdF?=
 =?utf-8?B?RGwvMHpSQ3BzTmxSNXNyczRURStQNDZBYmQzb2crRWJ2RUpRaGpodm93MTRG?=
 =?utf-8?B?ZEd5a0dkTFJzeG5QMDhCODBBejE4YTRsSFpzYjhpUElObG8xY3kxNnduZDVm?=
 =?utf-8?B?VHlqbWtVdnd4ZmNSQktSeG52RjdFYmxPS3BrWFloQWY4N0pxVkovQWZBeW93?=
 =?utf-8?B?WjJDYjd3UStjb1FmM0RkZzZEZFk1aE5BdmFZQ2NRREdRdnhzZW1UYSt3NlFR?=
 =?utf-8?B?TS8zZmxQeFgyZHNDbnJ6ditxa3dxZHlzOVhSRHBINkF2bml6aDhWTHdBYmlE?=
 =?utf-8?B?dCs2ZVYrdEV0NnJ2QUtKcHJVM3NrWXdDcWhPNkNvQS8xVjhwbXRvZEVrZUhm?=
 =?utf-8?B?ZUhMYWdUTFFZa0NxZ0dmR29ERkNxMGVmd3hkZnpCbVZYbHFqVXZtdXRFSndw?=
 =?utf-8?B?UkVJdmxYQ0p1aXRvSVZ4bzh2VjhEM0pMMkZiTU1WV21aTXU0NjY2UUZ4aXdt?=
 =?utf-8?B?cFF6TWxYN1JBZ3RJbHk3TCtjc016bm96NkVVajdIZTYzajJlVmI3WE83ZUZU?=
 =?utf-8?B?SWRsd0c2SUhBSGVCWFNpNlFGdEVqeW1Ka2hZRmEzZWhXbnBIM3ZzVWVBUmlC?=
 =?utf-8?B?eitRMHhwYTF6czVtRC96dHNVcXNNa2duSEhiUVFBbEZOcU9XNWZURTN3ZFlB?=
 =?utf-8?B?UDNlTWYxc0IzT1N6QllLNGVvM0I0OUtwczBpVFFxZWVVOFlEbGFyeUlmcXRC?=
 =?utf-8?B?SFA2WWlHVklIbTBQRFduN0tndmd6R0hkMm9tV0J4NWFRTWVwbnI1dnhhaVlV?=
 =?utf-8?B?UlN0amMwdHB4Q25QVEpCbEIybG40SDZzRTZZY2R4T1NtUFhDck9sNW4xejQw?=
 =?utf-8?B?Ykw3bU5DTWxhTWxqTHR1eEZVaEMzSHFNQlk1eEkvRldtY0w1TW9EWTJheTJh?=
 =?utf-8?B?YWZUN3QxUk1SWVg2WWYrU3RHSW5adkl3QythdWlpZ04rM1BEb1lyWnZDY3Bw?=
 =?utf-8?B?RS9hejArRkNvKzF1TFRrbHdVNjNob2VUcTdOMHFGSEdCUEVoWC9NWmltdDdI?=
 =?utf-8?B?MHhldG0zdlRoL2IzL0p2aEVWY3gzTUJrbHZ5TEJKZmxLZWdPSjR1ejk0dGxR?=
 =?utf-8?B?Wnk3dU1DSmpKb3RyeDRzekdoVFBWOExQektXT09BTFlFbnFrN3dMMThaYWM1?=
 =?utf-8?B?SnI5OVdGK2xvTUxPMTdodHJrcnMyNmFJK0JlaFZOTXZFWFFlajdKa0FUOFJS?=
 =?utf-8?B?VFJaeEVCU0g3eFRxYys5WW1OUDhvQVlPZHNVQU9lLzExQVNwWEFKc3g0TjF2?=
 =?utf-8?B?alMwRDdEY1B5UjdaaXEwUFgwdkNWR0FzSUpnVEx6dGhIdWxGc0h5OHlUWHg1?=
 =?utf-8?B?VkhzN00rZ01vUVJ4dE14RFE1L0dIckVzb0trT0grTlFGQ1BqRjlZZ25WVUYr?=
 =?utf-8?B?YjdzS2E0OFI1VTFtZllUVzhmSDV3Q0pnT00zNjBxMEVPVCtGQlRiZGJwREJ3?=
 =?utf-8?B?SHlDR3NMRzVZcGc5QytmRkRxd0d2YXZCY3dSZ2NnL0pLSXFxY2ExRFJrbHph?=
 =?utf-8?B?Z0pLSHE5dm80K0dnMWcycWZxbFpabFQvT2dvSzlaM2tuczg0TmwwdytxM2My?=
 =?utf-8?B?UlVNMGpDcVRIOE0rYUZGYzU2Q1d5REhKNzM2M3lIdURhcXdLalYydURVU2xW?=
 =?utf-8?B?dXpUcmk0b1ZtY05vTFFPY3U0R3JOVEYwaUIyTVlYeFFNVGlWYzAxN3h2clBB?=
 =?utf-8?B?cUU2cUkwOVV2MU1wTDVVS29WWkhMWWFLQ0ZZaVVGc2NKdW9iRmhTVzhFM0kr?=
 =?utf-8?B?b3B1cWpIYzJhSzBhQXBrcXRLY3NiTDdmRzV6OG1QalZueHE5VFpCcUcvOXZa?=
 =?utf-8?B?bWkrYW9DUmhYZXR5UWpNV2xrZS9sUkRydUt3Z3Y0UWh1N084ZWUrU01VSHds?=
 =?utf-8?B?ejd6cS9SUFd6bFFja1pNWlVHSjJvT0VyNElnaXQ0SXh6UlgyR1RucjlOUmc5?=
 =?utf-8?B?UU9qSFArZFZUUzdpcm5TK1V4d2ZFNGtnYjhKdXJPYWJ6WjJmUDRoMXBKMDd4?=
 =?utf-8?Q?STjDYM2Eul8c2L/6+mV+YNBiC?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a6766521-bc9a-4885-9cf1-08de277b6c8e
X-MS-Exchange-CrossTenant-AuthSource: PH7PR12MB5685.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Nov 2025 14:53:39.1798
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: EAAgUa6BbVnYIR9n1lRVabMKLJZZQOerx9YYRq2dmneBCEkMtVz+yOoN8B+rd3WI
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR12MB6707
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-5.00 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[amd.com,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:40.107.0.0/16];
	R_DKIM_ALLOW(-0.20)[amd.com:s=selector1];
	MIME_GOOD(-0.10)[text/plain];
	BLOCKLISTDE_FAIL(0.00)[40.107.208.62:server fail];
	RWL_MAILSPIKE_POSSIBLE(0.00)[40.107.208.62:from];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[34];
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
X-Rspamd-Queue-Id: 6B3573F70E
X-Spamd-Bar: -----
Message-ID-Hash: Z3FV5NHFRWWTFIMM5635SUA25T36WD5K
X-Message-ID-Hash: Z3FV5NHFRWWTFIMM5635SUA25T36WD5K
X-MailFrom: Christian.Koenig@amd.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Bjorn Helgaas <bhelgaas@google.com>, Logan Gunthorpe <logang@deltatee.com>, Jens Axboe <axboe@kernel.dk>, Robin Murphy <robin.murphy@arm.com>, Joerg Roedel <joro@8bytes.org>, Will Deacon <will@kernel.org>, Jason Gunthorpe <jgg@ziepe.ca>, Andrew Morton <akpm@linux-foundation.org>, Jonathan Corbet <corbet@lwn.net>, Sumit Semwal <sumit.semwal@linaro.org>, Kees Cook <kees@kernel.org>, "Gustavo A. R. Silva" <gustavoars@kernel.org>, Ankit Agrawal <ankita@nvidia.com>, Yishai Hadas <yishaih@nvidia.com>, Shameer Kolothum <skolothumtho@nvidia.com>, Kevin Tian <kevin.tian@intel.com>, Alex Williamson <alex@shazbot.org>, Krishnakant Jaju <kjaju@nvidia.com>, Matt Ochs <mochs@nvidia.com>, linux-pci@vger.kernel.org, linux-kernel@vger.kernel.org, linux-block@vger.kernel.org, iommu@lists.linux.dev, linux-mm@kvack.org, linux-doc@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, kvm@vger.kernel.org, linux-hardening@vger.kernel.org, Alex Ma
 stro <amastro@fb.com>, Nicolin Chen <nicolinc@nvidia.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v8 06/11] dma-buf: provide phys_vec to scatter-gather mapping routine
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/Z3FV5NHFRWWTFIMM5635SUA25T36WD5K/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

DQoNCk9uIDExLzE5LzI1IDE1OjUwLCBMZW9uIFJvbWFub3Zza3kgd3JvdGU6DQo+IE9uIFdlZCwg
Tm92IDE5LCAyMDI1IGF0IDAzOjExOjAxUE0gKzAxMDAsIENocmlzdGlhbiBLw7ZuaWcgd3JvdGU6
DQo+PiBPbiAxMS8xOS8yNSAxNDo0MiwgTGVvbiBSb21hbm92c2t5IHdyb3RlOg0KPj4+IE9uIFdl
ZCwgTm92IDE5LCAyMDI1IGF0IDAyOjE2OjU3UE0gKzAxMDAsIENocmlzdGlhbiBLw7ZuaWcgd3Jv
dGU6DQo+Pj4+DQo+Pj4+DQo+Pj4+IE9uIDExLzExLzI1IDEwOjU3LCBMZW9uIFJvbWFub3Zza3kg
d3JvdGU6DQo+Pj4+PiBGcm9tOiBMZW9uIFJvbWFub3Zza3kgPGxlb25yb0BudmlkaWEuY29tPg0K
Pj4+Pj4NCj4+Pj4+IEFkZCBkbWFfYnVmX21hcCgpIGFuZCBkbWFfYnVmX3VubWFwKCkgaGVscGVy
cyB0byBjb252ZXJ0IGFuIGFycmF5IG9mDQo+Pj4+PiBNTUlPIHBoeXNpY2FsIGFkZHJlc3MgcmFu
Z2VzIGludG8gc2NhdHRlci1nYXRoZXIgdGFibGVzIHdpdGggcHJvcGVyDQo+Pj4+PiBETUEgbWFw
cGluZy4NCj4+Pj4+DQo+Pj4+PiBUaGVzZSBjb21tb24gZnVuY3Rpb25zIGFyZSBhIHN0YXJ0aW5n
IHBvaW50IGFuZCBzdXBwb3J0IGFueSBQQ0kNCj4+Pj4+IGRyaXZlcnMgY3JlYXRpbmcgbWFwcGlu
Z3MgZnJvbSB0aGVpciBCQVIncyBNTUlPIGFkZHJlc3Nlcy4gVkZJTyBpcyBvbmUNCj4+Pj4+IGNh
c2UsIGFzIHNob3J0bHkgd2lsbCBiZSBSRE1BLiBXZSBjYW4gcmV2aWV3IGV4aXN0aW5nIERSTSBk
cml2ZXJzIHRvDQo+Pj4+PiByZWZhY3RvciB0aGVtIHNlcGFyYXRlbHkuIFdlIGhvcGUgdGhpcyB3
aWxsIGV2b2x2ZSBpbnRvIHJvdXRpbmVzIHRvDQo+Pj4+PiBoZWxwIGNvbW1vbiBEUk0gdGhhdCBp
bmNsdWRlIG1peGVkIENQVSBhbmQgTU1JTyBtYXBwaW5ncy4NCj4+Pj4+DQo+Pj4+PiBDb21wYXJl
ZCB0byB0aGUgZG1hX21hcF9yZXNvdXJjZSgpIGFidXNlIHRoaXMgaW1wbGVtZW50YXRpb24gaGFu
ZGxlcw0KPj4+Pj4gdGhlIGNvbXBsaWNhdGVkIFBDSSBQMlAgc2NlbmFyaW9zIHByb3Blcmx5LCBl
c3BlY2lhbGx5IHdoZW4gYW4gSU9NTVUNCj4+Pj4+IGlzIGVuYWJsZWQ6DQo+Pj4+Pg0KPj4+Pj4g
IC0gRGlyZWN0IGJ1cyBhZGRyZXNzIG1hcHBpbmcgd2l0aG91dCBJT1ZBIGFsbG9jYXRpb24gZm9y
DQo+Pj4+PiAgICBQQ0lfUDJQRE1BX01BUF9CVVNfQUREUiwgdXNpbmcgcGNpX3AycGRtYV9idXNf
YWRkcl9tYXAoKS4gVGhpcw0KPj4+Pj4gICAgaGFwcGVucyBpZiB0aGUgSU9NTVUgaXMgZW5hYmxl
ZCBidXQgdGhlIFBDSWUgc3dpdGNoIEFDUyBmbGFncyBhbGxvdw0KPj4+Pj4gICAgdHJhbnNhY3Rp
b25zIHRvIGF2b2lkIHRoZSBob3N0IGJyaWRnZS4NCj4+Pj4+DQo+Pj4+PiAgICBGdXJ0aGVyLCB0
aGlzIGhhbmRsZXMgdGhlIHNsaWdodGx5IG9ic2N1cmUsIGNhc2Ugb2YgTU1JTyB3aXRoIGENCj4+
Pj4+ICAgIHBoeXNfYWRkcl90IHRoYXQgaXMgZGlmZmVyZW50IGZyb20gdGhlIHBoeXNpY2FsIEJB
UiBwcm9ncmFtbWluZw0KPj4+Pj4gICAgKGJ1cyBvZmZzZXQpLiBUaGUgcGh5c19hZGRyX3QgaXMg
Y29udmVydGVkIHRvIGEgZG1hX2FkZHJfdCBhbmQNCj4+Pj4+ICAgIGFjY29tbW9kYXRlcyB0aGlz
IGVmZmVjdC4gVGhpcyBlbmFibGVzIGNlcnRhaW4gcmVhbCBzeXN0ZW1zIHRvDQo+Pj4+PiAgICB3
b3JrLCBlc3BlY2lhbGx5IG9uIEFSTSBwbGF0Zm9ybXMuDQo+Pj4+Pg0KPj4+Pj4gIC0gTWFwcGlu
ZyB0aHJvdWdoIGhvc3QgYnJpZGdlIHdpdGggSU9WQSBhbGxvY2F0aW9uIGFuZCBETUFfQVRUUl9N
TUlPDQo+Pj4+PiAgICBhdHRyaWJ1dGUgZm9yIE1NSU8gbWVtb3J5IHJlZ2lvbnMgKFBDSV9QMlBE
TUFfTUFQX1RIUlVfSE9TVF9CUklER0UpLg0KPj4+Pj4gICAgVGhpcyBoYXBwZW5zIHdoZW4gdGhl
IElPTU1VIGlzIGVuYWJsZWQgYW5kIHRoZSBBQ1MgZmxhZ3MgYXJlIGZvcmNpbmcNCj4+Pj4+ICAg
IGFsbCB0cmFmZmljIHRvIHRoZSBJT01NVSAtIGllIGZvciB2aXJ0dWFsaXphdGlvbiBzeXN0ZW1z
Lg0KPj4+Pj4NCj4+Pj4+ICAtIENhc2VzIHdoZXJlIFAyUCBpcyBub3Qgc3VwcG9ydGVkIHRocm91
Z2ggdGhlIGhvc3QgYnJpZGdlL0NQVS4gVGhlDQo+Pj4+PiAgICBQMlAgc3Vic3lzdGVtIGlzIHRo
ZSBwcm9wZXIgcGxhY2UgdG8gZGV0ZWN0IHRoaXMgYW5kIGJsb2NrIGl0Lg0KPj4+Pj4NCj4+Pj4+
IEhlbHBlciBmdW5jdGlvbnMgZmlsbF9zZ19lbnRyeSgpIGFuZCBjYWxjX3NnX25lbnRzKCkgaGFu
ZGxlIHRoZQ0KPj4+Pj4gc2NhdHRlci1nYXRoZXIgdGFibGUgY29uc3RydWN0aW9uLCBzcGxpdHRp
bmcgbGFyZ2UgcmVnaW9ucyBpbnRvDQo+Pj4+PiBVSU5UX01BWC1zaXplZCBjaHVua3MgdG8gZml0
IHdpdGhpbiBzZy0+bGVuZ3RoIGZpZWxkIGxpbWl0cy4NCj4+Pj4+DQo+Pj4+PiBTaW5jZSB0aGUg
cGh5c2ljYWwgYWRkcmVzcyBiYXNlZCBETUEgQVBJIGZvcmJpZHMgdXNlIG9mIHRoZSBDUFUgbGlz
dA0KPj4+Pj4gb2YgdGhlIHNjYXR0ZXJsaXN0IHRoaXMgd2lsbCBwcm9kdWNlIGEgbWFuZ2xlZCBz
Y2F0dGVybGlzdCB0aGF0IGhhcw0KPj4+Pj4gYSBmdWxseSB6ZXJvLWxlbmd0aCBhbmQgTlVMTCdk
IENQVSBsaXN0LiBUaGUgbGlzdCBpcyAwIGxlbmd0aCwNCj4+Pj4+IGFsbCB0aGUgc3RydWN0IHBh
Z2UgcG9pbnRlcnMgYXJlIE5VTEwgYW5kIHplcm8gc2l6ZWQuIFRoaXMgaXMgc3Ryb25nZXINCj4+
Pj4+IGFuZCBtb3JlIHJvYnVzdCB0aGFuIHRoZSBleGlzdGluZyBtYW5nbGVfc2dfdGFibGUoKSB0
ZWNobmlxdWUuIEl0IGlzDQo+Pj4+PiBhIGZ1dHVyZSBwcm9qZWN0IHRvIG1pZ3JhdGUgRE1BQlVG
IGFzIGEgc3Vic3lzdGVtIGF3YXkgZnJvbSB1c2luZw0KPj4+Pj4gc2NhdHRlcmxpc3QgZm9yIHRo
aXMgZGF0YSBzdHJ1Y3R1cmUuDQo+Pj4+Pg0KPj4+Pj4gVGVzdGVkLWJ5OiBBbGV4IE1hc3RybyA8
YW1hc3Ryb0BmYi5jb20+DQo+Pj4+PiBUZXN0ZWQtYnk6IE5pY29saW4gQ2hlbiA8bmljb2xpbmNA
bnZpZGlhLmNvbT4NCj4+Pj4+IFNpZ25lZC1vZmYtYnk6IExlb24gUm9tYW5vdnNreSA8bGVvbnJv
QG52aWRpYS5jb20+DQo+Pj4+PiAtLS0NCj4+Pj4+ICBkcml2ZXJzL2RtYS1idWYvZG1hLWJ1Zi5j
IHwgMjM1ICsrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysNCj4+
Pj4+ICBpbmNsdWRlL2xpbnV4L2RtYS1idWYuaCAgIHwgIDE4ICsrKysNCj4+Pj4+ICAyIGZpbGVz
IGNoYW5nZWQsIDI1MyBpbnNlcnRpb25zKCspDQo+Pj4+Pg0KPj4+Pj4gZGlmZiAtLWdpdCBhL2Ry
aXZlcnMvZG1hLWJ1Zi9kbWEtYnVmLmMgYi9kcml2ZXJzL2RtYS1idWYvZG1hLWJ1Zi5jDQo+Pj4+
PiBpbmRleCAyYmNmOWNlY2E5OTcuLmNiNTVkZmYxZGFkNSAxMDA2NDQNCj4+Pj4+IC0tLSBhL2Ry
aXZlcnMvZG1hLWJ1Zi9kbWEtYnVmLmMNCj4+Pj4+ICsrKyBiL2RyaXZlcnMvZG1hLWJ1Zi9kbWEt
YnVmLmMNCj4+Pj4+IEBAIC0xMjU0LDYgKzEyNTQsMjQxIEBAIHZvaWQgZG1hX2J1Zl91bm1hcF9h
dHRhY2htZW50X3VubG9ja2VkKHN0cnVjdCBkbWFfYnVmX2F0dGFjaG1lbnQgKmF0dGFjaCwNCj4+
Pj4+ICB9DQo+Pj4+PiAgRVhQT1JUX1NZTUJPTF9OU19HUEwoZG1hX2J1Zl91bm1hcF9hdHRhY2ht
ZW50X3VubG9ja2VkLCAiRE1BX0JVRiIpOw0KPj4+Pj4gIA0KPj4+Pj4gK3N0YXRpYyBzdHJ1Y3Qg
c2NhdHRlcmxpc3QgKmZpbGxfc2dfZW50cnkoc3RydWN0IHNjYXR0ZXJsaXN0ICpzZ2wsIHNpemVf
dCBsZW5ndGgsDQo+Pj4+PiArCQkJCQkgZG1hX2FkZHJfdCBhZGRyKQ0KPj4+Pj4gK3sNCj4+Pj4+
ICsJdW5zaWduZWQgaW50IGxlbiwgbmVudHM7DQo+Pj4+PiArCWludCBpOw0KPj4+Pj4gKw0KPj4+
Pj4gKwluZW50cyA9IERJVl9ST1VORF9VUChsZW5ndGgsIFVJTlRfTUFYKTsNCj4+Pj4+ICsJZm9y
IChpID0gMDsgaSA8IG5lbnRzOyBpKyspIHsNCj4+Pj4+ICsJCWxlbiA9IG1pbl90KHNpemVfdCwg
bGVuZ3RoLCBVSU5UX01BWCk7DQo+Pj4+PiArCQlsZW5ndGggLT0gbGVuOw0KPj4+Pj4gKwkJLyoN
Cj4+Pj4+ICsJCSAqIERNQUJVRiBhYnVzZXMgc2NhdHRlcmxpc3QgdG8gY3JlYXRlIGEgc2NhdHRl
cmxpc3QNCj4+Pj4+ICsJCSAqIHRoYXQgZG9lcyBub3QgaGF2ZSBhbnkgQ1BVIGxpc3QsIG9ubHkg
dGhlIERNQSBsaXN0Lg0KPj4+Pj4gKwkJICogQWx3YXlzIHNldCB0aGUgcGFnZSByZWxhdGVkIHZh
bHVlcyB0byBOVUxMIHRvIGVuc3VyZQ0KPj4+Pj4gKwkJICogaW1wb3J0ZXJzIGNhbid0IHVzZSBp
dC4gVGhlIHBoeXNfYWRkciBiYXNlZCBETUEgQVBJDQo+Pj4+PiArCQkgKiBkb2VzIG5vdCByZXF1
aXJlIHRoZSBDUFUgbGlzdCBmb3IgbWFwcGluZyBvciB1bm1hcHBpbmcuDQo+Pj4+PiArCQkgKi8N
Cj4+Pj4+ICsJCXNnX3NldF9wYWdlKHNnbCwgTlVMTCwgMCwgMCk7DQo+Pj4+PiArCQlzZ19kbWFf
YWRkcmVzcyhzZ2wpID0gYWRkciArIGkgKiBVSU5UX01BWDsNCj4+Pj4+ICsJCXNnX2RtYV9sZW4o
c2dsKSA9IGxlbjsNCj4+Pj4+ICsJCXNnbCA9IHNnX25leHQoc2dsKTsNCj4+Pj4+ICsJfQ0KPj4+
Pj4gKw0KPj4+Pj4gKwlyZXR1cm4gc2dsOw0KPj4+Pj4gK30NCj4+Pj4+ICsNCj4+Pj4+ICtzdGF0
aWMgdW5zaWduZWQgaW50IGNhbGNfc2dfbmVudHMoc3RydWN0IGRtYV9pb3ZhX3N0YXRlICpzdGF0
ZSwNCj4+Pj4+ICsJCQkJICBzdHJ1Y3QgZG1hX2J1Zl9waHlzX3ZlYyAqcGh5c192ZWMsDQo+Pj4+
PiArCQkJCSAgc2l6ZV90IG5yX3Jhbmdlcywgc2l6ZV90IHNpemUpDQo+Pj4+PiArew0KPj4+Pj4g
Kwl1bnNpZ25lZCBpbnQgbmVudHMgPSAwOw0KPj4+Pj4gKwlzaXplX3QgaTsNCj4+Pj4+ICsNCj4+
Pj4+ICsJaWYgKCFzdGF0ZSB8fCAhZG1hX3VzZV9pb3ZhKHN0YXRlKSkgew0KPj4+Pj4gKwkJZm9y
IChpID0gMDsgaSA8IG5yX3JhbmdlczsgaSsrKQ0KPj4+Pj4gKwkJCW5lbnRzICs9IERJVl9ST1VO
RF9VUChwaHlzX3ZlY1tpXS5sZW4sIFVJTlRfTUFYKTsNCj4+Pj4+ICsJfSBlbHNlIHsNCj4+Pj4+
ICsJCS8qDQo+Pj4+PiArCQkgKiBJbiBJT1ZBIGNhc2UsIHRoZXJlIGlzIG9ubHkgb25lIFNHIGVu
dHJ5IHdoaWNoIHNwYW5zDQo+Pj4+PiArCQkgKiBmb3Igd2hvbGUgSU9WQSBhZGRyZXNzIHNwYWNl
LCBidXQgd2UgbmVlZCB0byBtYWtlIHN1cmUNCj4+Pj4+ICsJCSAqIHRoYXQgaXQgZml0cyBzZy0+
bGVuZ3RoLCBtYXliZSB3ZSBuZWVkIG1vcmUuDQo+Pj4+PiArCQkgKi8NCj4+Pj4+ICsJCW5lbnRz
ID0gRElWX1JPVU5EX1VQKHNpemUsIFVJTlRfTUFYKTsNCj4+Pj4+ICsJfQ0KPj4+Pj4gKw0KPj4+
Pj4gKwlyZXR1cm4gbmVudHM7DQo+Pj4+PiArfQ0KPj4+Pj4gKw0KPj4+Pj4gKy8qKg0KPj4+Pj4g
KyAqIHN0cnVjdCBkbWFfYnVmX2RtYSAtIGhvbGRzIERNQSBtYXBwaW5nIGluZm9ybWF0aW9uDQo+
Pj4+PiArICogQHNndDogICAgU2NhdHRlci1nYXRoZXIgdGFibGUNCj4+Pj4+ICsgKiBAc3RhdGU6
ICBETUEgSU9WQSBzdGF0ZSByZWxldmFudCBpbiBJT01NVS1iYXNlZCBETUENCj4+Pj4+ICsgKiBA
c2l6ZTogICBUb3RhbCBzaXplIG9mIERNQSB0cmFuc2Zlcg0KPj4+Pj4gKyAqLw0KPj4+Pj4gK3N0
cnVjdCBkbWFfYnVmX2RtYSB7DQo+Pj4+PiArCXN0cnVjdCBzZ190YWJsZSBzZ3Q7DQo+Pj4+PiAr
CXN0cnVjdCBkbWFfaW92YV9zdGF0ZSAqc3RhdGU7DQo+Pj4+PiArCXNpemVfdCBzaXplOw0KPj4+
Pj4gK307DQo+Pj4+PiArDQo+Pj4+PiArLyoqDQo+Pj4+PiArICogZG1hX2J1Zl9tYXAgLSBSZXR1
cm5zIHRoZSBzY2F0dGVybGlzdCB0YWJsZSBvZiB0aGUgYXR0YWNobWVudCBmcm9tIGFycmF5cw0K
Pj4+Pj4gKyAqIG9mIHBoeXNpY2FsIHZlY3RvcnMuIFRoaXMgZnVuY2l0b24gaXMgaW50ZW5kZWQg
Zm9yIE1NSU8gbWVtb3J5IG9ubHkuDQo+Pj4+PiArICogQGF0dGFjaDoJW2luXQlhdHRhY2htZW50
IHdob3NlIHNjYXR0ZXJsaXN0IGlzIHRvIGJlIHJldHVybmVkDQo+Pj4+PiArICogQHByb3ZpZGVy
OglbaW5dCXAycGRtYSBwcm92aWRlcg0KPj4+Pj4gKyAqIEBwaHlzX3ZlYzoJW2luXQlhcnJheSBv
ZiBwaHlzaWNhbCB2ZWN0b3JzDQo+Pj4+PiArICogQG5yX3JhbmdlczoJW2luXQludW1iZXIgb2Yg
ZW50cmllcyBpbiBwaHlzX3ZlYyBhcnJheQ0KPj4+Pj4gKyAqIEBzaXplOglbaW5dCXRvdGFsIHNp
emUgb2YgcGh5c192ZWMNCj4+Pj4+ICsgKiBAZGlyOglbaW5dCWRpcmVjdGlvbiBvZiBETUEgdHJh
bnNmZXINCj4+Pj4+ICsgKg0KPj4+Pj4gKyAqIFJldHVybnMgc2dfdGFibGUgY29udGFpbmluZyB0
aGUgc2NhdHRlcmxpc3QgdG8gYmUgcmV0dXJuZWQ7IHJldHVybnMgRVJSX1BUUg0KPj4+Pj4gKyAq
IG9uIGVycm9yLiBNYXkgcmV0dXJuIC1FSU5UUiBpZiBpdCBpcyBpbnRlcnJ1cHRlZCBieSBhIHNp
Z25hbC4NCj4+Pj4+ICsgKg0KPj4+Pj4gKyAqIE9uIHN1Y2Nlc3MsIHRoZSBETUEgYWRkcmVzc2Vz
IGFuZCBsZW5ndGhzIGluIHRoZSByZXR1cm5lZCBzY2F0dGVybGlzdCBhcmUNCj4+Pj4+ICsgKiBQ
QUdFX1NJWkUgYWxpZ25lZC4NCj4+Pj4+ICsgKg0KPj4+Pj4gKyAqIEEgbWFwcGluZyBtdXN0IGJl
IHVubWFwcGVkIGJ5IHVzaW5nIGRtYV9idWZfdW5tYXAoKS4NCj4+Pj4+ICsgKi8NCj4+Pj4+ICtz
dHJ1Y3Qgc2dfdGFibGUgKmRtYV9idWZfbWFwKHN0cnVjdCBkbWFfYnVmX2F0dGFjaG1lbnQgKmF0
dGFjaCwNCj4+Pj4NCj4+Pj4gVGhhdCBpcyBjbGVhcmx5IG5vdCBhIGdvb2QgbmFtZSBmb3IgdGhp
cyBmdW5jdGlvbi4gV2UgYWxyZWFkeSBoYXZlIG92ZXJsb2FkZWQgdGhlIHRlcm0gKm1hcHBpbmcq
IHdpdGggc29tZXRoaW5nIGNvbXBsZXRlbHkgZGlmZmVyZW50Lg0KPj4+DQo+Pj4gVGhpcyBmdW5j
dGlvbiBwZXJmb3JtcyBETUEgbWFwcGluZywgc28gd2hhdCBuYW1lIGRvIHlvdSBzdWdnZXN0IGlu
c3RlYWQgb2YgZG1hX2J1Zl9tYXAoKT8NCj4+DQo+PiBTb21ldGhpbmcgbGlrZSBkbWFfYnVmX3Bo
eXNfdmVjX3RvX3NnX3RhYmxlKCkuIEknbSBub3QgZ29vZCBhdCBuYW1pbmcgZWl0aGVyLg0KPiAN
Cj4gQ2FuIEkgY2FsbCBpdCBzaW1wbHkgZG1hX2J1Zl9tYXBwaW5nKCkgYXMgSSBwbGFuIHRvIHB1
dCB0aGF0IGZ1bmN0aW9uIGluIGRtYV9idWZfbWFwcGluZy5jDQo+IGZpbGUgcGVyLXlvdXIgcmVx
dWVzdC4NCg0KTm8sIGp1c3QgY29tcGxldGVseSBkcm9wIHRoZSB0ZXJtICJtYXBwaW5nIiBoZXJl
LiBUaGlzIGlzIGFib3V0IHBoeXNfdmVjdG9yIHRvIHNnX3RhYmxlIGNvbnZlcnNpb24gYW5kIG5v
dGhpbmcgZWxzZS4NCg0KVGhhdCB3ZSBjcmVhdGUgYW4gSU9WQSBtYXBwaW5nIHdoZW4gdGhlIGFj
Y2VzcyBuZWVkcyB0byBnbyB0aHJvdWdoIHRoZSByb290IGNvbXBsZXggaXMgYW4gaW1wbGVtZW50
YXRpb24gZGV0YWlsLg0KDQo+IA0KPiBSZWdhcmRpbmcgU0csIHRoZSBsb25nIHRlcm0gcGxhbiBp
cyB0byByZW1vdmUgU0cgdGFibGUgY29tcGxldGVseSwgc28gYXQNCj4gbGVhc3QgZXh0ZXJuYWwg
dXNlcnMgb2YgRE1BQlVGIHNob3VsZG4ndCBiZSBleHBvc2VkIHRvIGludGVybmFsIGltcGxlbWVu
dGF0aW9uDQo+IGRldGFpbHMgKFNHIHRhYmxlKS4NCg0KSHVpPyBXZWxsIEkgc3VnZ2VzdGVkIHRv
IHJlbW92ZSB0aGUgc2dfdGFibGUsIGJ1dCB0aGF0IGRvZXNuJ3QgbWVhbiB0aGF0IGltcGxlbWVu
dGF0aW9ucyBzaG91bGRuJ3QgYmUgYXdhcmUgb2YgdGhhdC4NCg0KUmVnYXJkcywNCkNocmlzdGlh
bi4NCg0KPiANCj4gVGhhbmtzDQoNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdA
bGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1t
bS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=
