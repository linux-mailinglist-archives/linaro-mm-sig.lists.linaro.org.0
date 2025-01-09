Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 842DCA06FBF
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  9 Jan 2025 09:10:16 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 9B26943F17
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  9 Jan 2025 08:10:15 +0000 (UTC)
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (mail-bn8nam11on2068.outbound.protection.outlook.com [40.107.236.68])
	by lists.linaro.org (Postfix) with ESMTPS id 4FC433F622
	for <linaro-mm-sig@lists.linaro.org>; Thu,  9 Jan 2025 08:09:58 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=amd.com header.s=selector1 header.b="NdN/ARTC";
	spf=pass (lists.linaro.org: domain of Christian.Koenig@amd.com designates 40.107.236.68 as permitted sender) smtp.mailfrom=Christian.Koenig@amd.com;
	dmarc=pass (policy=quarantine) header.from=amd.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=XrL55YsF4WlTSflZ6GXFXCDrjuHSKHe16YxgLHExQdbVDlTF6+vL39fFt2nXCLqBQGiLrKYeHNdFJVDS8P27dXGgCJtpgFr7HXCjwH01RoYKTjqdeS+Wz/6ekH94+J58sR5Fm4+Xf7kx2uDgPe8CRRtNPXeJaZPoTYvkUe4qfBvBO+3OS3gO8d9usZkuBUtMYFKs4/lDxikw+GU8m3IfpBEcdMXp/cCi58Xo6JueFKte4KibwWczOzPbS33SKP+bbcIwRLHkVaHO0ty+FtueFmyo22qCW+A2E+cH1JiUzpAAhvpxqKoD2Z0ixAsD6mIOa+o03WeNplEsyhKNf1ISiQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=5VlMeftaCoOgHP26z/lG7BxBebTX/5t1H4OpB6Znyd4=;
 b=OlQgYARem1sVxB1NV2VptJx//TBcwBqNfuKqE191kz9CzF3qwV6FBwnT/wGUz+oOJG9f2noMaQPhDBG0gHnjKpNUWgvuESzyI6w2aRDS/lejUT16mbB0SUUn8oUk6rq1Zjzy0/qEQSHsyqbR6TW9ut1kFk90tNHcmod1i5HLJkud7iK+JjRdES0QyWAh9/KME1o1yOhpPUlYFccaBab1Dig0mK3eV5KvtMFimOu2ekOWMmWHO1iVYAqY3ja+C0lPKU7h3/CYUcIn8SFTtUwSaJsVbkPP4VpyqcJD7w99yU7lwl5LRriezl/1Ie/4cVbDN3ZtAzCt4OUYWo/0nbsETQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=5VlMeftaCoOgHP26z/lG7BxBebTX/5t1H4OpB6Znyd4=;
 b=NdN/ARTCSKhTTpL0yUBmKkuKb3wMJZTi/FuTbR+H+lRftQy3k0mUoTLe1XflxIQvajnDD0wvC/rXkzbgfSCJ7EMLs1dHugjSUiEVccDg4AQNJYc4QCh2vz2lOOFMApcftzjS0PVpspKa/5lC80SHV6IdFTEaMSELChUWk6IjqTM=
Received: from PH7PR12MB5685.namprd12.prod.outlook.com (2603:10b6:510:13c::22)
 by SN7PR12MB8057.namprd12.prod.outlook.com (2603:10b6:806:34a::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8335.11; Thu, 9 Jan
 2025 08:09:56 +0000
Received: from PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::46fb:96f2:7667:7ca5]) by PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::46fb:96f2:7667:7ca5%5]) with mapi id 15.20.8335.010; Thu, 9 Jan 2025
 08:09:56 +0000
Message-ID: <c823f70c-9b70-441c-b046-71058c315857@amd.com>
Date: Thu, 9 Jan 2025 09:09:46 +0100
User-Agent: Mozilla Thunderbird
From: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
To: Xu Yilun <yilun.xu@linux.intel.com>, Jason Gunthorpe <jgg@nvidia.com>,
 Christoph Hellwig <hch@lst.de>, Leon Romanovsky <leonro@nvidia.com>,
 kvm@vger.kernel.org, dri-devel@lists.freedesktop.org,
 linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org,
 sumit.semwal@linaro.org, pbonzini@redhat.com, seanjc@google.com,
 alex.williamson@redhat.com, vivek.kasireddy@intel.com,
 dan.j.williams@intel.com, aik@amd.com, yilun.xu@intel.com,
 linux-coco@lists.linux.dev, linux-kernel@vger.kernel.org, lukas@wunner.de,
 yan.y.zhao@intel.com, leon@kernel.org, baolu.lu@linux.intel.com,
 zhenzhong.duan@intel.com, tao1.su@intel.com
References: <20250107142719.179636-1-yilun.xu@linux.intel.com>
 <20250107142719.179636-2-yilun.xu@linux.intel.com>
 <b1f3c179-31a9-4592-a35b-b96d2e8e8261@amd.com>
 <20250108132358.GP5556@nvidia.com>
 <f3748173-2bbc-43fa-b62e-72e778999764@amd.com>
 <20250108145843.GR5556@nvidia.com>
 <5a858e00-6fea-4a7a-93be-f23b66e00835@amd.com>
 <20250108162227.GT5556@nvidia.com> <Z37HpvHAfB0g9OQ-@phenom.ffwll.local>
 <Z37QaIDUgiygLh74@yilunxu-OptiPlex-7050>
 <58e97916-e6fd-41ef-84b4-bbf53ed0e8e4@amd.com>
