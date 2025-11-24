Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id E15A0C80F4B
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 24 Nov 2025 15:17:56 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id A8DF23F85C
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 24 Nov 2025 14:17:55 +0000 (UTC)
Received: from BL2PR02CU003.outbound.protection.outlook.com (mail-eastusazon11011043.outbound.protection.outlook.com [52.101.52.43])
	by lists.linaro.org (Postfix) with ESMTPS id 67AD93F752
	for <linaro-mm-sig@lists.linaro.org>; Mon, 24 Nov 2025 14:17:39 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=amd.com header.s=selector1 header.b=OJPBTyBt;
	spf=pass (lists.linaro.org: domain of Christian.Koenig@amd.com designates 52.101.52.43 as permitted sender) smtp.mailfrom=Christian.Koenig@amd.com;
	dmarc=pass (policy=quarantine) header.from=amd.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=XBHM2lezS3n2h/kfEFFH7kj3PFYo5Oey1Dvt1QYBzYES/0QZKlZJ4OgNpyiR+sEHhAvDZe2isWoqm3/YFgyMD6OmLMS1xQgY1EIYMPzHpP1SEVcEOruF4MObUPnOV7JBx+FrwTo5b3qVY6619UHH8IMkNKc3x91zlNuPmhqxllvROiadoWzkSY8PrJiN0tWjgFrqpLmVQ5CPLRBXRTytvLKnKWl1SmoXkHMBUL52zwQRbmIFHTT26f3peYhURUJ2us1r1wl5ghye/Tb4Dwxbrqq0Ggqgop4zhjutpY3pcJHC3b2UoUVelzV1+cHjG5ul+XnKVePUNnJSlbU6LUkFxg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=rFI7bQD1+Z7Hg3Gu4hxnTPqT4wRZj0L/Sx83Bc1Dcq4=;
 b=BMRzgXrEwU09saXq9OISJ4pgcEU2Z/xDPuozJuAMmLWMdOox46Tekw+M5EQEsTB45GsR5T7WA7C63tMiDvvd3BwHwdDmkU/r5CRGS20ysBZmNh5u018Kzb9mP0KWSX6eV7cQqkdJfxN6GiIRWx/CsK7dFLrCfjJgja5ZK/srPFZmNlBA+fYMM7zM3P32ufPUl24RHxFcJqfnkNvXUN2D6HVvqbrvVIjvAwKzqW9EYVHm56LY4OJq7UWYGvH3PtlRy+cZGfOeVL6RwJva4nGTRPwjuIEk7h2u4/Q0kfp66sMgvKRYHBxqC2xk6mkf/6D+oBg/I/48hRRHDmUonXusZg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=rFI7bQD1+Z7Hg3Gu4hxnTPqT4wRZj0L/Sx83Bc1Dcq4=;
 b=OJPBTyBtkiviMIb1W6xDGBLpRoBr/6QrhAmKNyNHL86m4FShSlBA7UHPbST6Hmi27d6gn/f7egMPX8Nf7WcgH8DDBCketc/3SQHPCIe1/kocSAAXuhWcSNbgKaIBifchbSugEYfF54kWB8+fCWNc2hlk38MtbhCGEvYsn6MTP40=
Received: from PH7PR12MB5685.namprd12.prod.outlook.com (2603:10b6:510:13c::22)
 by CH3PR12MB8281.namprd12.prod.outlook.com (2603:10b6:610:128::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9343.17; Mon, 24 Nov
 2025 14:17:36 +0000
Received: from PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::46fb:96f2:7667:7ca5]) by PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::46fb:96f2:7667:7ca5%4]) with mapi id 15.20.9343.016; Mon, 24 Nov 2025
 14:17:36 +0000
Message-ID: <53be1078-4d67-470f-b1af-1d9ac985fbe2@amd.com>
Date: Mon, 24 Nov 2025 15:17:29 +0100
User-Agent: Mozilla Thunderbird
To: Pavel Begunkov <asml.silence@gmail.com>, linux-block@vger.kernel.org,
 io-uring@vger.kernel.org
