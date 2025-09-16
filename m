Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 884A9B596A1
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 16 Sep 2025 14:52:12 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 535BA40F6B
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 16 Sep 2025 12:52:11 +0000 (UTC)
Received: from CO1PR03CU002.outbound.protection.outlook.com (mail-westus2azon11010005.outbound.protection.outlook.com [52.101.46.5])
	by lists.linaro.org (Postfix) with ESMTPS id 470CA40F6B
	for <linaro-mm-sig@lists.linaro.org>; Tue, 16 Sep 2025 12:51:59 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=amd.com header.s=selector1 header.b=RL5nPs+X;
	spf=pass (lists.linaro.org: domain of Christian.Koenig@amd.com designates 52.101.46.5 as permitted sender) smtp.mailfrom=Christian.Koenig@amd.com;
	dmarc=pass (policy=quarantine) header.from=amd.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=okAk3RZ9ilzTvbCeDTcpmoirXo+mGHR2A1qnDTkoY/Y/cpdhVB1PsRNxsv2y9CuzuDTfrmjDL6TmO29CD5AilH8KXRaAXl0ypdxbMvDBEzvYEYQXD7tojRiUtg+sLSuySJlNXwFJ9d58+wuSUSH7NALLwtiA9xhqcT/JeEePlkCFzPHAGWeOd+2dF/GuSIVDjqH2AqIM4SDiv5JE7GhNR+dZ73kRfUvS4rE4moSvnBITW1En7sJPOGEMpTOBtDkS8baWtQYL9rIdwQ4FYreP7wJWsnwfOPT86EHDJvr40ftEfL7LA1C7erarh9gP1sqfjBfv5WCy1cv5wV9VNC93kQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=O5gcV7kWbrn5Vg5MXeSwIllfWAf3PPGpIxFDhSjF/EE=;
 b=ZIPC2mvSRONAS4phsgQYkXtbNn0iHn7fHYg45/ipZ2pvB1tBfGrU7fcBJGRN/CPjGSHh4OhK8OGcvaBjNgps9RIAb50XiMsGr1MZ/v7mRjHrBfA81z+v/qshQEYwKXgDQgR8E5/5U/uPzV0K2pNYxZ8QCR+GzaToWLMQzzh1IG9SE44+VC4eN3/z5u4ovemYX6Ih7PaGb4+b9gNoI5U8xClvuElG6gdTesB98AiyTZQF6gAEMuTDR8e85/TPbin/tXP8Y2u62hcKnnaBYKWvYVlXvTG/OYwBoKx+MH98jVQj9l628YyRiyj+aJSwQu5hGYg2rxxocaC6N5WAN/M4NA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=O5gcV7kWbrn5Vg5MXeSwIllfWAf3PPGpIxFDhSjF/EE=;
 b=RL5nPs+XUzybswjwYEoi+uZNE+1vzBywZ/su4xZbJaKJksZofhRekkjJCZR+ydr3FYukXS5wx8yfOWtk04lkWLUnlJEqkXLp4qGNQJKxct7rk/fVwMpleEDjDtB+WD2wCd2GR/U27XAnGjh56WRMknKYGDe8zooverLiuEf3y3w=
Received: from PH7PR12MB5685.namprd12.prod.outlook.com (2603:10b6:510:13c::22)
 by BL1PR12MB5897.namprd12.prod.outlook.com (2603:10b6:208:395::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9115.22; Tue, 16 Sep
 2025 12:51:55 +0000
Received: from PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::46fb:96f2:7667:7ca5]) by PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::46fb:96f2:7667:7ca5%4]) with mapi id 15.20.9115.020; Tue, 16 Sep 2025
 12:51:55 +0000
Message-ID: <388ddaf9-2a43-4c70-aed6-370b9f38887b@amd.com>
Date: Tue, 16 Sep 2025 14:51:50 +0200
User-Agent: Mozilla Thunderbird
To: Pierre-Eric Pelloux-Prayer <pierre-eric@damsy.net>,
 Pierre-Eric Pelloux-Prayer <pierre-eric.pelloux-prayer@amd.com>,
 Alex Deucher <alexander.deucher@amd.com>, David Airlie <airlied@gmail.com>,
 Simona Vetter <simona@ffwll.ch>, Sumit Semwal <sumit.semwal@linaro.org>
