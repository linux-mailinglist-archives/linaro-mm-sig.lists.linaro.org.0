Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 62B81C2537E
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 31 Oct 2025 14:16:42 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 7AB5B3F774
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 31 Oct 2025 13:16:41 +0000 (UTC)
Received: from SA9PR02CU001.outbound.protection.outlook.com (mail-southcentralusazon11013013.outbound.protection.outlook.com [40.93.196.13])
	by lists.linaro.org (Postfix) with ESMTPS id 2708A3F751
	for <linaro-mm-sig@lists.linaro.org>; Fri, 31 Oct 2025 13:16:30 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=Nvidia.com header.s=selector2 header.b=HQRESuER;
	dmarc=pass (policy=reject) header.from=nvidia.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1");
	spf=pass (lists.linaro.org: domain of jgg@nvidia.com designates 40.93.196.13 as permitted sender) smtp.mailfrom=jgg@nvidia.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=qlsnT/+bDKCAb3BXTfL3XlclVeNI+8cjAOLN0WnReLoYqnM+TNJGYm47hX3vJNklOEz2Oe8A0Fasb2bii3iYpAgoyXx/dcpTeGI+Dec6qa7+wXlLB4lqn/Gjzn+j8SsbX8FIl0dAHGhV+EeBXeKKsMNoEQ+s678Wkb/U9xlQ9rzIWVXsL1sbpzeMFpjc1lKZyKc9evP/hnvWdLwdyXPPBHfODrJlBbYA5Vizc6ljKjnbjRPDCEHqX/zvtf9nbV5qeKuvg8hRzQ04oXktuCy7apQX3mzkyygNUwhJlBk87s6ymsQnvMrR3LBe6JDlXP0S54EtbpPdS/ssETSoP9viTA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=gwRXeoT1zTxvkBbBnXFv5B6SvjoCyUcngM4Uh648UKs=;
 b=yqvNYMvbMmaabfBZmgEhEhl3UgqVXt+petCwbR/I/PXJ8Gyox5zpqW0Zp29I8VpaNUfhRUXqZZsbYWCgz5JMJnvrwrEl2WeZ/hdM3izY53HArdet0eH59BRnzWWwI37K0Oq3bEaCGMx/sAsAp4k5X2E5GZVQ7n4u2/RapD6vUTtLedWV4oYOEhl5ZqZBvNaZtUZ1/BQD4/eGJ3hmowLgp+vzt2G/8ui//7+8+LgUn0hxXe3yeYCdVDnd0J7NJp8QFWJsxNv72PoI/v1pi7sj3nRhsVTTgS9tQJo7mpu88BE6Ov8rQBwfZq4y0jMjSE71AER2P6wVeh6oD2asEuA8+A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=gwRXeoT1zTxvkBbBnXFv5B6SvjoCyUcngM4Uh648UKs=;
 b=HQRESuER+kD9ppt0U7uOgk9feLe2yZuUFN8S+TLM33XCooHdz5k+eabv/wNWE2o8J3lIqrHcTyIEwXsx5bw05+u+Cx940znRjP4LFgQDcK50GYvhI70Z+2A7PtEZyLaPu2Q7Cv/I6GUMfdbbMPhEvPX3SZKaLpYdN8vEFljsalgGD/4NsWOQjuJYiLvOnDUEvUb7daDFsQJuL7vV7Prp33utRJEfP11ViiGhEiHAR6MQiYtwwcnryJH8GH2HRMt9BaUKh3aVI7Ro4CTGXuMkhLvGZAWN/9Op0esTrHggxG54jMZBCU9gUzUukwQQ4QvS7Th/NNecYb4Tb7Bs+gZSaA==
