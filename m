Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DD57A05D1B
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  8 Jan 2025 14:44:46 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 6B0A544985
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  8 Jan 2025 13:44:45 +0000 (UTC)
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (mail-dm3nam02on2066.outbound.protection.outlook.com [40.107.95.66])
	by lists.linaro.org (Postfix) with ESMTPS id 30BFA3F622
	for <linaro-mm-sig@lists.linaro.org>; Wed,  8 Jan 2025 13:44:38 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=amd.com header.s=selector1 header.b=aQe4xpxp;
	spf=pass (lists.linaro.org: domain of Christian.Koenig@amd.com designates 40.107.95.66 as permitted sender) smtp.mailfrom=Christian.Koenig@amd.com;
	dmarc=pass (policy=quarantine) header.from=amd.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=h2vDPvwXXkS1sYeQxWacMoyFNPuzAz30y3lsZWnY5Sq5HQmhf8kGhZulHzU6gCG65GSSWhcBdHLm71gCuVyPo+lf7UB5amKljq4NIi0VDJm2tL7Dvjj4KWeVeHh6rSxjQcrQ6zwNjHICKNasOKKorn+sb9q75wIwHS/bhr0rbKVsNgkWV0IqE37bBtgaSQsTUCKUTaPrWXtKZzkaM9Q+J3hkW6mfv9n3Q+jLpB7U73uyiZRkRVKUO5kVkC6k3BohyHkT7YS56MzeiAgjTN+E9uhXdrGCC17TSkJakQUwplH3nCIemF0aTgfI+9Zb1+BoySbpd13owfTd1aBAVKm8og==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=uLuMRiyx5kT9NeVvdHDy+TEeQUAgETX1BZPWKtJNA8Q=;
 b=AHHINPbftYzmZExk09wZ6XLPEIe0TqMnUSoJkeQY1/x2MDrO8n+hTZY6iwtmxWRYzB+/nd2IpUQZNlxOZDTCTpROxiXVOPLfuw1cuo67lLjXOEuphbLO4eFGsKtV1K83TVbDu8HSHVkneX5ITts6XO+UMcSG2rYRQZ8q5AH4JjlT+8kcGx8IH/8lTHzIXoMC9lv41bpZlz60Kxa3NiG165phr6CBaKWfbQorr5oqISsltU85w1yuaHsEvZCTPTUF3SL9HyJpAFRDBA84ueDUorvNezYFxdxP7upktnGB6dIjrNLMF1bzkl7F5WJmpRmGfdtN/XH1rJ2TXhaXG+j50Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=uLuMRiyx5kT9NeVvdHDy+TEeQUAgETX1BZPWKtJNA8Q=;
 b=aQe4xpxpkKaWY5kfKx38joh+rDZr46J9cK4DnxC3YCz4QDeHPWEdkHH0FvG+2X5u695cdGuAR0lAAwuIwRZTV4clJNZaNo6C/Iyv7i1vrxPvEIK9UCJOZoBa+QuXD7Jpgz4WUgbv3ZtRut8PF6fuAlFPxhalI+tannCqkObLsuo=
Received: from PH7PR12MB5685.namprd12.prod.outlook.com (2603:10b6:510:13c::22)
 by CH3PR12MB7521.namprd12.prod.outlook.com (2603:10b6:610:143::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8335.10; Wed, 8 Jan
 2025 13:44:36 +0000
Received: from PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::46fb:96f2:7667:7ca5]) by PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::46fb:96f2:7667:7ca5%5]) with mapi id 15.20.8335.010; Wed, 8 Jan 2025
 13:44:35 +0000
Message-ID: <f3748173-2bbc-43fa-b62e-72e778999764@amd.com>
Date: Wed, 8 Jan 2025 14:44:26 +0100
User-Agent: Mozilla Thunderbird
To: Jason Gunthorpe <jgg@nvidia.com>, Christoph Hellwig <hch@lst.de>,
 Leon Romanovsky <leonro@nvidia.com>
References: <20250107142719.179636-1-yilun.xu@linux.intel.com>
 <20250107142719.179636-2-yilun.xu@linux.intel.com>
 <b1f3c179-31a9-4592-a35b-b96d2e8e8261@amd.com>
 <20250108132358.GP5556@nvidia.com>
