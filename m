Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id E7483CB9388
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 12 Dec 2025 17:04:37 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 08CF03FDAE
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 12 Dec 2025 16:04:37 +0000 (UTC)
Received: from PH8PR06CU001.outbound.protection.outlook.com (mail-westus3azon11012048.outbound.protection.outlook.com [40.107.209.48])
	by lists.linaro.org (Postfix) with ESMTPS id D787E3F900
	for <linaro-mm-sig@lists.linaro.org>; Fri, 12 Dec 2025 16:04:20 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=amd.com header.s=selector1 header.b=VuIxTHle;
	spf=pass (lists.linaro.org: domain of Christian.Koenig@amd.com designates 40.107.209.48 as permitted sender) smtp.mailfrom=Christian.Koenig@amd.com;
	dmarc=pass (policy=quarantine) header.from=amd.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=utnA4Y4RSFlFvl1Xp65apxlvxvwk53WBuFjK/LDh++WU/XKw2WX5YlNerPTNqstL3Vf2ipvveL0DHxNCp+mv33Wssm1f1Pi9uoJ334boDF0W+RuE8XXwi69hAA9YaMfj1GOqKekPyE3XDtpUy8hRIp48RVfeOPNc150bbVDrQRCJcpPWC1xnBIXq0UC8uZ9rLmEuCukEkRurwx0BNKw+dzF7uLtaurKdVyLL1/wWExYOsE69OaFIyDXoZ9wTi66WCtoXksLhfgoxmOhVX7gy/EV9TPFbS6cqazeL2oT5QgvZU9ajZox32DTAjN56U/uSzhpqZvcqoAZM2brfHYJlrA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=1fPdq/3YQhWLsrLh1qM9WnRhVSpik4YOO+F3kjdVdJo=;
 b=VeCRjD/MYSvMlwqMVhmvSJZr4wHe9Jem6UgrtVeg9ej5nxltQIpAukR45VDWzHknHj7iKydTZd2soX+7mdOJLrrhTTnzaS66caQCSIIuNdMRgHFnBlhLOTML1Drejd4FFTuuefllOxFPfPKgw0ohVpiqcOfAJSmiJd+7A4KQrXv8yx2l//0T/e5CslqEqbTXFvQb6T301frNEYVJ3+m89SpFi2rL79chSxAtX4pK3RDD5lpFKW2b9VgKkiZYmXLtSE/QZRIjF1mIYz9xgRGyhYfLlgHo9MtLRCSvs01cnzcnXpJ/AHikyH6o7IhVTAmX2YSXeZnayyf0KJPghG6NtQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=1fPdq/3YQhWLsrLh1qM9WnRhVSpik4YOO+F3kjdVdJo=;
 b=VuIxTHleR1jzd7fMvg35PTy9y9VE9hEc4NGwp+9IbllpveRb//Y2nV9PolMVCXqim8Stcl1jhe/Fgu0PadC7GZNP1yiqFm1kB9gBsp2aPKe6NfT0UnntomA2mzrJXFKVSn6djl94dFjstQsF0hcJqnuXJDzvujy1EX8AUQ8vHKc=
Received: from PH7PR12MB5685.namprd12.prod.outlook.com (2603:10b6:510:13c::22)
 by SJ0PR12MB5674.namprd12.prod.outlook.com (2603:10b6:a03:42c::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9412.12; Fri, 12 Dec
 2025 16:04:17 +0000
Received: from PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::46fb:96f2:7667:7ca5]) by PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::46fb:96f2:7667:7ca5%4]) with mapi id 15.20.9412.005; Fri, 12 Dec 2025
 16:04:16 +0000
Message-ID: <88f53243-6591-44fb-b9da-ead49c82a2cd@amd.com>
Date: Fri, 12 Dec 2025 17:04:12 +0100
User-Agent: Mozilla Thunderbird
To: phasta@kernel.org, tursulin@ursulin.net, matthew.brost@intel.com,
 sumit.semwal@linaro.org
References: <20251211122407.1709-1-christian.koenig@amd.com>
 <20251211122407.1709-15-christian.koenig@amd.com>
 <2ef69b00035fe129bb3f8d4b4b4ad931fa26dc8a.camel@mailbox.org>