References: <cover.1763725387.git.asml.silence@gmail.com>
 <fd10fe48-f278-4ed0-b96b-c4f5a91b7f95@amd.com>
 <905ff009-0e02-4a5b-aa8d-236bfc1a404e@gmail.com>
Content-Language: en-US
From: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
In-Reply-To: <905ff009-0e02-4a5b-aa8d-236bfc1a404e@gmail.com>
X-ClientProxiedBy: BN0PR04CA0141.namprd04.prod.outlook.com
 (2603:10b6:408:ed::26) To PH7PR12MB5685.namprd12.prod.outlook.com
 (2603:10b6:510:13c::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR12MB5685:EE_|CH3PR12MB8281:EE_
X-MS-Office365-Filtering-Correlation-Id: 8bd5b9ae-b6c2-4d73-54df-08de2b6437c0
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: 
	BCL:0;ARA:13230040|376014|7416014|366016|1800799024|7053199007;
X-Microsoft-Antispam-Message-Info: 
	=?utf-8?B?T3hkdzcyYllldEU2RHNwU0RhcUkrZnRCRzJETStqdTUvTGthMG5aclpwTjBY?=
 =?utf-8?B?a0xoaFFLYlhBdkVRYkdQUWJtdnhLQ1B2OEdIMGcyaU8wR096eURNNG5hRWth?=
 =?utf-8?B?REY1N2tuWXJpL1RyZmhSY3RvQm9ZNjR2bjBYL3VmWE9xeEtJK0h5ekFRSmN5?=
 =?utf-8?B?V1NYdmtWcGVYNXRFM0ljcWhkNlpwYnpGYk5TRTc5dHFHUG43YUkzSG5sYTkz?=
 =?utf-8?B?ckNsZUtxS0pLbUtZMkhpeTNTa2JOSkxsUkxYa3p1Nmk1UlAvSmp6OVo2aE1x?=
 =?utf-8?B?Tm5iNVZlRmV2NmRrSCt4enZWSEFQZ2lkOHJ5ZS9PMllrQmFGWjFySjc4RytY?=
 =?utf-8?B?VklreEE1WnFZYnNqQUlSU1hOeVB3aDBuS2tVUUFNR0RxblhoUjJUTGpGUkxU?=
 =?utf-8?B?aTkyU2gxNldDR05IZWp3eUZuWnVPcmt3dmk5eEtOcU5lMnYvZkpwMFFFbW1n?=
 =?utf-8?B?N21UR01GNGhmMzR6UmtUNEc5b0Q4dUQ5UXhkUUwrT1lXQmlIQy90MVZvUm14?=
 =?utf-8?B?bEZFMWNJOGk4QmUwVFFlaE91TzBUOUhzVGVWNm85aTFjYzNWdFlPSGQ4emZB?=
 =?utf-8?B?Qmg4ckZEM05PcGxqcGFEK0c4QzU4MWFxMDEvL3RwQUZIbGZFbjA0WVFsNHo1?=
 =?utf-8?B?REdIWGwzNnI0SlV6bmcwQzB5S3ZXRjY1ZGx3WkNNdVpMNW1OQVR5VXYwcXRE?=
 =?utf-8?B?S3k3MEkxV1BkWE5NU0ZoVTNycEVsbXdaZXRIMnpQdmxtVzI0RmRkWWpyaGti?=
 =?utf-8?B?NEg3ak0vMmMrcjhQSTZSTmx0TWFpekxIcVJKRVR1UmRWcU9XQjVvdC9FTWVw?=
 =?utf-8?B?SEhVVkQ3dDZVaGlmTTBCakNCWUoyaUZDZTNjeDF2dXRFdVhHMzQ3UTdLZHpC?=
 =?utf-8?B?TlpoaDFWQUdpb0V0dXA0ajJicTE1dE92RlZxVWN3dTJGMHNsODkvM041bmNS?=
 =?utf-8?B?K1Y1QytoaEM0RDhLdmw5bnc3a293SzJRWnNuNlB6bE9Udk9JYkpBK3N0OFZ0?=
 =?utf-8?B?R0dWNzloWjlPWk8yNkMzN2FNNDVnY3A1OWZ4UTVTaDVHc04wMnplaGYveUxj?=
 =?utf-8?B?Z3ZtOVNRVXluNkl0a1ArOUNmMU9WeVB5T1E2RXNORGFQVFgvdk9rd0g2bjVX?=
 =?utf-8?B?QUJZMWhnY1VIb3IxRHE0QnlRUEc3WktHcXF4ZUxsZFNuZmZ3cmVCU3cyT05z?=
 =?utf-8?B?R1dOK1prdUtBUTdKV29BdWExV0RVbU5kV1p0Q0xhVzlxSXVIU2ZZUHJxMk5Z?=
 =?utf-8?B?Tng0NGtJd0xkVnlrZndxbjIwbkR2ODNWbjJGbGhzMlNGSmZpNkNXZzVZM29h?=
 =?utf-8?B?dW1JVFFWTWFkN3RRVUJzZUQybWFRQmo2QU13dnhvdDhIU1c0ZHcvWGt5Vnk2?=
 =?utf-8?B?L0ZnQy9YbjVtaUhqVnBOWGRKVGw0dkRQTmcvWFhmYzRnUGJvcGlSSVBZQ0s4?=
 =?utf-8?B?SjhWcmtDNnc0NmNNQ1ltVXJ1bWhSbVhNT0hwL09aYXRyWGhtTFBQazdIa2du?=
 =?utf-8?B?UUZVdkxGMStOWHh6M3ZmaVpYVXFJVFM2SFlmWkY4ekVYdHhpemtOQ3Avb2N1?=
 =?utf-8?B?T0RJS0hSOGc4UTMyNlJaL0RyYlNXNTdkL0VvMXU0VkhqbnVhSytLdERnbXZv?=
 =?utf-8?B?aENQSDVSUmxuK3pVM1JmblI1Vmozc3R1T2s4UWNoSURRS1AxQ3hoMGkzWXE2?=
 =?utf-8?B?Z2taV2lvMW1nVHNGb0YwUUFlV2w3dHh1OFNUVDVwMkM4OGN5QzZFNWxDZmdB?=
 =?utf-8?B?TXhVWnU3aTNZTndQUFMwaHE5azByZ1dyN2pSWHNOSWRqWjVYY0gwdnZoWlBp?=
 =?utf-8?B?cGJQckFkSlN2RWpvMEtnd0JSOWFwRDBjdHBXNkE2d09jbC9NQ0FCQTgrRjl5?=
 =?utf-8?B?NUEzTkRwS0hZS28zUDVBd2l4ZWxBTnFjYXZ1Q3FDdnBtL2NOVzBMWG0vVkZ2?=
 =?utf-8?B?MjVYZ1lrRTJtbWhlMm4yb204NmRoejM5RDJzTWtZUFFvbGJKVnFBNW5nQWtV?=
 =?utf-8?B?RDZXelFNQm93PT0=?=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH7PR12MB5685.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(7416014)(366016)(1800799024)(7053199007);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?YjZyL25YV2k0U0IyOWlveUp0RTN6MnhTdUNHMzNDV1ZnZEVOWjNuaEM2eXNO?=
 =?utf-8?B?Qnk5b25INHd5Vm12QVBMUWR3U201WjZCUm01WUNtb3czOVpLZnJyMUlqa0NP?=
 =?utf-8?B?Wi8ycG1HUVhxVXUrNTcwODVzSXFxMStrOGlLRGRNOFBBN3N2L2dWMGhnZ1lW?=
 =?utf-8?B?K1ROd3laTFFvZWFBVEUvWDAyaTQvL3A0UGtrT0dUWmhRZW42cU9hc01LdS8r?=
 =?utf-8?B?Ly80RGdOVS9qYW4xaHVZSVJHVjFwSjJJd0NZM2hVSHFuOGJidy91WWNNdk9O?=
 =?utf-8?B?WmVQNDhZOVpRaTNqUy95aFl4YjNleXJGZWlZUEZMYTBjSUJZUWFCV2Ivdi91?=
 =?utf-8?B?Q2xmWnFxL2x0TkZHOEV6MUFqejNuUXdBeGlIVzZtOEdCTjZCcktsR3haZzJJ?=
 =?utf-8?B?N01BTkRFeGFydmJFTHppdUNBb0RTYW9EM3JWcEFCYk9jQ25pbFg4VXFqMUlH?=
 =?utf-8?B?SEJ5QWVtOHpielJ6NlM4WG55ZndGT0VkczM2ak90VktkdDNFck80cFA2YURk?=
 =?utf-8?B?WHoxWm1zM2pJYmNKcmVwekdvUUhYMFBwNmlZSGZQbSszeUpnUFdzdTk3V24z?=
 =?utf-8?B?NFV2VC9xMkk4QzZoejlrSy9KNEsrdXk5WWhIOHU4dnVUeGlHOS9EQjdybXNC?=
 =?utf-8?B?R3B1bU41OFJvVXZFUkx1VEVFaTkzZzdSUHU2Tk9QOS96VHNFSjJhbmpCSXNJ?=
 =?utf-8?B?dFlwQjQwVWJGbitIcVJ4TFFaUldES3RNdlQ5TVlpLytvZi9PR3FVQXFsSU9M?=
 =?utf-8?B?S2diN0xOSEdubU1qcTlLOWNJQzFBQ1RPbllkVkFLc0ZxN3VxTmh4SnByTFp3?=
 =?utf-8?B?OEVPb1ZjUDZSalp4em9MWVZWRmdycG9ZcUFFRHAyZjRmZkJKR3lQaTcxenNQ?=
 =?utf-8?B?bGc0NUQ3RVJtQ2pzQXhTN0pqWG84a0hBaHJDMVlkUmtIMWdNUVpvdE1nV1NG?=
 =?utf-8?B?R2RiK0p5U2xXdmQ5aTA2eDlLNDRrWW9pSys5WEZ2dTB2eUtnL1BnYnhmZG9I?=
 =?utf-8?B?ZXZvMExWT1BpbTF4Mk4yRkpPN0JPcXd2bHk2Nk5kbk9pMWh5SGRXRHRxSjFr?=
 =?utf-8?B?ejJOWi8yWU1qM2d1aFhzZ05vbkFpSXhtMXhDdDZnUTNvQkRkazgrRWlQa3JZ?=
 =?utf-8?B?c2xldUlXeXp5eEtZOGJGVmthTzNIcXZRZmU0YmRwUkZtZ1Z1YkdpY1QxRTQ2?=
 =?utf-8?B?citVOTEwbTduL2dtM3ZGOGtCa1psaUhWd2JBRm5DbEtaU09oSFpwUGFyNU5O?=
 =?utf-8?B?NFlUcXpBYmkySnE5NDk1WmFhL1VDWXIxMmtpU1pWQW0xSklMYk5uU0NyYW5h?=
 =?utf-8?B?WURtK2NlL3BySFpKQ1NPUWEwdnlpbnZXcnlrZW9WUjhOSnlxcVVZd1VKNWRl?=
 =?utf-8?B?elp2TnoyUDd0Rzg3TmJ4RTkzT1ptbWppU2x1R2ltZ3llRUhtVTlYRTV0ZFYw?=
 =?utf-8?B?SU9qSlBUMW0xODZUYnBKWFEwWUNWZFFLZ2dUM0lTWG8ySUNLUGZLRnRhcjhD?=
 =?utf-8?B?c3huUmFTVWxJUjFMSFZ5S2JhdmJ2ODJtU1Ewd3k1cTNUM25OYnFFRzE2bnJW?=
 =?utf-8?B?RjFJd056N2s4Y0ZrdW5jQXQrUFk2MVR1dk14Q0h2WVZOaXp4NXh6bGN4VHpS?=
 =?utf-8?B?bExybEszQlNkdTdHOWI2aWNxNlh4c2V6SHB5b0RVenozTEhCb1pFRkpVUDRi?=
 =?utf-8?B?NEhaYUZJSThsTW5BSEFCMjcydWlsWGd6QnEyUkk2MEZkQXFGWXdVcFVNWml4?=
 =?utf-8?B?YVB0S2NGUWFCUjVzemV2aUxJazhnUjBqWURWUXdNQkFCNnhnQTEyVFJqZUIz?=
 =?utf-8?B?QU9pSzRzZGFYY0pXQWM2UDNFdlgxb3hkOENwTkhsejF6N1JIMkFGZk5CcVlW?=
 =?utf-8?B?USsxd3daRm9UUUFqSW9MRTM3UGRoR0VTdkllSS8rNGVBRkRkSDJsNVdidjc0?=
 =?utf-8?B?QWFNb0tqM21ZZWlMMlNRQVMvdHhaS2RaVFBWUzJJKzR5a1RqclVidzJJYU1x?=
 =?utf-8?B?dGpTamYzVzBBYkJTekdEcVhUTFAxTnhsamxnZVJDTTRLL0orR3NwU0dTUDJk?=
 =?utf-8?B?eE1JSVFUL2doL2lzV3JrZUV3bGFSVDR3dnBGQ2czN0dXdzJLWnhCQVNncUFx?=
 =?utf-8?Q?y5R8=3D?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8bd5b9ae-b6c2-4d73-54df-08de2b6437c0
X-MS-Exchange-CrossTenant-AuthSource: PH7PR12MB5685.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Nov 2025 14:17:36.7266
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 6d5vR5Af4nwoLDvrVipXSuZ3+iXI/Edq9n3TNd1JJNJlYTPnq1h3rDYnCvWo0h4N
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR12MB8281
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-5.00 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[amd.com,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:52.100.0.0/15];
	R_DKIM_ALLOW(-0.20)[amd.com:s=selector1];
	MIME_GOOD(-0.10)[text/plain];
	FREEMAIL_TO(0.00)[gmail.com,vger.kernel.org];
	RWL_MAILSPIKE_POSSIBLE(0.00)[52.101.52.43:from];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[19];
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
X-Rspamd-Queue-Id: 67AD93F752
X-Spamd-Bar: ----
Message-ID-Hash: ORD47KG6Y6DVMJGISYWDQQDLEEGK35GW
X-Message-ID-Hash: ORD47KG6Y6DVMJGISYWDQQDLEEGK35GW
X-MailFrom: Christian.Koenig@amd.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Vishal Verma <vishal1.verma@intel.com>, tushar.gohad@intel.com, Keith Busch <kbusch@kernel.org>, Jens Axboe <axboe@kernel.dk>, Christoph Hellwig <hch@lst.de>, Sagi Grimberg <sagi@grimberg.me>, Alexander Viro <viro@zeniv.linux.org.uk>, Christian Brauner <brauner@kernel.org>, Andrew Morton <akpm@linux-foundation.org>, Sumit Semwal <sumit.semwal@linaro.org>, linux-kernel@vger.kernel.org, linux-nvme@lists.infradead.org, linux-fsdevel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [RFC v2 00/11] Add dmabuf read/write via io_uring
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/ORD47KG6Y6DVMJGISYWDQQDLEEGK35GW/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gMTEvMjQvMjUgMTI6MzAsIFBhdmVsIEJlZ3Vua292IHdyb3RlOg0KPiBPbiAxMS8yNC8yNSAx
MDozMywgQ2hyaXN0aWFuIEvDtm5pZyB3cm90ZToNCj4+IE9uIDExLzIzLzI1IDIzOjUxLCBQYXZl
bCBCZWd1bmtvdiB3cm90ZToNCj4+PiBQaWNraW5nIHVwIHRoZSB3b3JrIG9uIHN1cHBvcnRpbmcg
ZG1hYnVmIGluIHRoZSByZWFkL3dyaXRlIHBhdGguDQo+Pg0KPj4gSUlSQyB0aGF0IHdvcmsgd2Fz
IGNvbXBsZXRlbHkgc3RvcHBlZCBiZWNhdXNlIGl0IHZpb2xhdGVkIGNvcmUgZG1hX2ZlbmNlIGFu
ZCBETUEtYnVmIHJ1bGVzIGFuZCBhZnRlciBzb21lIHByaXZhdGUgZGlzY3Vzc2lvbiB3YXMgY29u
c2lkZXJlZCBub3QgZG9hYmxlIGluIGdlbmVyYWwuDQo+Pg0KPj4gT3IgYW0gSSBtaXhpbmcgc29t
ZXRoaW5nIHVwIGhlcmU/DQo+IA0KPiBUaGUgdGltZSBnYXAgaXMgcHVyZWx5IGR1ZSB0byBtZSBi
ZWluZyBidXN5LiBJIHdhc24ndCBDQydlZCB0byB0aG9zZSBwcml2YXRlDQo+IGRpc2N1c3Npb25z
IHlvdSBtZW50aW9uZWQsIGJ1dCB0aGUgdjEgZmVlZGJhY2sgd2FzIHRvIHVzZSBkeW5hbWljIGF0
dGFjaG1lbnRzDQo+IGFuZCBhdm9pZCBwYXNzaW5nIGRtYSBhZGRyZXNzIGFycmF5cyBkaXJlY3Rs
eS4NCj4gDQo+IGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL2FsbC9jb3Zlci4xNzUxMDM1ODIwLmdp
dC5hc21sLnNpbGVuY2VAZ21haWwuY29tLw0KPiANCj4gSSdtIGxvc3Qgb24gd2hhdCBwYXJ0IGlz
IG5vdCBkb2FibGUuIENhbiB5b3UgZWxhYm9yYXRlIG9uIHRoZSBjb3JlDQo+IGRtYS1mZW5jZSBk
bWEtYnVmIHJ1bGVzPw0KDQpJIG1vc3QgbGlrZWx5IG1peGVkIHRoYXQgdXAsIGluIG90aGVyIHdv
cmRzIHRoYXQgd2FzIGEgZGlmZmVyZW50IGRpc2N1c3Npb24uDQoNCldoZW4geW91IHVzZSBkbWFf
ZmVuY2VzIHRvIGluZGljYXRlIGFzeW5jIGNvbXBsZXRpb24gb2YgZXZlbnRzIHlvdSBuZWVkIHRv
IGJlIHN1cGVyIGR1cGVyIGNhcmVmdWwgdGhhdCB5b3Ugb25seSBkbyB0aGlzIGZvciBpbiBmbGln
aHQgZXZlbnRzLCBoYXZlIHRoZSBmZW5jZSBjcmVhdGlvbiBpbiB0aGUgcmlnaHQgb3JkZXIgZXRj
Li4uDQoNCkZvciBleGFtcGxlIG9uY2UgdGhlIGZlbmNlIGlzIGNyZWF0ZWQgeW91IGNhbid0IG1h
a2UgYW55IG1lbW9yeSBhbGxvY2F0aW9ucyBhbnkgbW9yZSwgdGhhdCdzIHdoeSB3ZSBoYXZlIHRo
aXMgZGFuY2Ugb2YgcmVzZXJ2aW5nIGZlbmNlIHNsb3RzLCBjcmVhdGluZyB0aGUgZmVuY2UgYW5k
IHRoZW4gYWRkaW5nIGl0Lg0KDQo+PiBTaW5jZSBJIGRvbid0IHNlZSBhbnkgZG1hX2ZlbmNlIGlt
cGxlbWVudGF0aW9uIGF0IGFsbCB0aGF0IG1pZ2h0IGFjdHVhbGx5IGJlIHRoZSBjYXNlLg0KPiAN
Cj4gU2VlIFBhdGNoIDUsIHN0cnVjdCBibGtfbXFfZG1hX2ZlbmNlLiBJdCdzIHVzZWQgaW4gdGhl
IG1vdmVfbm90aWZ5DQo+IGNhbGxiYWNrIGFuZCBpcyBzaWduYWxlZCB3aGVuIGFsbCBpbmZsaWdo
dCBJTyB1c2luZyB0aGUgY3VycmVudA0KPiBtYXBwaW5nIGFyZSBjb21wbGV0ZS4gQWxsIG5ldyBJ
TyByZXF1ZXN0cyB3aWxsIHRyeSB0byByZWNyZWF0ZSB0aGUNCj4gbWFwcGluZywgYW5kIGhlbmNl
IHBvdGVudGlhbGx5IHdhaXQgd2l0aCBkbWFfcmVzdl93YWl0X3RpbWVvdXQoKS4NCg0KV2l0aG91
dCBsb29raW5nIGF0IHRoZSBjb2RlIHRoYXQgYXBwcm9hY2ggc291bmRzIG1vcmUgb3IgbGVzcyBj
b3JyZWN0IHRvIG1lLg0KDQo+PiBPbiB0aGUgb3RoZXIgaGFuZCB3ZSBoYXZlIGRpcmVjdCBJL08g
ZnJvbSBETUEtYnVmIHdvcmtpbmcgZm9yIHF1aXRlIGEgd2hpbGUsIGp1c3Qgbm90IHVwc3RyZWFt
IGFuZCB3aXRob3V0IGlvX3VyaW5nIHN1cHBvcnQuDQo+IA0KPiBIYXZlIGFueSByZWZlcmVuY2U/
DQoNClRoZXJlIGlzIGEgV0lQIGZlYXR1cmUgaW4gQU1EcyBHUFUgZHJpdmVyIHBhY2thZ2UgZm9y
IFJPQ20uDQoNCkJ1dCB0aGF0IGNhbid0IGJlIHVzZWQgYXMgZ2VuZXJhbCBwdXJwb3NlIERNQS1i
dWYgYXBwcm9hY2gsIGJlY2F1c2UgaXQgbWFrZXMgdXNlIG9mIGludGVybmFsIGtub3dsZWRnZSBh
Ym91dCBob3cgdGhlIEdQVSBkcml2ZXIgaXMgdXNpbmcgdGhlIGJhY2tpbmcgc3RvcmUuDQoNCkJU
VyB3aGVuIHlvdSB1c2UgRE1BIGFkZHJlc3NlcyBmcm9tIERNQS1idWYgYWx3YXlzIGtlZXAgaW4g
bWluZCB0aGF0IHRoaXMgbWVtb3J5IGNhbiBiZSB3cml0dGVuIGJ5IG90aGVycyBhdCB0aGUgc2Ft
ZSB0aW1lLCBlLmcuIHlvdSBjYW4ndCBkbyB0aGluZ3MgbGlrZSBjb21wdXRlIGEgQ1JDIGZpcnN0
LCB0aGVuIHdyaXRlIHRvIGJhY2tpbmcgc3RvcmUgYW5kIGZpbmFsbHkgY29tcGFyZSBDUkMuDQoN
ClJlZ2FyZHMsDQpDaHJpc3RpYW4uDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0tc2ln
QGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBsaW5hcm8t
bW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