References: <20250916070846.5107-1-pierre-eric.pelloux-prayer@amd.com>
 <f66cc34f-b54b-4f91-a6fe-11a146c516b2@amd.com>
 <9e1964bf-7748-4e41-9048-b1a5ad63a8c9@damsy.net>
 <8a5f0bc8-4d3a-4e47-902e-7527759d1494@amd.com>
 <3b4f8837-e0a8-4e8c-9d33-5f107e41c55d@damsy.net>
Content-Language: en-US
From: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
In-Reply-To: <3b4f8837-e0a8-4e8c-9d33-5f107e41c55d@damsy.net>
X-ClientProxiedBy: YT4PR01CA0421.CANPRD01.PROD.OUTLOOK.COM
 (2603:10b6:b01:10b::23) To PH7PR12MB5685.namprd12.prod.outlook.com
 (2603:10b6:510:13c::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR12MB5685:EE_|BL1PR12MB5897:EE_
X-MS-Office365-Filtering-Correlation-Id: 4d9b465f-6238-4147-6c2d-08ddf51fd0d9
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: 
	=?utf-8?B?YTA3WkJ0aCs2VzIraDU5ZktNS0lHTXpBem0zcnhwc3pRVDVOanNsc3hyZ1dH?=
 =?utf-8?B?cWZrS2xPT2hqZXRDdjJETmFGK3FOZzhlVmtzWUFzakY3VElKOVYvREMya0xx?=
 =?utf-8?B?anBmNjZxRnZzcFRKTkZZM0Z1c3BNM0YzQVYzdGkrR3k2ak9TemJlMElNUFZo?=
 =?utf-8?B?SEE0TTNHZUFyZURPb1o1UCtPK1czYmlrRmNWSXhmdWVtQzMzalBDemZKYTZp?=
 =?utf-8?B?U1hVL0NORTVIS29KYU44aTg3RDhiVzFHU2kvTEJNektudlRBVExiWTBsbUdH?=
 =?utf-8?B?UzlTTk44b1ZLMVhPSkN4eVZOeXQ3anFMb29LUm1yUzFCdUQxN3BsdDM5U21D?=
 =?utf-8?B?d0NRTXhhZ2dXUGo1N240Q0xPVGhNNkczL2NEdnFOa2tDSW1CTHhaUHcrQ2Ri?=
 =?utf-8?B?bFhoaEpEWnF2LzRoSHJEbldhandRdzhaejBIZldjdkFxTVNKSmRZdVFtQk1C?=
 =?utf-8?B?MU5tUXhJTXRlalJDT3hvcTJMYjBGYlAzRkNYcGI0dWtXZEx6NEJXWXQ4MUxJ?=
 =?utf-8?B?a3laTmMvRHVyejZqSlVWaGw2N3FLaEZJTTJwcDNWQ3Rud2pvL0hZTnF2SDBp?=
 =?utf-8?B?WEpqcjdIaXY3dEFwWkVVcEdBTGwxUWZZbHg5UVY2OVFTdUhZeWJFMGdvZXh2?=
 =?utf-8?B?VkxQMGhPVGRXMWZveG1BS1RBUkFuWEQ3ZWVwN21hclNFWUdmcFEwdzVkV1Mz?=
 =?utf-8?B?Z3RCYTZlTzU1NVNUQjVaNkVGdGt4WlJ6M0JPYk03eXM0QkhSckpncnBEL1NM?=
 =?utf-8?B?aXQyb2dGN05WU3I2ZzRDRFNDUzN3MU0xb0thTE00eVZYNmJSd3N5cW1sV0Zw?=
 =?utf-8?B?VkhQaUFUU2kyWkhtUk12cEpzNDNDdVdpa0loM3Y4eGF1NGFPaDZQV1ZnbDFV?=
 =?utf-8?B?THE2R0ZYOU5ETlNNVjBQdTVtMjBucW5jeHRtZkVGMzlkRDR1YWxyNlVIajQ2?=
 =?utf-8?B?ZlJqRENZa3BmbkNZMzdLVkZaeVhSUXhaUUJhZUlaV01sQ3RqY001M3VITXlB?=
 =?utf-8?B?ME9IRG9zcVJZMmNNeXAzanVwWjVjaTNxV3FWRXdRTmprN2c5emxOV1c3dnhI?=
 =?utf-8?B?MnNEL3JzSWtsOVFUbnZrVUNRdzN0YWEvZFlpN25YQktFclB2allva1FRckVY?=
 =?utf-8?B?V3NJbGZnVWhzZVFxNGd2SENyUVBCcmpDOHdRcEoxQ1gvajdvZkNsT0QrV1lC?=
 =?utf-8?B?dTV2amRCaGw4dVlDeVdpeFBiQ1p3bWxUMDMzRXl2b3ljdXF1WUxNZGsrWk9E?=
 =?utf-8?B?RlBUcVdDaTBjK3NmYlIwZWo5cHhML2I2c0oxUzl0UjIrRVNvMVJYc0FFcEFn?=
 =?utf-8?B?czRFVXZBZERxLzYrNHVhaVFYRDR2YjFwOFFzUGlid3FoZWkxTUR0MGNIQUxr?=
 =?utf-8?B?REF1ZVhzVkZjVzg4MnpvRTdKWVByR213KzFRVWRlRG9QRStLUThvWlV3YzZn?=
 =?utf-8?B?UExVRVJ6Zng3aDBKdHpFZmpYdnBJSVZ1T08wUk1YZ21GOFEzRlpGdFAwcWdz?=
 =?utf-8?B?d1JUL0c0cWUxK084emlQa3J2ZUZBd3NzYkUzdk4xbG5JbUZWK3JDeVV2YnU5?=
 =?utf-8?B?eTZwTFdSV0hUdWFPemd1OElDN2tMVUFRQXQ3Szh5Q3dIY2xHdGkxblhDRjFN?=
 =?utf-8?B?YW8vRGtsbkh5RnpTVnVJeGNXUjJWaG4rZ2c1d0xkVVo4OVk5TFNHTFhWOEdR?=
 =?utf-8?B?aEREdFNFRytRNXptelZXRmVQWE1hK2VzSkRFQVM3bWc2dFpTTnJYOHZpNGhw?=
 =?utf-8?B?dEVQdVdlOXcreHAvdlZ3K2Z0c2FSNlNwNmpiYWQ4N0wrY0lTZjFqdUgwblRy?=
 =?utf-8?Q?rCKPJUKm5T4q9YLXJmUI1v0HLSLGfJcrsOQxE=3D?=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH7PR12MB5685.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(366016)(1800799024);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?VVpwamNob1NOQlNTZUkvaElSek8zYnNkK2FtdG9HVWFIdW9oR0NoNEswUG85?=
 =?utf-8?B?YldoeXJubk1vRENmcWUvL3lyRDEvdkkxcWlhZkVLdTNYV21jSnF6ZS9rSjU4?=
 =?utf-8?B?MzNxd2dYSEtlRU85dlU3U1A0RXRPS2tlMFhhdHlLdGlyK3lET0p6bEw3b0dD?=
 =?utf-8?B?LzNocktDN0VRQytxS0VHVS95eEhqcTJtWStMZkk0MjFHNXU0Q3NTc01RS25X?=
 =?utf-8?B?VUhnWVF5RnFYNENmTEVpVlhDU0VBRjhGVGNBa3h6QWZoVVgvZEx4dzA3d0Fj?=
 =?utf-8?B?NXIzbjFaSE4rTFhJSzFyeW9jWDJ2V0U1R0dHOG0vU1RJVGpGQXNKdklGNllS?=
 =?utf-8?B?a1YxMmVjeWFDell0VXp4WEthcko3bnh1L2djR0RYVEt5MGFkYldTaWNPRCto?=
 =?utf-8?B?VVcyZUp3dXkyWm4yWjdVVHlwSDNSWlhrUUVKaWZranFJcnNNZHdJR09leG4z?=
 =?utf-8?B?eC9oUG4wQVlzMDZsMEhLdDlNWVhqVDR0OWs5NElIckFtWm1ORnlYb3B3NnFK?=
 =?utf-8?B?UlZ5NXRXK0NMZWpQNmt5anA5N3NoK1lhblZMQlk3T0M5dUdPazJ4V2dmVGMz?=
 =?utf-8?B?ZTNGa0NkN3BXZTUzMzN6NW1HREp1QVNLVXhWQzNha0JTT3MzZ1Bic2xicjcy?=
 =?utf-8?B?Qm92MUI1TGN0SGx4YXRIUkpkUHErTE1aOVQyM1I5TXpRR0oxUmJzWXNaTkdY?=
 =?utf-8?B?eGZGcmtGQlRQdGloQkZuYjFZdHR3aEhta0MzMGJzdUFNaW5VR0dlTU1VYzNM?=
 =?utf-8?B?SU5PdVJmNTh5ZUE0TmRmZXoyMUpNL3FvK29XdW5sRE14TGI2NGtDbDZ3TTV5?=
 =?utf-8?B?ZWlmZjN4YTBmbXZjNFErb1hTaGdndzYySUNNK1RhQkZJVWhDRDVGNWVrVUY4?=
 =?utf-8?B?dlRIMWxPS2dCalVYVU5UdHBjV2Z4cXlhMisxMjN3Y3FTQlJta3FrajNmSzlq?=
 =?utf-8?B?NDB0eUJUM1dKSkZqWHJMOGlIYzZob0VmZVAwVjFkbDBYUk9vMzNTR2xob1dB?=
 =?utf-8?B?RmlIaWdIK1BlbFB3QTlzcHVMRVNjRDN1dUtZNTJrYU1iQWJINGRmbVJDc3pV?=
 =?utf-8?B?WnlqMVBzcXY5OXI1T2g4YmNpYkRYQ3JnNU82b2R2N2xsWlpaTkswWmluOEQr?=
 =?utf-8?B?RWZoRHdWM2YzNW9FY2ZCcDJadkNtUHozaHJabmtPY1UxQzNVajg1WDBpeldi?=
 =?utf-8?B?QTFnMVZYZW94WmVUQlJQaUcrN1FvdmNkLzRyMTUvV29ZbVhTSjdTZzV4dmNO?=
 =?utf-8?B?Y0FZVHhOdjcybm16R0pvTDY2TTJjUDhGOURTRGhXUXEvZGxkWnN2eWtZS2cr?=
 =?utf-8?B?eWE4Zkhjelh6aFR6Sm51Y0lJWFN5QTlSQ2pKNGRPa0xmV25Va1VsY2hQdTV6?=
 =?utf-8?B?dVRmc2EyVDYyUG5YbVBXSnNhczQzcFRlenMyWU5nRzJ1cUZCTlB3VDdBekRx?=
 =?utf-8?B?ZTBtSHllNU81WnVnSnhxajZKSEZwNlFFRHd3OWVRbisyYkpzRWxRMlhwT01h?=
 =?utf-8?B?RXkvK3NQeXJ2ZVZacUszWjEwT2RLVXptZXdDTloxTTBsSys4TE5SWFRNZnZR?=
 =?utf-8?B?M2w5enVYOHptajlrY3E2bGtKT0pyMXY3dUtPVlB3dEZpUU1xVWhNY0swNUc3?=
 =?utf-8?B?THV2cG5FS3RzeFlWc3Q5aXVqYVU2UkFMNEZzU3UrQjZ4MFByY2JBenFZeFJP?=
 =?utf-8?B?M055M0padkZzYVBPSUN1SjRKUXdWWkRSWjMrSmd6M2JpR01EbUZYUFdVVHRy?=
 =?utf-8?B?cjNrL1ozOStxSExHL1BoMVZDUU9JeGRVZDVyM2JrT3ZQdmU2Z1BoN1BoRnkx?=
 =?utf-8?B?dFVCWmlHSk1SOEpMdTMzWUdBdGRNT1NvNThCcFJuNE16WUpsdFJhQlZoYXFW?=
 =?utf-8?B?WTdpaHhoeEN0djlEL0RQUjVsejZUQXV5VDUrcnhDazdwT0lsY0EzN2lVT0U3?=
 =?utf-8?B?MjQvQ2hsRW9PL2d6dm54ZUQxZU1SaithRGhrZ3J3MHg2Tno2Q1grSTlaOEw5?=
 =?utf-8?B?S1JIVFRPaWVwMUlzN3p1SGpsNCsxaThuYkFIY2VBMFNnNnJUZGtEMm9hemtm?=
 =?utf-8?B?bllnTVA5SnVQSGNCemk4R1hIWUpLWS8zRGhzQTRtUjdIcWpTYm1IdWxyRGtD?=
 =?utf-8?Q?dpELHTleOtElllGQf0LSpXwDx?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4d9b465f-6238-4147-6c2d-08ddf51fd0d9
X-MS-Exchange-CrossTenant-AuthSource: PH7PR12MB5685.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Sep 2025 12:51:55.4915
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Iqm9v4fQFY2fb1CnQ6khv+QPkzsz32SK27F9IDNAuJ3CvnGeRF6I8xqtNIkDFJI9
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL1PR12MB5897
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 470CA40F6B
X-Spamd-Bar: -----
X-Spamd-Result: default: False [-5.00 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[amd.com,quarantine];
	R_DKIM_ALLOW(-0.20)[amd.com:s=selector1];
	R_SPF_ALLOW(-0.20)[+ip4:52.100.0.0/15];
	MIME_GOOD(-0.10)[text/plain];
	FREEMAIL_TO(0.00)[damsy.net,amd.com,gmail.com,ffwll.ch,linaro.org];
	RWL_MAILSPIKE_POSSIBLE(0.00)[52.101.46.5:from];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_SEVEN(0.00)[11];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_TLS_LAST(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	DNSWL_BLOCKED(0.00)[52.101.46.5:from];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	DKIM_TRACE(0.00)[amd.com:+]
Message-ID-Hash: UI2PW5F2NQXT77DBB2J45AOWYG7MGKEP
X-Message-ID-Hash: UI2PW5F2NQXT77DBB2J45AOWYG7MGKEP
X-MailFrom: Christian.Koenig@amd.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: amd-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v1 1/2] drm/amdgpu: make non-NULL out fence mandatory
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/UI2PW5F2NQXT77DBB2J45AOWYG7MGKEP/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gMTYuMDkuMjUgMTM6NTgsIFBpZXJyZS1FcmljIFBlbGxvdXgtUHJheWVyIHdyb3RlOg0KPiAN
Cj4gDQo+IExlIDE2LzA5LzIwMjUgw6AgMTI6NTIsIENocmlzdGlhbiBLw7ZuaWcgYSDDqWNyaXTC
oDoNCj4+IE9uIDE2LjA5LjI1IDExOjQ2LCBQaWVycmUtRXJpYyBQZWxsb3V4LVByYXllciB3cm90
ZToNCj4+Pg0KPj4+DQo+Pj4gTGUgMTYvMDkvMjAyNSDDoCAxMToyNSwgQ2hyaXN0aWFuIEvDtm5p
ZyBhIMOpY3JpdMKgOg0KPj4+PiBPbiAxNi4wOS4yNSAwOTowOCwgUGllcnJlLUVyaWMgUGVsbG91
eC1QcmF5ZXIgd3JvdGU6DQo+Pj4+PiBhbWRncHVfdHRtX2NvcHlfbWVtX3RvX21lbSBoYXMgYSBz
aW5nbGUgY2FsbGVyLCBtYWtlIHN1cmUgdGhlIG91dA0KPj4+Pj4gZmVuY2UgaXMgbm9uLU5VTEwg
dG8gc2ltcGxpZnkgdGhlIGNvZGUuDQo+Pj4+PiBTaW5jZSBub25lIG9mIHRoZSBwb2ludGVycyBz
aG91bGQgYmUgTlVMTCwgd2UgY2FuIGVuYWJsZQ0KPj4+Pj4gX19hdHRyaWJ1dGVfXygobm9ubnVs
bCkpX18uDQo+Pj4+Pg0KPj4+Pj4gV2hpbGUgYXQgaXQgbWFrZSB0aGUgZnVuY3Rpb24gc3RhdGlj
IHNpbmNlIGl0J3Mgb25seSB1c2VkIGZyb20NCj4+Pj4+IGFtZGdwdXVfdHRtLmMuDQo+Pj4+Pg0K
Pj4+Pj4gU2lnbmVkLW9mZi1ieTogUGllcnJlLUVyaWMgUGVsbG91eC1QcmF5ZXIgPHBpZXJyZS1l
cmljLnBlbGxvdXgtcHJheWVyQGFtZC5jb20+DQo+Pj4+PiAtLS0NCj4+Pj4+IMKgwqAgZHJpdmVy
cy9ncHUvZHJtL2FtZC9hbWRncHUvYW1kZ3B1X3R0bS5jIHwgMTcgKysrKysrKystLS0tLS0tLS0N
Cj4+Pj4+IMKgwqAgZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRncHUvYW1kZ3B1X3R0bS5oIHzCoCA2
IC0tLS0tLQ0KPj4+Pj4gwqDCoCAyIGZpbGVzIGNoYW5nZWQsIDggaW5zZXJ0aW9ucygrKSwgMTUg
ZGVsZXRpb25zKC0pDQo+Pj4+Pg0KPj4+Pj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9h
bWQvYW1kZ3B1L2FtZGdwdV90dG0uYyBiL2RyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2FtZGdw
dV90dG0uYw0KPj4+Pj4gaW5kZXggMjdhYjRlNzU0YjJhLi43MGI4MTdiNTU3OGQgMTAwNjQ0DQo+
Pj4+PiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9hbWRncHVfdHRtLmMNCj4+Pj4+
ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2FtZGdwdV90dG0uYw0KPj4+Pj4gQEAg
LTI4NCwxMiArMjg0LDEzIEBAIHN0YXRpYyBpbnQgYW1kZ3B1X3R0bV9tYXBfYnVmZmVyKHN0cnVj
dCB0dG1fYnVmZmVyX29iamVjdCAqYm8sDQo+Pj4+PiDCoMKgwqAgKiBtb3ZlIGFuZCBkaWZmZXJl
bnQgZm9yIGEgQk8gdG8gQk8gY29weS4NCj4+Pj4+IMKgwqDCoCAqDQo+Pj4+PiDCoMKgwqAgKi8N
Cj4+Pj4+IC1pbnQgYW1kZ3B1X3R0bV9jb3B5X21lbV90b19tZW0oc3RydWN0IGFtZGdwdV9kZXZp
Y2UgKmFkZXYsDQo+Pj4+PiAtwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGNv
bnN0IHN0cnVjdCBhbWRncHVfY29weV9tZW0gKnNyYywNCj4+Pj4+IC3CoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqAgY29uc3Qgc3RydWN0IGFtZGdwdV9jb3B5X21lbSAqZHN0LA0K
Pj4+Pj4gLcKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCB1aW50NjRfdCBzaXpl
LCBib29sIHRteiwNCj4+Pj4+IC3CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAg
c3RydWN0IGRtYV9yZXN2ICpyZXN2LA0KPj4+Pj4gLcKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoCBzdHJ1Y3QgZG1hX2ZlbmNlICoqZikNCj4+Pj4+ICtfX2F0dHJpYnV0ZV9fKChu
b25udWxsKSkNCj4+Pj4NCj4+Pj4gVGhhdCBsb29rcyBmaXNoeS4NCj4+Pj4NCj4+Pj4+ICtzdGF0
aWMgaW50IGFtZGdwdV90dG1fY29weV9tZW1fdG9fbWVtKHN0cnVjdCBhbWRncHVfZGV2aWNlICph
ZGV2LA0KPj4+Pj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBj
b25zdCBzdHJ1Y3QgYW1kZ3B1X2NvcHlfbWVtICpzcmMsDQo+Pj4+PiArwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGNvbnN0IHN0cnVjdCBhbWRncHVfY29weV9tZW0g
KmRzdCwNCj4+Pj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAg
dWludDY0X3Qgc2l6ZSwgYm9vbCB0bXosDQo+Pj4+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgIHN0cnVjdCBkbWFfcmVzdiAqcmVzdiwNCj4+Pj4+ICvCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgc3RydWN0IGRtYV9mZW5jZSAqKmYp
DQo+Pj4+DQo+Pj4+IEknbSBub3QgYW4gZXhwZXJ0IGZvciB0aG9zZSwgYnV0IGxvb2tpbmcgYXQg
b3RoZXIgZXhhbXBsZXMgdGhhdCBzaG91bGQgYmUgaGVyZSBhbmQgbG9vayBzb21ldGhpbmcgbGlr
ZToNCj4+Pj4NCj4+Pj4gX19hdHRyaWJ1dGVfXygobm9ubnVsbCg3KSkpDQo+Pj4NCj4+PiBCb3Ro
IHN5bnRheCBhcmUgdmFsaWQuIFRoZSBHQ0MgZG9jcyBzYXlzOg0KPj4+DQo+Pj4gwqDCoMKgIElm
IG5vIGFyZy1pbmRleCBpcyBnaXZlbiB0byB0aGUgbm9ubnVsbCBhdHRyaWJ1dGUsIGFsbCBwb2lu
dGVyIGFyZ3VtZW50cyBhcmUgbWFya2VkIGFzIG5vbi1udWxsDQo+Pg0KPj4gTmV2ZXIgc2VlbiB0
aGF0IGJlZm9yZS4gSXMgdGhhdCBnY2Mgc3BlY2lmYyBvciBzdGFuZGFyZGl6ZWQ/DQo+IA0KPiBj
bGFuZyBzdXBwb3J0cyBpdDoNCj4gDQo+IGh0dHBzOi8vY2xhbmcubGx2bS5vcmcvZG9jcy9BdHRy
aWJ1dGVSZWZlcmVuY2UuaHRtbCNpZDEwDQo+IA0KPiBBbmQgYm90aCBzeW50YXhlcyBhcmUgYWxy
ZWFkeSB1c2VkIGluIHRoZSBkcm0gc3VidHJlZSBieSBpOTE1Lg0KDQpPayBpbiB0aGF0IGNhc2Ug
UmV2aWV3ZWQtYnk6IENocmlzdGlhbiBLw7ZuaWcgPGNocmlzdGlhbi5rb2VuaWdAYW1kLmNvbT4u
DQoNClJlZ2FyZHMsDQpDaHJpc3RpYW4uDQoNCj4gDQo+IFBpZXJyZS1FcmljDQo+IA0KPj4NCj4+
Pg0KPj4+DQo+Pj4+DQo+Pj4+IEJ1dCBJIHRoaW5rIGZvciB0aGlzIGNhc2UgaGVyZSBpdCBpcyBh
bHNvIG5vdCBhIG11c3QgaGF2ZSB0byBoYXZlIHRoYXQuDQo+Pj4NCj4+PiBJIGNhbiByZW1vdmUg
aXQgaWYgeW91IHByZWZlciwgYnV0IGl0IGRvZXNuJ3QgaHVydCB0byBoYXZlIHRoZSBjb21waWxl
ciB2YWxpZGF0ZSB1c2FnZSBvZiB0aGUgZnVuY3Rpb25zLg0KPj4NCj4+IFllYWggaXQncyBjbGVh
cmx5IHVzZWZ1bCwgYnV0IEknbSB3b3JyaWVkIHRoYXQgY2xhbmcgd29uJ3QgbGlrZSBpdC4NCj4+
DQo+PiBDaHJpc3RpYW4uDQo+Pg0KPj4+DQo+Pj4gUGllcnJlLUVyaWMNCj4+Pg0KPj4+DQo+Pj4+
DQo+Pj4+IFJlZ2FyZHMsDQo+Pj4+IENocmlzdGlhbi4NCj4+Pj4NCj4+Pj4+IMKgwqAgew0KPj4+
Pj4gwqDCoMKgwqDCoMKgIHN0cnVjdCBhbWRncHVfcmluZyAqcmluZyA9IGFkZXYtPm1tYW4uYnVm
ZmVyX2Z1bmNzX3Jpbmc7DQo+Pj4+PiDCoMKgwqDCoMKgwqAgc3RydWN0IGFtZGdwdV9yZXNfY3Vy
c29yIHNyY19tbSwgZHN0X21tOw0KPj4+Pj4gQEAgLTM2Myw5ICszNjQsNyBAQCBpbnQgYW1kZ3B1
X3R0bV9jb3B5X21lbV90b19tZW0oc3RydWN0IGFtZGdwdV9kZXZpY2UgKmFkZXYsDQo+Pj4+PiDC
oMKgwqDCoMKgwqAgfQ0KPj4+Pj4gwqDCoCBlcnJvcjoNCj4+Pj4+IMKgwqDCoMKgwqDCoCBtdXRl
eF91bmxvY2soJmFkZXYtPm1tYW4uZ3R0X3dpbmRvd19sb2NrKTsNCj4+Pj4+IC3CoMKgwqAgaWYg
KGYpDQo+Pj4+PiAtwqDCoMKgwqDCoMKgwqAgKmYgPSBkbWFfZmVuY2VfZ2V0KGZlbmNlKTsNCj4+
Pj4+IC3CoMKgwqAgZG1hX2ZlbmNlX3B1dChmZW5jZSk7DQo+Pj4+PiArwqDCoMKgICpmID0gZmVu
Y2U7DQo+Pj4+PiDCoMKgwqDCoMKgwqAgcmV0dXJuIHI7DQo+Pj4+PiDCoMKgIH0NCj4+Pj4+IMKg
wqAgZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2FtZGdwdV90dG0uaCBi
L2RyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2FtZGdwdV90dG0uaA0KPj4+Pj4gaW5kZXggYmIx
Nzk4N2YwNDQ3Li4wN2FlMjg1M2M3N2MgMTAwNjQ0DQo+Pj4+PiAtLS0gYS9kcml2ZXJzL2dwdS9k
cm0vYW1kL2FtZGdwdS9hbWRncHVfdHRtLmgNCj4+Pj4+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9h
bWQvYW1kZ3B1L2FtZGdwdV90dG0uaA0KPj4+Pj4gQEAgLTE3MCwxMiArMTcwLDYgQEAgaW50IGFt
ZGdwdV9jb3B5X2J1ZmZlcihzdHJ1Y3QgYW1kZ3B1X3JpbmcgKnJpbmcsIHVpbnQ2NF90IHNyY19v
ZmZzZXQsDQo+Pj4+PiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHN0cnVjdCBk
bWFfcmVzdiAqcmVzdiwNCj4+Pj4+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAg
c3RydWN0IGRtYV9mZW5jZSAqKmZlbmNlLCBib29sIGRpcmVjdF9zdWJtaXQsDQo+Pj4+PiDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGJvb2wgdm1fbmVlZHNfZmx1c2gsIHVpbnQz
Ml90IGNvcHlfZmxhZ3MpOw0KPj4+Pj4gLWludCBhbWRncHVfdHRtX2NvcHlfbWVtX3RvX21lbShz
dHJ1Y3QgYW1kZ3B1X2RldmljZSAqYWRldiwNCj4+Pj4+IC3CoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqAgY29uc3Qgc3RydWN0IGFtZGdwdV9jb3B5X21lbSAqc3JjLA0KPj4+Pj4g
LcKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBjb25zdCBzdHJ1Y3QgYW1kZ3B1
X2NvcHlfbWVtICpkc3QsDQo+Pj4+PiAtwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgIHVpbnQ2NF90IHNpemUsIGJvb2wgdG16LA0KPj4+Pj4gLcKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoCBzdHJ1Y3QgZG1hX3Jlc3YgKnJlc3YsDQo+Pj4+PiAtwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHN0cnVjdCBkbWFfZmVuY2UgKipmKTsNCj4+Pj4+
IMKgwqAgaW50IGFtZGdwdV90dG1fY2xlYXJfYnVmZmVyKHN0cnVjdCBhbWRncHVfYm8gKmJvLA0K
Pj4+Pj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHN0cnVjdCBkbWFfcmVz
diAqcmVzdiwNCj4+Pj4+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBzdHJ1
Y3QgZG1hX2ZlbmNlICoqZmVuY2UpOw0KPj4NCg0KX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0gbGluYXJv
LW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8g
bGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==
