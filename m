Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id CAC02BDA7D9
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 14 Oct 2025 17:52:16 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 8E87545DF0
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 14 Oct 2025 15:52:15 +0000 (UTC)
Received: from PH8PR06CU001.outbound.protection.outlook.com (mail-westus3azon11012038.outbound.protection.outlook.com [40.107.209.38])
	by lists.linaro.org (Postfix) with ESMTPS id 5C4034444F
	for <linaro-mm-sig@lists.linaro.org>; Tue, 14 Oct 2025 15:52:12 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=amd.com header.s=selector1 header.b=URoSFL5i;
	dmarc=pass (policy=quarantine) header.from=amd.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1");
	spf=pass (lists.linaro.org: domain of Christian.Koenig@amd.com designates 40.107.209.38 as permitted sender) smtp.mailfrom=Christian.Koenig@amd.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=mxCMl4dJtmceDlv0dp8BGKJVImTvI1Wg6ASevW1fSake3DgIA5TtuvwBie9/pcpMw4PadDyipeGDUEfBRcugEhT9pV/u5mAR1/1M1sncx6D/pvHgkvpohj5276daPrxobsXg8b7BzdG7mSJeO/9d/8k2qwgUfTsCzOrGWJyhDIkclKdNqs81Bvg/w/G+8HuFVlYoAdwJ7LSI7r3u7SAJwo+Gq7ot+rzWMWmupPAVV8maKx7BRQ5yIE+BHeTuI0bEKJq9dzq4p4CSzAk1RxP39fgPZHT6laB4/9SHp4BjyMEKbKEGryqZONOwNHgsI4olt0D++raumKsVK1fdYzZmQQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Wb87C8P1aFLeHS9KhL4fY5ErnnSuAwwUfoUF+W4y6Sk=;
 b=Uq5JXDWyvXPlzz3x5yq9kO6PKDNGk/uRITuA2HSqZkA8vfoQS2UWFGJBGLAE0IzA0s1iCD0h9+t24oJAVks7mud8ym0f+X7PeSWx7RZBBZES5JgNic3RE6wihAnPfb+pTQx1N4jFN8N5Zc/HC7nZ/kIcL+MOtY6ruL7jrX9bovHSMF3RGWLIcE9xZj+WQZZjz14kOo6izWUuySrZWscgDaH41uRXchSAnw3d8AitoDFxB0JR/2UMC7hMmf0yvhhSzIoV3/ARyMICuotc1m99ZH89IYm7r/XAFIvNxTxTjgm+to8cCRarudYF8qrI3RNohZzDAnr0uR+DEeShFgDPpw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Wb87C8P1aFLeHS9KhL4fY5ErnnSuAwwUfoUF+W4y6Sk=;
 b=URoSFL5idowJN0PmjfclTB5sf2Xo/+vRyKdEpYIIkzn+7M2QXuFE7+0bXlVZseACqKqwHus6cxuqyaDs5N85aT74Xh5Wv3DbXSz49M0ZXwlb34yHAyf7bcWP9IJi/4kReUZsaSLIt9+Uf+PbZmN6uyv3o9FSq5LqMKjpb+wMYLU=
Received: from PH7PR12MB5685.namprd12.prod.outlook.com (2603:10b6:510:13c::22)
 by MW6PR12MB9019.namprd12.prod.outlook.com (2603:10b6:303:23f::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9228.10; Tue, 14 Oct
 2025 15:52:08 +0000
Received: from PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::46fb:96f2:7667:7ca5]) by PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::46fb:96f2:7667:7ca5%4]) with mapi id 15.20.9203.009; Tue, 14 Oct 2025
 15:52:08 +0000
Message-ID: <97da9924-9489-4d30-a858-8ee5c87bc031@amd.com>
Date: Tue, 14 Oct 2025 17:52:00 +0200
User-Agent: Mozilla Thunderbird
To: Petr Tesarik <ptesarik@suse.com>
References: <20251014083230.1181072-1-zhaoyang.huang@unisoc.com>
 <20251014083230.1181072-3-zhaoyang.huang@unisoc.com>
 <87953097-a105-4775-88a5-9b3a676ff139@amd.com>
 <CAGWkznGN7W-txq_G+xpZ6DtH_1DNorYc=CxqUjebo7qfB4Sxsw@mail.gmail.com>
 <ecba7133-699c-4f3e-927c-bad5bd4c36a3@amd.com>
 <20251014171003.57bbfd63@mordecai.tesarici.cz>
