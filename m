Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id F1F9EA1A67D
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 23 Jan 2025 16:03:13 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 111B14493F
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 23 Jan 2025 15:03:13 +0000 (UTC)
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (mail-dm3nam02on2041.outbound.protection.outlook.com [40.107.95.41])
	by lists.linaro.org (Postfix) with ESMTPS id BED9E3F646
	for <linaro-mm-sig@lists.linaro.org>; Thu, 23 Jan 2025 15:02:21 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=Nvidia.com header.s=selector2 header.b=CKBnXyMn;
	dmarc=pass (policy=reject) header.from=nvidia.com;
	spf=pass (lists.linaro.org: domain of jgg@nvidia.com designates 40.107.95.41 as permitted sender) smtp.mailfrom=jgg@nvidia.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=poCj68Nz+7xNPOA/jgTby0l2/lPVwjyuuceTA5XH1SOhcXWoBMwo7SyBrhsI9ISjHQMP2HZXh4x6pry0HbqYSOkIEszFUjLtIE5mNwaxnhJ9JbHCTPzIiDjV+task/7WyDCtnyXZMIowVEMOoi0CMivamyBDLNSeCDZ28ElohREGC9OyZ2GjlHUCDYvcPTJ1HVse5wZA5IJ6lhRckRGlNCudEiU9WNgVUtyzsLsVyL1W6JEdm4Xu2Q8evNv2volUT4C65YuZiKqE+1O+fxBJNL2i0CcvB2A54gJLfdCpYpFBnvU6rnPOp1qZZS9k/7hFkuyF7yg3z4T4lS/3w5x8GQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=9X0zY1PirsxozflNWtomch701uE8KASJnn7kUGAlNx8=;
 b=YME2nf4uLKLT94GLIwgreUNmCW/VXtb+asJQxr+0rx+1q2UAOqnBrqSzj5S7HvQVLvdLgiQWsxJqoZsVnrTGofTt9oq6HfI6qYiys9+f0ocr2uY9l4ZDZU8LmAMhlzyBq+xH8UxhGFbJc5cJim22tzFEPld+DrhkSyaNcxQkj59LzhluMVuJvIxI3+a8eyUb0ARmINpa3M+rsVE4NFzgk55M5sTFLZYNoeSzqeEcp1NluTrWKs5Ju+mCsscWQ2EKJH5gg9UNInrDd5kqDh/bY/qEd5HVudTEw/PTmGhO2CT1j688oZKwvyeLyL6oqrGDGzea2aCI7/aeoEw0xI++fg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=9X0zY1PirsxozflNWtomch701uE8KASJnn7kUGAlNx8=;
 b=CKBnXyMnJqB3xk9x2yuOa2cDd9Lb9WG70n0f/G7zKcYivHq0OjSQRAyDmx4w6Y0sRh9sPqORSXSk7vbYt3nE3LeXY3v8SMKqkOXKVDmI+Ve1xGEPTHnAROmNem8BjGC+Bqk2A2S1vLmJ/4ofLtJnuyvP6oPZrY6V72RzCv0pAvqbsKsghPliuWEnzpSI/cDnw/B1GFhub7Rh4gNZ1Tf0kBMtzpoCMv9vW8xltOGROfgiY3wTGLDxJtkeg2sPtB32QPKxnevCMjx4wdCYpDkvb0W/5v4SNzF+dQBw15fjOetsCPChR9XS2kihcBhLYLnxO1Ux+QWYpb/XN54bESnXtw==