Content-Language: en-US
From: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
In-Reply-To: <20250108132358.GP5556@nvidia.com>
X-ClientProxiedBy: FR3P281CA0103.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:a1::19) To PH7PR12MB5685.namprd12.prod.outlook.com
 (2603:10b6:510:13c::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR12MB5685:EE_|CH3PR12MB7521:EE_
X-MS-Office365-Filtering-Correlation-Id: 206a5187-6cc0-46aa-fc20-08dd2fea96cb
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014|7416014;
X-Microsoft-Antispam-Message-Info: 
	=?utf-8?B?RGVTY0plVEM0eXJlaEM0ZDBoaUJOVXphNkZKOElvUkNORG1yYzA0WnhtZm5P?=
 =?utf-8?B?YjNmSkhnbndqNVA1S1VTeWp6cTlrZk9ZOHEyRXJTOXhEeDl3djZwUWVuaHo5?=
 =?utf-8?B?TGtub0NhUW1ybVpaTmpSeWY4UWxFL3REV0UrRWpFMnltTlg4dVRVMk92L1Zs?=
 =?utf-8?B?N3psak5DWWlScXZWL3VoL2RrUlBWeWpHWi9ORFByS1dZWTJseWdOeTJrMEQ2?=
 =?utf-8?B?bHM2Q3M1Wm5ONE9QY0s1SW50TWU5WTRtUzNoREJvUzhRelBXOHNubTIyMjFT?=
 =?utf-8?B?dFhhYlZiSTNoNkhxMDJCZWZRUFdQUE8vcVZDbFZnS3pBVnpGSndrTlpjajlO?=
 =?utf-8?B?NElUZzJEUzZPdnFVSWw4clNOaTB1U2NMMW9HYkhjK0xKaHBVeCtkMmdYV2tD?=
 =?utf-8?B?bXJLeHN6dE9qbE93MUNFRlBmVU4zQWJkaVNKS1I0M01kSjVXbHlnTlJUSHQr?=
 =?utf-8?B?ZlhUMC9wVDRPdmJ5Y3lYbm9xVWV0U3RjdjVyYlo3RitUQThLNWk4SVVFdDNt?=
 =?utf-8?B?MXJ1d3lXbXBMc05iY041UkdHRjIwYW9lMXN4M04wR0p1aHBYQTB3bkFlREs1?=
 =?utf-8?B?UllqVmNFRDhLeHZtTnM3T2h2UkRJdmZDRHA2Rm5NL2R4YWFtbnhRZUVtYS9F?=
 =?utf-8?B?NElVeHVrYXFBZks0RzNjazRxVFFPQ2ZILzRiVGVIcW9aRTFUcjF4MmF1RUpI?=
 =?utf-8?B?dTlPMnA5TmsyUnV3NWxUZ25JaUpUdy9mbGE3OWVjUVBpUHJ0YzhjL3huU2s4?=
 =?utf-8?B?ZlROcVZ0SXBJdm9MVTl2dVNOWHhZMWFGbEJZa0I0QktpTE1MUmczYVA2Qlhh?=
 =?utf-8?B?QkhXOU9jT0hCT0Nkd2I5L0lKcXJQZWxsY1lXNXJORElHVW5YNHZJR29tMHFD?=
 =?utf-8?B?SFRXTUtqLy9veVcraFRVdzhjdUpvYm4xd3llQlRRQW04dERxallxY0tOQW9o?=
 =?utf-8?B?VWEzc0RpNUxvdnZld0RiWWJYR04vVHE5Zk8zVWIzYjBTWUQ0WUZHOUZXaDVw?=
 =?utf-8?B?K0ZuY3RIc1liMEZvbFBTTUQ1VWMrU3dKbmdXTVNaOGRxUlpVUXlHcWhOZENK?=
 =?utf-8?B?SjBTYndjSEJ0OWVuWHhFOFlZbWpMYjNtMTBlUFdrcitidS95K3NOTXA5Nkw4?=
 =?utf-8?B?UTFVZ3FmSVIwV29rRmYyVXN2QURPT2lCQUtkZWpFc01pNFgycU96WlN2VGFO?=
 =?utf-8?B?QjNpSVJ4Q3VQKzBYc1JYOXNZY0J0RmN2OGpZSytLaGd5bVpvN2hRdHNQSjVS?=
 =?utf-8?B?aWFsSi9vbzZ0KzZqUFZFN0VuYVRjYVJRWUtKMHhRbXVmN0U0cEw5REM0T3dP?=
 =?utf-8?B?aUVYTVlSWUNGOHRGczZ1cFdGZW8wMWZjNHk3ZnZjdDZSdVNQOFRIVnVieFoz?=
 =?utf-8?B?dENnVVlxTkxvUmNxb1lIS2FuYVk1VWRSemdubjRNb3pEcGo2NzZhVVYrcCsw?=
 =?utf-8?B?K3lIeG00NDIydGVCWEphUVRlTVhWZ3JoZkZ1TlF4dTJsYkZuYnVPa0p1d2Rl?=
 =?utf-8?B?WUUvTkpJL0ZTT1Jyekc1Tzc1Vy9BU1VGekhzSG5Od0o5WkZKZ3ZSa05WN01x?=
 =?utf-8?B?UmdMOG11My96MUwybFIzZU5SZTYrTXVlY21rczVMd2Q5UkxUNlNNYUt1SjZa?=
 =?utf-8?B?N3NQNENDYmdOTVRaaW0xYUdacjBHd0trclg5ektsYjk1UEZNNDV6dTJRaVNG?=
 =?utf-8?B?R1ArTGtpOCthM09STmFDSmdGdXVDRElUV2I0T1ltNWptZ29QUnNyWTBqT1Z6?=
 =?utf-8?B?Vno2N0RsMXlVaHpWcXZ3MjZzS1VhWEx3NkIwdGhkTFY2SmRyOUVUYnBnOEdQ?=
 =?utf-8?B?ZEJNMENjcXM4cnJFa21DMzVYRUVNa2Fqd0hLNTRhOWhPanZKSVpsT29hSGph?=
 =?utf-8?Q?lDrB9+y5Lpwbl?=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH7PR12MB5685.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(1800799024)(376014)(7416014);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?S1VzUko4c3gvT3VURWJTVVJybXBOTFdTSWtwblhhOGJyOXJIaFdqbGkraDY1?=
 =?utf-8?B?ckxoTFVtR2pyZkJrQ1ZxZHpaS0VYYTdzb1I2czNYY09wOWczeEJibm5sNWc0?=
 =?utf-8?B?eHhNdlQwVG1CNXg4WGZxeFdzbnJmSEZkbms4T1hmVi9FZ0RVbnIxc0JMUk1B?=
 =?utf-8?B?VVJRU040QmVKN1N1ZnQ5VGdoZzhMYlo2L09EdHlvaHY3Qm80ZWlMM0REY3A1?=
 =?utf-8?B?TjdwL25jWFJWK0dpdjczSmswVjh2MTEwV1o3VnFZY3RPVFBMVXlTdTZFZDMz?=
 =?utf-8?B?ZnV3Wk0wL2cxMzRlTlN1WFhBeEpsMGp3QW9paGhzNjBLTnlCNXFxREtqbzM4?=
 =?utf-8?B?UE56NW9qNkYvRmtGdDdZenJQbWpmd0tCN09ndlBkQlJmN0VXWGkrd3k5OG1R?=
 =?utf-8?B?UUszZDhZY2VoUEZUcmprQ3RZa3FqV1VBTGttNGozM0R6WDZXZ3lUL3duYnIw?=
 =?utf-8?B?SGZhcitoMTdlai9jK0RET2prK1BURVlhL0hMT3pudHB2UlR2eGlxUUJEZmVo?=
 =?utf-8?B?c2xJK1BGcWN3Q2czQk5wZzdVZCtSWFZZS0h4aXVvMXBrWG15QzJlekNHSlhz?=
 =?utf-8?B?MjFRdmRLOHc5TWdJYVo5WThNWEhiK1JPWG55WUZWaGdiNjZkR0pLVzk3TjB1?=
 =?utf-8?B?d1ovejAyQzRWRkZYdW9lUEpOTnBFTnUrSzhiaUpMVzlXQ1QvMFpDQVVWK3B5?=
 =?utf-8?B?VUtpc1FnSFN5ZHIwalJneDNYNkpQS2VncFVwSHJ6di9NdUMvbjdPdTMzTU9W?=
 =?utf-8?B?U3ZSa3NENHdKSW1JSGRNUFlGQ3ZVa0YwOFhxc3lwTmNOWjFud0Z2UUxsSGdI?=
 =?utf-8?B?ekR3V25QK1hzMGpvRXIvSmNVV0h2cFp1aXBxbnBDY3I0VDBSNE1VRzFxZlJq?=
 =?utf-8?B?L2RSdTNPalFzckg4UGJTS2NsMkp3Q2FXTjZKcC9pUlNOVzJjSllnREsyb01T?=
 =?utf-8?B?bEFGclF3Tlg4WHdFZGpjcmx5cS9UNmdaRUplVDB3YWdHdE5ScHpjaFc3RURO?=
 =?utf-8?B?RmlwWGJPaWhhb0RWbk1naStlZk9RYm5XY2lwSjYwZ0hreXlvdjVFSGp0Q09i?=
 =?utf-8?B?RG1NQkQzNGpiWXpyL2NQNlpoYks5QmpEWnBKZjhuSTlMV0ZBRG0vQUdqSmxH?=
 =?utf-8?B?WWcyeVFqUkc1cjczaVhxaTdkYVRLKzJ3TjdVYW1EMzRrelNQeHEzQTVNakRE?=
 =?utf-8?B?cExGcGhvMHU2RUVud3JxUks5dWNRRmhTV3VDSml2ZjFOcmpQWVN3QkNXWVU5?=
 =?utf-8?B?SUN0QUFDb281ckxKSlY4d2dyejZSazh6RkFNUkYvbmZhWWRDR3JXMHViN04x?=
 =?utf-8?B?U3hvaVJlYnhYTlNRTjRFM0QwdThNanZuNVdEVWt6OGlQMXgyVFRvT1Qya0Ux?=
 =?utf-8?B?WmNmM3B0N1hCTzN3MkdwNTJLVm0xcldIeEExR2QzYytPakdreDNoVnVMRGlK?=
 =?utf-8?B?UGwxeEdyODlJL0xmRm8rN1R3OGhjZVFidGRWN1ZXK0QxYzZLMTFZQUFpM1J5?=
 =?utf-8?B?WEtkVms5Z0cyUkdsRVdpRXNCY2c2NVVMZ0xyR1hKV1h2aXJrcks2SThFdGtT?=
 =?utf-8?B?bmR0MS9IV0RrT0YzYjhEQStyVllGcDRJcmVvdnpHK2pocy9OMWUvQ21BWWg2?=
 =?utf-8?B?SFBKNkJHOHB4S0dUOXRVbjhOWWs4cFp4dm1JbzNSV2RmRTFHV2lRRkNmYk1L?=
 =?utf-8?B?U2I0bFFwbGFJdWhLcGN1UTN4L3FXZjEwcFRwWUVIS0JKNWhpdkdsZGVxU0NV?=
 =?utf-8?B?NHBPb2crVWtRdHBoQWh6ODA5ZzRQMzdibm4zNThHaWlOMHIzNjloeTM4QUdy?=
 =?utf-8?B?RnB3bHFKMGJJSkFOaGhRd3lrbmlaMDZYTGRMQm5zNlpva3V2QjY5UTd3MzRu?=
 =?utf-8?B?NWJyV0dpd2JEdmp2N3RaMWR5c0JKMStyUFpTSWc5RURjamtSZk8rOUhJdVBS?=
 =?utf-8?B?TFFTMGhGUmFMUjFpQXBtZVIyTTJYQnM0SVJwWFBQNXNKaG5aTVpnTVRINkxt?=
 =?utf-8?B?NTN5RkswbnFPWE85RmJpMnZDUW94UnB6L2xPT2c5RGFZNTE3ZTJKRHVveEl5?=
 =?utf-8?B?UFQ4eDMySHhWNlFjNTRnb0lkUkxlZnJiS2c5NVB1ejN2aDdpL0RaTUZtSUJr?=
 =?utf-8?Q?RBsKMnmlTyTzVgXYRGlbsDrXZ?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 206a5187-6cc0-46aa-fc20-08dd2fea96cb
X-MS-Exchange-CrossTenant-AuthSource: PH7PR12MB5685.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Jan 2025 13:44:35.6405
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: mGpTsvciDsz109PvP329EZger7N9wD/L4I+DZSvPVZfgoIrXE3pQdjngTlBcNPuK
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR12MB7521
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 30BFA3F622
X-Spamd-Bar: ---------
X-Spamd-Result: default: False [-10.00 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[99.99%];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	RBL_SENDERSCORE_REPUT_9(-1.00)[40.107.95.66:from];
	DMARC_POLICY_ALLOW(-0.50)[amd.com,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:40.107.0.0/16];
	R_DKIM_ALLOW(-0.20)[amd.com:s=selector1];
	MIME_GOOD(-0.10)[text/plain];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:8075, ipnet:40.104.0.0/14, country:US];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[25];
	MIME_TRACE(0.00)[0:+];
	RWL_MAILSPIKE_POSSIBLE(0.00)[40.107.95.66:from];
	FROM_EQ_ENVFROM(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	URIBL_BLOCKED(0.00)[amd.com:dkim,amd.com:mid];
	RCVD_TLS_LAST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TO_DN_SOME(0.00)[];
	DKIM_TRACE(0.00)[amd.com:+]
Message-ID-Hash: P4I7PSJ56KQUFJIG6SYUPIP2FPN2D4TZ
X-Message-ID-Hash: P4I7PSJ56KQUFJIG6SYUPIP2FPN2D4TZ
X-MailFrom: Christian.Koenig@amd.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Xu Yilun <yilun.xu@linux.intel.com>, kvm@vger.kernel.org, dri-devel@lists.freedesktop.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, sumit.semwal@linaro.org, pbonzini@redhat.com, seanjc@google.com, alex.williamson@redhat.com, vivek.kasireddy@intel.com, dan.j.williams@intel.com, aik@amd.com, yilun.xu@intel.com, linux-coco@lists.linux.dev, linux-kernel@vger.kernel.org, lukas@wunner.de, yan.y.zhao@intel.com, leon@kernel.org, baolu.lu@linux.intel.com, zhenzhong.duan@intel.com, tao1.su@intel.com
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [RFC PATCH 01/12] dma-buf: Introduce dma_buf_get_pfn_unlocked() kAPI
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/P4I7PSJ56KQUFJIG6SYUPIP2FPN2D4TZ/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

QW0gMDguMDEuMjUgdW0gMTQ6MjMgc2NocmllYiBKYXNvbiBHdW50aG9ycGU6DQo+IE9uIFdlZCwg
SmFuIDA4LCAyMDI1IGF0IDA5OjAxOjQ2QU0gKzAxMDAsIENocmlzdGlhbiBLw7ZuaWcgd3JvdGU6
DQo+PiBBbSAwNy4wMS4yNSB1bSAxNToyNyBzY2hyaWViIFh1IFlpbHVuOg0KPj4+IEludHJvZHVj
ZSBhIG5ldyBBUEkgZm9yIGRtYS1idWYgaW1wb3J0ZXIsIGFsc28gYWRkIGEgZG1hX2J1Zl9vcHMN
Cj4+PiBjYWxsYmFjayBmb3IgZG1hLWJ1ZiBleHBvcnRlci4gVGhpcyBBUEkgaXMgZm9yIHN1YnN5
c3RlbSBpbXBvcnRlcnMgd2hvDQo+Pj4gbWFwIHRoZSBkbWEtYnVmIHRvIHNvbWUgdXNlciBkZWZp
bmVkIGFkZHJlc3Mgc3BhY2UsIGUuZy4gZm9yIElPTU1VRkQgdG8NCj4+PiBtYXAgdGhlIGRtYS1i
dWYgdG8gdXNlcnNwYWNlIElPVkEgdmlhIElPTU1VIHBhZ2UgdGFibGUsIG9yIGZvciBLVk0gdG8N
Cj4+PiBtYXAgdGhlIGRtYS1idWYgdG8gR1BBIHZpYSBLVk0gTU1VIChlLmcuIEVQVCkuDQo+Pj4N
Cj4+PiBDdXJyZW50bHkgZG1hLWJ1ZiBpcyBvbmx5IHVzZWQgdG8gZ2V0IERNQSBhZGRyZXNzIGZv
ciBkZXZpY2UncyBkZWZhdWx0DQo+Pj4gZG9tYWluIGJ5IHVzaW5nIGtlcm5lbCBETUEgQVBJcy4g
QnV0IGZvciB0aGVzZSBuZXcgdXNlLWNhc2VzLCBpbXBvcnRlcnMNCj4+PiBvbmx5IG5lZWQgdGhl
IHBmbiBvZiB0aGUgZG1hLWJ1ZiByZXNvdXJjZSB0byBidWlsZCB0aGVpciBvd24gbWFwcGluZw0K
Pj4+IHRhYmxlcy4NCj4+IEFzIGZhciBhcyBJIGNhbiBzZWUgSSBoYXZlIHRvIGZ1bmRhbWVudGFs
bHkgcmVqZWN0IHRoaXMgd2hvbGUgYXBwcm9hY2guDQo+Pg0KPj4gSXQncyBpbnRlbnRpb25hbCBE
TUEtYnVmIGRlc2lnbiB0aGF0IHdlIGRvbid0IGV4cG9zZSBzdHJ1Y3QgcGFnZXMgbm9yIFBGTnMN
Cj4+IHRvIHRoZSBpbXBvcnRlci4gRXNzZW50aWFsbHkgRE1BLWJ1ZiBvbmx5IHRyYW5zcG9ydHMg
RE1BIGFkZHJlc3Nlcy4NCj4+DQo+PiBJbiBvdGhlciB3b3JkcyB0aGUgbWFwcGluZyBpcyBkb25l
IGJ5IHRoZSBleHBvcnRlciBhbmQgKm5vdCogdGhlIGltcG9ydGVyLg0KPj4NCj4+IFdoYXQgd2Ug
Y2VydGFpbmx5IGNhbiBkbyBpcyB0byBhbm5vdGF0ZSB0aG9zZSBETUEgYWRkcmVzc2VzIHRvIGEg
YmV0dGVyDQo+PiBzcGVjaWZ5IGluIHdoaWNoIGRvbWFpbiB0aGV5IGFyZSBhcHBsaWNhYmxlLCBl
LmcuIGlmIHRoZXkgYXJlIFBDSWUgYnVzDQo+PiBhZGRyZXNzZXMgb3Igc29tZSBpbnRlciBkZXZp
Y2UgYnVzIGFkZHJlc3NlcyBldGMuLi4NCj4+DQo+PiBCdXQgbW92aW5nIHRoZSBmdW5jdGlvbmFs
aXR5IHRvIG1hcCB0aGUgcGFnZXMvUEZOcyB0byBETUEgYWRkcmVzc2VzIGludG8gdGhlDQo+PiBp
bXBvcnRlciBpcyBhbiBhYnNvbHV0ZWx5IGNsZWFyIE5PLUdPLg0KPiBPaD8NCj4NCj4gSGF2aW5n
IHRoZSBpbXBvcnRlciBkbyB0aGUgbWFwcGluZyBpcyB0aGUgY29ycmVjdCB3YXkgdG8gb3BlcmF0
ZSB0aGUNCj4gRE1BIEFQSSBhbmQgdGhlIG5ldyBBUEkgdGhhdCBMZW9uIGhhcyBidWlsdCB0byBm
aXggdGhlIHNjYXR0ZXJsaXN0DQo+IGFidXNlIGluIGRtYWJ1ZiByZWxpZXMgb24gaW1wb3J0ZXIg
bWFwcGluZyBhcyBwYXJ0IG9mIGl0J3MNCj4gY29uc3RydWN0aW9uLg0KDQpFeGFjdGx5IG9uIHRo
YXQgSSBzdHJvbmdseSBkaXNhZ3JlZSBvbi4NCg0KRE1BLWJ1ZiB3b3JrcyBieSBwcm92aWRpbmcg
RE1BIGFkZHJlc3NlcyB0aGUgaW1wb3J0ZXIgY2FuIHdvcmsgd2l0aCBhbmQgDQoqTk9UKiB0aGUg
dW5kZXJseWluZyBsb2NhdGlvbiBvZiB0aGUgYnVmZmVyLg0KDQo+IFdoeSBvbiBlYXJ0aCBkbyB5
b3Ugd2FudCB0aGUgZXhwb3J0ZXIgdG8gbWFwPw0KDQpCZWNhdXNlIHRoZSBleHBvcnRlciBvd25z
IHRoZSBleHBvcnRlZCBidWZmZXIgYW5kIG9ubHkgdGhlIGV4cG9ydGVyIA0Ka25vd3MgdG8gaG93
IGNvcnJlY3RseSBhY2Nlc3MgaXQuDQoNCj4gVGhhdCBpcyBjb21wbGV0ZWx5IGJhY2t3YXJkcyBh
bmQgdW53b3JrYWJsZSBpbiBtYW55IGNhc2VzLiBUaGUgZGlzZnVuY3Rpb25hbCBQMlAgc3VwcG9y
dA0KPiBpbiBkbWFidWYgaXMgbGlrZSB0aGF0IHByaW5jaXBhbGx5IGJlY2F1c2Ugb2YgdGhpcy4N
Cg0KTm8sIHRoYXQgaXMgZXhhY3RseSB3aGF0IHdlIG5lZWQuDQoNClVzaW5nIHRoZSBzY2F0dGVy
bGlzdCB0byB0cmFuc3BvcnQgdGhlIERNQSBhZGRyZXNzZXMgd2FzIGNsZWFybHkgYSANCm1pc3Rh
a2UsIGJ1dCBwcm92aWRpbmcgdGhlIERNQSBhZGRyZXNzZXMgYnkgdGhlIGV4cG9ydGVyIGhhcyBw
cm92ZWQgbWFueSANCnRpbWVzIHRvIGJlIHRoZSByaWdodCBhcHByb2FjaC4NCg0KS2VlcCBpbiBt
aW5kIHRoYXQgdGhlIGV4cG9ydGVkIGJ1ZmZlciBpcyBub3QgbmVjZXNzYXJ5IG1lbW9yeSwgYnV0
IGNhbiANCmFsc28gYmUgTU1JTyBvciBzdHVmZiB3aGljaCBpcyBvbmx5IGFjY2Vzc2libGUgdGhy
b3VnaCBhZGRyZXNzIHNwYWNlIA0Kd2luZG93cyB3aGVyZSB5b3UgY2FuJ3QgY3JlYXRlIGEgUEZO
IG5vciBzdHJ1Y3QgcGFnZSBmb3IuDQoNCj4gVGhhdCBzYWlkLCBJIGRvbid0IHRoaW5rIGdldF9w
Zm4oKSBpcyBhbiBlc3BlY2lhbGx5IGdvb2QgaW50ZXJmYWNlLA0KPiBidXQgd2Ugd2lsbCBuZWVk
IHRvIGNvbWUgd2l0aCBzb21ldGhpbmcgdGhhdCBwYXNzZXMgdGhlIHBoeXNpY2FsIHBmbg0KPiBv
dXQuDQoNCk5vLCBwaHlzaWNhbCBwZm4gaXMgYWJzb2x1dGVseSBub3QgYSBnb29kIHdheSBvZiBw
YXNzaW5nIHRoZSBsb2NhdGlvbiBvZiANCmRhdGEgYXJvdW5kIGJlY2F1c2UgaXQgaXMgbGltaXRl
ZCB0byB3aGF0IHRoZSBDUFUgc2VlcyBhcyBhZGRyZXNzIHNwYWNlLg0KDQpXZSBoYXZlIHVzZSBj
YXNlcyB3aGVyZSBETUEtYnVmIHRyYW5zcG9ydHMgdGhlIGxvY2F0aW9uIG9mIENQVSBpbnZpc2li
bGUgDQpkYXRhIHdoaWNoIG9ubHkgdGhlIGludm9sdmVkIGRldmljZXMgY2FuIHNlZS4NCg0KUmVn
YXJkcywNCkNocmlzdGlhbi4NCg0KPg0KPiBKYXNvbg0KDQpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBs
aW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFp
bCB0byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