Received: from MN2PR12MB3613.namprd12.prod.outlook.com (2603:10b6:208:c1::17)
 by DS2PR12MB9616.namprd12.prod.outlook.com (2603:10b6:8:275::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9275.15; Fri, 31 Oct
 2025 13:16:27 +0000
Received: from MN2PR12MB3613.namprd12.prod.outlook.com
 ([fe80::1b3b:64f5:9211:608b]) by MN2PR12MB3613.namprd12.prod.outlook.com
 ([fe80::1b3b:64f5:9211:608b%4]) with mapi id 15.20.9275.013; Fri, 31 Oct 2025
 13:16:27 +0000
Date: Fri, 31 Oct 2025 10:16:25 -0300
From: Jason Gunthorpe <jgg@nvidia.com>
To: Christian =?utf-8?B?S8O2bmln?= <christian.koenig@amd.com>
Message-ID: <20251031131625.GC1235738@nvidia.com>
References: <20251027044712.1676175-1-vivek.kasireddy@intel.com>
 <20251029002726.GA1092494@nvidia.com>
 <IA0PR11MB7185E85E1CFAA04485768E30F8FBA@IA0PR11MB7185.namprd11.prod.outlook.com>
 <20251030134310.GR1018328@nvidia.com>
 <CH3PR11MB71772DF7DC3776F838AA8CC8F8F8A@CH3PR11MB7177.namprd11.prod.outlook.com>
 <146d57e6-29dd-4412-9786-a630574e4872@amd.com>
Content-Disposition: inline
In-Reply-To: <146d57e6-29dd-4412-9786-a630574e4872@amd.com>
X-ClientProxiedBy: BL1PR13CA0341.namprd13.prod.outlook.com
 (2603:10b6:208:2c6::16) To MN2PR12MB3613.namprd12.prod.outlook.com
 (2603:10b6:208:c1::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN2PR12MB3613:EE_|DS2PR12MB9616:EE_
X-MS-Office365-Filtering-Correlation-Id: a6f8099d-0b67-41ea-81b1-08de187fb27b
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|7416014|376014|1800799024;
X-Microsoft-Antispam-Message-Info: 
	=?utf-8?B?R1U4V0V5RDFvREhXNzNPajA0MVZlajZHRmFaZmVpS2dBM21GRVFmWHdnSDFa?=
 =?utf-8?B?UjNJMVM4QmJUWVREZTMyY2diQ0pSTHBjb05zZlpLT1RkZFlBbWlsV0JhbmJQ?=
 =?utf-8?B?SG41T0xyYlVzcmtiNHA3RHVYQnJNTTV5Mmt4K0RFamE2eTVwOFdxVU01K3Q4?=
 =?utf-8?B?RE8vSEt0R05qd0tvdEVxRHlJb05IS1l6aFE1QzBkWkltdnpsemdpcjB6bkg2?=
 =?utf-8?B?ZEp2UjhhT3lwTEFaMXYvZ3o3SU1JTzlHdDNqOUpBT0loSEJFaU1MTmZqS24y?=
 =?utf-8?B?d1lLS0dob1FSMWc4M290TDdlYzhDNWoyWk4wMWV1SzJXTkZ2YVowVFV5aEt2?=
 =?utf-8?B?b3c0NmYrdGRscUJrUGtjSXhWbnNESTl3ODlSQ3JFWVU3S1Z0bWl3VUUwbWVv?=
 =?utf-8?B?bkt6N01YcTZoZzl5RjJLQUlwbVV6OUlFQzZZV2VjYk5DQjFBeW02RUJvWmdw?=
 =?utf-8?B?S3U5azhMWGppd3pWSjBIUENNc2RzbFdKVEl5UmhpTzFlMG5SdFl3bTlFZnVq?=
 =?utf-8?B?S0FxRWJXbE1hcGpOMUVBSGdudnA5RC93enBzUDhnNld6TVorWEVkZjFaWEEx?=
 =?utf-8?B?MVBGMHlqY01tYnNvWFdaZmpCU2FVZmFrck5rR0wweGxaR3owbEdPcVFyenl2?=
 =?utf-8?B?OVJPNU5ncUhpRWtEaUtpTklvTUFPRXlUUHB3WmVZcjlRV1Z6aTFaWWFhb2Rv?=
 =?utf-8?B?MUhvZWd6OU5Sajhyc3lHZHV0L3h0ZkNNempIVStBRWlpa3RjdC9YQUxXTW1i?=
 =?utf-8?B?L1lVSUp3aFZYNkdScjRGVDNwSmtxZ3R5M1VTRDNIZlo5d3JZMk9uNVJ3Qmwy?=
 =?utf-8?B?bzB3U1k4a09ZMGhGblR1WjVuS1hjamdGOUtiU3dXSVZSTjVvYkV6YUpMcmNN?=
 =?utf-8?B?R0V1cG1zQ0VjZWR6ZEp2czNabDJqeWVYOWlNanpQQzJIZDR5NDR3RHgrSnFq?=
 =?utf-8?B?cVNJWUh0ZEJoWjJuZkh2Sk1ISjNJb240RVZ1UWdVamxELzBJdTRjb2oxT3lE?=
 =?utf-8?B?eUJjSGZzeC95ZzNFS0lMdG5jbmFyMjhHWnFCT3pTaFN3T0ovZHhlaTN3aERk?=
 =?utf-8?B?ZjZSWTJZQWd0cjZzUTlMdWxyTk0vbDRTN1R2cGpVZ0l1ZU8vbmx0VmRJc0NN?=
 =?utf-8?B?eUNON05VcWVMRENkR2dFRWVpSytmc3BaUG9PVTIybE9wOWh1bTJRb0JBY2Q4?=
 =?utf-8?B?eWNxOC9LTWZRb3UrMCtiVXdHVnlOcFJMNVNBV0YvQ0d6RlBLZ3hpMm9RNHVQ?=
 =?utf-8?B?RDFneUpOblppaFZIK3NBZHA3d0NFUFVvSTVhOVVTaG4rSUljYzFmaFZPdzB2?=
 =?utf-8?B?NnE5ZGdCUEVROUkwemVBbzlPQnV5RXZ1bzRNMlZMNkQ3enhuektlamthSDRE?=
 =?utf-8?B?NXA0NmFPYWNqdnBtbmYrN20ySmFCTWdYWEF0K25yK3Z5enduSDQ1SXIwdHFV?=
 =?utf-8?B?aVh4UTVZcWhLVmpSV1V3bFQvU09USCswYmgvNUZhR09xTkp6c2NtQlNMTWdo?=
 =?utf-8?B?b2dCTTZSNjFJV054SW41a3JaTTlHRCtTeGhweDBmVWVrY2FkK2RFNXQxOCtN?=
 =?utf-8?B?RmdsUDIvSGEyQXVyU0ZsSFRiM05yR05yUXhabnVZVHJkK3l2OGZiVy9uTWw4?=
 =?utf-8?B?aW1ma3NlcHNCdENMbzJkUS9KSVhRbWcvZktCd0VXZGxyZmd3bWx0RzlzMkV0?=
 =?utf-8?B?MWhjSlJrblRsN3o4LzRkdWl3UllqZ0cvVzYxT1A5aWZBYVZMVGUrZnc3QVBn?=
 =?utf-8?B?NmxHOWJwQ3BQMkZlOWpjeDJYRWtJaHFYWEFPak9SZnlicjY3TXhpVUkxd2xw?=
 =?utf-8?B?Y0tNaVJGOENDNDhtTnp4ME9sT3JFMVJjaXN2NnhsMm4wVEd2Qk52Zy9YNTgr?=
 =?utf-8?B?dUhLRS9rVVduVnU4RkxqT3pXeWxRcmtJRWlwSWg1NWJTWHNweUhVeFpocjBL?=
 =?utf-8?Q?bcuV6sue+faHaAlOt3qJ89qEkVSoZXvO?=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:MN2PR12MB3613.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(7416014)(376014)(1800799024);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?aVVlT1JyNmxlc1hHT2lTeWZsd3hablNkL2kwZVg1azNIa2svcnBreCtBU212?=
 =?utf-8?B?Q29tN25BR3EwOHExL050U01BbDZpY2swanlaTlF2TksrNEVrZktnUWVmYm1M?=
 =?utf-8?B?T0ZnMUlMczZGQXNuL05tN3ZMcmJxNnloamx2eVVWYklFa0NTbjNoVjVXY25V?=
 =?utf-8?B?SHhJcEc0b0Z2VGtZbmxPZmVTUENzampBSVI5N0huRXFmdnJyMVRTNDRTQ2pn?=
 =?utf-8?B?UktBbWJTUHYyOWFQSW1rd25UY3hORU9TWit6ek13RlhUTU1RUllzNGZaNXY0?=
 =?utf-8?B?WWxlYUovWk1BKzhscWV2K0JWRzNjMVR5ZE51ZUs2SmtOVktDQTVPbGpCNWhW?=
 =?utf-8?B?ZlM4aXd3alVERFhPNGgvWXNqSUo3bndKRnNlL0ZLVjZCQ1JEUkF4cmdlaDQ4?=
 =?utf-8?B?OThNUUNCMmdydU4yaENzUmZ4NlVUVnpJUnU1NUlWR0VMN2ZBdytpM3NPTGZX?=
 =?utf-8?B?Tk1mdlEvdDYrbXMvTjFzQTJsaG1OOW9kRTVhTUxLVHBSSG1BTHpFa21RKy9h?=
 =?utf-8?B?Q0JlRlhobzVYMHNTd05wdXhLMzA4WTNVblUyZlZ5N0lmb3VtVXIxV3FPRG0w?=
 =?utf-8?B?S0kxaWtvazd2bFlGQzMxbzlSemtaS0tnazdjUG9Qa2NRL1VnRjlmUWlmOFpR?=
 =?utf-8?B?VGpqMWVKVENVWS9hRkVKQThUd3Y2dGlXUkNON0RETnNPR0NoRk1yOXppcm9v?=
 =?utf-8?B?RmEwWHFjQ0tjZWJxd3NCaklRSWs4VkRXYVZTbERKZVFjbUFtMDFrUVM0eDky?=
 =?utf-8?B?TEpoZ2srVDF3Nm5VRUsyRmpDa3JwZ3dUWnZVQllzNGdhQkE3cGxMcjVwZlpP?=
 =?utf-8?B?MVVsRDczem9UbFBKaXNUU21kOUdIa1Y0MDZHZEFpaHlCTEx4NktOVzRMMkdD?=
 =?utf-8?B?OFdyVXRDLzhqSEkvMDFCSjdCbWZQeU5zajI4K0pmTG9VZFJTZWk3OVBGbHR6?=
 =?utf-8?B?QmgxT0JGaDhGdVNabUUwTFdMMGk4clNQVDd2dnhZdWtOQXRYT2t6cnV5amVB?=
 =?utf-8?B?ME9BNkxXbm5qOFlmWVBDYSt2S0s2MW00VnVmMk5NbllvM1M4MTM2QlJwYmEv?=
 =?utf-8?B?WUVQb2o4Ry91M0hLMHVKZ3RXYWIzbXdORlZyUWdTSWM4TmpoM0lweHRzT0hP?=
 =?utf-8?B?UUswWnhydHNDMDZuM0x0Z3M2eUtnbEVQeUVjbGp6QnpJR1NUbDBLV2N1SXhF?=
 =?utf-8?B?ZU9uc2ZwNjhoek9ZUTA1bnNlVVBpbXJ4MWVvMjhMa1ZKRjhESGlmR0ZZNDZh?=
 =?utf-8?B?S3BzMkovUjNRQkgwK3lqL3E4Ly9yaUxvUis3QmpKUUttVmlKTW15eFltUWlv?=
 =?utf-8?B?REZSN3N3S1dzN3piTkFIZTZDVlRnQW44TmRPZUNjY1hTZnJHTlZjM1dPZ0hp?=
 =?utf-8?B?L3kvQmFMQmt4anh0cDhJMTdUd0ZBTENBNHVQVE14Zko4Q21BcXVOVFR4dEZI?=
 =?utf-8?B?UjJ4TklZQ2YydGFvRDZTeHFIU1h0MTF5Y0ZOcGdXU0Jna2tYc2Q5SFh4ZXZt?=
 =?utf-8?B?anhpeCtzMGc3Uko1cjh2bk52VjJubm1aZWZoTzRWdWViaWxkZlZtaGJ6Wm9p?=
 =?utf-8?B?S1B4cFJkREkzNzNWR2RIUFpmNmZxODlTczRvZnRtRU9NMWRiazBIeW9BYnZZ?=
 =?utf-8?B?TDhPT2tSdXhmQzBTRW1ZcWdvTUlad2VTWExnclpjclorbksyWXVIcFgxbEVz?=
 =?utf-8?B?SGpSSmRySWY5amVEN0RWNzd4NHI2bWsvOUJoRm82cHlVVXBFd3ZpYlE4RmJ6?=
 =?utf-8?B?VXowQlVTRFJucHM1UnNEOFVsN2RsZ3UrODU2aVltUW5aRzFVNnI0Z3hZSE5p?=
 =?utf-8?B?MGoreEJveWNaLzMwRXZjM05rRHVybDJkdFhpQW51ZVJUbFJiQzNteTVCOU02?=
 =?utf-8?B?dnlOZ0pjZVNoN3hrMVJGanczTFBkbDhLTDJUTmhoK1lqNlpza29naEsyTWFP?=
 =?utf-8?B?ck9UVGwyQUZlMHQ2TzZaU0RMTGtDdFVOcEVzczVBaGdWbHltYlNyUDNjWUF0?=
 =?utf-8?B?MU5DNGVXVEFJd3B4N3QwMEl3NmtndFJSZ2FDakFUUk03VjA4SS9XUzlxSVdw?=
 =?utf-8?B?cnFGNXFLblRwYUx6OXV3OWtuTzMxNWZvbHY5bDU2cmRJOUhpR1laVk1RakU1?=
 =?utf-8?Q?sP/o=3D?=
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a6f8099d-0b67-41ea-81b1-08de187fb27b
X-MS-Exchange-CrossTenant-AuthSource: MN2PR12MB3613.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 31 Oct 2025 13:16:26.9463
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: c1jVBU51rQfuj+9U1fKagkI06iq2nYthVdQLO2rmazPuQb+OwDA6MNQzlsieOXy1
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS2PR12MB9616
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 2708A3F751
X-Spamd-Bar: ----
X-Spamd-Result: default: False [-4.97 / 15.00];
	BAYES_HAM(-2.97)[99.88%];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[nvidia.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:40.92.0.0/15];
	R_DKIM_ALLOW(-0.20)[Nvidia.com:s=selector2];
	MIME_GOOD(-0.10)[text/plain];
	MIME_TRACE(0.00)[0:+];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	RWL_MAILSPIKE_POSSIBLE(0.00)[40.93.196.13:from];
	RCPT_COUNT_TWELVE(0.00)[12];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:8075, ipnet:40.80.0.0/12, country:US];
	NEURAL_HAM(-0.00)[-0.991];
	TO_DN_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	RCVD_TLS_LAST(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	URIBL_BLOCKED(0.00)[mail-southcentralusazon11013013.outbound.protection.outlook.com:rdns,SA9PR02CU001.outbound.protection.outlook.com:helo,nvidia.com:mid,Nvidia.com:dkim];
	DKIM_TRACE(0.00)[Nvidia.com:+]
X-Rspamd-Action: no action
Message-ID-Hash: ZCE4QTPQRKFONFS5XXKCJJUSOH7KXGUA
X-Message-ID-Hash: ZCE4QTPQRKFONFS5XXKCJJUSOH7KXGUA
X-MailFrom: jgg@nvidia.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: "Kasireddy, Vivek" <vivek.kasireddy@intel.com>, Leon Romanovsky <leonro@nvidia.com>, Sumit Semwal <sumit.semwal@linaro.org>, Thomas =?utf-8?Q?Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>, Simona Vetter <simona.vetter@ffwll.ch>, "Brost, Matthew" <matthew.brost@intel.com>, "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>, "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>, "linux-media@vger.kernel.org" <linux-media@vger.kernel.org>, "linaro-mm-sig@lists.linaro.org" <linaro-mm-sig@lists.linaro.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [RFC v2 0/8] dma-buf: Add support for mapping dmabufs via interconnects
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/ZCE4QTPQRKFONFS5XXKCJJUSOH7KXGUA/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gRnJpLCBPY3QgMzEsIDIwMjUgYXQgMDg6NDY6MzRBTSArMDEwMCwgQ2hyaXN0aWFuIEvDtm5p
ZyB3cm90ZToNCj4gT24gMTAvMzEvMjUgMDY6MTUsIEthc2lyZWRkeSwgVml2ZWsgd3JvdGU6DQo+
ID4gSGkgSmFzb24sDQo+ID4gDQo+ID4+IFN1YmplY3Q6IFJlOiBbUkZDIHYyIDAvOF0gZG1hLWJ1
ZjogQWRkIHN1cHBvcnQgZm9yIG1hcHBpbmcgZG1hYnVmcyB2aWENCj4gPj4gaW50ZXJjb25uZWN0
cw0KPiA+Pg0KPiA+PiBPbiBUaHUsIE9jdCAzMCwgMjAyNSBhdCAwNjoxNzoxMUFNICswMDAwLCBL
YXNpcmVkZHksIFZpdmVrIHdyb3RlOg0KPiA+Pj4gSXQgbW9zdGx5IGxvb2tzIE9LIHRvIG1lIGJ1
dCB0aGVyZSBhcmUgYSBmZXcgdGhpbmdzIHRoYXQgSSB3YW50IHRvIGRpc2N1c3MsDQo+ID4+PiBh
ZnRlciBicmllZmx5IGxvb2tpbmcgYXQgdGhlIHBhdGNoZXMgaW4geW91ciBicmFuY2g6DQo+ID4+
PiAtIEkgYW0gd29uZGVyaW5nIHdoYXQgaXMgdGhlIGJlbmVmaXQgb2YgdGhlIFNHVCBjb21wYXRp
YmlsaXR5IHN0dWZmIGVzcGVjaWFsbHkNCj4gPj4+IHdoZW4gQ2hyaXN0aWFuIHN1Z2dlc3RlZCB0
aGF0IGhlJ2QgbGlrZSB0byBzZWUgU0dUIHVzYWdlIGdvbmUgZnJvbQ0KPiA+Pj4gZG1hLWJ1Zg0K
PiA+Pg0KPiA+PiBJIHRoaW5rIHRvIGdldCByaWQgb2YgU0dUIHdlIGRvIG5lZWQgdG8gcHV0IGl0
IGluIGEgbGl0dGxlIHdlbGwNCj4gPj4gZGVmaW5lZCBib3ggYW5kIHRoZW4gY3JlYXRlIGFsdGVy
bmF0aXZlcyBhbmQgcmVtb3ZlIHRoaW5ncyB1c2luZw0KPiA+PiBTR1QuIFRoaXMgaXMgYSBsb25n
IGpvdXJuZXksIGFuZCBJIHRoaW5rIHRoaXMgaXMgdGhlIGZpcnN0IHN0ZXAuDQo+ID4+DQo+ID4+
IElmIFNHVCBpcyBzb21lIHNwZWNpYWwgY2FzZSBpdCB3aWxsIGJlIGhhcmRlciB0byBleGNpc2Uu
DQo+ID4+DQo+ID4+IFNvIHRoZSBuZXh0IHN0ZXBzIHdvdWxkIGJlIHRvIG1ha2UgYWxsIHRoZSBl
eHBvcnRlcnMgZGlyZWN0bHkgZGVjbGFyZQ0KPiA+PiBhIFNHVCBhbmQgdGhlbiByZW1vdmUgdGhl
IFNHVCByZWxhdGVkIG9wcyBmcm9tIGRtYV9vcHMgaXRzZWxmIGFuZA0KPiA+PiByZW1vdmUgdGhl
IGNvbXBhdCBzZ3QgaW4gdGhlIGF0dGFjaCBsb2dpYy4gVGhpcyBpcyBub3QgaGFyZCwgaXQgaXMg
YWxsDQo+ID4+IHNpbXBsZSBtZWNoYW5pY2FsIHdvcmsuDQo+ID4gSU1PLCB0aGlzIFNHVCBjb21w
YXRpYmlsaXR5IHN0dWZmIHNob3VsZCBpZGVhbGx5IGJlIGEgc2VwYXJhdGUgZm9sbG93LW9uDQo+
ID4gZWZmb3J0IChhbmQgcGF0Y2ggc2VyaWVzKSB0aGF0IHdvdWxkIGFsc28gcHJvYmFibHkgaW5j
bHVkZSB1cGRhdGVzIHRvDQo+ID4gdmFyaW91cyBkcml2ZXJzIHRvIGFkZCB0aGUgU0dUIG1hcHBp
bmcgdHlwZS4NCj4gDQo+IE5vcGUsIGp1c3QgdGhlIG90aGVyIHdheSBhcm91bmQuIEluIG90aGVy
IHdvcmRzIHRoZSBTR1QNCj4gY29tcGF0aWJpbGl0eSBpcyBhIHByZS1yZXF1aXNpdGUuDQo+IA0K
PiBXZSBzaG91bGQgZmlyc3QgZGVtb25zdHJhdGUgd2l0aCBleGlzdGluZyBkcml2ZXJzIHRoYXQg
dGhlIG5ldw0KPiBpbnRlcmZhY2Ugd29ya3MgYW5kIGRvZXMgd2hhdCBpdCBwcm9taXNlZCB0byBk
byBhbmQgdGhlbiBleHRlbmQgaXQNCj4gd2l0aCBuZXcgZnVuY3Rpb25hbGl0eS4NCg0KT2ssIHNv
IEkgdGhpbmsgdGhhdCBpcyB3aGF0IG15IGdpdGh1YiBpcyBzaG93aW5nLg0KDQpFdmVyeXRoaW5n
IGludGVyd29ya3MsIG5vbi1tYXBwaW5nLXR5cGUgYXdhcmUgY29kZSBzaW1wbHkgYWN0cyBleGFj
dGx5DQphcyB0aG91Z2ggaXQgaXMgdXNpbmcgYSBTR1QgbWFwcGluZyB0eXBlIGZyb20gdGhlIHBl
cnNwZWN0aXZlIG9mIGF3YXJlDQpjb2RlLg0KDQpJIHNlZSBhIGZhaXJseSBlYXN5IHBhdGggdG8g
ZG8gc29tZSBkcml2ZXIgdXBncmFkZXMgdG8gbWFrZSBtb3JlDQp0aGluZ3MgbW9yZSBtYXBwaW5n
IGF3YXJlIGFuZCByZW1vdmUgc29tZSBvZiB0aGUgY29tcGF0aWJpbGl0eSBwYXJ0cy4NCg0KTGV0
IG1lIHNlZSBpZiBJIGNhbiBwb3N0IGEgUkZDIHZlcnNpb24gbmV4dCB3ZWVrLCBnb3QgYSBiaWcg
cGlsZSBvZg0Kb3RoZXIgc3R1ZmYgdG8gZG8gc3RpbGwuLg0KDQpKYXNvbg0KX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5n
IGxpc3QgLS0gbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNl
bmQgYW4gZW1haWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==
