Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id F2B53C69F69
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 18 Nov 2025 15:29:22 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 253803F834
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 18 Nov 2025 14:29:22 +0000 (UTC)
Received: from SA9PR02CU001.outbound.protection.outlook.com (mail-southcentralusazon11013021.outbound.protection.outlook.com [40.93.196.21])
	by lists.linaro.org (Postfix) with ESMTPS id 047193F905
	for <linaro-mm-sig@lists.linaro.org>; Tue, 18 Nov 2025 14:29:00 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=amd.com header.s=selector1 header.b=u0jgcqKe;
	spf=pass (lists.linaro.org: domain of Christian.Koenig@amd.com designates 40.93.196.21 as permitted sender) smtp.mailfrom=Christian.Koenig@amd.com;
	dmarc=pass (policy=quarantine) header.from=amd.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=QsC8b72k2WvNvGvRWlkV+Jsek6pqJfmOcwyMLHkaCM7VOZgEeOMhXS7OFQ1C452gIiT+7mteGdwnuQk+cpEXr5Ok01lVyRXk0apB4/bkLetLRU1zkIA6U1ck8UO2715dNZGSBua7I5cX9Sx5X6y1PiDFCJb6KKPiIsHuG/rGErOOsEGWGQOcYzt3KxkFxD4aETrfq0ylapqTbZ7C/QnkPAeom5vCATElfn4THAsrdGadYmSJmKiqIvQdGnf1Uujrtj9X7Im/ERq40vH7Mzd+ZBZL0Jt9AjRQQkRtNZeF3nmInm/VLm84rGGSuS3WYGAXpDujJ1jysecr4xslRcPc2A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=rGHQVJHoh0CK+KqXKMaVOPz6Zbb8GBplr9/GeVNEJwQ=;
 b=AJ3D3qilO1VTFYOiDAch3Z2S5OVsHZ7LFoWHMBFhPOT6mnP7Zm/u0QKFClEwoPkZClzmT7AjvrkT0N4J0MhYiMwJdGH4b1bR9zgvxG9cJfs9QZfSMgbuVI9B96S1pouA/2ZLtMPQ+UAb3ajok4KUUvakeA747Ak6NhDOqt0i7wFyaPESD1Gpm2jS9PYHJlhKNdYnn/0EvbIrhGMgzXKz6rtxdKQIBko4Rmb1NCc9F/32cYWidcUUWHi/5mXLzfmtQroDkI2aiIuNaI1nYWcV/gIwEzZ9x/V873TSTQ49BH7XKNKEChEt2QZ9fzfNsCt7m1PqN63Iq3EMp3QpUg2DKw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=rGHQVJHoh0CK+KqXKMaVOPz6Zbb8GBplr9/GeVNEJwQ=;
 b=u0jgcqKe0CaMyBr8Jx666ZGk2CO23ZqZGYHbdfOAPpjuV9TTqnf7PjP5bVMX7qU/rcAXKbRIUtBFCRHYFyWkFV2ogZj86IDufOI83vySAOFkaGJcCHZ/nm7ogNG7D9BmaEMN6nxsnUbC561bvNQaEHCC8VC64teAtC+MHZfbGNA=
Received: from PH7PR12MB5685.namprd12.prod.outlook.com (2603:10b6:510:13c::22)
 by DS7PR12MB5981.namprd12.prod.outlook.com (2603:10b6:8:7c::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9320.22; Tue, 18 Nov
 2025 14:28:55 +0000
Received: from PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::46fb:96f2:7667:7ca5]) by PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::46fb:96f2:7667:7ca5%4]) with mapi id 15.20.9320.021; Tue, 18 Nov 2025
 14:28:54 +0000
Message-ID: <35d7ab6c-bd4d-4267-8ae1-2637d6c0f1ff@amd.com>
Date: Tue, 18 Nov 2025 15:28:49 +0100
User-Agent: Mozilla Thunderbird
To: Tvrtko Ursulin <tursulin@ursulin.net>, phasta@mailbox.org,
 alexdeucher@gmail.com, simona.vetter@ffwll.ch, matthew.brost@intel.com,
 dri-devel@lists.freedesktop.org, amd-gfx@lists.freedesktop.org,
 linaro-mm-sig@lists.linaro.org, sumit.semwal@linaro.org
References: <20251113145332.16805-1-christian.koenig@amd.com>
 <20251113145332.16805-3-christian.koenig@amd.com>
 <ef0f9459-6733-4e0a-9c06-c36c02e5a93c@ursulin.net>
