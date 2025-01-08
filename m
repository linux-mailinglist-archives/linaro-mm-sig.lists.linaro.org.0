Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 32A76A05F71
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  8 Jan 2025 15:58:56 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 4BA86465FC
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  8 Jan 2025 14:58:55 +0000 (UTC)
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (mail-mw2nam10on2063.outbound.protection.outlook.com [40.107.94.63])
	by lists.linaro.org (Postfix) with ESMTPS id C1EB73F622
	for <linaro-mm-sig@lists.linaro.org>; Wed,  8 Jan 2025 14:58:47 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=Nvidia.com header.s=selector2 header.b=ctgKpuqQ;
	spf=pass (lists.linaro.org: domain of jgg@nvidia.com designates 40.107.94.63 as permitted sender) smtp.mailfrom=jgg@nvidia.com;
	dmarc=pass (policy=reject) header.from=nvidia.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=VqCsjtdQdFX4Am1N1E14mX8BHTbeLpyWL8tR11TBiD1Ewhmi3oXwI465i3UoW5QxrdtMmbxphA9W04ujpzO3VOuCWrgWBKOx20/EYYcUWOHMY5bMo3BejCGOqF0D+gjvOrKvBF1K6tRdQI5VFd47DJBxyBA/FJkQ+/T0hY0ZAV1LCRp+lNS2RkpbDsyzS7Mnqy3oUkOdn8wXtoQhFJQI3aFzkwhhspJEa6/Vwrc6UTQUtWc58+ai93DgxT3Yd3fsmgzFLkGIkL2mQn25p8CbMW7C9YyZ2oQzkjSDILSsdZ+3uTkCJQRavpyYL4NVKOSxBN3WOtIz2uNfAo8+3/VBwQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=aliFBb1bXvJ4B8fyZRm7X82VaSNazDN1T2eelS6+DKo=;
 b=gZYFR/tjTB+0xoKv7AVq77GWZu41GNLaNef4eHBla5pRyzXOgwzL8HqVKCXS44iT84MUetESGdCaCTgPDihusU4DsbDTHjrhdRBJvDradqgT5aR7qCL4oKb+VB1pG2pm9pKiJyvP/Xj4j+RWHVNK///c7c/X3BB5suBPS8HlhWZXjQCfEp7zZYXl/StDzIwqfrQpPlZTpJBS+3z88qtqf6mHLdPcOSxBZDXkVYN5SyUlnGA8Ib7kNNdFj5Cb3+/noWmgHeRnZiIFfFWZRK0paqDkutWCE/uYWeg9lzGUaUip+WeYdxzUz4cIl04i5w1dkG/doqm433+VTNTxAnJ/1Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=aliFBb1bXvJ4B8fyZRm7X82VaSNazDN1T2eelS6+DKo=;
 b=ctgKpuqQWovL+1dNpp+FYoDUUn7UBIC2ZKM80s2vjAqHWn1yV3p9/del9jIelVnXpq0tfC68JHTLqE7hz/dKym1ozqPDq4w1anCHPmTKFghh4SPz3ZP7e4u8bN5picfhsuMJ9sAUxf0HeECpw4mL0bIyzXXNUDDaBQo278IVHyUu3Y9Rei5GsJPsFavv4HikeqQLT76LBynajTkEF4pjJBL1K03aiFKVD4h+GwUKcRvqUyhrR4y/xwsmA4BCzrjy46iPL+3RCl2Qs2/QPv4Q+gKtGFKBh+jNnHK8aWovDb7JhXDR8G7z41J1UaUKrhQBBkahEOtlZ99JOVDzvAgSUA==
Received: from CH3PR12MB8659.namprd12.prod.outlook.com (2603:10b6:610:17c::13)
 by PH7PR12MB5734.namprd12.prod.outlook.com (2603:10b6:510:1e1::6) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8314.17; Wed, 8 Jan
 2025 14:58:44 +0000
Received: from CH3PR12MB8659.namprd12.prod.outlook.com
 ([fe80::6eb6:7d37:7b4b:1732]) by CH3PR12MB8659.namprd12.prod.outlook.com
 ([fe80::6eb6:7d37:7b4b:1732%4]) with mapi id 15.20.8314.015; Wed, 8 Jan 2025
 14:58:44 +0000