Content-Language: en-US
From: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
In-Reply-To: <20251014171003.57bbfd63@mordecai.tesarici.cz>
X-ClientProxiedBy: FR2P281CA0051.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:92::8) To PH7PR12MB5685.namprd12.prod.outlook.com
 (2603:10b6:510:13c::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR12MB5685:EE_|MW6PR12MB9019:EE_
X-MS-Office365-Filtering-Correlation-Id: be49e4d0-fd5a-4a5b-afe9-08de0b39a144
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|7416014|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: 
	=?utf-8?B?ai9DT04xL3F4SDNIK0VuN1lRbnYyNlRyOFhXTUdIUzI1SGRLODE1UkpPWVA0?=
 =?utf-8?B?aGRyMHlJV2NucDRoMlcwQXRxUmtiR1N5bDFqL0VCbTYxNFpGNFpzOVQvemdm?=
 =?utf-8?B?SWhaUmhXRlVsUjBjQklCRjdsb1c3U1R2UXlTOHp4ek8vSldKaWpSbUluamNx?=
 =?utf-8?B?TWxHN0V2ZGZSUTF1SGhZc2pTd1llMXlBL04xeWRSdEdlYUZXNmxzMm9FTUgw?=
 =?utf-8?B?U3V1VmFWWTZjZnd4VUZTeUpWUGZQNWpmNk9jRzNqTFg5MHFOdVFHSEphTnZ1?=
 =?utf-8?B?YVBQUUJLNFg4U0lPRTdyVUZXSEpQZU9uMlY5Q2VSQWp1WXZwcDNBcG9SOGY0?=
 =?utf-8?B?eWgwbmptaXE0UERoU2xOMlFLdkUyS25US051UUJmZFZMZ3hndEYyUS9kMGhL?=
 =?utf-8?B?dHJuamdQdjdGYy9OUlNYM2tZTm1HSjR3a2JxS01Dc3I1YUNpWm1nYWFabmRJ?=
 =?utf-8?B?N2NsbHM0bzdUeVZFdm5BYnRXMWdPdnNQZUVaclBmamp2cXBFaHpGUXZmdU5k?=
 =?utf-8?B?cXBQbVBXSGlJaXpidHVvL0g2WkVCeVJEN3NaS004OTFWNGR2VE45Mjd4R1VV?=
 =?utf-8?B?RnQ2VkhwV1BYd1Mvb3d3WUd1Y05BVzYzMmpRdTJQL2E3MHZMOGNsV2VMVHpl?=
 =?utf-8?B?K1RiTG1xMHNkVFZ4S0RqR1Nzdjk4Ync5Q0o3NEI1TktjLzBFckxYdkdtYU1X?=
 =?utf-8?B?TjZzdVNRbHFWYzhpR05LWE1BQTQxNTI0cndRenBxQUNWQjZQK05RL0Y5aXNW?=
 =?utf-8?B?UDRaR1czRDhXT1RER2JxUlNXaVhsdVNWdUZrREJEZ3JLMmlhOE94ZzMrN2hq?=
 =?utf-8?B?cytoNnlDRTBhanJwWDlWWkl4bEhwd3hPK3cvY1VzZUIzTHZ6VnNJR0lvbmR0?=
 =?utf-8?B?M2s2cmFaVm1ZMXhRTFZFVkNrSHhmSS80bGI3Z0JDcFBITUNFVSttQmNIMW9O?=
 =?utf-8?B?eG1FQTUzaFB2c3VyQ2IzNVZ1WXNrSVpPck1wV25LNysybkVSdXNPU3pKUUJz?=
 =?utf-8?B?d1Bab1NXM09PN3hTcUhlT1MxNEhlQ0NyV04zOUdSeWNBSVk0SEJxNVhBTXp6?=
 =?utf-8?B?aitRN3lLbC9kM1hibDNnRDBNQXIrSERCN0FtVGQ5VE1udlFEa3pXK3BFU2Nl?=
 =?utf-8?B?R2ZlU1ZlUkZTUVNxa1pDNzJOaGEyc2pBWTQremtCN2h1TVoyQ2YrTmtZL3Vx?=
 =?utf-8?B?emxaU3ZsWUt0cFFXa2oxR2lZUU84U0FTZ0oxT2dZcFIwOUF2UzlaRHpTQ2Iz?=
 =?utf-8?B?SUpTUS9uSEQ4TFBLc1dzRjJkSEJ6RjhESlJpTWs3TEk4bWcwZkhwT3c2alg3?=
 =?utf-8?B?MnpLaVJVMys4RGUyKzFMWlhjZGJqN2pFc05wQWVsWEppNWw2R3M4YllrREdZ?=
 =?utf-8?B?ZWxtcjNycVVEREVXR2ROMVRhaDZrdEh6VXMyUnp4VVhhb1ZPaWVjOVpTUDNt?=
 =?utf-8?B?UFBMTnRGUFdRWVkva1M5eVBpYjhZNDl6Q2lDY2ExME4yRW9qMno2MTF6ZE5y?=
 =?utf-8?B?NmY5dkdsQThjYWViOWdiNWV0a3JvcDFaUzA5ZjB4VE05VUJqbVluRWFiRDJp?=
 =?utf-8?B?TVQvb1lBb0libjVZdDhpTzAvKzJUZVdXVTlWQk1hWldSNHZNRVB5RGxhT284?=
 =?utf-8?B?UTJWdzE0RmdjQ0VEN3NILzFKSHpsNG0zd3lEYjBkZkNUVXdYNnAvc3JObkxi?=
 =?utf-8?B?SDl6M3FmcFJidmF4SzRCRmg5M1NYSWptc2tldjdSemlodDN5aXUvY3hlL3BV?=
 =?utf-8?B?dnpOWTA4TXVCSkJUOWFHcjg1c1hMVTQvdWJFWW5UUDArS3hST2VHYnFUZzc2?=
 =?utf-8?B?bGQrN0RFNGRyUWI5ZGpack1pZysxeFo1OERjVnAwcVI0YnJlVHFsS0srK1hy?=
 =?utf-8?B?TjVGM0pnMnhkNEYrQzd4TTdoeEEzVjNlVUJoTm5jbG9rckZNVmhGUDhHNVVU?=
 =?utf-8?Q?8C4HhaHleADsSmRj15rHIjSZWXEJSHAJ?=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH7PR12MB5685.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(7416014)(376014)(366016)(1800799024);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?c3V6QWFFeXBQbDBWOGlwRDkzemhCbFpEK25xUzNoeVByVUVVS0s0bGtPY0pP?=
 =?utf-8?B?UUlWUVg1RmE0K1VCZnZsQUtObExQa04xc1M4T3FoVHhJakw2OGhJWXZGTmVG?=
 =?utf-8?B?WkZNU0g0aXJtbFNyeUl6ZnAvVGNDQ25ROXkwNlhNYkpLNVNFWTAwcXU4M2d0?=
 =?utf-8?B?V0k3Kyt6dTdacDRsbXVBNTZ5aWFwb3hMUmhOcVVoNTlCTmIyOEluRjVGb0hC?=
 =?utf-8?B?SmVwVk0yS0ZRbEdSTXcxaFYrODdxd1dSUS9FWG9TVVZyWm41L01wbm9KdFlH?=
 =?utf-8?B?WkpFRkFnY0NJZ1dDNWZBcFpJei95Qk1Bdkl6Y0dnMEpKRmRRWUk1bFVIUitG?=
 =?utf-8?B?c3pQYWFrb2Rzcy8vRkJydFNQdTJjSE1Xcmlub2hWQ25DbmlPdTM2bWdWeFla?=
 =?utf-8?B?T2V3MDIvTmd6YmJNQnluYk50amp1TGt4dUp1TlFZUG94WVBrMkg0bVVLMll3?=
 =?utf-8?B?YThMSTRSRXJ1bkQxWHA3Q2hJMXRGMEk5RUJZK3hEN2xYcEFqTnEralVWcTZT?=
 =?utf-8?B?TDQ1Q3V2QzhzVkhqWEtwclNnZWhTVGNpQXA5SkQ2NnpsdmRaQ3ZmUWJyelB4?=
 =?utf-8?B?amlENlhJdXpPalBRdndWZUV4aldEbXlmd3RKYmtYTjNhaTZTMzc5U1NDQWlh?=
 =?utf-8?B?anplSjBzVlJ2OXdUS2FFdVpscFl5Y0NhQkpXcHJGV1d6dnhOT3k4Zkd4a2hP?=
 =?utf-8?B?TEt0VkwvR3pnSFh3cmJaV1F6bWI3ajByRnlvbSt2YUd4ZDlrejJYc3JYenI0?=
 =?utf-8?B?WGk4azBTTE5MeWtXcm84b2gzTlF2OG5pWCtKWjkrYUU4ME5SeVhkYkNJRDRk?=
 =?utf-8?B?cjVVaEpMdWFVbzdxS3o3V1hKUzVlcEVlMS9xMGxONytLZkdCZlcyd0M0ZmRC?=
 =?utf-8?B?YnlETnFoaDFMdFVJUXAwRnZOQjdzdVR5am84WnNzNDBmMjVNbFZrMUJQK1Nj?=
 =?utf-8?B?RFJwYklLVDF5UFdYSGNHTWtRcDFHSjhQaFJYdndDM1pvcUtQS3kvbkNVRzQ2?=
 =?utf-8?B?Ni92TnJLdjYrMFZ2MDJJeHAyNllWWUJ2dCtTSXNlcTR5K056MzlJZ0lWNGtD?=
 =?utf-8?B?Nm9jdGMwZlBUSXhrRDBFOUh4NFZqNU1laU53UTU3dVV4K2ZaVDBTanBlRzVN?=
 =?utf-8?B?RkNSNGdUL1c5RE5HazhpMFhGMzBrMVFicHlnY0VJM3dtSGQ4dXh3T0FEU1BD?=
 =?utf-8?B?UFlCWVNFQk0yZHFNNFVMY0hONXI4VlA2Q0VqRDMzVGFERzhva1ludThMV1pJ?=
 =?utf-8?B?cG1tTElHek94V1I5S2lLZDIvVDJyZU9wMGhWZ2cydHMrUjE4V25ZWGFxWUxu?=
 =?utf-8?B?OWtqVHFrNHRodjl3N3BHQ09Ha0N6eHNPTG0yVTFJdXFWdy90T2d6cFQ4Mkpq?=
 =?utf-8?B?WCtpWkNmd01KbFlURlpvc2RWQUtzaEkwZ2tqTk12VFZqd21VQjl0MGZFSlZl?=
 =?utf-8?B?OENJakUrUVBFS1BBSFd5UUFIN0wvY3pXSndEWndMMStIdlhLVStZTkdVbGNk?=
 =?utf-8?B?T3ZlM21kT3Nacks0ak5RM1FkQzJoNHFsOVZYTm1zMHhEMlBhWTdHekFzU09t?=
 =?utf-8?B?MGc4eUttRW9wS3JBMjdzUGp1cVEyanJFZDVVSXN1amQ0ZURyY0t5c3FmdXF3?=
 =?utf-8?B?Sk9HR1dMcDFZbElIN0RDcGxQaFdSM29KWTJPeVJBM3BiT0ZUNTV5dzBkRlNT?=
 =?utf-8?B?MU5wWnorZUd0b2tmeTdwZ2NZSnVMZHUyRHc1MEVZNXE0S2dycWFlUndzMWtW?=
 =?utf-8?B?Q0hTNXh0MFkySDdkODFGa0dsdHVrUkFwTDBYMm9RRG9wVmNSdW5CZkNZODdN?=
 =?utf-8?B?d0lXU0R3WHVwTks0WmZFS2ZzbkljbFo4Tm1zdlVUdEgyRHNxSVc5WUpicTBF?=
 =?utf-8?B?RUI1c0xDdzZjOVFkSHFta1V6Yno4cjkyVUVXY2xLRHdrM1NXMDE1S3RtNnVt?=
 =?utf-8?B?VE1Ta3FYU3ZXZmFKOGNjeDg1VXlSWjNTd1RCVm1NYndvVjVFRjQ2U21EVkZh?=
 =?utf-8?B?eDh4dWI2YU9BdS8zbTd2M3hWeXZBR3p6Vmp4ckppNzlvWk52N2NkN3Zlancy?=
 =?utf-8?B?MFJuOEpkT1c1UUlZQ21EazRSbmZVWE5yWW1Mc3h3ZXJ6MmFJdWZMWTh5bzlz?=
 =?utf-8?Q?O6p/3p8CtZa4dPhrqLlDljly9?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: be49e4d0-fd5a-4a5b-afe9-08de0b39a144
X-MS-Exchange-CrossTenant-AuthSource: PH7PR12MB5685.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Oct 2025 15:52:08.3275
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: VGUgW0vN2DC8Ehd4L/gD8Zj7d6fVfyKPmIQyTQsrGbHYMaCc1GIvyawhUYNr1lW9
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW6PR12MB9019
X-Rspamd-Queue-Id: 5C4034444F
X-Spamd-Bar: -----
X-Spamd-Result: default: False [-5.00 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[amd.com,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:40.107.0.0/16];
	R_DKIM_ALLOW(-0.20)[amd.com:s=selector1];
	MIME_GOOD(-0.10)[text/plain];
	DNSWL_BLOCKED(0.00)[2603:10b6:510:13c::22:received];
	FREEMAIL_CC(0.00)[gmail.com,unisoc.com,linux-foundation.org,redhat.com,infradead.org,techsingularity.net,suse.cz,linaro.org,collabora.com,arm.com,google.com,vger.kernel.org,lists.freedesktop.org,lists.linaro.org,kvack.org];
	FROM_HAS_DN(0.00)[];
	RWL_MAILSPIKE_POSSIBLE(0.00)[40.107.209.38:from];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[19];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_TLS_LAST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	URIBL_BLOCKED(0.00)[mail-westus3azon11012038.outbound.protection.outlook.com:rdns,unisoc.com:email,amd.com:email,amd.com:mid,amd.com:dkim];
	RCVD_IN_DNSWL_NONE(0.00)[40.107.209.38:from];
	RCVD_COUNT_TWO(0.00)[2];
	DKIM_TRACE(0.00)[amd.com:+]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: L3PGIGUAU33DX6ZRE53HR64H6O3V56MF
X-Message-ID-Hash: L3PGIGUAU33DX6ZRE53HR64H6O3V56MF
X-MailFrom: Christian.Koenig@amd.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Zhaoyang Huang <huangzhaoyang@gmail.com>, "zhaoyang.huang" <zhaoyang.huang@unisoc.com>, Andrew Morton <akpm@linux-foundation.org>, David Hildenbrand <david@redhat.com>, Matthew Wilcox <willy@infradead.org>, Mel Gorman <mgorman@techsingularity.net>, Vlastimil Babka <vbabka@suse.cz>, Sumit Semwal <sumit.semwal@linaro.org>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>, "T . J . Mercier" <tjmercier@google.com>, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-mm@kvack.org, linux-kernel@vger.kernel.org, steve.kang@unisoc.com
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 2/2] driver: dma-buf: use alloc_pages_bulk_list for order-0 allocation
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/L3PGIGUAU33DX6ZRE53HR64H6O3V56MF/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gMTQuMTAuMjUgMTc6MTAsIFBldHIgVGVzYXJpayB3cm90ZToNCj4gT24gVHVlLCAxNCBPY3Qg
MjAyNSAxNTowNDoxNCArMDIwMA0KPiBDaHJpc3RpYW4gS8O2bmlnIDxjaHJpc3RpYW4ua29lbmln
QGFtZC5jb20+IHdyb3RlOg0KPiANCj4+IE9uIDE0LjEwLjI1IDE0OjQ0LCBaaGFveWFuZyBIdWFu
ZyB3cm90ZToNCj4+PiBPbiBUdWUsIE9jdCAxNCwgMjAyNSBhdCA3OjU54oCvUE0gQ2hyaXN0aWFu
IEvDtm5pZw0KPj4+IDxjaHJpc3RpYW4ua29lbmlnQGFtZC5jb20+IHdyb3RlOiAgDQo+Pj4+DQo+
Pj4+IE9uIDE0LjEwLjI1IDEwOjMyLCB6aGFveWFuZy5odWFuZyB3cm90ZTogIA0KPj4+Pj4gRnJv
bTogWmhhb3lhbmcgSHVhbmcgPHpoYW95YW5nLmh1YW5nQHVuaXNvYy5jb20+DQo+Pj4+Pg0KPj4+
Pj4gVGhlIHNpemUgb2Ygb25jZSBkbWEtYnVmIGFsbG9jYXRpb24gY291bGQgYmUgZG96ZW5zIE1C
IG9yIG11Y2ggbW9yZQ0KPj4+Pj4gd2hpY2ggaW50cm9kdWNlIGEgbG9vcCBvZiBhbGxvY2F0aW5n
IHNldmVyYWwgdGhvdXNhbmRzIG9mIG9yZGVyLTAgcGFnZXMuDQo+Pj4+PiBGdXJ0aGVybW9yZSwg
dGhlIGNvbmN1cnJlbnQgYWxsb2NhdGlvbiBjb3VsZCBoYXZlIGRtYS1idWYgYWxsb2NhdGlvbiBl
bnRlcg0KPj4+Pj4gZGlyZWN0LXJlY2xhaW0gZHVyaW5nIHRoZSBsb29wLiBUaGlzIGNvbW1pdCB3
b3VsZCBsaWtlIHRvIGVsaW1pbmF0ZSB0aGUNCj4+Pj4+IGFib3ZlIHR3byBhZmZlY3Rpb25zIGJ5
IGludHJvZHVjaW5nIGFsbG9jX3BhZ2VzX2J1bGtfbGlzdCBpbiBkbWEtYnVmJ3MNCj4+Pj4+IG9y
ZGVyLTAgYWxsb2NhdGlvbi4gVGhpcyBwYXRjaCBpcyBwcm92ZWQgdG8gYmUgY29uZGl0aW9uYWxs
eSBoZWxwZnVsDQo+Pj4+PiBpbiAxOE1CIGFsbG9jYXRpb24gYXMgZGVjcmVhc2luZyB0aGUgdGlt
ZSBmcm9tIDI0NjA0dXMgdG8gNjU1NXVzIGFuZCBubw0KPj4+Pj4gaGFybSB3aGVuIGJ1bGsgYWxs
b2NhdGlvbiBjYW4ndCBiZSBkb25lKGZhbGxiYWNrIHRvIHNpbmdsZSBwYWdlDQo+Pj4+PiBhbGxv
Y2F0aW9uKSAgDQo+Pj4+DQo+Pj4+IFdlbGwgdGhhdCBzb3VuZHMgbGlrZSBhbiBhYnNvbHV0ZWx5
IGhvcnJpYmxlIGlkZWEuDQo+Pj4+DQo+Pj4+IFNlZSB0aGUgaGFuZGxpbmcgb2YgYWxsb2NhdGlu
ZyBvbmx5IGZyb20gc3BlY2lmaWMgb3JkZXIgaXMgKmV4YWN0bHkqIHRoZXJlIHRvIGF2b2lkIHRo
ZSBiZWhhdmlvciBvZiBidWxrIGFsbG9jYXRpb24uDQo+Pj4+DQo+Pj4+IFdoYXQgeW91IHNlZW0g
dG8gZG8gd2l0aCB0aGlzIHBhdGNoIGhlcmUgaXMgdG8gYWRkIG9uIHRvcCBvZiB0aGUgYmVoYXZp
b3IgdG8gYXZvaWQgYWxsb2NhdGluZyBsYXJnZSBjaHVua3MgZnJvbSB0aGUgYnVkZHkgdGhlIGJl
aGF2aW9yIHRvIGFsbG9jYXRlIGxhcmdlIGNodW5rcyBmcm9tIHRoZSBidWRkeSBiZWNhdXNlIHRo
YXQgaXMgZmFzdGVyLiAgDQo+Pj4gZW1tLCB0aGlzIHBhdGNoIGRvZXNuJ3QgY2hhbmdlIG9yZGVy
LTggYW5kIG9yZGVyLTQncyBhbGxvY2F0aW9uDQo+Pj4gYmVoYXZpb3VyIGJ1dCBqdXN0IHRvIHJl
cGxhY2UgdGhlIGxvb3Agb2Ygb3JkZXItMCBhbGxvY2F0aW9ucyBpbnRvDQo+Pj4gb25jZSBidWxr
IGFsbG9jYXRpb24gaW4gdGhlIGZhbGxiYWNrIHdheS4gV2hhdCBpcyB5b3VyIGNvbmNlcm4gYWJv
dXQNCj4+PiB0aGlzPyAgDQo+Pg0KPj4gQXMgZmFyIGFzIEkga25vdyB0aGUgYnVsayBhbGxvY2F0
aW9uIGZhdm9ycyBzcGxpdHRpbmcgbGFyZ2UgcGFnZXMgaW50byBzbWFsbGVyIG9uZXMgaW5zdGVh
ZCBvZiBhbGxvY2F0aW5nIHNtYWxsZXIgcGFnZXMgZmlyc3QuIFRoYXQncyB3aGVyZSB0aGUgcGVy
Zm9ybWFuY2UgYmVuZWZpdCBjb21lcyBmcm9tLg0KPj4NCj4+IEJ1dCB0aGF0IGlzIGV4YWN0bHkg
d2hhdCB3ZSB0cnkgdG8gYXZvaWQgaGVyZSBieSBhbGxvY2F0aW5nIG9ubHkgY2VydGFpbiBvcmRl
ciBvZiBwYWdlcy4NCj4gDQo+IFRoaXMgaXMgYSBnb29kIHF1ZXN0aW9uLCBhY3R1YWxseS4gWWVz
LCBidWxrIGFsbG9jIHdpbGwgc3BsaXQgbGFyZ2UNCj4gcGFnZXMgaWYgdGhlcmUgYXJlIGluc3Vm
ZmljaWVudCBwYWdlcyBvbiB0aGUgcGNwIGZyZWUgbGlzdC4gQnV0IGlzDQo+IGRtYS1idWYgaW5k
ZWVkIHRyeWluZyB0byBhdm9pZCBpdCwgb3IgaXMgaXQgbWVyZWx5IHVzaW5nIGFuIGluZWZmaWNp
ZW50DQo+IEFQST8gQW5kIGRvZXMgaXQgbmVlZCB0aGUgZXh0cmEgc3BlZWQ/IEV2ZW4gaWYgaXQg
bGVhZHMgdG8gaW5jcmVhc2VkDQo+IGZyYWdtZW50YXRpb24/DQoNCkRNQS1idWYtaGVhcHMgaXMg
Y29tcGxldGx5IGludGVudGlvbmFsbHkgdHJ5aW5nIHJhdGhlciBoYXJkIHRvIGF2b2lkIHNwbGl0
dGluZyBsYXJnZSBwYWdlcy4gVGhhdCdzIHdoeSB5b3UgaGF2ZSB0aGUgZGlzdGluY3Rpb24gYmV0
d2VlbiBISUdIX09SREVSX0dGUCBhbmQgTE9XX09SREVSX0dGUCBhcyB3ZWxsLg0KDQpLZWVwIGlu
IG1pbmQgdGhhdCB0aGlzIGlzIG1vc3RseSB1c2VkIG9uIGVtYmVkZGVkIHN5c3RlbSB3aXRoIG9u
bHkgc21hbGwgYW1vdW50cyBvZiBtZW1vcnkuDQoNCk5vdCBlbnRlcmluZyBkaXJlY3QgcmVjbGFp
bSBhbmQgaW5zdGVhZCBwcmVmZXJyaW5nIHRvIHNwbGl0IGxhcmdlIHBhZ2VzIHVudGlsIHRoZXkg
YXJlIHVzZWQgdXAgaXMgYW4gYWJzb2x1dGVseSBuby1nbyBmb3IgbW9zdCB1c2UgY2FzZXMgYXMg
ZmFyIGFzIEkgY2FuIHNlZS4NCg0KQ291bGQgYmUgdGhhdCB3ZSBuZWVkIHRvIG1ha2UgdGhpcyBi
ZWhhdmlvciBjb25kaXRpb25hbCwgYnV0IHNvbWVib2R5IHdvdWxkIG5lZWQgdG8gY29tZSB1cCB3
aXRoIHNvbWUgcmVhbGx5IGdvb2QgYXJndW1lbnRzIHRvIGp1c3RpZnkgdGhlIGNvbXBsZXhpdHku
DQoNClJlZ2FyZHMsDQpDaHJpc3RpYW4uDQoNCj4gDQo+IFBldHIgVA0KDQpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcg
bGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2Vu
ZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