Content-Language: en-US
From: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
In-Reply-To: <ef0f9459-6733-4e0a-9c06-c36c02e5a93c@ursulin.net>
X-ClientProxiedBy: BN9PR03CA0185.namprd03.prod.outlook.com
 (2603:10b6:408:f9::10) To PH7PR12MB5685.namprd12.prod.outlook.com
 (2603:10b6:510:13c::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR12MB5685:EE_|DS7PR12MB5981:EE_
X-MS-Office365-Filtering-Correlation-Id: a0e54f02-d936-455c-f1a0-08de26aecd36
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: 
	=?utf-8?B?NjEyYmlnYjY2YkhpemtjMXNzQUZGRWNqL1I3cXBHUmtDTFZEY1o1VFZOdjY5?=
 =?utf-8?B?RmZhK0cyZjFVNDlYQmNmQ3VZazlpQi8rTWxabHA4WnVlZng4QVhXazdRalEr?=
 =?utf-8?B?c3U4Q082U3BZT0IzVUxhQk1TLzdwRUg2a2hzc1EwNmd5RGkvUmQyMVNrT1JR?=
 =?utf-8?B?UUNGb2Jpa0F6aTFFRU03bUd0YkQ3MzhJRDUxTWZhUFB3MDlnWWtlRDBHUVdk?=
 =?utf-8?B?N3l1c0J4WlhXRXc2ZlVLbTE1RjRyWlVIYThKVFg4VGJ2cUpBTytoUnZLTnR6?=
 =?utf-8?B?aVV4SzUyZGh2QkxKQjVDTnZRdVpkK3YxbU5BL3Ywci9TNmZNR21TRFhtTWd2?=
 =?utf-8?B?MjY3TXg4SnhiTHNjSC96eVluVHJqMi96dmF0SU1HSCtVemlQdkF6MFhoOGhG?=
 =?utf-8?B?MUVFb3VSRkpkNURZaW9iLzgvRlE1TzA1UVFuTDRwNWRhVDUxUWlQQis2cTBM?=
 =?utf-8?B?a1F6Z255NmVaeCthMmFMblIwN3JUeXV1QmNocjVYUHZhMHd5dkdLTGN1L3hI?=
 =?utf-8?B?eGlldng5ZVpsUkkwZWVobDY1YXYwY2pZcmhSS21vWVZvelpNektxTitVU0JE?=
 =?utf-8?B?TWx1R3J4bGFJT2h2SitzUWNXU2labW1sc0dHaWFqZW1Sd2U4YmhXazRMckVw?=
 =?utf-8?B?Z2pjWmJKN1JkMUdDSWgrNS9qdTZzVHZqMHdXd081TkZtT21LSGcrczhrTFFy?=
 =?utf-8?B?a3NXdGd5a2JoWlJkWEIwbjROL2NZSGUzckJEN1BXd1pHdFE1Y1U4Qk5GZWdE?=
 =?utf-8?B?a2hwbVc0T2RqV21HSHd5UUxBSk8zSUIyUFVwaURPd3FHSGYva3ZoR1pXYnU5?=
 =?utf-8?B?RkVnazNYV2hMMlowM1JWdXU1dm9TN2tqcWl2ZEs1M01jWXFCR1kvMEhaS3JT?=
 =?utf-8?B?cW41azBsMWU0YjdBc0Y0Qzd4Wk9BRjRjVVN6dDh2ZTEyenVMbndwNHAzQW5V?=
 =?utf-8?B?WE9VM3VRV29aNDRLTy92Uy96bklObFJBQ2w5c1NyR1NjUElyZmNJS3V4ZHNm?=
 =?utf-8?B?UWhYRUpReUtuaTM0STMwNEk0N1p3NFNzcnZBS2x1UzNsbi9IQnFoRjUycUdV?=
 =?utf-8?B?Q2k2UFVLUWNDZStENXhLU2ZQTHhoVGR1eVBEdjBQdXh6a0JIUGNYMDhzeVhP?=
 =?utf-8?B?RnBPR2R3MnB2Y2VTK2tMZE9mUmJuUTNpNHFSdGdNQnM5ZmhPUURueWViWEE2?=
 =?utf-8?B?Zm5BRHU4NkNDNHNxNzEvcS9LQmhKNUx6UnA3dGFGY1BWYnVvVHUySE53N0RP?=
 =?utf-8?B?aHp6U2VQanVzcmtyOHg1OGxWVHdIYWNuYzNxV2ZiWUx4SFJ5RVMrZ1QxdVZx?=
 =?utf-8?B?elhVZnY3eEhLdnM3L3p0S2Zvd0I0VUhDUGo0L1VUeThMU0V3MG91NTA1QmhF?=
 =?utf-8?B?ZFFkOXZkNi8wckpQcDZ3REEvOW9xZ1oyR2FDK0tDendxc2xoQ2IvUEhteEdk?=
 =?utf-8?B?QjcvZXhIRFQrdW1zOVNPeXRneWMvT01Ta3FrOHNoZXIyVEx4TmZaemRFZmli?=
 =?utf-8?B?cktvR2NnM1B6TFZHdzRIMGxacFl3QmhQWDNHS3NZajNKMjkrNlE2WDVrUGJl?=
 =?utf-8?B?TGtBclZ1cEp3cXE3MFZNOFkyL2YrZzc3WFVDNk5LVFFPRkkrUWFGaWlTeFp4?=
 =?utf-8?B?UmRzVkthRVo1MkRMWmJDN3BVMXZKYUJrVmJXc3hCUVgrcndnTDNla2xtVnVh?=
 =?utf-8?B?bXhOSWtxSDRJNnNrZitpdXBodUJ3djRpQ2VjdmZZR3JhRWF2a2g1cG1kdDIy?=
 =?utf-8?B?blNkMVZrLy9TZ2NPQ3IrMllYdWFNQlF1aXFtRk14WFNmYzU0NS9tVlpldkJM?=
 =?utf-8?B?UUphZXorVjFVSDVuUzQ2OGJXQ2lvRURhbDJ1QXNHajk0SDZsNWlINndwM2w3?=
 =?utf-8?B?T0FPQVMxUkRoK2pWRnFOc0ZlaWdaK2syMnRHYmZVUDVUVFNIazloa1V2Zk9B?=
 =?utf-8?Q?1soOMMJY78yv4ThtI0iqxRWVDKzkNY5i?=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH7PR12MB5685.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(376014)(366016);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?bDJ1djZnaCt2SFZkVk96NDJtRWNzSEFGamlZMFZiV0k0ZFlnbG5kRzEyeHkx?=
 =?utf-8?B?Z2NhZmtRYWt0eTVOaVh2dWRZUGhDUGJyUTFiN3RyWkZPQitLM2dNYVhUMHJh?=
 =?utf-8?B?NktySXY2TkorVTE3RGsrZGdjdkpncFVoRkZ5a0h2b0lwVVh1ZFF5N3ZGamFa?=
 =?utf-8?B?VjV4Wm5rd01XRElqSjNMRHpTaVpCbnc2dEpWZkVBeGk3d1dCMFlUZnkydFVN?=
 =?utf-8?B?MEd6ZTU4OHpQY1E4Mmd0SHUyMk4wdjJMOEhuVG9PbVc5amM3bEJmam94MTJn?=
 =?utf-8?B?a043UkRKZ2hnTVkvOE45RkhTZjA1SFNkdFQ4eWhiSXdpVUpOTXBiRzVWQTNH?=
 =?utf-8?B?Z25wanYzUUc4alB6M3Zab0NHenNadFdNKy8rL1lseU1nbzAvSlVyTWQ2by9B?=
 =?utf-8?B?dURQRjlEQ3MvdlJwanNVaHZ5aUwvS2xuNnVDenFKZExvY2E2K1pzMmI0eWQ5?=
 =?utf-8?B?TGpqY0hITGlOTUNMaHVqUXRac2FJeHhreHkzamZ0ZFg3N1BZZEFrL0hvdFIy?=
 =?utf-8?B?NXdLQXkrOFdlTWFVUXNKYVU2WG1zVG9obkJST0NGTEtsZlBZVDd2c29QYk9C?=
 =?utf-8?B?R2FRbTVXR0N1NHVMaWxoYzRWbytiWk1kYmE4T2ZteUFRMFhrNzJYT1YzbVZk?=
 =?utf-8?B?RWtyRnlZek9IRTRLMUNhQTRrUXJIOTFINk9LQ3krM2VJZTRvbGlBWG12eDlP?=
 =?utf-8?B?RmZiVTBzc01MV2wyako5TG16LzhtcDM4czR0a1ZURjV6d21vWTQwVHp2cC9R?=
 =?utf-8?B?UCtLTVNhc2RKL2swWVNXM20xUm9vZkNhbzNqMGRjeEhpTkNQV2hTd09OSW1n?=
 =?utf-8?B?bnFaWU9laGdIajdWTUgvNk5yWkJyZkJVeG5ucHc4N1FtZFJTNGMzc1NlWnoz?=
 =?utf-8?B?aDNGK2dBM3dHQ2RxSXliM0xKbURETVBvK2R0UjBpOW1qeWpoR2FCd2s5K3NN?=
 =?utf-8?B?RnEzckNKQ3A0cWNuZW5NVUZXRUlLN1pMQnpObk9lQ0xLaTNPNkhZeE9HZ05P?=
 =?utf-8?B?YkdnSHhaZHdocXRacGtqRVpObTJpNG95clg2OXZxZTY5d2dkQ0hMNHVQYWZx?=
 =?utf-8?B?MmdpMHBXQlhuRHJzWUJ4QTFHZDJkK2FXYVJjZ0d3elpaTlgyNXRyM0lFWnMw?=
 =?utf-8?B?aWRvQWpnTXowVm0raWFHNGIrTUdHV2dzNHZVcEh0RFFqeElIL3hKN0s3TFpZ?=
 =?utf-8?B?VER2SVNNTlJYeVpOdlYzWkNPeFRCZmpCVUFoWEc3NkJ4WFNxQ1dOcGJhRUcx?=
 =?utf-8?B?V1F4eE8yK2VWQUxtMUo4ZjIyY0xSRkVBdzRRQXFNZmxjdjhFVzdwb1Jic1NF?=
 =?utf-8?B?K0VJbzFudUVXcnNFU2NaczdsOHFRb3hGYnFCVmM3UFA0bVFJZThobkp1ekpt?=
 =?utf-8?B?WU1kaWJkWmhnUWpCZDNJYmJTYUdYSWlIaldBK1FIUnFNY2YzdkJQVjFDVXhi?=
 =?utf-8?B?T2VkMTRpZ1E5bEZKSzlKMnQrU0NPVmVKUnl0RUorMzljTm1JbDNIQml0aEls?=
 =?utf-8?B?S3BYOW5maGxydjY1dzM4ZEJlTnBjWDMwUzNlcVJROVY5dW5rZURtdUc1a085?=
 =?utf-8?B?akdVWEhQR0dhcFVjZTRQUkwvYW9HSW5QbWtFQXRPR2dQeGF0bE8ybEM5aThq?=
 =?utf-8?B?VUNMUEtPM3llMnpqQnVUVUhBU2hsTm4yNklnS0NqR250ZmRQNnRUTDB1ZUIr?=
 =?utf-8?B?bUNGZUZmWk9pM0ZHSll0c2d5OEhMeS9HMVd2eEhtMFMwSzEvYkdvUkJPa3Nq?=
 =?utf-8?B?T1lDM3hIWmZDaFlLcG1zZWlCTnUyWlBwc1JWVnVtdnJUTk1iVnZiaFp1VmlJ?=
 =?utf-8?B?dE8yanFraGhrRy9vMVMraksvOFNPUEJVUFdRUHZ4LzBJcWo0d1ZBaWdraC9D?=
 =?utf-8?B?dXBkaGgxamtPZkZld0JWVFN3YXpyTEtCbEpSbXRFUXFWb2F3ZmhZVmdSbDlO?=
 =?utf-8?B?ODZNTkx1V3FDRmxlMmc3dkF5dldlWUFieEtqZkpFVnRKWmJXT0RoaWo2alU3?=
 =?utf-8?B?Rzh1QitkZXVFQmpUT3JDMzZpT1QrNFRZUys4Zjl3cWl3Z3B3SXNYaHFEdzZu?=
 =?utf-8?B?SFQ0NDZBeklkbi9NUG0yZzV2QVpnZ2Z0MklOS3k5dlVMNU16ZWhuNndqMWtC?=
 =?utf-8?Q?mc+I=3D?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a0e54f02-d936-455c-f1a0-08de26aecd36
X-MS-Exchange-CrossTenant-AuthSource: PH7PR12MB5685.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Nov 2025 14:28:54.6383
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: KRQPFF/vPP12WMmcqeC6qvSgQWZ2tmJkNaxtcoKVHnVE+n41swBiNgBJaF2w008z
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR12MB5981
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-5.00 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[amd.com,quarantine];
	R_DKIM_ALLOW(-0.20)[amd.com:s=selector1];
	R_SPF_ALLOW(-0.20)[+ip4:40.92.0.0/15];
	MIME_GOOD(-0.10)[text/plain];
	MIME_TRACE(0.00)[0:+];
	RWL_MAILSPIKE_POSSIBLE(0.00)[40.93.196.21:from];
	FREEMAIL_TO(0.00)[ursulin.net,mailbox.org,gmail.com,ffwll.ch,intel.com,lists.freedesktop.org,lists.linaro.org,linaro.org];
	ASN(0.00)[asn:8075, ipnet:40.80.0.0/12, country:US];
	RCPT_COUNT_SEVEN(0.00)[9];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	RCVD_TLS_LAST(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	URIBL_BLOCKED(0.00)[SA9PR02CU001.outbound.protection.outlook.com:helo,mail-southcentralusazon11013021.outbound.protection.outlook.com:rdns];
	DKIM_TRACE(0.00)[amd.com:+]
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 047193F905
X-Spamd-Bar: ----
Message-ID-Hash: A4IOK2KTAAPZAEFSJRQLPNAQI5FGO33Y
X-Message-ID-Hash: A4IOK2KTAAPZAEFSJRQLPNAQI5FGO33Y
X-MailFrom: Christian.Koenig@amd.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 02/18] dma-buf: protected fence ops by RCU v3
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/A4IOK2KTAAPZAEFSJRQLPNAQI5FGO33Y/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gMTEvMTQvMjUgMTE6NTAsIFR2cnRrbyBVcnN1bGluIHdyb3RlOg0KPj4gQEAgLTU2OSwxMiAr
NTc3LDEyIEBAIHZvaWQgZG1hX2ZlbmNlX3JlbGVhc2Uoc3RydWN0IGtyZWYgKmtyZWYpDQo+PiDC
oMKgwqDCoMKgwqDCoMKgwqAgc3Bpbl91bmxvY2tfaXJxcmVzdG9yZShmZW5jZS0+bG9jaywgZmxh
Z3MpOw0KPj4gwqDCoMKgwqDCoCB9DQo+PiDCoCAtwqDCoMKgIHJjdV9yZWFkX3VubG9jaygpOw0K
Pj4gLQ0KPj4gLcKgwqDCoCBpZiAoZmVuY2UtPm9wcy0+cmVsZWFzZSkNCj4+IC3CoMKgwqDCoMKg
wqDCoCBmZW5jZS0+b3BzLT5yZWxlYXNlKGZlbmNlKTsNCj4+ICvCoMKgwqAgb3BzID0gcmN1X2Rl
cmVmZXJlbmNlKGZlbmNlLT5vcHMpOw0KPj4gK8KgwqDCoCBpZiAob3BzLT5yZWxlYXNlKQ0KPj4g
K8KgwqDCoMKgwqDCoMKgIG9wcy0+cmVsZWFzZShmZW5jZSk7DQo+PiDCoMKgwqDCoMKgIGVsc2UN
Cj4+IMKgwqDCoMKgwqDCoMKgwqDCoCBkbWFfZmVuY2VfZnJlZShmZW5jZSk7DQo+PiArwqDCoMKg
IHJjdV9yZWFkX3VubG9jaygpOw0KPiANCj4gUmlzayBiZWluZyBhIHNwaW4gbG9jayBpbiB0aGUg
cmVsZWFzZSBjYWxsYmFjayB3aWxsIHRyaWdnZXIgYSB3YXJuaW5nIG9uIFBSRUVNUFRfUlQuIEJ1
dCBhdCBsZWFzdCB0aGUgY3VycmVudCBjb2RlIGJhc2UgZG9lcyBub3QgaGF2ZSBhbnl0aGluZyBs
aWtlIHRoYXQgQUZBSUNTIHNvIEkgZ3Vlc3MgaXQgaXMgb2theS4NCg0KSSBkb24ndCB0aGluayB0
aGF0IHRoaXMgaXMgYSBwcm9ibGVtLiBXaGVuIFBSRUVNUFRfUlQgaXMgZW5hYmxlZCBib3RoIFJD
VSBhbmQgc3BpbmxvY2tzIGJlY29tZSBwcmVlbXB0aWJsZS4NCg0KU28gYXMgZmFyIGFzIEkga25v
dyBpdCBpcyBwZXJmZWN0bHkgdmFsaWQgdG8gZ3JhYiBhIHNwaW5sb2NrIHVuZGVyIGFuIHJjdSBy
ZWFkIHNpZGUgY3JpdGljYWwgc2VjdGlvbi4NCg0KPj4gZGlmZiAtLWdpdCBhL2luY2x1ZGUvbGlu
dXgvZG1hLWZlbmNlLmggYi9pbmNsdWRlL2xpbnV4L2RtYS1mZW5jZS5oDQo+PiBpbmRleCA2NDYz
OWUxMDQxMTAuLjc3ZjA3NzM1ZjU1NiAxMDA2NDQNCj4+IC0tLSBhL2luY2x1ZGUvbGludXgvZG1h
LWZlbmNlLmgNCj4+ICsrKyBiL2luY2x1ZGUvbGludXgvZG1hLWZlbmNlLmgNCj4+IEBAIC02Niw3
ICs2Niw3IEBAIHN0cnVjdCBzZXFfZmlsZTsNCj4+IMKgwqAgKi8NCj4+IMKgIHN0cnVjdCBkbWFf
ZmVuY2Ugew0KPj4gwqDCoMKgwqDCoCBzcGlubG9ja190ICpsb2NrOw0KPj4gLcKgwqDCoCBjb25z
dCBzdHJ1Y3QgZG1hX2ZlbmNlX29wcyAqb3BzOw0KPj4gK8KgwqDCoCBjb25zdCBzdHJ1Y3QgZG1h
X2ZlbmNlX29wcyBfX3JjdSAqb3BzOw0KPj4gwqDCoMKgwqDCoCAvKg0KPj4gwqDCoMKgwqDCoMKg
ICogV2UgY2xlYXIgdGhlIGNhbGxiYWNrIGxpc3Qgb24ga3JlZl9wdXQgc28gdGhhdCBieSB0aGUg
dGltZSB3ZQ0KPj4gwqDCoMKgwqDCoMKgICogcmVsZWFzZSB0aGUgZmVuY2UgaXQgaXMgdW51c2Vk
LiBObyBvbmUgc2hvdWxkIGJlIGFkZGluZyB0byB0aGUNCj4+IEBAIC0yMTgsNiArMjE4LDEwIEBA
IHN0cnVjdCBkbWFfZmVuY2Vfb3BzIHsNCj4+IMKgwqDCoMKgwqDCoCAqIHRpbWVkIG91dC4gQ2Fu
IGFsc28gcmV0dXJuIG90aGVyIGVycm9yIHZhbHVlcyBvbiBjdXN0b20gaW1wbGVtZW50YXRpb25z
LA0KPj4gwqDCoMKgwqDCoMKgICogd2hpY2ggc2hvdWxkIGJlIHRyZWF0ZWQgYXMgaWYgdGhlIGZl
bmNlIGlzIHNpZ25hbGVkLiBGb3IgZXhhbXBsZSBhIGhhcmR3YXJlDQo+PiDCoMKgwqDCoMKgwqAg
KiBsb2NrdXAgY291bGQgYmUgcmVwb3J0ZWQgbGlrZSB0aGF0Lg0KPj4gK8KgwqDCoMKgICoNCj4+
ICvCoMKgwqDCoCAqIEltcGxlbWVudGluZyB0aGlzIGNhbGxiYWNrIHByZXZlbnRzIHRoZSBCTyBm
cm9tIGRldGFjaGluZyBhZnRlcg0KPiANCj4gcy9CTy9mZW5jZS8NCj4gDQo+PiArwqDCoMKgwqAg
KiBzaWduYWxpbmcgYW5kIHNvIGl0IGlzIG1hbmRhdG9yeSBmb3IgdGhlIG1vZHVsZSBwcm92aWRp
bmcgdGhlDQo+PiArwqDCoMKgwqAgKiBkbWFfZmVuY2Vfb3BzIHRvIHN0YXkgbG9hZGVkIGFzIGxv
bmcgYXMgdGhlIGRtYV9mZW5jZSBleGlzdHMuDQo+PiDCoMKgwqDCoMKgwqAgKi8NCj4+IMKgwqDC
oMKgwqAgc2lnbmVkIGxvbmcgKCp3YWl0KShzdHJ1Y3QgZG1hX2ZlbmNlICpmZW5jZSwNCj4+IMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgYm9vbCBpbnRyLCBzaWduZWQgbG9uZyB0
aW1lb3V0KTsNCj4+IEBAIC0yMjksNiArMjMzLDEzIEBAIHN0cnVjdCBkbWFfZmVuY2Vfb3BzIHsN
Cj4+IMKgwqDCoMKgwqDCoCAqIENhbiBiZSBjYWxsZWQgZnJvbSBpcnEgY29udGV4dC7CoCBUaGlz
IGNhbGxiYWNrIGlzIG9wdGlvbmFsLiBJZiBpdCBpcw0KPj4gwqDCoMKgwqDCoMKgICogTlVMTCwg
dGhlbiBkbWFfZmVuY2VfZnJlZSgpIGlzIGluc3RlYWQgY2FsbGVkIGFzIHRoZSBkZWZhdWx0DQo+
PiDCoMKgwqDCoMKgwqAgKiBpbXBsZW1lbnRhdGlvbi4NCj4+ICvCoMKgwqDCoCAqDQo+PiArwqDC
oMKgwqAgKiBJbXBsZW1lbnRpbmcgdGhpcyBjYWxsYmFjayBwcmV2ZW50cyB0aGUgQk8gZnJvbSBk
ZXRhY2hpbmcgYWZ0ZXINCj4gDQo+IERpdHRvLg0KDQpCb3RoIGZpeGVkLCB0aGFua3MuDQoNCj4g
DQo+PiArwqDCoMKgwqAgKiBzaWduYWxpbmcgYW5kIHNvIGl0IGlzIG1hbmRhdG9yeSBmb3IgdGhl
IG1vZHVsZSBwcm92aWRpbmcgdGhlDQo+PiArwqDCoMKgwqAgKiBkbWFfZmVuY2Vfb3BzIHRvIHN0
YXkgbG9hZGVkIGFzIGxvbmcgYXMgdGhlIGRtYV9mZW5jZSBleGlzdHMuDQo+PiArwqDCoMKgwqAg
Kg0KPj4gK8KgwqDCoMKgICogSWYgdGhlIGNhbGxiYWNrIGlzIGltcGxlbWVudGVkIHRoZSBtZW1v
cnkgYmFja2luZyB0aGUgZG1hX2ZlbmNlDQo+PiArwqDCoMKgwqAgKiBvYmplY3QgbXVzdCBiZSBm
cmVlZCBSQ1Ugc2FmZS4NCj4+IMKgwqDCoMKgwqDCoCAqLw0KPj4gwqDCoMKgwqDCoCB2b2lkICgq
cmVsZWFzZSkoc3RydWN0IGRtYV9mZW5jZSAqZmVuY2UpOw0KPj4gwqAgQEAgLTQxOCwxMyArNDI5
LDE5IEBAIGNvbnN0IGNoYXIgX19yY3UgKmRtYV9mZW5jZV90aW1lbGluZV9uYW1lKHN0cnVjdCBk
bWFfZmVuY2UgKmZlbmNlKTsNCj4+IMKgIHN0YXRpYyBpbmxpbmUgYm9vbA0KPj4gwqAgZG1hX2Zl
bmNlX2lzX3NpZ25hbGVkX2xvY2tlZChzdHJ1Y3QgZG1hX2ZlbmNlICpmZW5jZSkNCj4+IMKgIHsN
Cj4+ICvCoMKgwqAgY29uc3Qgc3RydWN0IGRtYV9mZW5jZV9vcHMgKm9wczsNCj4+ICsNCj4+IMKg
wqDCoMKgwqAgaWYgKHRlc3RfYml0KERNQV9GRU5DRV9GTEFHX1NJR05BTEVEX0JJVCwgJmZlbmNl
LT5mbGFncykpDQo+PiDCoMKgwqDCoMKgwqDCoMKgwqAgcmV0dXJuIHRydWU7DQo+PiDCoCAtwqDC
oMKgIGlmIChmZW5jZS0+b3BzLT5zaWduYWxlZCAmJiBmZW5jZS0+b3BzLT5zaWduYWxlZChmZW5j
ZSkpIHsNCj4+ICvCoMKgwqAgcmN1X3JlYWRfbG9jaygpOw0KPj4gK8KgwqDCoCBvcHMgPSByY3Vf
ZGVyZWZlcmVuY2UoZmVuY2UtPm9wcyk7DQo+PiArwqDCoMKgIGlmIChvcHMtPnNpZ25hbGVkICYm
IG9wcy0+c2lnbmFsZWQoZmVuY2UpKSB7DQo+PiArwqDCoMKgwqDCoMKgwqAgcmN1X3JlYWRfdW5s
b2NrKCk7DQo+PiDCoMKgwqDCoMKgwqDCoMKgwqAgZG1hX2ZlbmNlX3NpZ25hbF9sb2NrZWQoZmVu
Y2UpOw0KPj4gwqDCoMKgwqDCoMKgwqDCoMKgIHJldHVybiB0cnVlOw0KPj4gwqDCoMKgwqDCoCB9
DQo+PiArwqDCoMKgIHJjdV9yZWFkX3VubG9jaygpOw0KPj4gwqAgwqDCoMKgwqDCoCByZXR1cm4g
ZmFsc2U7DQo+PiDCoCB9DQo+PiBAQCAtNDQ4LDEzICs0NjUsMTkgQEAgZG1hX2ZlbmNlX2lzX3Np
Z25hbGVkX2xvY2tlZChzdHJ1Y3QgZG1hX2ZlbmNlICpmZW5jZSkNCj4+IMKgIHN0YXRpYyBpbmxp
bmUgYm9vbA0KPj4gwqAgZG1hX2ZlbmNlX2lzX3NpZ25hbGVkKHN0cnVjdCBkbWFfZmVuY2UgKmZl
bmNlKQ0KPj4gwqAgew0KPj4gK8KgwqDCoCBjb25zdCBzdHJ1Y3QgZG1hX2ZlbmNlX29wcyAqb3Bz
Ow0KPj4gKw0KPj4gwqDCoMKgwqDCoCBpZiAodGVzdF9iaXQoRE1BX0ZFTkNFX0ZMQUdfU0lHTkFM
RURfQklULCAmZmVuY2UtPmZsYWdzKSkNCj4+IMKgwqDCoMKgwqDCoMKgwqDCoCByZXR1cm4gdHJ1
ZTsNCj4+IMKgIC3CoMKgwqAgaWYgKGZlbmNlLT5vcHMtPnNpZ25hbGVkICYmIGZlbmNlLT5vcHMt
PnNpZ25hbGVkKGZlbmNlKSkgew0KPj4gK8KgwqDCoCByY3VfcmVhZF9sb2NrKCk7DQo+PiArwqDC
oMKgIG9wcyA9IHJjdV9kZXJlZmVyZW5jZShmZW5jZS0+b3BzKTsNCj4+ICvCoMKgwqAgaWYgKG9w
cy0+c2lnbmFsZWQgJiYgb3BzLT5zaWduYWxlZChmZW5jZSkpIHsNCj4+ICvCoMKgwqDCoMKgwqDC
oCByY3VfcmVhZF91bmxvY2soKTsNCj4gDQo+IFdpdGggdGhlIHVubG9ja2VkIHZlcnNpb24gdHdv
IHRocmVhZHMgY291bGQgcmFjZSBhbmQgb25lIGNvdWxkIG1ha2UgdGhlIGZlbmNlLT5sb2NrIGdv
IGF3YXkganVzdCBhcm91bmQgaGVyZSwgYmVmb3JlIHRoZSBkbWFfZmVuY2Vfc2lnbmFsIGJlbG93
IHdpbGwgdGFrZSBpdC4gSXQgc2VlbXMgaXQgaXMgb25seSBzYWZlIHRvIHJjdV9yZWFkX3VubG9j
ayBiZWZvcmUgc2lnbmFsaW5nIGlmIHVzaW5nIHRoZSBlbWJlZGRlZCBmZW5jZSAobGF0ZXIgaW4g
dGhlIHNlcmllcykuIENhbiB5b3UgdGhpbmsgb2YgYSBkb3duc2lkZSB0byBob2xkaW5nIHRoZSBy
Y3UgcmVhZCBsb2NrIHRvIGFmdGVyIHNpZ25hbGluZz8gdGhhdCB3b3VsZCBtYWtlIGl0IHNhZmUg
SSB0aGluay4NCg0KV2VsbCBpdCdzIGdvb2QgdG8gdGFsayBhYm91dCBpdCBidXQgSSB0aGluayB0
aGF0IGl0IGlzIG5vdCBuZWNlc3NhcnkgdG8gcHJvdGVjdCB0aGUgbG9jayBpbiB0aGlzIHBhcnRp
Y3VsYXIgY2FzZS4NCg0KU2VlIHRoZSBSQ1UgcHJvdGVjdGlvbiBpcyBvbmx5IGZvciB0aGUgZmVu
Y2UtPm9wcyBwb2ludGVyLCBidXQgdGhlIGxvY2sgY2FuIGJlIHRha2VuIHdheSBhZnRlciB0aGUg
ZmVuY2UgaXMgYWxyZWFkeSBzaWduYWxlZC4NCg0KVGhhdCdzIHdoeSBJIGNhbWUgdXAgd2l0aCB0
aGUgcGF0Y2ggdG8gbW92ZSB0aGUgbG9jayBpbnRvIHRoZSBmZW5jZSBpbiB0aGUgZmlyc3QgcGxh
Y2UuDQoNClJlZ2FyZHMsDQpDaHJpc3RpYW4uDQoNCj4gDQo+IFJlZ2FyZHMsDQo+IA0KPiBUdnJ0
a28NCj4gDQo+PiDCoMKgwqDCoMKgwqDCoMKgwqAgZG1hX2ZlbmNlX3NpZ25hbChmZW5jZSk7DQo+
PiDCoMKgwqDCoMKgwqDCoMKgwqAgcmV0dXJuIHRydWU7DQo+PiDCoMKgwqDCoMKgIH0NCj4+ICvC
oMKgwqAgcmN1X3JlYWRfdW5sb2NrKCk7DQo+PiDCoCDCoMKgwqDCoMKgIHJldHVybiBmYWxzZTsN
Cj4+IMKgIH0NCj4gDQoNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMu
bGluYXJvLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWct
bGVhdmVAbGlzdHMubGluYXJvLm9yZwo=