Content-Language: en-US
From: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
In-Reply-To: <2ef69b00035fe129bb3f8d4b4b4ad931fa26dc8a.camel@mailbox.org>
X-ClientProxiedBy: BN1PR10CA0030.namprd10.prod.outlook.com
 (2603:10b6:408:e0::35) To PH7PR12MB5685.namprd12.prod.outlook.com
 (2603:10b6:510:13c::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR12MB5685:EE_|SJ0PR12MB5674:EE_
X-MS-Office365-Filtering-Correlation-Id: aecbd8a7-2667-4afe-460f-08de399819cd
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info: 
	=?utf-8?B?MTl1NEVSOUFBVE1YUUluNzBYeGhoK2oyZmZTekZNS090SkNQdGtkb294UzUv?=
 =?utf-8?B?NmEzeTlvQnA0RXBuR2M1M21UM09mcG82cFFmZ0RnekdNbmVicE9YaGR3b2pG?=
 =?utf-8?B?VlVTNnI5VWUvMFJVa3ZWUUVsRVRZSkVCSVhnSGRtVURmS1ljZ0xIK0F1Y2xG?=
 =?utf-8?B?R0NzbXhISEMwdEZDVW5ySUE0NmppUGUzS3p6Y25jcERKRFp6SzU2amFUUHdV?=
 =?utf-8?B?YXZ0Z2ZjekwwUEpBdEppbWkyaVptYTdWN0s3NXdqT3RPTjU5U0NqbFhRYjBL?=
 =?utf-8?B?THBDWWhpcVQxZnFtN2RONUZ2VWgwRzNOL0F5ZC9DRGVvL2lMRXB6Y21URlh5?=
 =?utf-8?B?OEJIbllralF3ektST0ZRSGltd1hyK3hnb0ZXQTh0Z0hmaU95OUxRa3QrT1FO?=
 =?utf-8?B?VUdYczAyT1ZOaWN5N3BsWEdxd1hHNmRVWitpQlJucDRFY1RKRjN2NC9xL2JB?=
 =?utf-8?B?RHl1R3NVL2V6REpEWFl2VUVqWVZyQnhjMDE5VWkwaFBwc0hFZWdaeGVuU2wv?=
 =?utf-8?B?L0hxRkJYU2g5TjlOSXdmMCs5QmpxeVVWTVNHS094WGt1U0ppTExMQlBzWDFS?=
 =?utf-8?B?RzVLMW53V1MyQmp0b1NjZnk4WTFnUGhLM29KME5XSkZTak90MkZlek53ZXo4?=
 =?utf-8?B?cE1LUE13MGxlbERjMHJOcGNIWVJtbjNSSmxEQmUyQm92TWZNeGg5a0VYTk1Y?=
 =?utf-8?B?UHZJanhkeEFMeVZxSFZDTDFrNktmc0RmbWs1dzI1cy9DUnpBMEhua0tOWXhh?=
 =?utf-8?B?QkJ0WHZoT3NzNUloMStoWllsYURkRFE4am1VblJCd1BnMnN0SU5aaE5lekdY?=
 =?utf-8?B?WVB3WFVyODdZeVMrWmp3NTRJYjV6NlJ2UFkrSE5VaWpjWElOc2NSbEFISktL?=
 =?utf-8?B?dHAwekNNSThpR3VVUXAvQ3JVNFBlZmdvdzMvWUdOcStUS1BCNkFqTGxUKys1?=
 =?utf-8?B?bWxiOEZSb28wTmY0Ym1KbWdJSEhjTVZVU3FRcTQ5eEZiRjZlM3h5Z042N1BE?=
 =?utf-8?B?Y3RoZTgwaTQyTytCUGZiMXBoTW9IYlhHYW5ITFBMKy9lU2ZUQUVlM0F6S2NQ?=
 =?utf-8?B?Uk5zb1Y0OThFTFdvMmFBdFczVDhsUGJZRVRWOER6MFhWRnRhUlRZaDY5REJM?=
 =?utf-8?B?aVJZek5rRHU1ZUpHb3pxK3hCZW5EMHZ3Qkd3YmRFVTNKMTFQT0Q3LzBLMi9Z?=
 =?utf-8?B?eTRjRkJxUjlUN3lwQWxrYXdtMDQvQ1VVUE0rT3U1d3FCUW1rZm0wRWppS1BB?=
 =?utf-8?B?dkI3TkdSQXZTaExKcG12YzBZdGN3cUVrb3M4RG1WZDNaNjR2UC9mRUxhQTFF?=
 =?utf-8?B?V0R6RVpFLzg3eWNNZE0vRzZINGtobE1JeTVWcU1xY1RiOWVZYXAvUHNQUy96?=
 =?utf-8?B?UUNCMldYd2QyOTFUTFZJLzhxYTJtdHVZM3FMNWwvT2g0R2YrclhZK0FJU3lQ?=
 =?utf-8?B?RW5UOWprbDhWeUlHWGlyTFdZSzdaNnd2RXN2SHhjM2RRV2xxb2Nrd3Bnejd1?=
 =?utf-8?B?c1ZwUk9qWE82Wng3SHk2azhiVUx3UXkydGpwd1N2dG9sV1lQRmR6KytodUpm?=
 =?utf-8?B?d0NlMndQajFqNWpkL09lemxTemo1WnU1Um1aMCtnZjlteG9PdU5nOHVMcTIy?=
 =?utf-8?B?Wi9MaUpNUWpySVJ4WWJSaUkzU1FsVmo2amVXcEsyUUdWbDBVSytrRlBtRUJT?=
 =?utf-8?B?b1JpdGVjSkVEai80UWNGR0ROTzFEME55UjJxZkoxVlRZdmxNTE00dzQ3UUtB?=
 =?utf-8?B?bUtzZ2VocDg5c1FHcitPTWR2dDJmYkRFMG5KTGNucXNsaHU1UklhTFRTVitR?=
 =?utf-8?B?c2NRazJIOEh2L2xCM1Zsc0xpTnEvcEJENm5rMlZySytkN0RNaGhIVVJlUUZi?=
 =?utf-8?B?alhOQzhhTFR5L04xR3F4QXdFcG9CSmJaTFFJT3ptekpmWnBwVmh0c0dYU3U2?=
 =?utf-8?Q?X6enTJ/bIZfnuICtXxMbby0DoPUNYmgi?=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH7PR12MB5685.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(376014)(1800799024);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?OHdGM0xNakFtZnk0RE53Mm9Ed2VEbzZLNTVleFB1dHBnbDJWU1MzaEM3cWov?=
 =?utf-8?B?Uk5GNVk2c1ZGZjFZbWZBNmxYZUo2YmVOTkVRUGM1d1RnN0thRkxXVE9IbEg4?=
 =?utf-8?B?UEI0NGYzR1N5ZS9URmpGZTVrWkZHRmpadWxxMjFvK2V3NThQQndzUi9ORlVx?=
 =?utf-8?B?cjhVWjJla3Z6T2R1bnVlWVR3S1JYeWxxcTVnd1RCbGg2Wi9tQjBPdTZBWnhZ?=
 =?utf-8?B?YjFZYjJIMS9rK01ZQTNlbzNET0k4YmJFOC94TEJFSERLaVZIaDhqRTVTVzJW?=
 =?utf-8?B?WDNaNTZNcDRiOG42SzNSL0t1YjVUWmdkUmZrZ0h5dmt6Rzc5NHlKZllham9o?=
 =?utf-8?B?WW1Pdk5jT0dZM0FoWDlyM0h0bWtmQ0hoaGc4VE9YcjdFOWhxbEIyc0pZUzJQ?=
 =?utf-8?B?Mmd1RjlsSW9ZY0RRNG94Q1FWTDBVMTFvMWxrcjVhV1lZeW0rams0N0FIMlhG?=
 =?utf-8?B?cjAwTGswbGRaN3BLeWIvandPVlRMdURIWllCVWxtOU9KTmtoMkFVdXNRRzdM?=
 =?utf-8?B?RlJiODEraCtsMkxMaHdIUWp2Tm9zR0p6bm9QTHo0dXExbjd0NFZQdE1GTUFD?=
 =?utf-8?B?a2hxekhpbmNOaHR3a0t3QmVrR0NFMjQxam43YkhxZFVKZUxGWkxaeFZ6SlA1?=
 =?utf-8?B?K1JVU1dvdUVhVVc0enFLUXZmRUw2SmRNN2ttSmJqVVhqNGNkUkYzbG5SOEQ0?=
 =?utf-8?B?TmF3YVBaS29VcmxWQ2lucjd3S0dzNElZVHlGa1RBb1pzTVRJZWNVS2VIU2Ey?=
 =?utf-8?B?aUlpelhLOXdOVzF0R200YTY0cU9IRlJISGZDZjUvRWsvMEkxU2FsZDFtT2tx?=
 =?utf-8?B?UHJOdU5CTkkreHhCQzRmK2RIdSthc3dabWdqV0hDdUVZcXR0UFYranQ3c29q?=
 =?utf-8?B?elNFeTRVNkJXcGNrRWY1bXJDd3hFR0djdDNaRHdLbTg0U2h3SzQzMjBYaTQv?=
 =?utf-8?B?OFdpN0Z0RjFNemRrSjhvM2U0QVlsSTVReC9GaEZiK2JyT0RSdmx1dmNGMHVQ?=
 =?utf-8?B?YUNkdTIrVkRZWXpDa3lYeVlaaW45YUFZS05kcGR4bnRPaGVRSlVxWUFZaUtz?=
 =?utf-8?B?bjNaOTRLd2JsR1BiMXNjQUFEc2NpSG9NOGNnZngrQm1MdEtRU2x3d280blJt?=
 =?utf-8?B?OFJyYmFsOFNTMGwyeEVOSmFrU1ZvRDJVSzZ5UlUrSkkyRmRYUmZwNkJ5eUlN?=
 =?utf-8?B?Q3VZUDdRT0NXVDd3dmsrT2FEMDhMbnRuN0hORzVzRCsvSk4wSXJJeDY0RWJC?=
 =?utf-8?B?d0YvbXB1dFhncWNLUCsxN3lYa3hsQVJtazhlRmNRODJyZ0tuaVJkbExxQnpn?=
 =?utf-8?B?SmZRTEVpc2hpWGw0QmFhVDcvbWlvRkNIOGZtRmRabnQ4RXlWTHZQVDFOUXVz?=
 =?utf-8?B?UVMwSzNsWGtvWjRvTWdvS3JVbXVXbW9tbFpiUU43SzEvTkRPWkF2M0QxOE9E?=
 =?utf-8?B?NHh5NUo0cWtmM1RHZXN1MDBGaXlveFhvZy95U0h4QS9SSjJGYkRqalcrMlc2?=
 =?utf-8?B?K3k3aHlrWWlYSFhicXhpSzZiQlYrSzFzbDNxM3pwQ2N0R1U2clJlekdod0FV?=
 =?utf-8?B?TWpRdDNkemM0cHRCNHFwbUQ2NkhpVmdNVGh6SXJsRlFwWFREUXVWOUdMMnAr?=
 =?utf-8?B?RzNCcmtxWUNzcXQvMFF3SzFGNmxSVXo2Ylp4Q0hOV0RHa3gyR3VjSUxlUVR0?=
 =?utf-8?B?MkVpUkhrelhUT0FmUUdnOHduNnVDbkVqWDY0a2UrNlloRFN1MTljcEFmTzlD?=
 =?utf-8?B?aWc1eGNxbTFlVHVYN0pmSXQ2dUU0ZmlwYVUrMjlkMi9WcXVRZ05VNDZMbmcw?=
 =?utf-8?B?aDFRUFo2RExqYXNsd1h0WldWeVR6T0JnTGhWSjk2QTE5TXhaLy9meEtpS1ds?=
 =?utf-8?B?akV0L1RaT05YSTRPVkpCdVYrWFZQZHRPdHBTOS9TNVNFYkdMMHJWTkd3dnhj?=
 =?utf-8?B?MGN2MG9MNk40ZFBKTWI3V0tDM3NxK3ZLcXNHQ3VlNm1JMGJDSFJNTnhzR0I3?=
 =?utf-8?B?MStGditNd2RNUkpzc2s4T1ZjaGRhc2Y3cFd1Nml0Q0RWSjFKd09JSGpDczVT?=
 =?utf-8?B?b2EzeHJvd2F5YjFBd1NPZW1FQUxPclZhM0lGYURRUSttYXd0YW5wcXJHV1Ux?=
 =?utf-8?Q?8r4nmdrWeO6j4ZM82M/YKOWTr?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: aecbd8a7-2667-4afe-460f-08de399819cd
X-MS-Exchange-CrossTenant-AuthSource: PH7PR12MB5685.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Dec 2025 16:04:16.8651
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: T6GwqXi0cTuD+8QhI4pEibYV6oNkofZ+EYzhZNnOrA9wwgt41STN8d4Pkbq/B2WX
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR12MB5674
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
	BLOCKLISTDE_FAIL(0.00)[40.107.209.48:server fail];
	DWL_DNSWL_BLOCKED(0.00)[amd.com:dkim];
	RWL_MAILSPIKE_POSSIBLE(0.00)[40.107.209.48:from];
	MID_RHS_MATCH_FROM(0.00)[];
	SUBJECT_HAS_EXCLAIM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_COUNT_TWO(0.00)[2];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	TO_DN_NONE(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	URIBL_BLOCKED(0.00)[mail-westus3azon11012048.outbound.protection.outlook.com:rdns];
	DKIM_TRACE(0.00)[amd.com:+]
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: D787E3F900
X-Spamd-Bar: -----
Message-ID-Hash: WFE2HNTOYHGFTOHB5BDGERY55DQ2V4O6
X-Message-ID-Hash: WFE2HNTOYHGFTOHB5BDGERY55DQ2V4O6
X-MailFrom: Christian.Koenig@amd.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 14/19] drm/amdgpu: independence for the amdkfd_fence! v4
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/WFE2HNTOYHGFTOHB5BDGERY55DQ2V4O6/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gMTIvMTEvMjUgMTY6MDgsIFBoaWxpcHAgU3Rhbm5lciB3cm90ZToNCj4gT24gVGh1LCAyMDI1
LTEyLTExIGF0IDEzOjE2ICswMTAwLCBDaHJpc3RpYW4gS8O2bmlnIHdyb3RlOg0KPj4gVGhpcyBh
bGxvd3MgYW1ka2ZkX2ZlbmNlcyB0byBvdXRsaXZlIHRoZSBhbWRncHUgbW9kdWxlLg0KPj4NCj4+
IHYyOiBpbXBsZW1lbnQgRmVsaXggc3VnZ2VzdGlvbiB0byBsb2NrIHRoZSBmZW5jZSB3aGlsZSBz
aWduYWxpbmcgaXQuDQo+PiB2MzogZml4IHR5cG9zDQo+PiB2NDogZml4IHJldHVybiBjb2RlIGlu
IHNpZ25hbF9ldmljdGlvbl9mZW5jZQ0KPj4NCj4+IFNpZ25lZC1vZmYtYnk6IENocmlzdGlhbiBL
w7ZuaWcgPGNocmlzdGlhbi5rb2VuaWdAYW1kLmNvbT4NCj4+IC0tLQ0KPj4gwqBkcml2ZXJzL2dw
dS9kcm0vYW1kL2FtZGdwdS9hbWRncHVfYW1ka2ZkLmjCoMKgwqAgfMKgIDcgKysrDQo+PiDCoC4u
Li9ncHUvZHJtL2FtZC9hbWRncHUvYW1kZ3B1X2FtZGtmZF9mZW5jZS5jwqAgfCA0NCArKysrKysr
KystLS0tLS0tLS0tDQo+PiDCoGRyaXZlcnMvZ3B1L2RybS9hbWQvYW1ka2ZkL2tmZF9wcm9jZXNz
LmPCoMKgwqDCoMKgIHzCoCAyICstDQo+PiDCoGRyaXZlcnMvZ3B1L2RybS9hbWQvYW1ka2ZkL2tm
ZF9zdm0uY8KgwqDCoMKgwqDCoMKgwqDCoCB8wqAgNCArLQ0KPj4gwqA0IGZpbGVzIGNoYW5nZWQs
IDMxIGluc2VydGlvbnMoKyksIDI2IGRlbGV0aW9ucygtKQ0KPj4NCj4+IGRpZmYgLS1naXQgYS9k
cml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9hbWRncHVfYW1ka2ZkLmggYi9kcml2ZXJzL2dwdS9k
cm0vYW1kL2FtZGdwdS9hbWRncHVfYW1ka2ZkLmgNCj4+IGluZGV4IDhiZGZjZGUyMDI5Yi4uMmYy
YjI3N2NmYWVkIDEwMDY0NA0KPj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRncHUvYW1k
Z3B1X2FtZGtmZC5oDQo+PiArKysgYi9kcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9hbWRncHVf
YW1ka2ZkLmgNCj4+IEBAIC0xOTYsNiArMTk2LDcgQEAgaW50IGtmZF9kZWJ1Z2ZzX2tmZF9tZW1f
bGltaXRzKHN0cnVjdCBzZXFfZmlsZSAqbSwgdm9pZCAqZGF0YSk7DQo+PiDCoCNlbmRpZg0KPj4g
wqAjaWYgSVNfRU5BQkxFRChDT05GSUdfSFNBX0FNRCkNCj4+IMKgYm9vbCBhbWRrZmRfZmVuY2Vf
Y2hlY2tfbW0oc3RydWN0IGRtYV9mZW5jZSAqZiwgc3RydWN0IG1tX3N0cnVjdCAqbW0pOw0KPj4g
K2Jvb2wgYW1ka2ZkX2ZlbmNlX3NpZ25hbChzdHJ1Y3QgZG1hX2ZlbmNlICpmKTsNCj4+IMKgc3Ry
dWN0IGFtZGdwdV9hbWRrZmRfZmVuY2UgKnRvX2FtZGdwdV9hbWRrZmRfZmVuY2Uoc3RydWN0IGRt
YV9mZW5jZSAqZik7DQo+PiDCoHZvaWQgYW1kZ3B1X2FtZGtmZF9yZW1vdmVfYWxsX2V2aWN0aW9u
X2ZlbmNlcyhzdHJ1Y3QgYW1kZ3B1X2JvICpibyk7DQo+PiDCoGludCBhbWRncHVfYW1ka2ZkX2V2
aWN0X3VzZXJwdHIoc3RydWN0IG1tdV9pbnRlcnZhbF9ub3RpZmllciAqbW5pLA0KPj4gQEAgLTIx
MCw2ICsyMTEsMTIgQEAgYm9vbCBhbWRrZmRfZmVuY2VfY2hlY2tfbW0oc3RydWN0IGRtYV9mZW5j
ZSAqZiwgc3RydWN0IG1tX3N0cnVjdCAqbW0pDQo+PiDCoAlyZXR1cm4gZmFsc2U7DQo+PiDCoH0N
Cj4+IMKgDQo+PiArc3RhdGljIGlubGluZQ0KPj4gK2Jvb2wgYW1ka2ZkX2ZlbmNlX3NpZ25hbChz
dHJ1Y3QgZG1hX2ZlbmNlICpmKQ0KPj4gK3sNCj4+ICsJcmV0dXJuIGZhbHNlOw0KPj4gK30NCj4g
DQo+IEh1aD8gV2hhdCdzIHRoYXQ/DQo+IA0KPiBUaGF0IGZ1bmN0aW9uIHNlZW1zIHRvIGJlIGp1
c3QgYSBOT1AuIEl0J3MgcmV0dXJuIGNvZGUgaXMgdXNlZCBub3doZXJlLA0KPiBpcyBpdD8NCg0K
SXQncyB0aGUgZHVtbXkgd2hpY2ggaXMgdXNlZCB3aGVuIENPTkZJR19IU0FfQU1EIGlzbid0IGVu
YWJsZWQuDQoNCk5vdCBzdXJlIGlmIGl0J3MgYWN0dWFsbHkgdXNlZCBvciBub3QsIGJ1dCB3ZSBo
YXZlIGR1bW1pZXMgZm9yIGFsbCBmdW5jdGlvbnMgZGVjbGFyZWQgaW4gdGhpcyBmaWxlLg0KDQo+
IA0KPj4gKw0KPj4gwqBzdGF0aWMgaW5saW5lDQo+PiDCoHN0cnVjdCBhbWRncHVfYW1ka2ZkX2Zl
bmNlICp0b19hbWRncHVfYW1ka2ZkX2ZlbmNlKHN0cnVjdCBkbWFfZmVuY2UgKmYpDQo+PiDCoHsN
Cj4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9hbWRncHVfYW1ka2Zk
X2ZlbmNlLmMgYi9kcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9hbWRncHVfYW1ka2ZkX2ZlbmNl
LmMNCj4+IGluZGV4IDA5YzkxOWY3MmI2Yy4uOWNkNDEzZTMyNWYwIDEwMDY0NA0KPj4gLS0tIGEv
ZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRncHUvYW1kZ3B1X2FtZGtmZF9mZW5jZS5jDQo+PiArKysg
Yi9kcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9hbWRncHVfYW1ka2ZkX2ZlbmNlLmMNCj4+IEBA
IC0xMjcsMjkgKzEyNyw5IEBAIHN0YXRpYyBib29sIGFtZGtmZF9mZW5jZV9lbmFibGVfc2lnbmFs
aW5nKHN0cnVjdCBkbWFfZmVuY2UgKmYpDQo+PiDCoAkJaWYgKCFzdm1fcmFuZ2Vfc2NoZWR1bGVf
ZXZpY3Rfc3ZtX2JvKGZlbmNlKSkNCj4+IMKgCQkJcmV0dXJuIHRydWU7DQo+PiDCoAl9DQo+PiAt
CXJldHVybiBmYWxzZTsNCj4+IC19DQo+PiAtDQo+PiAtLyoqDQo+PiAtICogYW1ka2ZkX2ZlbmNl
X3JlbGVhc2UgLSBjYWxsYmFjayB0aGF0IGZlbmNlIGNhbiBiZSBmcmVlZA0KPj4gLSAqDQo+PiAt
ICogQGY6IGRtYV9mZW5jZQ0KPj4gLSAqDQo+PiAtICogVGhpcyBmdW5jdGlvbiBpcyBjYWxsZWQg
d2hlbiB0aGUgcmVmZXJlbmNlIGNvdW50IGJlY29tZXMgemVyby4NCj4+IC0gKiBEcm9wcyB0aGUg
bW1fc3RydWN0IHJlZmVyZW5jZSBhbmQgUkNVIHNjaGVkdWxlcyBmcmVlaW5nIHVwIHRoZSBmZW5j
ZS4NCj4+IC0gKi8NCj4+IC1zdGF0aWMgdm9pZCBhbWRrZmRfZmVuY2VfcmVsZWFzZShzdHJ1Y3Qg
ZG1hX2ZlbmNlICpmKQ0KPj4gLXsNCj4+IC0Jc3RydWN0IGFtZGdwdV9hbWRrZmRfZmVuY2UgKmZl
bmNlID0gdG9fYW1kZ3B1X2FtZGtmZF9mZW5jZShmKTsNCj4+IC0NCj4+IC0JLyogVW5jb25kaXRp
b25hbGx5IHNpZ25hbCB0aGUgZmVuY2UuIFRoZSBwcm9jZXNzIGlzIGdldHRpbmcNCj4+IC0JICog
dGVybWluYXRlZC4NCj4+IC0JICovDQo+PiAtCWlmIChXQVJOX09OKCFmZW5jZSkpDQo+PiAtCQly
ZXR1cm47IC8qIE5vdCBhbiBhbWRncHVfYW1ka2ZkX2ZlbmNlICovDQo+PiAtDQo+PiDCoAltbWRy
b3AoZmVuY2UtPm1tKTsNCj4+IC0Ja2ZyZWVfcmN1KGYsIHJjdSk7DQo+PiArCWZlbmNlLT5tbSA9
IE5VTEw7DQo+PiArCXJldHVybiBmYWxzZTsNCj4+IMKgfQ0KPj4gwqANCj4+IMKgLyoqDQo+PiBA
QCAtMTc0LDkgKzE1NCwyNyBAQCBib29sIGFtZGtmZF9mZW5jZV9jaGVja19tbShzdHJ1Y3QgZG1h
X2ZlbmNlICpmLCBzdHJ1Y3QgbW1fc3RydWN0ICptbSkNCj4+IMKgCXJldHVybiBmYWxzZTsNCj4+
IMKgfQ0KPj4gwqANCj4+ICtib29sIGFtZGtmZF9mZW5jZV9zaWduYWwoc3RydWN0IGRtYV9mZW5j
ZSAqZikNCj4+ICt7DQo+PiArCXN0cnVjdCBhbWRncHVfYW1ka2ZkX2ZlbmNlICpmZW5jZSA9IHRv
X2FtZGdwdV9hbWRrZmRfZmVuY2UoZik7DQo+PiArCXVuc2lnbmVkIGxvbmcgZmxhZ3M7DQo+PiAr
CWJvb2wgd2FzX3NpZ25hbGVkOw0KPj4gKw0KPj4gKwlkbWFfZmVuY2VfbG9ja19pcnFzYXZlKGYs
IGZsYWdzKTsNCj4+ICsJaWYgKGZlbmNlLT5tbSkgew0KPj4gKwkJbW1kcm9wKGZlbmNlLT5tbSk7
DQo+PiArCQlmZW5jZS0+bW0gPSBOVUxMOw0KPj4gKwl9DQo+PiArCXdhc19zaWduYWxlZCA9IGRt
YV9mZW5jZV9pc19zaWduYWxlZF9sb2NrZWQoZik7DQo+PiArCWlmICghd2FzX3NpZ25hbGVkKQ0K
Pj4gKwkJZG1hX2ZlbmNlX3NpZ25hbF9sb2NrZWQoZik7DQo+PiArCWRtYV9mZW5jZV91bmxvY2tf
aXJxcmVzdG9yZShmLCBmbGFncyk7DQo+PiArDQo+PiArCXJldHVybiB3YXNfc2lnbmFsZWQ7DQo+
PiArfQ0KPj4gKw0KPj4gwqBzdGF0aWMgY29uc3Qgc3RydWN0IGRtYV9mZW5jZV9vcHMgYW1ka2Zk
X2ZlbmNlX29wcyA9IHsNCj4+IMKgCS5nZXRfZHJpdmVyX25hbWUgPSBhbWRrZmRfZmVuY2VfZ2V0
X2RyaXZlcl9uYW1lLA0KPj4gwqAJLmdldF90aW1lbGluZV9uYW1lID0gYW1ka2ZkX2ZlbmNlX2dl
dF90aW1lbGluZV9uYW1lLA0KPj4gwqAJLmVuYWJsZV9zaWduYWxpbmcgPSBhbWRrZmRfZmVuY2Vf
ZW5hYmxlX3NpZ25hbGluZywNCj4+IC0JLnJlbGVhc2UgPSBhbWRrZmRfZmVuY2VfcmVsZWFzZSwN
Cj4+IMKgfTsNCj4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGtmZC9rZmRf
cHJvY2Vzcy5jIGIvZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRrZmQva2ZkX3Byb2Nlc3MuYw0KPj4g
aW5kZXggYmIyNTJlYzQzNzMzLi4yY2YzOWUzZDNmYWUgMTAwNjQ0DQo+PiAtLS0gYS9kcml2ZXJz
L2dwdS9kcm0vYW1kL2FtZGtmZC9rZmRfcHJvY2Vzcy5jDQo+PiArKysgYi9kcml2ZXJzL2dwdS9k
cm0vYW1kL2FtZGtmZC9rZmRfcHJvY2Vzcy5jDQo+PiBAQCAtMTE3Myw3ICsxMTczLDcgQEAgc3Rh
dGljIHZvaWQga2ZkX3Byb2Nlc3Nfd3FfcmVsZWFzZShzdHJ1Y3Qgd29ya19zdHJ1Y3QgKndvcmsp
DQo+PiDCoAlzeW5jaHJvbml6ZV9yY3UoKTsNCj4+IMKgCWVmID0gcmN1X2FjY2Vzc19wb2ludGVy
KHAtPmVmKTsNCj4+IMKgCWlmIChlZikNCj4+IC0JCWRtYV9mZW5jZV9zaWduYWwoZWYpOw0KPj4g
KwkJYW1ka2ZkX2ZlbmNlX3NpZ25hbChlZik7DQo+PiDCoA0KPj4gwqAJa2ZkX3Byb2Nlc3NfcmVt
b3ZlX3N5c2ZzKHApOw0KPj4gwqAJa2ZkX2RlYnVnZnNfcmVtb3ZlX3Byb2Nlc3MocCk7DQo+PiBk
aWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRrZmQva2ZkX3N2bS5jIGIvZHJpdmVy
cy9ncHUvZHJtL2FtZC9hbWRrZmQva2ZkX3N2bS5jDQo+PiBpbmRleCA5N2MyMjcwZjI3OGYuLjBl
OTRmM2E5NzZiMSAxMDA2NDQNCj4+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9hbWQvYW1ka2ZkL2tm
ZF9zdm0uYw0KPj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRrZmQva2ZkX3N2bS5jDQo+
PiBAQCAtNDI4LDcgKzQyOCw3IEBAIHN0YXRpYyB2b2lkIHN2bV9yYW5nZV9ib19yZWxlYXNlKHN0
cnVjdCBrcmVmICprcmVmKQ0KPj4gwqANCj4+IMKgCWlmICghZG1hX2ZlbmNlX2lzX3NpZ25hbGVk
KCZzdm1fYm8tPmV2aWN0aW9uX2ZlbmNlLT5iYXNlKSkNCj4+IMKgCQkvKiBXZSdyZSBub3QgaW4g
dGhlIGV2aWN0aW9uIHdvcmtlci4gU2lnbmFsIHRoZSBmZW5jZS4gKi8NCj4+IC0JCWRtYV9mZW5j
ZV9zaWduYWwoJnN2bV9iby0+ZXZpY3Rpb25fZmVuY2UtPmJhc2UpOw0KPj4gKwkJYW1ka2ZkX2Zl
bmNlX3NpZ25hbCgmc3ZtX2JvLT5ldmljdGlvbl9mZW5jZS0+YmFzZSk7DQo+PiDCoAlkbWFfZmVu
Y2VfcHV0KCZzdm1fYm8tPmV2aWN0aW9uX2ZlbmNlLT5iYXNlKTsNCj4+IMKgCWFtZGdwdV9ib191
bnJlZigmc3ZtX2JvLT5ibyk7DQo+PiDCoAlrZnJlZShzdm1fYm8pOw0KPj4gQEAgLTM2MjgsNyAr
MzYyOCw3IEBAIHN0YXRpYyB2b2lkIHN2bV9yYW5nZV9ldmljdF9zdm1fYm9fd29ya2VyKHN0cnVj
dCB3b3JrX3N0cnVjdCAqd29yaykNCj4+IMKgCW1tYXBfcmVhZF91bmxvY2sobW0pOw0KPj4gwqAJ
bW1wdXQobW0pOw0KPj4gwqANCj4+IC0JZG1hX2ZlbmNlX3NpZ25hbCgmc3ZtX2JvLT5ldmljdGlv
bl9mZW5jZS0+YmFzZSk7DQo+PiArCWFtZGtmZF9mZW5jZV9zaWduYWwoJnN2bV9iby0+ZXZpY3Rp
b25fZmVuY2UtPmJhc2UpOw0KPiANCj4gDQo+IEFuZCB3aHkgZG8geW91IGRvIHRob3NlIGNoYW5n
ZXMgYW5kIHdoeSBkb2Vzbid0IHRoZSBjb21taXQgbWVzc2FnZQ0KPiBleHBsYWluIGl0Pw0KPiAN
Cj4gWW91IHN0b3Agc2lnbmFsbGluZyB0aG9zZSBmZW5jZXMsIGFmdGVyIGFsbC4NCg0KSHVpPyBJ
IGRvbid0IHN0b3Agc2lnbmFsaW5nIHRoZSBmZW5jZXMuIEkganVzdCBkZWxlZ2F0ZSBzaWduYWxp
bmcgaW50byBhIHNlcGFyYXRlIGhlbHBlciBmdW5jdGlvbiB3aGljaCBkb2VzIHNvbWUgZXh0cmEg
Y2xlYW51cCBiZWZvcmUgc2lnbmFsaW5nIHRoZSBmZW5jZS4NCg0KUmVnYXJkcywNCkNocmlzdGlh
bi4NCg0KPiANCj4gDQo+IFAuDQo+IA0KPj4gwqANCj4+IMKgCS8qIFRoaXMgaXMgdGhlIGxhc3Qg
cmVmZXJlbmNlIHRvIHN2bV9ibywgYWZ0ZXIgc3ZtX3JhbmdlX3ZyYW1fbm9kZV9mcmVlDQo+PiDC
oAkgKiBoYXMgYmVlbiBjYWxsZWQgaW4gc3ZtX21pZ3JhdGVfdnJhbV90b19yYW0NCj4gDQoNCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1z
aWcgbWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1
YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJv
Lm9yZwo=