Received: from CH3PR12MB8659.namprd12.prod.outlook.com (2603:10b6:610:17c::13)
 by MW4PR12MB7239.namprd12.prod.outlook.com (2603:10b6:303:228::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8377.17; Thu, 23 Jan
 2025 15:02:14 +0000
Received: from CH3PR12MB8659.namprd12.prod.outlook.com
 ([fe80::6eb6:7d37:7b4b:1732]) by CH3PR12MB8659.namprd12.prod.outlook.com
 ([fe80::6eb6:7d37:7b4b:1732%5]) with mapi id 15.20.8356.010; Thu, 23 Jan 2025
 15:02:14 +0000
Date: Thu, 23 Jan 2025 11:02:12 -0400
From: Jason Gunthorpe <jgg@nvidia.com>
To: Christian =?utf-8?B?S8O2bmln?= <christian.koenig@amd.com>
Message-ID: <20250123150212.GR5556@nvidia.com>
References: <20250120194804.GT5556@nvidia.com>
 <Z4_HNA4QQbIsK8D9@phenom.ffwll.local>
 <20250121173633.GU5556@nvidia.com>
 <Z5DQsyV0vwX3Iabu@phenom.ffwll.local>
 <6612c40d-4999-41a1-a4a5-74d3ff5875c3@amd.com>
 <20250122143744.GF5556@nvidia.com>
 <827315b0-23b6-4a39-88eb-34e756298d67@amd.com>
 <20250123135946.GQ5556@nvidia.com>
 <9a36fba5-2dee-46fd-9f51-47c5f0ffc1d4@amd.com>
 <97db03be-df86-440d-be4a-082f94934ddf@amd.com>
Content-Disposition: inline
In-Reply-To: <97db03be-df86-440d-be4a-082f94934ddf@amd.com>
X-ClientProxiedBy: YQBPR0101CA0210.CANPRD01.PROD.OUTLOOK.COM
 (2603:10b6:c01:67::21) To CH3PR12MB8659.namprd12.prod.outlook.com
 (2603:10b6:610:17c::13)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CH3PR12MB8659:EE_|MW4PR12MB7239:EE_
X-MS-Office365-Filtering-Correlation-Id: 134183e8-d63b-4cb7-cf99-08dd3bbeeb88
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|7416014|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: 
	=?utf-8?B?Q0V1Rjh2VXg2YWdZK2ZSSmxLVjZYUFlHY1IxRStYcm84UXdkRmVLN0VTTFVQ?=
 =?utf-8?B?N1AxUmlZRTVxVERGT0ZINU0wTUFXclNTTlVUM01sWjBmNGIwSlozdGtJSWEz?=
 =?utf-8?B?WUxEaElyUE1BMkZNVGMrTW9ZbDRxemdMd20rWCt0UDh2QnZYUGFVdGVpL1dk?=
 =?utf-8?B?QWJud1hDTG9qdmpja1ljU2NkaWdLWEkwQ1E0NDZ3SHFHQm10L1RId1NIbGpG?=
 =?utf-8?B?VjRaR0RESWpueGpjNFVCdVhVU0ZSb09GK0NoZURGZ0hWZmY0NnhXdVlJUVJq?=
 =?utf-8?B?TFA2MlNpcFJ5M1JqU2cwVWJ1WEo2NHVqdWNwTzhDdkhPdjM3ZmFRc2x2ekYy?=
 =?utf-8?B?L0FpV2U1UzQ2ZlFoMUFlTlBKdlRVNUlvb3BHQUJickxjRFFMSUNoclpqWmlD?=
 =?utf-8?B?QUlGT054a0ZKQk5LVHhXZklzeXJ0cFdiQmJjL2hWM0ZTUFk1Z1U3MVVrZ3ds?=
 =?utf-8?B?Y3Zrck9MVE1zS1VBUEdCS3hrSjNqM0VLWGRYdktSTDZvbktnL3EwVlZldlNJ?=
 =?utf-8?B?R0FvblpHcXMzNmNLMkYvZG5tNDBsWUtQOFRnZzdLaHdWYzg0MWRIT0M5Q0Jt?=
 =?utf-8?B?bUJVT0ZEaGcydlIrU2U2OXMvRDlNa2w2b2kxOU5LNXQzT2VrcmNhOVZrNVhY?=
 =?utf-8?B?aEpRL0pWdnIvVURGVmRHTnh1NEZ0U2thY0FyUUIybS9hVW1XaU9oMW83RmNk?=
 =?utf-8?B?T1AxNjR2SERYYzVWQUZZVU9wUTNNRkgwRmJmRy96RjlFb3ZZOXJmbmltMm13?=
 =?utf-8?B?eUpBUEM5YUNkejZyWG10NW8wUmhwK2hacyswV0pxSE9BTlZ0ZHBBVTBZK0tM?=
 =?utf-8?B?a3ovcDBIRGlJM0NSZ1ZNY1dDY1JFeEFpcEgrbjZZVzh5NkpqQ2NUM1JIdkpW?=
 =?utf-8?B?V0k5ZWpTSS9sY0p4UkdLNnloOGd1OEQ2RDhjYlAzREZOeUF4NmtpUHV5amVN?=
 =?utf-8?B?QzZaVHozZTJwcEVKeTRDMVNDOXBFZWVMME9XbXo0cTV6T09reVltQ0Y1SXoy?=
 =?utf-8?B?SXl5aVlnNFozRTI0WDZSVG9qc2xKWjRBcVh3dEdBTHB2YU5jZUJ6d2xrTlhn?=
 =?utf-8?B?TWRmbjNTcEEvSDNlS3hKUjJ2SUw1aEN0M0F1OFlsLy9yR2M1d0dFYkNGSVlO?=
 =?utf-8?B?ZUx2aXhPb0NrOGU2VW5xV1pacVdrVkNFRjhiMjZqcURocTJ0RXkrZ2hhd1NL?=
 =?utf-8?B?WWlPcFNleTdRcUFmU3lZaG5LbVoxWE5oZHNHUDhobGIvRXZCNno2Y296SFlx?=
 =?utf-8?B?OS9iWWpOcVQ4dmIzZG5uN2lIVUVMM3NvUzJOaVNnWkt3VXFEbGtYeVJyTUxY?=
 =?utf-8?B?Z2tEcGFwQlNlSzNLYTVPYnROeFUvd2YrcUJUV0Nna0pEMk5nTHhyU3gyMGNJ?=
 =?utf-8?B?ejNVVmZPRHdDSE9HMW0zeHViTnlmSDhyL3dPU3ZGSHNiUzJRdTMrZ3lwRUx3?=
 =?utf-8?B?VkVjYXpzN25QQUxEM3VCcG1uMnpsbGxrQ1UxcEN4SWlqaTd2WVI3SjVMYm9a?=
 =?utf-8?B?S1padDZROHhqTzVPb1ZiUEU3QUprODZlanF0QXYwOVZrVkJhbElUMUZpbWJM?=
 =?utf-8?B?amptNWZwZnhidUxiNUhJYkIvY2hrVnJtYkVJeTFKMitQeG90M2lOM1M0NGUy?=
 =?utf-8?B?MEpvOXQ3MEQxb3VLdTFmU0tyNzFmcUFkelB2TGp6b2gxazdmdEVaYWVwS1dh?=
 =?utf-8?B?MWNPVTIzSzBnYzAxRTdIalNzSGsyVGRrSkE1aXdFVlYwZVUrUlo0QVdxSDA1?=
 =?utf-8?B?SFdTS081eHZNNmU5Qk1jT3ljT29iZVFydTRSSjdxRGdldGY2aTF6Rjhha28y?=
 =?utf-8?B?OWlqb1RVbk95SmpDTks1c3NDM3ovWSs1cHlZcSs2bFdudTlwT0IvR2syL1kx?=
 =?utf-8?Q?kmKLHIMWK3251?=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CH3PR12MB8659.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(7416014)(376014)(1800799024)(366016);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?OFdSMlpKNTRQWm01TWVhTTU5cFdHWCtlWExSSWlxM2twZ1VXM1dLdlJ4NDdx?=
 =?utf-8?B?cGFhRnpwbk5lTmJENjE2MHFnOUc0UXlFQStwUmdDZTFzSUZwcVpNY0JzWnhp?=
 =?utf-8?B?RmZXVkh0NStoZVViS1dxZ1MyanBmTUdtUkdYNUU2bkdQNE1UUVczOHlGRWJC?=
 =?utf-8?B?eE1TNGxCK0lneHh0WS8zcEQzVjdKQkV1bFRYMjFqWENrSmZjbmlxZ3VhUTJG?=
 =?utf-8?B?MGpndFNFdG9zelY4ekhkeGJyRFhIR25iRmQrbkttUUlrdFJEdmtHbVpiWjNZ?=
 =?utf-8?B?d0lQTGJNQzJ5MjlGYUhlSkdXRlBSR3Q0WkhhQk1MYWJzTDZTSWh4S3lNQlA3?=
 =?utf-8?B?WUFPOG43N0NIZ1g2amZoZ213b3dDTEZWOE5Dc1JiUUR1TGJpcTlPN0tLZm92?=
 =?utf-8?B?c2hvNVVjZnVKdjBSRjRWdjAzVzM3WGZxNEN2ODBCNWx1QUlWb3crOEpLdGFC?=
 =?utf-8?B?TXFlck13ZEY2aUdSb2t4QzhRV0JxSjVhakpOSzRJNDd3QWxwT2JvM0toUEZk?=
 =?utf-8?B?THNCMkNTbTFkd3M0VUpxemtJQnQ4M2NxTXQ5RlVVOXRaRTdXVWN3MVdIejR3?=
 =?utf-8?B?NTFJc2lRMWY1enJWSFhSNVoxM2FuL2UxNzk5RktWTEt0ZitXempiMDFNaStG?=
 =?utf-8?B?RmVuL01tSnZMb04rdy81eTNEUDJOcFJKd0diaVBVYkQrazY4V3hiTFFpbHZq?=
 =?utf-8?B?NnFnYlhTUDltd1JYVnk0UkI1MkR4RWNMMXMzSGZxbDN6OVhHaFE1NXErdEh0?=
 =?utf-8?B?emZ4cGlPTkh4QmxrYmxiZjVsNTA1L0RGMi9ycjBBeE52YmpySWlLOWZvYXlu?=
 =?utf-8?B?eUpSOGJmeHFaa3NMS3IycFpaeDdKQmRhRDJydENQQml5RitNZG5PSTZleU1G?=
 =?utf-8?B?cUxFT3lpNzEwaHM1UzcvblBadjVDcmdtVC9ua3VsdnBXc0g2Uk8xc1ZaenNh?=
 =?utf-8?B?Z1VQRlVEOUNROUNpVXMyVkZET05sSnVxc2ExN1g2a0ZoV2Q1bXA0SEl0OVNs?=
 =?utf-8?B?Zk5xamdpc2I1b3VHK3puYzVKVEJWU01IbVp1cHJUc1JOYUdqcktYaUx2U01n?=
 =?utf-8?B?NVAvSVJXNWVFWXM3M3pkV0Nnck55cSs5dU1yOHFtejhSVVNKWDdmeTlKTmta?=
 =?utf-8?B?aFJFYWt6SFl4eW15MEpQdnNoU24vcmtYRDFnK1llTlRxUTR0Y0FlVklVUFl1?=
 =?utf-8?B?YXNZQlNQWURXbUxXbVlqaVdkT2VHMVdtUzBBZWdWaGwzbXEzNDRQSU5TWUVq?=
 =?utf-8?B?czBZRWl2SmVCejAweGw3UEtGNkd1cWt4dlc3NzhHL0dNOWFSRjE4Qi9PbFVW?=
 =?utf-8?B?am1HYVdxaTUzNUJ3SmxvaVh6RFoxUnVWYVBzcDFuOGFZSG94d1d2cmV3TTlR?=
 =?utf-8?B?SU1YRWtlUG9WK0MrRXEyR3c4TVZzRWpHN0xVM3JCWGNsWEJjcXRaOGVrTEpv?=
 =?utf-8?B?aEtYQmpmKzRNWmU2OVczZTlERmt4ckpiYTVJMSs2YU1UcjM3UmJYMlFxTEtV?=
 =?utf-8?B?a0UrY0Vwc2c5dG1EZGxLUlVwcCt0enN2Ynd2NDIxRDNzaFRNeWhpNGQyNytS?=
 =?utf-8?B?Zmh5bWhpMHRDR1RycEplTldnMXFnQ1RLM3JENHNBUkJVZ0pISHVGaC9mUWxE?=
 =?utf-8?B?dDAxQVJSNVFnd0E2RG1MVS9YNTR4aVQzMG0yc0ZGMzNRbjNGTHIzbFBHSmll?=
 =?utf-8?B?ZjJ1WUlWbUlCTXhRYkRRb0Z0RFVwb1ZPYmxvYmg4VFBLRkFMYU5WZVpFL2xn?=
 =?utf-8?B?WTJSL2UrY3ZMbktDOXU5dVdHN0ZkR1o4aGc1aXlNUDd1cGpJOTR0b1Yva0Yx?=
 =?utf-8?B?NmZNeHpWYVdTK09Zd3FXc1lueGd2VnhjMDNoZTlaMEdEbnNXSXlRSkxyZ3lL?=
 =?utf-8?B?YzZLS01WWUZLWEh5dHIrYllCa1V0SVZMU0M4dE9BdE9OZS82ZUdjZE1nK0w2?=
 =?utf-8?B?Y0Z3REFlcUhOdmkvRklGZ2IwelY3V0Q2RWZ0SEU2UTZVTzl6NWdpSlptOWQ3?=
 =?utf-8?B?d2pZcXN1RW45Yzc5QmU0bnZocVF0Tkh3MGw0eGhBZEVRT2doLzVid3RpT2ov?=
 =?utf-8?B?VGRLb0syOG16RnF2MGl3ZUIyZy9sVXFVbHJGa21GTzh1cmN2a1hjQWJ3c21N?=
 =?utf-8?Q?jhZhi/LcyDymuAj0knGdxI048?=
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 134183e8-d63b-4cb7-cf99-08dd3bbeeb88
X-MS-Exchange-CrossTenant-AuthSource: CH3PR12MB8659.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Jan 2025 15:02:14.0054
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: jYoMGucttTUnGRvoUdgsaJZY8KEv7mtbxt/x6NXWYE8kRZMSKldPwzGKJMwHyt4s
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR12MB7239
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: BED9E3F646
X-Spamd-Bar: ----------
X-Spamd-Result: default: False [-10.00 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[100.00%];
	RBL_SENDERSCORE_REPUT_9(-1.00)[40.107.95.41:from];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[nvidia.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:40.107.0.0/16];
	R_DKIM_ALLOW(-0.20)[Nvidia.com:s=selector2];
	MIME_GOOD(-0.10)[text/plain];
	MIME_TRACE(0.00)[0:+];
	RWL_MAILSPIKE_POSSIBLE(0.00)[40.107.95.41:from];
	ASN(0.00)[asn:8075, ipnet:40.104.0.0/14, country:US];
	RCPT_COUNT_TWELVE(0.00)[24];
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
Message-ID-Hash: 4342FZXYZFN6QJ7DF27AXC5EZ3ZCJNPF
X-Message-ID-Hash: 4342FZXYZFN6QJ7DF27AXC5EZ3ZCJNPF
X-MailFrom: jgg@nvidia.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Xu Yilun <yilun.xu@linux.intel.com>, Christoph Hellwig <hch@lst.de>, Leon Romanovsky <leonro@nvidia.com>, kvm@vger.kernel.org, dri-devel@lists.freedesktop.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, sumit.semwal@linaro.org, pbonzini@redhat.com, seanjc@google.com, alex.williamson@redhat.com, vivek.kasireddy@intel.com, dan.j.williams@intel.com, aik@amd.com, yilun.xu@intel.com, linux-coco@lists.linux.dev, linux-kernel@vger.kernel.org, lukas@wunner.de, yan.y.zhao@intel.com, leon@kernel.org, baolu.lu@linux.intel.com, zhenzhong.duan@intel.com, tao1.su@intel.com
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [RFC PATCH 01/12] dma-buf: Introduce dma_buf_get_pfn_unlocked() kAPI
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/4342FZXYZFN6QJ7DF27AXC5EZ3ZCJNPF/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gVGh1LCBKYW4gMjMsIDIwMjUgYXQgMDM6MzU6MjFQTSArMDEwMCwgQ2hyaXN0aWFuIEvDtm5p
ZyB3cm90ZToNCj4gU2VuZGluZyBpdCBhcyB0ZXh0IG1haWwgb25jZSBtb3JlLg0KPiANCj4gQW0g
MjMuMDEuMjUgdW0gMTU6MzIgc2NocmllYiBDaHJpc3RpYW4gS8O2bmlnOg0KPiA+IEFtIDIzLjAx
LjI1IHVtIDE0OjU5IHNjaHJpZWIgSmFzb24gR3VudGhvcnBlOg0KPiA+ID4gT24gV2VkLCBKYW4g
MjIsIDIwMjUgYXQgMDM6NTk6MTFQTSArMDEwMCwgQ2hyaXN0aWFuIEvDtm5pZyB3cm90ZToNCj4g
PiA+ID4gPiA+IEZvciBleGFtcGxlIHdlIGhhdmUgY2FzZXMgd2l0aCBtdWx0aXBsZSBkZXZpY2Vz
IGFyZSBpbiB0aGUgc2FtZSBJT01NVSBkb21haW4NCj4gPiA+ID4gPiA+IGFuZCByZS11c2luZyB0
aGVpciBETUEgYWRkcmVzcyBtYXBwaW5ncy4NCj4gPiA+ID4gPiBJTUhPIHRoaXMgaXMganVzdCBh
bm90aGVyIGZsYXZvdXIgb2YgInByaXZhdGUiIGFkZHJlc3MgZmxvdyBiZXR3ZWVuDQo+ID4gPiA+
ID4gdHdvIGNvb3BlcmF0aW5nIGRyaXZlcnMuDQo+ID4gPiA+IFdlbGwgdGhhdCdzIHRoZSBwb2lu
dC4gVGhlIGlucG9ydGVyIGlzIG5vdCBjb29wZXJhdGluZyBoZXJlLg0KPiA+ID4gSWYgdGhlIHBy
aXZhdGUgYWRkcmVzcyByZWxpZXMgb24gYSBzaGFyZWQgaW9tbXVfZG9tYWluIGNvbnRyb2xsZWQg
YnkNCj4gPiA+IHRoZSBkcml2ZXIsIHRoZW4geWVzLCB0aGUgaW1wb3J0ZXIgTVVTVCBiZSBjb29w
ZXJhdGluZy4gRm9yIGluc3RhbmNlLA0KPiA+ID4gaWYgeW91IHNlbmQgdGhlIHNhbWUgcHJpdmF0
ZSBhZGRyZXNzIGludG8gUkRNQSBpdCB3aWxsIGV4cGxvZGUgYmVjYXVzZQ0KPiA+ID4gaXQgZG9l
c24ndCBoYXZlIGFueSBub3Rpb24gb2Ygc2hhcmVkIGlvbW11X2RvbWFpbiBtYXBwaW5ncywgYW5k
IGl0DQo+ID4gPiBjZXJ0YWlubHkgZG9lc24ndCBzZXR1cCBhbnkgc3VjaCBzaGFyZWQgZG9tYWlu
cy4NCj4gPiANCj4gPiBIdWk/IFdoeSB0aGUgaGVjayBzaG91bGQgYSBkcml2ZXIgb3duIGl0J3Mg
aW9tbXUgZG9tYWluPw0KDQpJIGRvbid0IGtub3csIHlvdSBhcmUgdGhlIG9uZSBzYXlpbmcgdGhl
IGRyaXZlcnMgaGF2ZSBzcGVjaWFsIHNoYXJlZA0KaW9tbXVfZG9tYWlucyBzbyBETUEgQlVGIG5l
ZWQgc29tZSBzcGVjaWFsIGRlc2lnbiB0byBhY2NvbW1vZGF0ZSBpdC4NCg0KSSdtIGF3YXJlIHRo
YXQgRFJNIGRyaXZlcnMgZG8gZGlyZWN0bHkgY2FsbCBpbnRvIHRoZSBpb21tdSBzdWJzeXN0ZW0N
CmFuZCBkbyBkaXJlY3RseSBtYW5hZ2UgdGhlaXIgb3duIElPVkEuIEkgYXNzdW1lZCB0aGlzIGlz
IHdoYXQgeW91IHdlcmUNCnRhbGtpbmdhIGJvdXQuIFNlZSBiZWxvdy4NCg0KPiA+IFRoZSBkb21h
aW4gaXMgb3duZWQgYW5kIGFzc2lnbmVkIGJ5IHRoZSBQQ0kgc3Vic3lzdGVtIHVuZGVyIExpbnV4
Lg0KDQpUaGF0IGRvbWFpbiBpcyAqZXhjbHVzaXZlbHkqIG93bmVkIGJ5IHRoZSBETUEgQVBJIGFu
ZCBpcyBvbmx5IGFjY2Vzc2VkDQp2aWEgbWFwcyBjcmVhdGVkIGJ5IERNQSBBUEkgY2FsbHMuDQoN
CklmIHlvdSBhcmUgdXNpbmcgdGhlIERNQSBBUEkgY29ycmVjdGx5IHRoZW4gYWxsIG9mIHRoaXMg
aXMgYWJzdHJhY3RlZA0KYW5kIG5vbmUgb2YgaXQgbWF0dGVycyB0byB5b3UuIFRoZXJlIGlzIG5v
IGNvbmNlcHQgb2YgInNoYXJlZCBkb21haW5zIg0KaW4gdGhlIERNQSBBUEkuIA0KDQpZb3UgY2Fs
bCB0aGUgRE1BIEFQSSwgeW91IGdldCBhIGRtYV9hZGRyX3QgdGhhdCBpcyB2YWxpZCBmb3IgYQ0K
KnNpbmdsZSogZGV2aWNlLCB5b3UgcHJvZ3JhbSBpdCBpbiBIVy4gVGhhdCBpcyBhbGwuIFRoZXJl
IGlzIG5vIHJlYXNvbg0KdG8gZGlnIGRlZXBlciB0aGFuIHRoaXMuDQogDQo+ID4gPiA+IFRoZSBp
bXBvcnRlciBkb2Vzbid0IGhhdmUgdGhlIHNsaWdodGVzdCBpZGVhIHRoYXQgaGUgaXMgc2hhcmlu
ZyBpdCdzIERNQQ0KPiA+ID4gPiBhZGRyZXNzZXMgd2l0aCB0aGUgZXhwb3J0ZXIuDQo+ID4gPiBP
ZiBjb3Vyc2UgaXQgZG9lcy4gVGhlIGltcG9ydGVyIGRyaXZlciB3b3VsZCBoYXZlIGhhZCB0byBl
eHBsaWNpdGx5DQo+ID4gPiBzZXQgdGhpcyB1cCEgVGhlIG5vcm1hbCBrZXJuZWwgYmVoYXZpb3Ig
aXMgdGhhdCBhbGwgZHJpdmVycyBnZXQNCj4gPiA+IHByaXZhdGUgaW9tbXVfZG9tYWlucyBjb250
cm9sZWQgYnkgdGhlIERNQSBBUEkuIElmIHlvdXIgZHJpdmVyIGlzDQo+ID4gPiBkb2luZyBzb21l
dGhpbmcgZWxzZSAqaXQgZGlkIGl0IGRlbGliZXJhdGVseSouDQo+ID4gDQo+ID4gQXMgZmFyIGFz
IEkga25vdyB0aGF0IGlzIHNpbXBseSBub3QgY29ycmVjdC4gQ3VycmVudGx5IElPTU1VDQo+ID4g
ZG9tYWlucy9ncm91cHMgYXJlIHVzdWFsbHkgc2hhcmVkIGJldHdlZW4gZGV2aWNlcy4NCg0KTm8s
IHRoZSBvcHBvc2l0ZS4gVGhlIGlvbW11IHN1YnN5c3RlbSB0cmllcyB0byBtYXhpbWFsbHkgaXNv
bGF0ZQ0KZGV2aWNlcyB1cCB0byB0aGUgSFcgbGltaXQuDQoNCk9uIHNlcnZlciBwbGF0Zm9ybXMg
ZXZlcnkgZGV2aWNlIGlzIGV4cGVjdGVkIHRvIGdldCBpdHMgb3duIGlvbW11IGRvbWFpbi4NCg0K
PiA+IEVzcGVjaWFsbHkgbXVsdGkgZnVuY3Rpb24gZGV2aWNlcyBnZXQgb25seSBhIHNpbmdsZSBJ
T01NVSBkb21haW4uDQoNCk9ubHkgaWYgdGhlIFBDSSBIVyBkb2Vzbid0IHN1cHBvcnQgQUNTLg0K
DQpUaGlzIGlzIGFsbCBETUEgQVBJIGludGVybmFsIGRldGFpbHMgeW91IHNob3VsZG4ndCBldmVu
IGJlIHRhbGtpbmcNCmFib3V0IGF0IHRoZSBETUEgQlVGIGxldmVsLiBJdCBpcyBhbGwgaGlkZGVu
IGFuZCBzaW1wbHkgZG9lcyBub3QNCm1hdHRlciB0byBETUEgQlVGIGF0IGFsbC4NCg0KPiA+ID4g
VGhlIG5ldyBpb21tdSBhcmNoaXRlY3R1cmUgaGFzIHRoZSBwcm9iaW5nIGRyaXZlciBkaXNhYmxl
IHRoZSBETUEgQVBJDQo+ID4gPiBhbmQgY2FuIHRoZW4gbWFuaXB1bGF0ZSBpdHMgaW9tbXUgZG9t
YWluIGhvd2V2ZXIgaXQgbGlrZXMsIHNhZmVseS4gSWUNCj4gPiA+IHRoZSBwcm9iaW5nIGRyaXZl
ciBpcyBhd2FyZSBhbmQgcGFydGljaWFwdGluZyBpbiBkaXNhYmxpbmcgdGhlIERNQQ0KPiA+ID4g
QVBJLg0KPiA+IA0KPiA+IFdoeSB0aGUgaGVjayBzaG91bGQgd2UgZG8gdGhpcz8NCj4gPiANCj4g
PiBUaGF0IGRyaXZlcnMgbWFuYWdlIGFsbCBvZiB0aGF0IG9uIHRoZWlyIG93biBzb3VuZHMgbGlr
ZSBhIG1hc3NpdmUgc3RlcA0KPiA+IGluIHRoZSB3cm9uZyBkaXJlY3Rpb24uDQoNCkkgYW0gdGFs
a2luZyBhYm91dCBEUk0gZHJpdmVycyB0aGF0IEhBVkUgdG8gbWFuYWdlIHRoZWlyIG93biBmb3Ig
c29tZQ0KcmVhc29uIEkgZG9uJ3Qga25vdy4gZWc6DQoNCmRyaXZlcnMvZ3B1L2RybS9ub3V2ZWF1
L252a20vZW5naW5lL2RldmljZS90ZWdyYS5jOiAgICAgICAgICAgICB0ZGV2LT5pb21tdS5kb21h
aW4gPSBpb21tdV9kb21haW5fYWxsb2MoJnBsYXRmb3JtX2J1c190eXBlKTsNCmRyaXZlcnMvZ3B1
L2RybS9tc20vbXNtX2lvbW11LmM6ICAgICAgICBkb21haW4gPSBpb21tdV9wYWdpbmdfZG9tYWlu
X2FsbG9jKGRldik7DQpkcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvcm9ja2NoaXBfZHJtX2Rydi5j
OiAgICBwcml2YXRlLT5kb21haW4gPSBpb21tdV9wYWdpbmdfZG9tYWluX2FsbG9jKHByaXZhdGUt
PmlvbW11X2Rldik7DQpkcml2ZXJzL2dwdS9kcm0vdGVncmEvZHJtLmM6ICAgICAgICAgICAgdGVn
cmEtPmRvbWFpbiA9IGlvbW11X3BhZ2luZ19kb21haW5fYWxsb2MoZG1hX2Rldik7DQpkcml2ZXJz
L2dwdS9ob3N0MXgvZGV2LmM6ICAgICAgICAgICAgICAgaG9zdC0+ZG9tYWluID0gaW9tbXVfcGFn
aW5nX2RvbWFpbl9hbGxvYyhob3N0LT5kZXYpOw0KDQpOb3JtYWwgc2ltcGxlIGRyaXZlcnMgc2hv
dWxkIG5ldmVyIGJlIGNhbGxpbmcgdGhlc2UgZnVuY3Rpb25zIQ0KDQpJZiB5b3UgYXJlIGNhbGxp
bmcgdGhlc2UgZnVuY3Rpb25zIHlvdSBhcmUgbm90IHVzaW5nIHRoZSBETUEgQVBJLCBhbmQsDQp5
ZXMsIHNvbWUgY2FzZXMgbGlrZSB0ZWdyYSBuMXggYXJlIGFjdGl2ZWx5IHNoYXJpbmcgdGhlc2Ug
c3BlY2lhbA0KZG9tYWlucyBhY3Jvc3MgbXVsdGlwbGUgZGV2aWNlcyBhbmQgZHJpdmVycy4NCg0K
SWYgeW91IHdhbnQgdG8gcGFzcyBhbiBJT1ZBIGluIG9uZSBvZiB0aGVzZSBzcGVjaWFsIGRyaXZl
ci1jcmVhdGVkDQpkb21haW5zIHRoZW4gaXQgd291bGQgYmUgc29tZSBwcml2YXRlIGFkZHJlc3Mg
aW4gRE1BQlVGIHRoYXQgb25seQ0Kd29ya3Mgb24gZHJpdmVycyB0aGF0IGhhdmUgdW5kZXJzdG9v
ZCB0aGV5IGF0dGFjaGVkIHRvIHRoZXNlIG1hbnVhbGx5DQpjcmVhdGVkIGRvbWFpbnMuIE5vIERN
QSBBUEkgaW52b2x2ZW1lbnQgaGVyZS4NCg0KPiA+ID4gPiBJIHN0aWxsIHN0cm9uZ2x5IHRoaW5r
IHRoYXQgdGhlIGV4cG9ydGVyIHNob3VsZCB0YWxrIHdpdGggdGhlIERNQSBBUEkgdG8NCj4gPiA+
ID4gc2V0dXAgdGhlIGFjY2VzcyBwYXRoIGZvciB0aGUgaW1wb3J0ZXIgYW5kICpub3QqIHRoZSBp
bXBvcnRlciBkaXJlY3RseS4NCj4gPiA+IEl0IGlzIGNvbnRyYXJ5IHRvIHRoZSBkZXNpZ24gb2Yg
dGhlIG5ldyBBUEkgd2hpY2ggd2FudHMgdG8gY28tb3B0aW1pemUNCj4gPiA+IG1hcHBpbmcgYW5k
IEhXIHNldHVwIHRvZ2V0aGVyIGFzIG9uZSB1bml0Lg0KPiA+IA0KPiA+IFllYWggYW5kIEknbSBy
ZWFsbHkgcXVlc3Rpb25pbmcgdGhpcyBkZXNpZ24gZ29hbC4gVGhhdCBzb3VuZHMgbGlrZQ0KPiA+
IHRvdGFsbHkgZ29pbmcgaW50byB0aGUgd3JvbmcgZGlyZWN0aW9uIGp1c3QgYmVjYXVzZSBvZiB0
aGUgUkRNQQ0KPiA+IGRyaXZlcnMuDQoNCkFjdHVhbGx5IGl0IGlzIHN0b3JhZ2UgdGhhdCBtb3Rp
dmF0ZXMgdGhpcy4gSXQgaXMganVzdCBwb2ludGxlc3MgdG8NCmFsbG9jYXRlIGEgZG1hX2FkZHJf
dCBsaXN0IGluIHRoZSBmYXN0IHBhdGggd2hlbiB5b3UgZG9uJ3QgbmVlZA0KaXQuIFlvdSBjYW4g
c3RyZWFtIHRoZSBkbWFfYWRkcl90IGRpcmVjdGx5IGludG8gSFcgc3RydWN0dXJlcyB0aGF0IGFy
ZQ0KbmVjZXNzYXJ5IGFuZCBhbHJlYWR5IGFsbG9jYXRlZC4NCg0KPiA+ID4gRm9yIGluc3RhbmNl
IGluIFJETUEgd2Ugd2FudCB0byBoaW50IGFuZCBjb250cm9sIHRoZSB3YXkgdGhlIElPTU1VDQo+
ID4gPiBtYXBwaW5nIHdvcmtzIGluIHRoZSBETUEgQVBJIHRvIG9wdGltaXplIHRoZSBSRE1BIEhX
IHNpZGUuIEkgY2FuJ3QgZG8NCj4gPiA+IHRob3NlIG9wdGltaXphdGlvbnMgaWYgSSdtIG5vdCBp
biBjb250cm9sIG9mIHRoZSBtYXBwaW5nLg0KPiA+IA0KPiA+IFdoeT8gV2hhdCBpcyB0aGUgdGVj
aG5pY2FsIGJhY2tncm91bmQgaGVyZT8NCg0KZG1hLWlvbW11LmMgY2hvb3NlcyBhbiBJT1ZBIGFs
aWdubWVudCBiYXNlZCBvbiBpdHMgb3duIHJlYXNvbmluZyB0aGF0DQppcyBub3QgYWx3YXlzIGNv
bXBhdGlibGUgd2l0aCB0aGUgSFcuIFRoZSBIVyBjYW4gb3B0aW1pemUgaWYgdGhlIElPVkENCmFs
aWdubWVudCBtZWV0cyBjZXJ0YWluIHJlc3RyaWN0aW9ucy4gTXVjaCBsaWtlIHBhZ2UgdGFibGVz
IGluIGEgR1BVLg0KDQo+ID4gPiBUaGUgc2FtZSBpcyBwcm9iYWJseSB0cnVlIG9uIHRoZSBHUFUg
c2lkZSB0b28sIHlvdSB3YW50IElPVkFzIHRoYXQNCj4gPiA+IGhhdmUgdGlkeSBhbGlnbm1lbnQg
d2l0aCB5b3VyIFBURSBzdHJ1Y3R1cmUsIGJ1dCBvbmx5IHRoZSBpbXBvcnRlcg0KPiA+ID4gdW5k
ZXJzdGFuZHMgaXRzIG93biBIVyB0byBtYWtlIHRoZSBjb3JyZWN0IGhpbnRzIHRvIHRoZSBETUEg
QVBJLg0KPiA+IA0KPiA+IFllYWggYnV0IHRoZW4gZXhwcmVzcyB0aG9zZSBhcyByZXF1aXJlbWVu
dHMgdG8gdGhlIERNQSBBUEkgYW5kIG5vdCBtb3ZlDQo+ID4gYWxsIHRoZSBpbXBvcnRhbnQgZGVj
aXNpb25zIGludG8gdGhlIGRyaXZlciB3aGVyZSB0aGV5IGFyZSBpbXBsZW1lbnRlZA0KPiA+IG92
ZXIgYW5kIG92ZXIgYWdhaW4gYW5kIHBvdGVudGlhbGx5IGJyb2tlbiBoYWx2ZSB0aGUgdGltZS4N
Cg0KSXQgd291aWxkIGJlIGluIHRoZSBETUEgQVBJLCBqdXN0IHRoZSBwZXItbWFwcGluZyBwb3J0
aW9uIG9mIHRoZSBBUEkuDQoNClNhbWUgYXMgdGhlIG11bHRpcGF0aCwgdGhlIEFUUywgYW5kIG1v
cmUuIEl0IGlzIGFsbCBwZXItbWFwcGluZw0KZGVzY2lzaW9ucyBvZiB0aGUgZXhlY3V0aW5nIEhX
LCBub3QgZ2xvYmFsIGRlY2lzaW9ucyBvciBzb21ldGhpbmcNCmxpa2UuDQoNCkphc29uDQpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2ln
IG1haWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJz
Y3JpYmUgc2VuZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5v
cmcK