Date: Wed, 8 Jan 2025 10:58:43 -0400
From: Jason Gunthorpe <jgg@nvidia.com>
To: Christian =?utf-8?B?S8O2bmln?= <christian.koenig@amd.com>
Message-ID: <20250108145843.GR5556@nvidia.com>
References: <20250107142719.179636-1-yilun.xu@linux.intel.com>
 <20250107142719.179636-2-yilun.xu@linux.intel.com>
 <b1f3c179-31a9-4592-a35b-b96d2e8e8261@amd.com>
 <20250108132358.GP5556@nvidia.com>
 <f3748173-2bbc-43fa-b62e-72e778999764@amd.com>
Content-Disposition: inline
In-Reply-To: <f3748173-2bbc-43fa-b62e-72e778999764@amd.com>
X-ClientProxiedBy: BL6PEPF0001640D.NAMP222.PROD.OUTLOOK.COM
 (2603:10b6:22e:400:0:1004:0:14) To CH3PR12MB8659.namprd12.prod.outlook.com
 (2603:10b6:610:17c::13)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CH3PR12MB8659:EE_|PH7PR12MB5734:EE_
X-MS-Office365-Filtering-Correlation-Id: 11416b6d-0c7c-4186-f452-08dd2ff4f23d
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|7416014|1800799024;
X-Microsoft-Antispam-Message-Info: 
	=?utf-8?B?SXhPMDI0WGdRR1R3dURKdTE3L005SXUwOVc5b2xOaWRlZWFVL0haZThtazV3?=
 =?utf-8?B?ei8yLzJ1eVpjRVJNUUc3NkRPOTJFUGp1ekU4S1ZEVlhoN2hCdi9wb1NudC9I?=
 =?utf-8?B?Y1Rwdm16RFhHbjRGT003QkdQcTUxTlhuQTk2bFM0OFBzczVhU1l6TFpHdHl3?=
 =?utf-8?B?cDIrc1hyMXhuSnh4TmN2M1lUN3pPRDArSDZwZHFndG56RlpOWUs0SXdPWEto?=
 =?utf-8?B?QXZIeUZqdzdqajZoT0Jnek9lNkdNYWFWNjJyZzJ2UFFNK1V5U3NZWjJoL3NG?=
 =?utf-8?B?enhvVk92RUpGUHR4bWNtZTRuSHA0QmxLZEx2TWx3VFRLS3NJbXBSTUdzNEdE?=
 =?utf-8?B?RXFVMFF6UmhYTXBibGp0RGQvNUYvYjRYaklIM1lCVDFsQWdJM0tmYXpMekta?=
 =?utf-8?B?NHhlcTJ6eG1zMUkwTzU0WUNWU0Y1cm5Rb0pGd2NaME5NOXpNNDk3YjUwU2hn?=
 =?utf-8?B?RUFRVjYvUWFlTEdxNFlrMElGQXhWUHN6UEtDOExRYzM5S21XZTM1Y29pb3VN?=
 =?utf-8?B?bUljWEJzam1wSlJpUUJHcXpRNGpzTTdpRWFkL2Z0MFFPbUtpWlFsTnpnYjBw?=
 =?utf-8?B?Ty9ZS2ExUVl2NlRsQnJFR2JtanFJTnl5UDNSQTNqV1hyZ253Z0hFc0tBMU9n?=
 =?utf-8?B?MUd1eEtnS1o1T2dESWZCVEUrZGM2NU1CVkd3MERSZW5ob1pqdkk1TXNKa042?=
 =?utf-8?B?YVJyWGZLNjg3VHMxcmlWV0VKRVB6Vzk0Rm82U25mMkNQemZhVmVzVkxSQklq?=
 =?utf-8?B?RWpKakl0SzM2TG4xbkJ5Z2ZIMGgxS1JGa1JqOXRyNjJEeGpvUmZybTNtWjlm?=
 =?utf-8?B?dXNSVXlHYTliZEMrc2ZWUFpKOXUxamFqaUFZNjVPSE1VNmZwRGtvWVZDWW4z?=
 =?utf-8?B?ZkZvVWpOU3Q5THZMZEJsWHZ2MkJrdmlUbTE5cUd4V2N2aXBmdVEyMVNMN2Fv?=
 =?utf-8?B?Rm1RQ0RDa1Q0L282dklxT1haSGVOeTRYL3haY0FtWE5hRENFUGNsN0k0cUVY?=
 =?utf-8?B?dC80WE1ybFNaRUoydTh4RGNrTFJmNmlkejlRUkdTS25aU2VnYTQ1bzJGVFd1?=
 =?utf-8?B?MTl6blQ2Ym4rTFZ3L1RhQnk3TytMMjhMc2hHZTJDUlNPemptdGRSSkl4aVJD?=
 =?utf-8?B?UWhZMUVleEtacUt5NWQ4QTJVZytNdE5lWW9nbC9XYnJlVnppWVZ0WHJqSldG?=
 =?utf-8?B?OXNnNXJDSnU5WDh2dld4YVNGK1c0cnRlanVzeEpwaFpPMzcyWXRMVWkxSEUx?=
 =?utf-8?B?M0dITHpraHlTYTRxNllJMjZpVDA0eUxGejA0ZFoxWmVDcDVuNGdER1hvZVlN?=
 =?utf-8?B?b0NCY1ZkRGhrOFVhNVhOMGV6UTBMb1MvenRlWlFPNUpBaWwrdWVBUDRnL1hq?=
 =?utf-8?B?NEFEbWt3b0J4dG5EaHR4RjRDbmUzQWFaeVMxUitGbVg0RzNic21kUU8yNURQ?=
 =?utf-8?B?SFQ4bDk0ZjNqaFVNZ2lGT1JmZDV3Q1pZTCtsZW5yTTJua1pJbDRiQklXZnlI?=
 =?utf-8?B?QnhBQ0kyaTBKMm9Za1ByRXNyaEZ5Uk5VMlY2VUpVNWNYRDRxVHk3RjZoMmJw?=
 =?utf-8?B?MXlncTdCQnNPMTJ4cEluNFpwUWp3S0xsOGRVSWVRb21rajV4T0VSQTBIZ0pz?=
 =?utf-8?B?ZWNoaVh1L1pCSWgrdTdMaDdjeXZNa0tJK2NQUzk2UXgrVTJGbUxSQ1RyK3lX?=
 =?utf-8?B?VFpsOWxYOFI0blF4bnBrTG5NMm5nVjRHNnlaVFFzaElsS1QwSUhaMjk2aU80?=
 =?utf-8?B?L2JDUTF6aWhLb0k0RzdWN1NYU1FPNlhleXkxZFd4eFI1bHVIejgya3VEQVZP?=
 =?utf-8?B?YlliVXljL1N3cnpKSTVXWDdIZ1BoT1B3dmFKQzRLZ2FtODNBMHZuZ0FXRldj?=
 =?utf-8?Q?1BbtVENNx/fWC?=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CH3PR12MB8659.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(376014)(7416014)(1800799024);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?elphaFVTUUR0WFo4ZmFLZXVkTjNiVEJXajJqVFNpSUFDVUhkenVSd0JRKzhB?=
 =?utf-8?B?endzQ0poYW1QMWltL2NqMUYzVGhhQ0k1SEM0VUlMVklNWWl0VmxNeEl3UGV4?=
 =?utf-8?B?clZ6dDl0YWY5V0RBSEh6SUorTk00SEYzM2YvZGxmMjltcUl1eEVBUUNJeXQ3?=
 =?utf-8?B?aGt1cUR0bE5MSWlkNHFKMmVYTnZCak1CYVErYnlsSXlCTzU3RzVFVW4xVXRC?=
 =?utf-8?B?Rk5mcVZNUWJEYmNEM3BJZzR5QmdPdkZ3SitwdTBFN3FrZWNFQ0ZhR0xHTXp5?=
 =?utf-8?B?L2FibVlNUUhXbjlWOUVNWmFucjNBZ2I2bWVPVDJUdnpMN28ybmNrVkV4Rkw0?=
 =?utf-8?B?UHd2L1pIQUhrSjYzcWNJOE9vU3padjFENDNhb0dxWmtzQUdpMlZwU3puRTND?=
 =?utf-8?B?bS83VTZVcC9WOWkyVEhFVTIrcHRSbStrTWF3a3MzMGNId1dLaVNCd3JNa2Fv?=
 =?utf-8?B?Ti9nRDE0Y2JKSXFXYW1UWTRrdlRyREdVeEZjQkROUERLQWRkWXk0RUwvWjNI?=
 =?utf-8?B?bVBrNlFIaENsZ0lMREhvN0p1a0lqeDAyZXhtMmZQWHVJMWNDczZ1UGprZHd0?=
 =?utf-8?B?ckNuTmZrRDAwblIvT1ZsLzhQdkJyR25qN1F3RnpFblV3MXpFK1gxN1AyNTd3?=
 =?utf-8?B?RnlTM3JIeUZ0SG1XaDhNSFZGMUJsT0YyNitQRm9yNFRuaXByZktmY2h5V3d4?=
 =?utf-8?B?VzBjRW94RFdiSzhKelp5OThMUmlQM251T0R0eFl3NnRuSjdDRlY2NEpmNGFh?=
 =?utf-8?B?eTZpa0RqUlJ5WGFzN1hGZG9GaEpEcm9QZ24zc0ptN3laK0prQlpQZ2o1WnJi?=
 =?utf-8?B?ZThQNjlNR2lLdmc3SnlVT0lsNGNJd3VVWTdLRXk2RXM4UnIvN1d1cW5aR3ZV?=
 =?utf-8?B?aFBFMWw1NURHUU1oWENWeDcyUUpYRm8yS1A5K21RSjdjUGx6U3hEZWpRbkpI?=
 =?utf-8?B?QkFiVFJJa2xUUGdqcUhLT1N6aURTZkpGaWljSHBILzc4dzRiNXhYU21VUlc5?=
 =?utf-8?B?N2FSZ1RTQmowNmdJbldGenVkVWxoTVRzbW5kdkdmclJGb3ZubUl4anFDajQv?=
 =?utf-8?B?R0RvU2x4OUYzZ2Z5Q01CT01ZN29RWUdya0VvSnZLZE5rUkFCdHh5dTdWZ2pz?=
 =?utf-8?B?Z2FGS1U5WTFLYTVxZURnbGxTM25yQ0pQQXEwa3VtWnA4amZGajZoVFhwdktw?=
 =?utf-8?B?elhYKzRYWWZ0VG5kdlc4amJJdHNqNllSUFRiUTJDSkRXNFJuM1R4YnB4eGh4?=
 =?utf-8?B?dCs2TmoyVmk2SU1VZHMwb1J2RS8yblVWQ2lNbzgwMWJMd3dGc0FvcVI3VUhG?=
 =?utf-8?B?U1R5WnFpQVZvMmR2WHJWTU9nYVBJK3BoN016aGpYSnB5NzArU0FyU1pkalB4?=
 =?utf-8?B?eFFTTHZ1dURHaXpJd3BIdG1ZVFh2VEticjlDY0oxNHBmT3hDTFNtdkxEMFFR?=
 =?utf-8?B?NnY5ZldpY0k2U1RxaHhTMm0xNGFZSHYxZjc2YnNvRGUzUmR2NmlKY2hzMUhB?=
 =?utf-8?B?MHVDZkNEN0diWlNYYVh4SjZ0UWZOOWovTEZHVmZJdTQrYWFLQURHQU1JS20x?=
 =?utf-8?B?WWF5L201c2NmOWVoVTdOR0dqVVJyWHpEVksvRFU5eUFzWVFhODFJWU1DcVlM?=
 =?utf-8?B?YTJ4TE5PZFRGR2MrMWVYbFc3R1NwaTRnQ2F4M092aHR3UmppbmROTkRrZXhH?=
 =?utf-8?B?VXJITlhYN1FWQkFSM2VYZVhYSjR6bklEZXdQR0hUUmNxT0NzMGhWUUh1UDRF?=
 =?utf-8?B?QU5wQm1YTVlWQVo2ZlBCbW15MXowaUdLVUMxOGc0VUVCUkkySGRXTHZhZGRt?=
 =?utf-8?B?aUZ5TlBSU2FEcm9WUE4rSndXeHoxY1pzek50bzZjcW5JbnBYallaNE0ycGJV?=
 =?utf-8?B?QzZ2OGtnUU1DVUZ2R00xc3ZPcUtFaWxBUWFUT1hNMlBDQVQ2Q2FhaTh0N2tR?=
 =?utf-8?B?Z1kvSHJha2JyRWl5OEdVbEZmdDZYeHU2VXpaaHNsZHVHeDZkU1d2MVdJVjE5?=
 =?utf-8?B?YjNnK3JIZ0M5Z2s2K3NIUVZMTFBkTFAxY3ZUN2JxZUJTQ2R0ZXh6cVZkeEJa?=
 =?utf-8?B?Zk1jYTVTdlJGdlZpdHJGYUM1WjkyTVpIekMram5IUDUwOGptczJOY08rS1NF?=
 =?utf-8?Q?uPXuGDDz1QgASwiPzo4PnmeeF?=
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 11416b6d-0c7c-4186-f452-08dd2ff4f23d
X-MS-Exchange-CrossTenant-AuthSource: CH3PR12MB8659.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Jan 2025 14:58:44.0885
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Y1zU3efPADksjArmTNaoSLDTKeBByW4QklWUSpr07JieIbSBz8oXUvUJN4GAAWZI
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR12MB5734
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: C1EB73F622
X-Spamd-Bar: ---------
X-Spamd-Result: default: False [-10.00 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[99.98%];
	RBL_SENDERSCORE_REPUT_9(-1.00)[40.107.94.63:from];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[nvidia.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:40.107.0.0/16];
	R_DKIM_ALLOW(-0.20)[Nvidia.com:s=selector2];
	MIME_GOOD(-0.10)[text/plain];
	MIME_TRACE(0.00)[0:+];
	RWL_MAILSPIKE_POSSIBLE(0.00)[40.107.94.63:from];
	ASN(0.00)[asn:8075, ipnet:40.104.0.0/14, country:US];
	RCPT_COUNT_TWELVE(0.00)[25];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TO_DN_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	DKIM_TRACE(0.00)[Nvidia.com:+]
Message-ID-Hash: WG25ESQ7M2PTEMLZNFB3QC4QATGR5JJK
X-Message-ID-Hash: WG25ESQ7M2PTEMLZNFB3QC4QATGR5JJK
X-MailFrom: jgg@nvidia.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Christoph Hellwig <hch@lst.de>, Leon Romanovsky <leonro@nvidia.com>, Xu Yilun <yilun.xu@linux.intel.com>, kvm@vger.kernel.org, dri-devel@lists.freedesktop.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, sumit.semwal@linaro.org, pbonzini@redhat.com, seanjc@google.com, alex.williamson@redhat.com, vivek.kasireddy@intel.com, dan.j.williams@intel.com, aik@amd.com, yilun.xu@intel.com, linux-coco@lists.linux.dev, linux-kernel@vger.kernel.org, lukas@wunner.de, yan.y.zhao@intel.com, leon@kernel.org, baolu.lu@linux.intel.com, zhenzhong.duan@intel.com, tao1.su@intel.com
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [RFC PATCH 01/12] dma-buf: Introduce dma_buf_get_pfn_unlocked() kAPI
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/WG25ESQ7M2PTEMLZNFB3QC4QATGR5JJK/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gV2VkLCBKYW4gMDgsIDIwMjUgYXQgMDI6NDQ6MjZQTSArMDEwMCwgQ2hyaXN0aWFuIEvDtm5p
ZyB3cm90ZToNCg0KPiA+IEhhdmluZyB0aGUgaW1wb3J0ZXIgZG8gdGhlIG1hcHBpbmcgaXMgdGhl
IGNvcnJlY3Qgd2F5IHRvIG9wZXJhdGUgdGhlDQo+ID4gRE1BIEFQSSBhbmQgdGhlIG5ldyBBUEkg
dGhhdCBMZW9uIGhhcyBidWlsdCB0byBmaXggdGhlIHNjYXR0ZXJsaXN0DQo+ID4gYWJ1c2UgaW4g
ZG1hYnVmIHJlbGllcyBvbiBpbXBvcnRlciBtYXBwaW5nIGFzIHBhcnQgb2YgaXQncw0KPiA+IGNv
bnN0cnVjdGlvbi4NCj4gDQo+IEV4YWN0bHkgb24gdGhhdCBJIHN0cm9uZ2x5IGRpc2FncmVlIG9u
Lg0KPiANCj4gRE1BLWJ1ZiB3b3JrcyBieSBwcm92aWRpbmcgRE1BIGFkZHJlc3NlcyB0aGUgaW1w
b3J0ZXIgY2FuIHdvcmsgd2l0aCBhbmQNCj4gKk5PVCogdGhlIHVuZGVybHlpbmcgbG9jYXRpb24g
b2YgdGhlIGJ1ZmZlci4NCg0KVGhlIGV4cGVjdGF0aW9uIGlzIHRoYXQgdGhlIERNQSBBUEkgd2ls
bCBiZSB1c2VkIHRvIERNQSBtYXAgKG1vc3QpDQp0aGluZ3MsIGFuZCB0aGUgRE1BIEFQSSBhbHdh
eXMgd29ya3Mgd2l0aCBhIHBoeXNhZGRyX3QvcGZuDQphcmd1bWVudC4gQmFzaWNhbGx5LCBldmVy
eXRoaW5nIHRoYXQgaXMgbm90IGEgcHJpdmF0ZSBhZGRyZXNzIHNwYWNlDQpzaG91bGQgYmUgc3Vw
cG9ydGVkIGJ5IGltcHJvdmluZyB0aGUgRE1BIEFQSS4gV2UgYXJlIG9uIGNvdXJzZSBmb3INCmZp
bmFsbHkgZ2V0dGluZyBhbGwgdGhlIGNvbW1vbiBjYXNlcyBsaWtlIFAyUCBhbmQgTU1JTyBzb2x2
ZWQNCmhlcmUuIFRoYXQgYWxvbmUgd2lsbCB0YWtlIGNhcmUgb2YgYWxvdC4NCg0KRm9yIFAyUCBj
YXNlcyB3ZSBhcmUgZ29pbmcgdG93YXJkIChQRk4gKyBQMlAgc291cmNlIGluZm9ybWF0aW9uKSBh
cw0KaW5wdXQgdG8gdGhlIERNQSBBUEkuIFRoZSBhZGRpdGlvbmFsICJQMlAgc291cmNlIGluZm9y
bWF0aW9uIiBwcm92aWRlcw0KYSBnb29kIHdheSBmb3IgY28tb3BlcmF0aW5nIGRyaXZlcnMgdG8g
cmVwcmVzZW50IHByaXZhdGUgYWRkcmVzcw0Kc3BhY2VzIGFzIHdlbGwuIEJvdGggaW1wb3J0ZXIg
YW5kIGV4cG9ydGVyIGNhbiBoYXZlIGZ1bGwgdW5kZXJzdGFuZGluZw0Kd2hhdCBpcyBiZWluZyBt
YXBwZWQgYW5kIGRvIHRoZSBjb3JyZWN0IHRoaW5ncywgc2FmZWx5Lg0KDQpTbywgbm8sIHdlIGRv
bid0IGxvb3NlIHByaXZhdGUgYWRkcmVzcyBzcGFjZSBzdXBwb3J0IHdoZW4gbW92aW5nIHRvDQpp
bXBvcnRlciBtYXBwaW5nLCBpbiBmYWN0IGl0IHdvcmtzIGJldHRlciBiZWNhdXNlIHRoZSBpbXBv
cnRlciBnZXRzDQptb3JlIGluZm9ybWF0aW9uIGFib3V0IHdoYXQgaXMgZ29pbmcgb24uDQoNCkkg
aGF2ZSBpbWFnaW5lZCBhIHN0YWdlZCBhcHByb2FjaCB3ZXJlIERNQUJVRiBnZXRzIGEgbmV3IEFQ
SSB0aGF0DQp3b3JrcyB3aXRoIHRoZSBuZXcgRE1BIEFQSSB0byBkbyBpbXBvcnRlciBtYXBwaW5n
IHdpdGggIlAyUCBzb3VyY2UNCmluZm9ybWF0aW9uIiBhbmQgYSBncmFkdWFsIGNvbnZlcnNpb24u
DQoNCkV4cG9ydGVyIG1hcHBpbmcgZmFsbHMgZG93biBpbiB0b28gbWFueSBjYXNlcyBhbHJlYWR5
Og0KDQoxKSBQcml2YXRlIGFkZHJlc3NlcyBzcGFjZXMgZG9uJ3Qgd29yayBmdWxseSB3ZWxsIGJl
Y2F1c2UgbWFueSBkZXZpY2VzDQpuZWVkIHNvbWUgaW5kaWNhdGlvbiB3aGF0IGFkZHJlc3Mgc3Bh
Y2UgaXMgYmVpbmcgdXNlZCBhbmQgc2NhdHRlciBsaXN0DQpjYW4ndCByZWFsbHkgcHJvcGVybHkg
Y29udmV5IHRoYXQuIElmIHRoZSBETUFCVUYgaGFzIGEgbWl4dHVyZSBvZiBDUFUNCmFuZCBwcml2
YXRlIGl0IGJlY29tZXMgYSBQSVRBDQoNCjIpIE11bHRpLXBhdGggUENJIGNhbiByZXF1aXJlIHRo
ZSBpbXBvcnRlciB0byBtYWtlIG1hcHBpbmcgZGVjaXNpb25zDQp1bmlxdWUgdG8gdGhlIGRldmlj
ZSBhbmQgcHJvZ3JhbSBkZXZpY2Ugc3BlY2lmaWMgaW5mb3JtYXRpb24gZm9yIHRoZQ0KbXVsdGkt
cGF0aC4gV2UgYXJlIGRvaW5nIHRoaXMgaW4gbWx4NSB0b2RheSBhbmQgaGF2ZSBoYWNrcyBiZWNh
dXNlDQpETUFCVUYgaXMgZGVzdHJveWluZyB0aGUgaW5mb3JtYXRpb24gdGhlIGltcG9ydGVyIG5l
ZWRzIHRvIGNob29zZSB0aGUNCmNvcnJlY3QgUENJIHBhdGguDQoNCjMpIEltcG9ydGluZyBkZXZp
Y2VzIG5lZWQgdG8ga25vdyBpZiB0aGV5IGFyZSB3b3JraW5nIHdpdGggUENJIFAyUA0KYWRkcmVz
c2VzIGR1cmluZyBtYXBwaW5nIGJlY2F1c2UgdGhleSBuZWVkIHRvIGRvIHRoaW5ncyBsaWtlIHR1
cm4gb24NCkFUUyBvbiB0aGVpciBETUEuIEFzIGZvciBtdWx0aS1wYXRoIHdlIGhhdmUgdGhlIHNh
bWUgaGFja3MgaW5zaWRlIG1seDUNCnRvZGF5IHRoYXQgYXNzdW1lIERNQUJVRnMgYXJlIGFsd2F5
cyBQMlAgYmVjYXVzZSB3ZSBjYW5ub3QgZGV0ZXJtaW5lDQppZiB0aGluZ3MgYXJlIFAyUCBvciBu
b3QgYWZ0ZXIgYmVpbmcgRE1BIG1hcHBlZC4NCg0KNCkgVFBIIGJpdHMgbmVlZHMgdG8gYmUgcHJv
Z3JhbW1lZCBpbnRvIHRoZSBpbXBvcnRlciBkZXZpY2UgYnV0IGFyZQ0KZGVyaXZlZCBiYXNlZCBv
biB0aGUgTlVNQSB0b3BvbG9neSBvZiB0aGUgRE1BIHRhcmdldC4gVGhlIGltcG9ydGVyIGhhcw0K
bm8gaWRlYSB3aGF0IHRoZSBETUEgdGFyZ2V0IGFjdHVhbGx5IHdhcyBiZWNhdXNlIHRoZSBleHBv
cnRlciBtYXBwaW5nDQpkZXN0cm95ZWQgdGhhdCBpbmZvcm1hdGlvbi4NCg0KNSkgaW9tbXVmZCBh
bmQga3ZtIGFyZSBib3RoIHVzaW5nIENQVSBhZGRyZXNzZXMgd2l0aG91dCBETUEuIE5vDQpleHBv
cnRlciBtYXBwaW5nIGlzIHBvc3NpYmxlDQoNCkphc29uDQpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBs
aW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFp
bCB0byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