Content-Language: en-US
In-Reply-To: <58e97916-e6fd-41ef-84b4-bbf53ed0e8e4@amd.com>
X-ClientProxiedBy: FR5P281CA0029.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:f1::13) To PH7PR12MB5685.namprd12.prod.outlook.com
 (2603:10b6:510:13c::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR12MB5685:EE_|SN7PR12MB8057:EE_
X-MS-Office365-Filtering-Correlation-Id: 6d81a712-e97f-48e6-c2ad-08dd308500b4
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: 
	BCL:0;ARA:13230040|1800799024|376014|7416014|366016|921020;
X-Microsoft-Antispam-Message-Info: 
	=?utf-8?B?OHRpbmY5bGpwUUlyT1YxS0RZeWFGaWwwdnpQWExteUFVN2grbVJTSGUwTXJO?=
 =?utf-8?B?bmRiZXNjUTdLRFZDU2puSmtTTlAycGJ6Y0lXbkc0S1g3U2N6QytzeWlHYzNP?=
 =?utf-8?B?dXBsUlhud3NjbUpmWTJ3TTd3a3hTS1dVejB0bzAzSURMWGVyTVhCd0xmV1pQ?=
 =?utf-8?B?eEhkajhldVoyWTJNY05TZUphenJqNnc1VjVMT1RZWG1kQm5OVDM3U0xNRlY0?=
 =?utf-8?B?Ui94ZGxNMHYvNzFzT0NKYjdrS2cveWtHa3hMdjFjeTJSNGhXdThkaHpBdk9r?=
 =?utf-8?B?RDQ3Y25uTG54ZXpSVWRTRW5qYndiRU9VOVNkeDAzWU1YSFhWbUU3b25WN1BY?=
 =?utf-8?B?c3ZuZXVrZmFiaXIwbUNUeE1SMFRnZmlUUGVyVXFGNTNwZ1FIMURqWU1LSFdP?=
 =?utf-8?B?M2FUMmZVajM2K0xsQzFwakxwci9wOC9GL2lZWnJwRW9oZEN4RmR0dk9sRGpG?=
 =?utf-8?B?RUNLdlpGcDFLU0JKQnRFUEVPNjJWd3pYTlNacjJXT25TNis5SGVMK2swOW5Z?=
 =?utf-8?B?V3dxZEduZWpwVzdLZmswaE9kaldxV3lmZWNzTEpXNUxmV3ZFN1hnSHF0UjFX?=
 =?utf-8?B?T1RNYmtHUDhKU1ZxY3Qza0FqWHZ4d3FFMTd4V0VqVVkrZ3RCMnFxcmtLbEt4?=
 =?utf-8?B?b0szRlBKVVM4Z1JZaHVHTXllQlFhc1p1bVZtNHRVeWVaZUZickdoMmxDamVy?=
 =?utf-8?B?M2hmQWdFTURDWmlaRWtMSWloWEZSUzVtSkxaVEIwdUhmU1Eyck0wS2VoaE0y?=
 =?utf-8?B?S1dwazdkdHBvTDQ1QkljSllSOHoyaHNUdGJqbk5IZFU4ZjNITjNwOTlQeit4?=
 =?utf-8?B?SVYzQVBVcXhwYWljK0xGTXl3Q2VtSG9HQWVIeVIwTnRqenVFQlVDMGtpNnVO?=
 =?utf-8?B?RTJDSFFkOXVUaTVzQ1RrV2NmNjBzMER0SG1HU3BjVDlpVFhSMytsVXFFcW9U?=
 =?utf-8?B?U1FjQk5KQzhLMlhIN2FSaFp2WmM1cnpodzE0TVh4V1hVTTZyMkNDUjV4aXFT?=
 =?utf-8?B?VVZtTFRxeHZkakc2cnMvUE85djdVRkhGTXcxbllLUGdtS1lzYnQySlg1NTFk?=
 =?utf-8?B?R2ZUMU1SOXRvbElUZWNLSldCejkyTHdXWk4zYUdXR0Q1em1jMVdVWkJnbVlt?=
 =?utf-8?B?WWRCS292TGEwbTV6UGcwcHlBU1J4VGFNaVd5M21GbWxnR2lzRmVYZTlkMGJm?=
 =?utf-8?B?Ylg0ZDBHL2V2MFlYdkhKTUtoZGF2cFEwR2tkMTg5VHVoYmJEODlhUVlHWFph?=
 =?utf-8?B?RGwwZkFpWkJjaTg1WWlENmNCUUJrZ2FJQXBtc3ZLUnF1V3dIYjV0dkdnS205?=
 =?utf-8?B?RVJIOUFOWHR6d0w1cUxWd0VhVTRhUm81aS8zZFFkRG1Pb3BBeGpoL05SQnlm?=
 =?utf-8?B?dWR3U1Z2d3NtRjRlZ3JDUVJBamVpa2NTUEZUQVMyYytRUlM2a2I2QTBMZGZK?=
 =?utf-8?B?MDIwdVJQTkcrNm9HMjFhUW5sU2I4SWRCU0pwaHJVR3lDR2ppeFVsQ2JTUC94?=
 =?utf-8?B?NlVJQUx6cFYyM2tyOFZYWFk0Zy80NlMwYUFSWi9YdkE4NlNwRStDd1Vhenhh?=
 =?utf-8?B?RjE4cHkrS2wyYi9ZWmhkQ3Q0bWVFTUhlbHNWS2FhUW1WWGpXZzJpdEJwOXpt?=
 =?utf-8?B?cXBqYW5Hc241MHEzYWlva1dONzVUR29CYW9nOTZOeXVhSFFJakRqWVhDOVM4?=
 =?utf-8?B?c0lILzRBbUtIdHdCU2hPUkJRRWIvTmp2UDYzQ1hTajJUaGNXVnczV0tPLzZ6?=
 =?utf-8?B?SnBtSHk5SVF2Rkcva1FQQUxTZnlFeW16YU8vRUEzd3RQL3VyVlY1WFRJMC8r?=
 =?utf-8?B?Vy9rZWxxV1BjN1lGelc2MjFrMEh2UXpUVkNBUG5tMktYSzVMZWM2angxOVcr?=
 =?utf-8?Q?cuWpBvee7thNB?=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH7PR12MB5685.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(376014)(7416014)(366016)(921020);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?d3gwL1pnUDM0R3FGeUg2Z1JyOTkxankrbUdvcGxDR1pwVE1ldUFhMDZSTGdH?=
 =?utf-8?B?VmxOalVDd2pjbW5CWDVxS3BVZjFWNEhNdHRsdnY0NWxwaDZESTV4SHhhWFNI?=
 =?utf-8?B?eVErN0VpRW9OZkJpbW9VWk13MDRWM0pwNUFyaUNPdUlDUjcrNHNqdlZuZ04w?=
 =?utf-8?B?cG9OeDQwcFpNbVVRcS9QSlpYSml5bVlibVFqaE5la0xVcVB0Y01qb01NVTJr?=
 =?utf-8?B?VWNyU2xsT09tZ1E2VjRaU1VHd21hMFJ1MWVwSDlWazNCZEdZWmJYeHpJbGZa?=
 =?utf-8?B?cUd6S1hBTWR2VEZvVk0rNnB6VERnbFYrYndsSlB1UmIxS3ovTlc5MVhIaTFG?=
 =?utf-8?B?eWJKUW9uTk1iKzdMa3RMaGV0ZXNuVXAzcDVtUDM2UW9SMHlqRUU0OTAwNDIx?=
 =?utf-8?B?bHZUSlk3dno4RXhxeWFwSlJOdlBjYVcrVzl0dVc5MWxTbEJZSkkybkR5Q0hu?=
 =?utf-8?B?WTc2MkVrVUlOZWI4ejN1T3A0TDZxOWtRNGNQdVdwYWRtQ0cvcVd2emlyZ1dy?=
 =?utf-8?B?ZWFjeWZsYytVYllPWjRjaDdZSTEwOWpKMnJHSGMvQ3ZNZ3NIQjR6T05ZajZP?=
 =?utf-8?B?Q3Jxc0xTdmwwN1Z2SDZVNmhOa1U3ZS8yNjFiODYwK3R5eGRtbkxUUDdqZXFt?=
 =?utf-8?B?TjQ1NWhzSi9RZyt6ZmxaVUZVb01VWjBJV2tLenBEUXdQS3k0NFdVdlRySEdJ?=
 =?utf-8?B?WXdjR1A4V3M5NXZWenFUMUtjZWtMZkZVYkRPS1MxNS91bEZzak9NaldWZmVu?=
 =?utf-8?B?S1dScGdhMnJkeGRTSnpIU1R1eGQweUl2aXhEOGxsWEljZElwaklaNllwNVFi?=
 =?utf-8?B?ZnBDRUlObk56T3E3YkphTExOYXNqSll2aXpHbnVyVTUxaThMdG5IWVBhRlNE?=
 =?utf-8?B?N05DbE1vdHZUSFZXc2FHV0FPb1JINmtybzdRYUdNS2t5UGlhcVk4MkxSWEpz?=
 =?utf-8?B?NHRFWFkwTnhtSXBhVnlnczdNSXhIV005dVpFYWNuVWZtS0JWalRkcnYwQml0?=
 =?utf-8?B?VEtXWlNLS2FKeElYSmF5MmVOdzN4U3B1NHdBRm5uQnhpaFE1SXNnZmRPU3hD?=
 =?utf-8?B?NjRDamVRNGtialE0L3dFb0NET1BvWmp2N3AvYkd5eXdHWVFHbG5MUTdDSmow?=
 =?utf-8?B?c0M5anhEUkNOdUdUeHZOUFBWNUR0K2pHTTN1RGtLaTdJcDhvcWZmc1dtNVBs?=
 =?utf-8?B?QkRPOWZGL1N2QWlLZHE0UC83d0dSdnd4VjhGb0EvV2JwS0YxMlFjVmcxWFJM?=
 =?utf-8?B?aThGazNJZHRYdVFJS3NKdUhlZjJmRnhtNzRieUpiYVlpaThzUC9VM2EwSGc2?=
 =?utf-8?B?N3B0eVZaWGF6QUI1eHB3RGUrQ2dONXE4cFR2NC9kcEtnbkdEOW80aHNFNHI2?=
 =?utf-8?B?Yi93bGNQcld5MWZCZFZ5SFlxNC9PbE1yUnByS3hTbXhYelJ3MkJlRWtyRmJ2?=
 =?utf-8?B?KzUwcGpsYU4yVGZnd3JBSkZ5eEhDMmZiYXl2Sk55bEVSVlF2SUd2MU9IVG9j?=
 =?utf-8?B?alRjYjdWdHZHV1YxZWxxWlloK3Z2Y0xUYXowc3FrRVJscGkzVE1qV0pTWm5w?=
 =?utf-8?B?cEIzL2RsT01KZ012RDNJSUwyTmtIMk5sODlMZXQ2SlpPVm1OMzlaV0pkYWdu?=
 =?utf-8?B?eGl5MnVWRE1HTFJOaU9UM3ZId3ppcUxKRlBTWFZSQzBUMkp6bUNoemxrSG14?=
 =?utf-8?B?d0dEVEZiM2NBSDI3YTIyWW1CZkxKeDhveDNFUm9NNGpyTTk2TjRJbmZWQUZX?=
 =?utf-8?B?MUlRRnNDZk5BZXB3VWk3OGJtMlV6eFpzVzJta251cGVwZzZLUjZ5Qms4L2Ry?=
 =?utf-8?B?ZzE3YVhpcXR0MkF1OXNad2xSRXZYdll2d3dNUnRlT2pVNm0xbnBhY0R0cjI1?=
 =?utf-8?B?dzhEN0pqamFEZ1FOSVIwYjZTaU9jbGhBN2VYRUprMTVhTGRrZngwZTVGK1Jv?=
 =?utf-8?B?ZFZXOFVtUXhkZVBjSFNCWnM1Mm44VUpwZDZXUmxjS0E3dGNMUnFmVWxPV0g0?=
 =?utf-8?B?LzZER0RYWG1xMk8vV3JOZFJTdHZ5Y1RTK25TU20yNXQxOTEvR0MwZXZXdndH?=
 =?utf-8?B?bkpyTkNUd1NVd1NHNnY2cTBHcWlBOUpFTml6NXozY3BZUFA5a3VFMFB5aDRs?=
 =?utf-8?Q?ECUwqV709FlJJpMi7nWQLXqeI?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6d81a712-e97f-48e6-c2ad-08dd308500b4
X-MS-Exchange-CrossTenant-AuthSource: PH7PR12MB5685.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Jan 2025 08:09:56.0091
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 5/maxXa1MuommCAMxKNk0JW3jCwK7lPq0UvAt9+JFmGvVzDJyiZC2lEXtKt/WB2F
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR12MB8057
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 4FC433F622
X-Spamd-Bar: -----
X-Spamd-Result: default: False [-6.00 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	RBL_SENDERSCORE_REPUT_9(-1.00)[40.107.236.68:from];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[amd.com,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:40.107.0.0/16];
	R_DKIM_ALLOW(-0.20)[amd.com:s=selector1];
	MIME_GOOD(-0.10)[text/plain];
	ASN(0.00)[asn:8075, ipnet:40.104.0.0/14, country:US];
	RWL_MAILSPIKE_POSSIBLE(0.00)[40.107.236.68:from];
	RCPT_COUNT_TWELVE(0.00)[24];
	MIME_TRACE(0.00)[0:+];
	NEURAL_HAM(-0.00)[-1.000];
	TO_DN_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	RCVD_TLS_LAST(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	DKIM_TRACE(0.00)[amd.com:+]
Message-ID-Hash: 4GQNF66KHDZI7UJGMFLQG23BCZVFKWKU
X-Message-ID-Hash: 4GQNF66KHDZI7UJGMFLQG23BCZVFKWKU
X-MailFrom: Christian.Koenig@amd.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [RFC PATCH 01/12] dma-buf: Introduce dma_buf_get_pfn_unlocked() kAPI
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/4GQNF66KHDZI7UJGMFLQG23BCZVFKWKU/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

QW5zd2VyaW5nIG9uIG15IHJlcGx5IG9uY2UgbW9yZSBhcyBwdXJlIHRleHQgbWFpbC4NCg0KSSBs
b3ZlIEFNRHMgbWFpbCBzZXJ2ZXJzLg0KDQpDaGVlcnMsDQpDaHJpc3RpYW4uDQoNCkFtIDA5LjAx
LjI1IHVtIDA5OjA0IHNjaHJpZWIgQ2hyaXN0aWFuIEvDtm5pZzoNCj4gQW0gMDguMDEuMjUgdW0g
MjA6MjIgc2NocmllYiBYdSBZaWx1bjoNCj4+IE9uIFdlZCwgSmFuIDA4LCAyMDI1IGF0IDA3OjQ0
OjU0UE0gKzAxMDAsIFNpbW9uYSBWZXR0ZXIgd3JvdGU6DQo+Pj4gT24gV2VkLCBKYW4gMDgsIDIw
MjUgYXQgMTI6MjI6MjdQTSAtMDQwMCwgSmFzb24gR3VudGhvcnBlIHdyb3RlOg0KPj4+PiBPbiBX
ZWQsIEphbiAwOCwgMjAyNSBhdCAwNDoyNTo1NFBNICswMTAwLCBDaHJpc3RpYW4gS8O2bmlnIHdy
b3RlOg0KPj4+Pj4gQW0gMDguMDEuMjUgdW0gMTU6NTggc2NocmllYiBKYXNvbiBHdW50aG9ycGU6
DQo+Pj4+Pj4gSSBoYXZlIGltYWdpbmVkIGEgc3RhZ2VkIGFwcHJvYWNoIHdlcmUgRE1BQlVGIGdl
dHMgYSBuZXcgQVBJIHRoYXQNCj4+Pj4+PiB3b3JrcyB3aXRoIHRoZSBuZXcgRE1BIEFQSSB0byBk
byBpbXBvcnRlciBtYXBwaW5nIHdpdGggIlAyUCBzb3VyY2UNCj4+Pj4+PiBpbmZvcm1hdGlvbiIg
YW5kIGEgZ3JhZHVhbCBjb252ZXJzaW9uLg0KPj4+Pj4gVG8gbWFrZSBpdCBjbGVhciBhcyBtYWlu
dGFpbmVyIG9mIHRoYXQgc3Vic3lzdGVtIEkgd291bGQgcmVqZWN0IHN1Y2ggYSBzdGVwDQo+Pj4+
PiB3aXRoIGFsbCBJIGhhdmUuDQo+Pj4+IFRoaXMgaXMgdW5leHBlY3RlZCwgc28geW91IHdhbnQg
dG8ganVzdCBsZWF2ZSBkbWFidWYgYnJva2VuPyBEbyB5b3UNCj4+Pj4gaGF2ZSBhbnkgcGxhbiB0
byBmaXggaXQsIHRvIGZpeCB0aGUgbWlzdXNlIG9mIHRoZSBETUEgQVBJLCBhbmQgYWxsDQo+Pj4+
IHRoZSBwcm9ibGVtcyBJIGxpc3RlZCBiZWxvdz8gVGhpcyBpcyBhIGJpZyBkZWFsLCBpdCBpcyBj
YXVzaW5nIHJlYWwNCj4+Pj4gcHJvYmxlbXMgdG9kYXkuDQo+Pj4+DQo+Pj4+IElmIGl0IGdvaW5n
IHRvIGJlIGxpa2UgdGhpcyBJIHRoaW5rIHdlIHdpbGwgc3RvcCB0cnlpbmcgdG8gdXNlIGRtYWJ1
Zg0KPj4+PiBhbmQgZG8gc29tZXRoaW5nIHNpbXBsZXIgZm9yIHZmaW8va3ZtL2lvbW11ZmQgOigN
Cj4+PiBBcyB0aGUgZ2FsIHdobyBoZWxwIGVkaXQgdGhlIG9nIGRtYS1idWYgc3BlYyAxMyB5ZWFy
cyBhZ28sIEkgdGhpbmsgYWRkaW5nDQo+Pj4gcGZuIGlzbid0IGEgdGVycmlibGUgaWRlYS4gQnkg
ZGVzaWduLCBkbWEtYnVmIGlzIHRoZSAiZXZlcnl0aGluZyBpcw0KPj4+IG9wdGlvbmFsIiBpbnRl
cmZhY2UuIEFuZCBpbiB0aGUgYmVnaW5uaW5nLCBldmVuIGNvbnNpc3RlbnQgbG9ja2luZyB3YXMN
Cj4+PiBvcHRpb25hbCwgYnV0IHdlJ3ZlIG1hbmFnZWQgdG8gZml4IHRoYXQgYnkgbm93IDotLw0K
Pg0KPiBXZWxsIHlvdSB3ZXJlIGFsc28gdGhlIHBlcnNvbiB3aG8gbWFuZ2xlZCB0aGUgc3RydWN0
IHBhZ2UgcG9pbnRlcnMgaW4gDQo+IHRoZSBzY2F0dGVybGlzdCBiZWNhdXNlIHBlb3BsZSB3ZXJl
IGFidXNpbmcgdGhpcyBhbmQgZ2V0dGluZyBhIGJsb29keSANCj4gbm9zZSA6KQ0KPg0KPj4+IFdo
ZXJlIEkgZG8gYWdyZWUgd2l0aCBDaHJpc3RpYW4gaXMgdGhhdCBzdHVmZmluZyBwZm4gc3VwcG9y
dCBpbnRvIHRoZQ0KPj4+IGRtYV9idWZfYXR0YWNobWVudCBpbnRlcmZhY2VzIGZlZWxzIGEgYml0
IG11Y2ggd3JvbmcuDQo+PiBTbyBpdCBjb3VsZCBhIGRtYWJ1ZiBpbnRlcmZhY2UgbGlrZSBtbWFw
L3ZtYXAoKT8gSSB3YXMgYWxzbyB3b25kZXJpbmcNCj4+IGFib3V0IHRoYXQuIEJ1dCBmaW5hbGx5
IEkgc3RhcnQgdG8gdXNlIGRtYV9idWZfYXR0YWNobWVudCBpbnRlcmZhY2UNCj4+IGJlY2F1c2Ug
b2YgbGV2ZXJhZ2luZyBleGlzdGluZyBidWZmZXIgcGluIGFuZCBtb3ZlX25vdGlmeS4NCj4NCj4g
RXhhY3RseSB0aGF0J3MgdGhlIHBvaW50LCBzaGFyaW5nIHBmbiBkb2Vzbid0IHdvcmsgd2l0aCB0
aGUgcGluIGFuZCANCj4gbW92ZV9ub3RpZnkgaW50ZXJmYWNlcyBiZWNhdXNlIG9mIHRoZSBNTVUg
bm90aWZpZXIgYXBwcm9hY2ggU2ltYSANCj4gbWVudGlvbmVkLg0KPg0KPj4+Pj4gV2UgaGF2ZSBh
bHJlYWR5IGdvbmUgZG93biB0aGF0IHJvYWQgYW5kIGl0IGRpZG4ndCB3b3JrZWQgYXQgYWxsIGFu
ZA0KPj4+Pj4gd2FzIGEgcmVhbGx5IGJpZyBwYWluIHRvIHB1bGwgcGVvcGxlIGJhY2sgZnJvbSBp
dC4NCj4+Pj4gTm9ib2R5IGhhcyByZWFsbHkgc2VyaW91c2x5IHRyaWVkIHRvIGltcHJvdmUgdGhl
IERNQSBBUEkgYmVmb3JlLCBzbyBJDQo+Pj4+IGRvbid0IHRoaW5rIHRoaXMgaXMgdHJ1ZSBhdCBh
bGwuDQo+Pj4gQXNpZGUsIEkgcmVhbGx5IGhvcGUgdGhpcyBmaW5hbGx5IGhhcHBlbnMhDQo+DQo+
IFNvcnJ5IG15IGZhdWx0LiBJIHdhcyBub3QgdGFsa2luZyBhYm91dCB0aGUgRE1BIEFQSSwgYnV0
IHJhdGhlciB0aGF0IA0KPiBwZW9wbGUgdHJpZWQgdG8gbG9vayBiZWhpbmQgdGhlIGN1cnRhaW4g
b2YgRE1BLWJ1ZiBiYWNraW5nIHN0b3Jlcy4NCj4NCj4gSW4gb3RoZXIgd29yZHMgYWxsIHRoZSBm
dW4gd2UgaGFkIHdpdGggc2NhdHRlcmxpc3RzIGFuZCB0aGF0IHBlb3BsZSANCj4gdHJ5IHRvIG1v
ZGlmeSB0aGUgc3RydWN0IHBhZ2VzIGluc2lkZSBvZiB0aGVtLg0KPg0KPiBJbXByb3ZpbmcgdGhl
IERNQSBBUEkgaXMgc29tZXRoaW5nIEkgcmVhbGx5IHJlYWxseSBob3BlIGZvciBhcyB3ZWxsLg0K
Pg0KPj4+Pj4+IDMpIEltcG9ydGluZyBkZXZpY2VzIG5lZWQgdG8ga25vdyBpZiB0aGV5IGFyZSB3
b3JraW5nIHdpdGggUENJIFAyUA0KPj4+Pj4+IGFkZHJlc3NlcyBkdXJpbmcgbWFwcGluZyBiZWNh
dXNlIHRoZXkgbmVlZCB0byBkbyB0aGluZ3MgbGlrZSB0dXJuIG9uDQo+Pj4+Pj4gQVRTIG9uIHRo
ZWlyIERNQS4gQXMgZm9yIG11bHRpLXBhdGggd2UgaGF2ZSB0aGUgc2FtZSBoYWNrcyBpbnNpZGUg
bWx4NQ0KPj4+Pj4+IHRvZGF5IHRoYXQgYXNzdW1lIERNQUJVRnMgYXJlIGFsd2F5cyBQMlAgYmVj
YXVzZSB3ZSBjYW5ub3QgZGV0ZXJtaW5lDQo+Pj4+Pj4gaWYgdGhpbmdzIGFyZSBQMlAgb3Igbm90
IGFmdGVyIGJlaW5nIERNQSBtYXBwZWQuDQo+Pj4+PiBXaHkgd291bGQgeW91IG5lZWQgQVRTIG9u
IFBDSSBQMlAgYW5kIG5vdCBmb3Igc3lzdGVtIG1lbW9yeSBhY2Nlc3Nlcz8NCj4+Pj4gQVRTIGhh
cyBhIHNpZ25pZmljYW50IHBlcmZvcm1hbmNlIGNvc3QuIEl0IGlzIG1hbmRhdG9yeSBmb3IgUENJ
IFAyUCwNCj4+Pj4gYnV0IGlkZWFsbHkgc2hvdWxkIGJlIGF2b2lkZWQgZm9yIENQVSBtZW1vcnku
DQo+Pj4gSHVoLCBJIGRpZG4ndCBrbm93IHRoYXQuIEFuZCB5ZWFoIGtpbmRhIG1lYW5zIHdlJ3Zl
IGJ1dGNoZXJlZCB0aGUgcGNpIHAycA0KPj4+IHN0dWZmIGEgYml0IEkgZ3Vlc3MgLi4uDQo+DQo+
IEh1aT8gV2h5IHNob3VsZCBBVFMgYmUgbWFuZGF0b3J5IGZvciBQQ0kgUDJQPw0KPg0KPiBXZSBo
YXZlIHRvbnMgb2YgcHJvZHVjdGlvbiBzeXN0ZW1zIHVzaW5nIFBDSSBQMlAgd2l0aG91dCBBVFMu
IEFuZCBpdCdzIA0KPiB0aGUgZmlyc3QgdGltZSBJIGhlYXIgdGhhdC4NCj4NCj4+Pj4+PiA1KSBp
b21tdWZkIGFuZCBrdm0gYXJlIGJvdGggdXNpbmcgQ1BVIGFkZHJlc3NlcyB3aXRob3V0IERNQS4g
Tm8NCj4+Pj4+PiBleHBvcnRlciBtYXBwaW5nIGlzIHBvc3NpYmxlDQo+Pj4+PiBXZSBoYXZlIGN1
c3RvbWVycyB1c2luZyBib3RoIEtWTSBhbmQgWEVOIHdpdGggRE1BLWJ1Ziwgc28gSSBjYW4gY2xl
YXJseQ0KPj4+Pj4gY29uZmlybSB0aGF0IHRoaXMgaXNuJ3QgdHJ1ZS4NCj4+Pj4gVG9kYXkgdGhl
eSBhcmUgbW1hcGluZyB0aGUgZG1hLWJ1ZiBpbnRvIGEgVk1BIGFuZCB0aGVuIHVzaW5nIEtWTSdz
DQo+Pj4+IGZvbGxvd19wZm4oKSBmbG93IHRvIGV4dHJhY3QgdGhlIENQVSBwZm4gZnJvbSB0aGUg
UFRFLiBBbnkgbW1hcGFibGUNCj4+Pj4gZG1hLWJ1ZiBtdXN0IGhhdmUgYSBDUFUgUEZOLg0KPj4+
Pg0KPj4+PiBIZXJlIFh1IGltcGxlbWVudHMgYmFzaWNhbGx5IHRoZSBzYW1lIHBhdGgsIGV4Y2Vw
dCB3aXRob3V0IHRoZSBWTUENCj4+Pj4gaW5kaXJlY3Rpb24sIGFuZCBpdCBzdWRkZW5seSBub3Qg
T0s/IElsbG9naWNhbC4NCj4+PiBTbyB0aGUgYmlnIGRpZmZlcmVuY2UgaXMgdGhhdCBmb3IgZm9s
bG93X3BmbigpIHlvdSBuZWVkIG1tdV9ub3RpZmllciBzaW5jZQ0KPj4+IHRoZSBtbWFwIG1pZ2h0
IG1vdmUgYXJvdW5kLCB3aGVyZWFzIHdpdGggcGZuIHNtYXNoZWQgaW50bw0KPj4+IGRtYV9idWZf
YXR0YWNobWVudCB5b3UgbmVlZCBkbWFfcmVzdl9sb2NrIHJ1bGVzLCBhbmQgdGhlIG1vdmVfbm90
aWZ5DQo+Pj4gY2FsbGJhY2sgaWYgeW91IGdvIGR5bmFtaWMuDQo+Pj4NCj4+PiBTbyBJIGd1ZXNz
IG15IGZpcnN0IHF1ZXN0aW9uIGlzLCB3aGljaCBsb2NraW5nIHJ1bGVzIGRvIHlvdSB3YW50IGhl
cmUgZm9yDQo+Pj4gcGZuIGltcG9ydGVycz8NCj4+IGZvbGxvd19wZm4oKSBpcyB1bndhbnRlZCBm
b3IgcHJpdmF0ZSBNTUlPLCBzbyBkbWFfcmVzdl9sb2NrLg0KPg0KPiBBcyBTaW1hIGV4cGxhaW5l
ZCB5b3UgZWl0aGVyIGhhdmUgZm9sbG93X3BmbigpIGFuZCBtbXVfbm90aWZpZXIgb3IgeW91IA0K
PiBoYXZlIERNQSBhZGRyZXNzZXMgYW5kIGRtYV9yZXN2IGxvY2sgLyBkbWFfZmVuY2UuDQo+DQo+
IEp1c3QgZ2l2aW5nIG91dCBQRk5zIHdpdGhvdXQgc29tZSBsaWZldGltZSBhc3NvY2lhdGVkIHdp
dGggdGhlbSBpcyBvbmUgDQo+IG9mIHRoZSBtYWpvciBwcm9ibGVtcyB3ZSBmYWNlZCBiZWZvcmUg
YW5kIHJlYWxseSBub3Qgc29tZXRoaW5nIHlvdSBjYW4gZG8uDQo+DQo+Pj4gSWYgbW11IG5vdGlm
aWVycyBpcyBmaW5lLCB0aGVuIEkgdGhpbmsgdGhlIGN1cnJlbnQgYXBwcm9hY2ggb2YgZm9sbG93
X3Bmbg0KPj4+IHNob3VsZCBiZSBvay4gQnV0IGlmIHlvdSBpbnN0ZWFkIGRtYV9yZXN2X2xvY2sg
cnVsZXMgKG9yIHRoZSBjcHUgbW1hcA0KPj4+IHNvbWVob3cgaXMgYW4gaXNzdWUgaXRzZWxmKSwg
dGhlbiBJIHRoaW5rIHRoZSBjbGVhbiBkZXNpZ24gaXMgY3JlYXRlIGEgbmV3DQo+PiBjcHUgbW1h
cCgpIGlzIGFuIGlzc3VlLCB0aGlzIHNlcmllcyBpcyBhaW1lZCB0byBlbGltaW5hdGUgdXNlcnNw
YWNlDQo+PiBtYXBwaW5nIGZvciBwcml2YXRlIE1NSU8gcmVzb3VyY2VzLg0KPg0KPiBXaHk/DQo+
DQo+Pj4gc2VwYXJhdGUgYWNjZXNzIG1lY2hhbmlzbSBqdXN0IGZvciB0aGF0LiBJdCB3b3VsZCBi
ZSB0aGUgNXRoIG9yIHNvIChrZXJuZWwNCj4+PiB2bWFwLCB1c2Vyc3BhY2UgbW1hcCwgZG1hX2J1
Zl9hdHRhY2ggYW5kIGRyaXZlciBwcml2YXRlIHN0dWZmIGxpa2UNCj4+PiB2aXJ0aW9fZG1hX2J1
Zi5jIHdoZXJlIHlvdSBhY2Nlc3MgeW91ciBidWZmZXIgd2l0aCBhIHV1aWQpLCBzbyByZWFsbHkg
bm90DQo+Pj4gYSBiaWcgZGVhbC4NCj4+IE9LLCB3aWxsIHRoaW5rIG1vcmUgYWJvdXQgdGhhdC4N
Cj4NCj4gUGxlYXNlIG5vdGUgdGhhdCB3ZSBoYXZlIGZvbGxvd19wZm4oKSArIG1tdV9ub3RpZmll
ciB3b3JraW5nIGZvciANCj4gS1ZNL1hFTiB3aXRoIE1NSU8gbWFwcGluZ3MgYW5kIFAyUC4gQW5k
IHRoYXQgcmVxdWlyZWQgZXhhY3RseSB6ZXJvIA0KPiBETUEtYnVmIGNoYW5nZXMgOikNCj4NCj4g
SSBkb24ndCBmdWxseSB1bmRlcnN0YW5kIHlvdXIgdXNlIGNhc2UsIGJ1dCBJIHRoaW5rIGl0J3Mg
cXVpdGUgbGlrZWx5IA0KPiB0aGF0IHdlIGFscmVhZHkgaGF2ZSB0aGF0IHdvcmtpbmcuDQo+DQo+
IFJlZ2FyZHMsDQo+IENocmlzdGlhbi4NCj4NCj4+IFRoYW5rcywNCj4+IFlpbHVuDQo+Pg0KPj4+
IEFuZCBmb3Igbm9uLWNvbnRyaXZlZCBleHBvcnRlcnMgd2UgbWlnaHQgYmUgYWJsZSB0byBpbXBs
ZW1lbnQgdGhlIG90aGVyDQo+Pj4gYWNjZXNzIG1ldGhvZHMgaW4gdGVybXMgb2YgdGhlIHBmbiBt
ZXRob2QgZ2VuZXJpY2FsbHksIHNvIHRoaXMgd291bGRuJ3QNCj4+PiBldmVuIGJlIGEgdGVycmli
bGUgbWFpbnRlbmFuY2UgYnVyZGVuIGdvaW5nIGZvcndhcmQuIEFuZCBtZWFud2hpbGUgYWxsIHRo
ZQ0KPj4+IGNvbnRyaXZlZCBleHBvcnRlcnMganVzdCBrZWVwIHdvcmtpbmcgYXMtaXMuDQo+Pj4N
Cj4+PiBUaGUgb3RoZXIgcGFydCBpcyB0aGF0IGNwdSBtbWFwIGlzIG9wdGlvbmFsLCBhbmQgdGhl
cmUncyBwbGVudHkgb2Ygc3RyYW5nZQ0KPj4+IGV4cG9ydGVycyB3aG8gZG9uJ3QgaW1wbGVtZW50
LiBCdXQgeW91IGNhbiBkbWEgbWFwIHRoZSBhdHRhY2htZW50IGludG8NCj4+PiBwbGVudHkgZGV2
aWNlcy4gVGhpcyB0ZW5kcyB0byBtb3N0bHkgYmUgYSB0aGluZyBvbiBTb0MgZGV2aWNlcyB3aXRo
IHNvbWUNCj4+PiB2ZXJ5IGZ1bmt5IG1lbW9yeS4gQnV0IEkgZ3Vlc3MgeW91IGRvbid0IGNhcmUg
YWJvdXQgdGhlc2UgdXNlLWNhc2UsIHNvDQo+Pj4gc2hvdWxkIGJlIG9rLg0KPj4+DQo+Pj4gSSBj
b3VsZG4ndCBjb21lIHVwIHdpdGggYSBnb29kIG5hbWUgZm9yIHRoZXNlIHBmbiB1c2VycywgbWF5
YmUNCj4+PiBkbWFfYnVmX3Bmbl9hdHRhY2htZW50PyBUaGlzIGRvZXMgX25vdF8gaGF2ZSBhIHN0
cnVjdCBkZXZpY2UsIGJ1dCBtYXliZQ0KPj4+IHNvbWUgb2YgdGhlc2UgbmV3IHAycCBzb3VyY2Ug
c3BlY2lmaWVycyAob3IgYSBsaXN0IG9mIHRob3NlIHdoaWNoIGFyZQ0KPj4+IGFsbG93ZWQsIG5v
IGlkZWEgaG93IHRoaXMgd291bGQgbmVlZCB0byBmaXQgaW50byB0aGUgbmV3IGRtYSBhcGkpLg0K
Pj4+DQo+Pj4gQ2hlZXJzLCBTaW1hDQo+Pj4gLS0gDQo+Pj4gU2ltb25hIFZldHRlcg0KPj4+IFNv
ZnR3YXJlIEVuZ2luZWVyLCBJbnRlbCBDb3Jwb3JhdGlvbg0KPj4+IGh0dHA6Ly9ibG9nLmZmd2xs
LmNoDQo+DQoNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJv
Lm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVA
bGlzdHMubGluYXJvLm9yZwo=
