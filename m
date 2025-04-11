Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id DD7EAA85E2E
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 11 Apr 2025 15:07:09 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id D6E2344ADF
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 11 Apr 2025 13:07:08 +0000 (UTC)
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (mail-dm6nam10on2083.outbound.protection.outlook.com [40.107.93.83])
	by lists.linaro.org (Postfix) with ESMTPS id DE9564420C
	for <linaro-mm-sig@lists.linaro.org>; Fri, 11 Apr 2025 13:06:50 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=amd.com header.s=selector1 header.b=rhsqe5+q;
	spf=pass (lists.linaro.org: domain of Christian.Koenig@amd.com designates 40.107.93.83 as permitted sender) smtp.mailfrom=Christian.Koenig@amd.com;
	dmarc=pass (policy=quarantine) header.from=amd.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=U+BPeQHvxEVFnVu4lHdVlRj4Y18hZGj9cFSR5MpK4/PMDcL5aWQRNnoTR4lppc0GUVc3bgwsHMZtvelqGMb2qKy+TtM3PFLBDPH43FHbg8O3L8QPVPgfsITsWcnCnPVjlxbJ+LMRoP5Jy9TvhHi3++p/Oa2YVT7i7hO00zfdEzhlg0aasuhmXKO4mP1RSRwStOJWXzsod5N4vSrezNhnH1brraCA4EFiO6CoLItk6wIgWKYJFdFPkmYWXCF4xyXHOx5oZWy9aOuyrSwkrIREYZSg7fTuyMgWa80kL+9AlDyZFgcPvX9ix7qoN+NT4LIqNsK2/z9PoqyEJx4g/kSBgQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=aTMb7VnqWoHTDoqZbbtsVA5rIQLqQrii6NRN8mfueZA=;
 b=yIy7rWHYbcGcWl3EuIqKoxne07ry6Cher89JuDifs28C17SoCQlh+jiCEi2HNnntj/mTa0r1A3VzXDbs/9YzxeaIXZpS7namgN1Gi5jT38JSriVI/SGcxP9KykkP/XBbPql+CXeHjrAKbxFt+/W/i1U18v9Dyx2hSj1FQfizSevlb1edm2k71WdU3pYiZkebNPyN2Fle2kT2l5dZ0w4NRCOdZiFZP7dYjJJIVgWbDVnA6yrEaAH8HaXHwmd0srNZ4zHjPw+p/+qg+ZlcR84BZTCezwaJgWuP42IZ3P8X3T6YRCKt97HDmecETV675rItjOXqF1SPhhGidOSXZfdbiA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=aTMb7VnqWoHTDoqZbbtsVA5rIQLqQrii6NRN8mfueZA=;
 b=rhsqe5+qbZiP/nj2he+hqkmi1ezT0Z0/IKmUGsNTHz9DSbwRbz7uxJ6ljxyRoD2azNYlqR60AqpGgBV/EQSleb2r0OPgR0PW+Y1D4wiXJKFCbdbIv+15PSeSH7UmFK/R1Rw714MmFXD3+dktyYEw60glAcMAyixvaOk8OyR38qM=
Received: from PH7PR12MB5685.namprd12.prod.outlook.com (2603:10b6:510:13c::22)
 by IA1PR12MB6258.namprd12.prod.outlook.com (2603:10b6:208:3e6::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8606.35; Fri, 11 Apr
 2025 13:06:48 +0000
Received: from PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::46fb:96f2:7667:7ca5]) by PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::46fb:96f2:7667:7ca5%5]) with mapi id 15.20.8632.021; Fri, 11 Apr 2025
 13:06:48 +0000
Message-ID: <45d66ca4-5390-42e9-869a-f5f9125d05b6@amd.com>
Date: Fri, 11 Apr 2025 15:06:41 +0200
User-Agent: Mozilla Thunderbird
To: phasta@kernel.org, Lyude Paul <lyude@redhat.com>,
 Danilo Krummrich <dakr@kernel.org>, David Airlie <airlied@gmail.com>,
 Simona Vetter <simona@ffwll.ch>, Sabrina Dubroca <sd@queasysnail.net>,
 Sumit Semwal <sumit.semwal@linaro.org>
References: <20250410092418.135258-2-phasta@kernel.org>
 <20250410092418.135258-3-phasta@kernel.org>
 <8583665a-6886-4245-be49-fd8839cfe212@amd.com>
 <c737c89c7ce9174e349c61ab4e5712eee8946f13.camel@mailbox.org>
 <50c9530d-e274-4f89-8620-16afe0981239@amd.com>
 <1a73e5fe4350d6ee4b7d807612264eb637c4f2a9.camel@mailbox.org>
 <d3dee321cd6b70d6ca98768fbcf6f1e6134c43a1.camel@mailbox.org>
 <81a70ba6-94b1-4bb3-a0b2-9e8890f90b33@amd.com>
 <aca00cb25b813da4fd2f215829f02337f05642f3.camel@mailbox.org>
Content-Language: en-US
From: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
In-Reply-To: <aca00cb25b813da4fd2f215829f02337f05642f3.camel@mailbox.org>
X-ClientProxiedBy: FR4P281CA0149.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:b8::15) To PH7PR12MB5685.namprd12.prod.outlook.com
 (2603:10b6:510:13c::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR12MB5685:EE_|IA1PR12MB6258:EE_
X-MS-Office365-Filtering-Correlation-Id: 1c400ddb-93c9-4066-461b-08dd78f9b7ed
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|7416014|366016;
X-Microsoft-Antispam-Message-Info: 
	=?utf-8?B?WHJxaWVzc0tqSDdHVWJEbnZMTmNieWNMN2haQWpOV09nbENQcnBtSU94UHph?=
 =?utf-8?B?MTVIUTF4OUNHYnlVZWtVSmZSdnBIZVJnd3FBZ0xmWEpqazRnYUUrS3FjODA3?=
 =?utf-8?B?eUpvZFZGT1A5UVFpM2tXNlAyS0NrTTA5MmtpYllRZFAvVzdZZHFaamZQMi95?=
 =?utf-8?B?NVRvOU1nZ1RiUEVucGh3bkx4QkdhamJXazRMUkcyOG0zWUYrd0lUa1M5NUwz?=
 =?utf-8?B?b2ZmVEFOcXl5MUtEblY2ZU1zMkVVUkJYeFVBQWtIbFRVazdMamgwS2dFZFc5?=
 =?utf-8?B?Z01rdGJmaEp0eVprN0hETDZPTi9QbHZqK0tjNTdrUGg3bG5tcDNFR3NMOGFE?=
 =?utf-8?B?YldJdmE0Ui9tWFI1c1lZUUhmd1YvR0JnN1orNE5HcjNYMTllQ0VSSE5rSytM?=
 =?utf-8?B?V2RseWVyb3VBZlBub3YrV1JmR3JUYkkzcUR6TEplcC9RMDlNTHk4NFJFUFk1?=
 =?utf-8?B?ZklMbmhxZkZ6eGxsNWU5Q3ZjeVdvY09BQ2VxTnp1L2tUWjQ4NzZmQzREZmR3?=
 =?utf-8?B?d2lXbEdQeUJQTmY2dXNKejJyZ0VMQ1Azak5DZHZFRTZ6TjBTRUhDRUR4WDZx?=
 =?utf-8?B?Q08zeVIzT0habmQ2anM5NTQ2S0FmQS9zUlBuZXZIL0tSNFozcHROZDBzeE9U?=
 =?utf-8?B?dnE3NXE4cFcwejVMY0tVdWZ3ZUhHalRZMkNMckpXd2liSTNBSHc1TTJ5Njdk?=
 =?utf-8?B?VlNVMllwb3lpTkJsa2c4ekIxQnNBNSt1Tk42aXJQY3l5QnZIbkwyQ09tR2lI?=
 =?utf-8?B?S3g2YjREMnlnZ1hTTkY5NDJVR1Y2T2d6MWtVMFJwYzIxZTBWN0pHUCtMZ3BP?=
 =?utf-8?B?MThOV1JtSlppME5td0o4RnQvcGJ4SHlWcjVKVmZUUGJhUVNtZzBmR0JYbUxq?=
 =?utf-8?B?bnd2dnJPdmtmSVhERnRHOVBCUmJRbUMwSElZM3Q2UWk4Qy9aL1NtS2d4TE9v?=
 =?utf-8?B?ZEZLckJyYVlmZWJ4aGJFV0xkcUdxazZRdUVjUjNFVXc3ME8yUjZUdlhYRStr?=
 =?utf-8?B?M0NJSU9OaUV0b3liREE2WDJmUUJLaEt5ZENpQ0lmK0t6c3ZmWXRFU2NkbTBa?=
 =?utf-8?B?VDlwWERIcWlsbWlOV05lYVl2UUE4Uy8rb3FHcmlod0h1MExpSUhJZko5Y01h?=
 =?utf-8?B?V0kvQ2xvN0QzN0x5bXpDUGJTZUtQTHRqdEJOcWthcnN2UnczZjF1UnJ1QmNC?=
 =?utf-8?B?Yis3cXA2UnN2QXRQdWNYY2o3eTZMTURTbUVvTXIyeHIyZDhMWFJXUVowdWN1?=
 =?utf-8?B?eTU5UlZKanBGM3BLT3ZTcHM0WWxTNzhtWnh0c3NzNGJiUGQ5Z2JLQ3U5eE1E?=
 =?utf-8?B?VHhHQUJhb2dYeGdLSTVmTmI1cUEyT1NaaGdXUkRXR1FoVGhPRG9yN2JmU0Yv?=
 =?utf-8?B?c0JjdWFlZUFjS3g4UkgwMEdNUXM5WkpKK0RLUVVPZHpzeXlOZkZJcjRhUC9y?=
 =?utf-8?B?cW5ZYzM0cEJJMnZ3bDc1SHpnUEhxRGg4ZDVJZ2lFeldWR0RjTko5S3ZlYmtl?=
 =?utf-8?B?eDF0amN3NmVSSG1MUWQ2c3dsN2ZyclRTUzR6YVRyYTA0Z29WSXZ1WE9oeFBa?=
 =?utf-8?B?RW0vcG9LRTZVbnMvdksyd3ZSMkRLWFUwbmYxY3hrdFdKYWlYV0xnQUcxL2lI?=
 =?utf-8?B?L3RPMUJFeWNxTGRzbDk5MHNIQXVwaVdtUVNzeWIwb1hnd3VDSWhZOUZGN1FM?=
 =?utf-8?B?VUZnOTE2cEJZWk1JRUN0TzZlTFVmcHA5M0ZrU3Vmem9SWUQ5STJlSERJWXEz?=
 =?utf-8?B?eU44UHFoamYvaVp6Mk9Bck1ETjlKdmxhRnhpYmJhWkx4K3Y2dUlCNm9jVjJE?=
 =?utf-8?B?aTZQNGRaWmM4TDhrVm1oR1BDTFY1cFhxc2xMZURrYXJJakFQZWZpTW1NY0Fk?=
 =?utf-8?B?aWJtaGFCSEJjUXF3MFEyOU43Z1NxaUJNb3lSa3dNbDRGM0lnN3ZmY1liY3Ju?=
 =?utf-8?Q?4mrc0qgd8QU=3D?=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH7PR12MB5685.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(376014)(7416014)(366016);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?R2p5TDlBM1YwZ2pUYWV5YUJEd1l0RDJ2b2Y3eG10ZS9kdkkwWS9FcDM1bFA3?=
 =?utf-8?B?ZXVrcktEaWsxdzc2RHNPVWkzRkJqTXFwVlE5dHRTVDQ3K2N6VnRyUDBFMVBV?=
 =?utf-8?B?aWhjTmNkSjFLak5ZRS96Y3kwbkRMdkJiT01mU0pSajROendwa2hNbUJlZEhu?=
 =?utf-8?B?YWtCYVNEYWxDek1CNjdTeHNaYnJDc3BhWXQ2WWh2ZmtPeEJsSWFzTDZodEZE?=
 =?utf-8?B?OEdRU1daRnhKaVJPTXZteTNqOGNDczl1RzJOakVmZklCQmhGd2JVWG5qMmNl?=
 =?utf-8?B?N1M4QWNSUG1wTDJuU1VkSGJhMVlnNHpENHhsMnZYenVYTmYwRC8wT2JBZHpU?=
 =?utf-8?B?WXNmMXRIWExPSUhHdW5IWHdsc0YzdTlmS1B5bGxRU1NLSEJxL1FVOEdnaThD?=
 =?utf-8?B?a01CclM5b0RQVklnbU9penNDRzdXLzh3TGZ5QnpEYTd1T1V4K21XRW1iQXAr?=
 =?utf-8?B?WlptUWdJcEJnMjV6UTJQZmtZSUFHeVRZbE5zbklEUUZZWVBqMXdQSEZvd1pU?=
 =?utf-8?B?a1hxdTZjSFk0SUdHaWljS05HazZlM1V3MlpjaXJHTTlxZERvNFJWUXIyUWNy?=
 =?utf-8?B?czRvNVdyRERyVzlKZWMwWmNUV0txd1VKUDgvdDdndHpqVlR5MEJlWU50dVd4?=
 =?utf-8?B?U1BBWXZkTXZNRjlubFUva0Y4Q3ViWTlhZEpzaTdoeHpDaVhmSXRCdHM2L0Nr?=
 =?utf-8?B?ZnI0K2dJZldKNEpZeFNad2NTR2dYNlY1azhIVVRrc29HbWN5MmNkeXl5QVJX?=
 =?utf-8?B?VFV1ZFhaS2sxUXM3VVdORFRqNEpRWlhEOFZ5bFQvMU9POFVXS2JBd21Zb1dm?=
 =?utf-8?B?OFRhbTJRRkdiT2l3cDQ3WnJkOW5lekJSMmljRVZteGpyK2lsdDJPZzkrUFY4?=
 =?utf-8?B?dzBDVVp6b09nRWNEZkJkNnhVSEo4RVp5WHFRRTVKaSt6S2ZOM3J0WFdyWS8v?=
 =?utf-8?B?Vk9wNjlsUW9yRk4zb2NSVmhMR3pqdGVrV3h0L2RmN1Ryc2tzQlJZYnpTVnJV?=
 =?utf-8?B?VEpNdzVWOUdjSU45TXE1SE5HWSsvcHJZMi9aYlh1eW1YMDNSdjh6ZGdCWW1t?=
 =?utf-8?B?MDVPRVErYXNZTkM2K0QrQm4vejdTcDBSbUhIQjlyVG9rM2xEWjAyMW9MSmx0?=
 =?utf-8?B?T2E1WHRmaTU0Y2hlcmZKdHR6QVVKTGFJTm5KdXVrN2M5K2hoalFxVzZ6KzJw?=
 =?utf-8?B?NUtWU1RwNWRZVXpMVTlOQmFiYWIwZGFBV0Z3bUlKTGFkMXNxekhnTUZXSVFq?=
 =?utf-8?B?a3U2eEVrUmhpekwxb3VRNDd3VVpGLytVUzgxUjk1eFBsbnlXVEhEemFKL1FU?=
 =?utf-8?B?bitEakZubUEyazlHcy9kTk5SUWE2a1F1WEkxUWxkS3p3STU0RUR0c2Q5WUxm?=
 =?utf-8?B?TVNDNmVZVWRRcm5BRlpoeGlQY0gzR2Qzd2dkUGZJUEJwSzNuV0FzdWs5TnRm?=
 =?utf-8?B?YWFsQXQxMFFvK21kdUZnM05UMWc0YXAwbFhJc09uM2VyZXA5cndjNi9EcG5z?=
 =?utf-8?B?SitwQXBISDVmWW1XRDBOWnQ4QlFuY2tmUkNhTTRQZDRrTXU1ZWovSEw1d1la?=
 =?utf-8?B?SXhIUGRRKzc0WXlBM3h6RmlNSWlDWUFha1g5WFBYN252cEhvbGVycGxhL2Z4?=
 =?utf-8?B?ZlpuQzh0NWZmaHZsZ2dtZlRkbU42VloyeUt0aGxrR3d5SkgySGI3VmtCeVcr?=
 =?utf-8?B?RTFGQWxocmowbDJ3SmlaNkxEOXBSd1ZUSDJIdTRlMFZSN09xa3lZTy9KSFI4?=
 =?utf-8?B?d3FCdjh0cWNCMVo4ajFRV3poakN2bmk3UG1oSFlFQjZsWjdWUThaYzE4SVJj?=
 =?utf-8?B?N0JHaS9tREJhclI2OXpPVGFlVExocXQrSk9OYTRZeTZ6Y2pvS2dkdUl1ZzRQ?=
 =?utf-8?B?QlI1TTRuVVVhQUNCM3Y2MzU3YVhvMXhTU1RiRG5BZGwzdmhpVnRUYiszMmp6?=
 =?utf-8?B?MXZDTExPQ1I5VlJYT2J4Tll6c3N2SmtxR3N5Wmk5bjkzSUJzVCtYWENzRjJi?=
 =?utf-8?B?VFg2MkxjeVVXeUd1eFY5ZmJzS2Q0emp1SDZQWEdCQnhTamx5YlF5RWxiaWdi?=
 =?utf-8?B?UVFQWnZONHhjbUxtK0syQlpRVm1yT05QSVoxK24vQXh6N01peEJvdDhVUVVs?=
 =?utf-8?Q?8XfcSqgPhpV9ueO8Lzczm+vqT?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1c400ddb-93c9-4066-461b-08dd78f9b7ed
X-MS-Exchange-CrossTenant-AuthSource: PH7PR12MB5685.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Apr 2025 13:06:48.7239
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: C2O9m6EPjyCbvim/gWfhC4I+FirD3ZRhbP4J0XK4X2cDcKC0CchQ2uatSMSaRct9
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR12MB6258
X-Rspamd-Queue-Id: DE9564420C
X-Spamd-Bar: ------
X-Spamd-Result: default: False [-6.00 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	RBL_SENDERSCORE_REPUT_9(-1.00)[40.107.93.83:from];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[amd.com,quarantine];
	R_DKIM_ALLOW(-0.20)[amd.com:s=selector1];
	R_SPF_ALLOW(-0.20)[+ip4:40.107.0.0/16];
	MIME_GOOD(-0.10)[text/plain];
	RCPT_COUNT_TWELVE(0.00)[14];
	FREEMAIL_TO(0.00)[kernel.org,redhat.com,gmail.com,ffwll.ch,queasysnail.net,linaro.org];
	ASN(0.00)[asn:8075, ipnet:40.104.0.0/14, country:US];
	RWL_MAILSPIKE_POSSIBLE(0.00)[40.107.93.83:from];
	MIME_TRACE(0.00)[0:+];
	NEURAL_HAM(-0.00)[-1.000];
	TO_DN_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	DNSWL_BLOCKED(0.00)[2603:10b6:510:13c::22:received,40.107.93.83:from];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[amd.com:+]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: YYTGSJE55KEE7PCBSZBVJ6XEAMQPCKVR
X-Message-ID-Hash: YYTGSJE55KEE7PCBSZBVJ6XEAMQPCKVR
X-MailFrom: Christian.Koenig@amd.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: dri-devel@lists.freedesktop.org, nouveau@lists.freedesktop.org, linux-kernel@vger.kernel.org, netdev@vger.kernel.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, stable@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 1/3] drm/nouveau: Prevent signaled fences in pending list
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/YYTGSJE55KEE7PCBSZBVJ6XEAMQPCKVR/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

QW0gMTEuMDQuMjUgdW0gMTQ6NDQgc2NocmllYiBQaGlsaXBwIFN0YW5uZXI6DQo+IE9uIEZyaSwg
MjAyNS0wNC0xMSBhdCAxMzowNSArMDIwMCwgQ2hyaXN0aWFuIEvDtm5pZyB3cm90ZToNCj4+IMKg
QW0gMTEuMDQuMjUgdW0gMTE6Mjkgc2NocmllYiBQaGlsaXBwIFN0YW5uZXI6DQo+PiDCoA0KPj4+
IFtTTklQXQ0KPj4+IMKgDQo+Pj4gSXQgY291bGQgYmUsIGhvd2V2ZXIsIHRoYXQgYXQgdGhlIHNh
bWUgbW9tZW50DQo+Pj4gbm91dmVhdV9mZW5jZV9zaWduYWwoKSBpcw0KPj4+IHJlbW92aW5nIHRo
YXQgZW50cnksIGhvbGRpbmcgdGhlIGFwcHJvcHJpYXRlIGxvY2suDQo+Pj4NCj4+PiBTbyB3ZSBo
YXZlIGEgcmFjZS4gQWdhaW4uDQo+Pj4gwqANCj4+IMKgDQo+PiDCoEFoLCB5ZXMgb2YgY291cnNl
LiBJZiBzaWduYWxlZCBpcyBjYWxsZWQgd2l0aCBvciB3aXRob3V0IHRoZSBsb2NrIGlzDQo+PiBh
Y3R1YWxseSB1bmRldGVybWluZWQuDQo+PiDCoA0KPj4gwqANCj4+PiDCoA0KPj4+IFlvdSBzZWUs
IGZpeGluZyB0aGluZ3MgaW4gTm91dmVhdSBpcyBkaWZmaWN1bHQgOikNCj4+PiBJdCBnZXRzIG1v
cmUgZGlmZmljdWx0IGlmIHlvdSB3YW50IHRvIGNsZWFuIGl0IHVwICJwcm9wZXJseSIsIHNvIGl0
DQo+Pj4gY29uZm9ybXMgdG8gcnVsZXMgc3VjaCBhcyB0aG9zZSBmcm9tIGRtYV9mZW5jZS4NCj4+
Pg0KPj4+IEkgaGF2ZSBub3cgcHJvdmlkZWQgdHdvIGZpeGVzIHRoYXQgYm90aCB3b3JrLCBidXQg
eW91IGFyZSBub3QNCj4+PiBzYXRpc2ZpZWQNCj4+PiB3aXRoIGZyb20gdGhlIGRtYV9mZW5jZS1t
YWludGFpbmVyJ3MgcGVyc3BlY3RpdmUuIEkgdW5kZXJzdGFuZA0KPj4+IHRoYXQsDQo+Pj4gYnV0
IHBsZWFzZSBhbHNvIHVuZGVyc3RhbmQgdGhhdCBpdCdzIGFjdHVhbGx5IG5vdCBteSBwcmltYXJ5
IHRhc2sNCj4+PiB0bw0KPj4+IHdvcmsgb24gTm91dmVhdS4gSSBqdXN0IGhhdmUgdG8gZml4IHRo
aXMgYnVnIHRvIG1vdmUgb24gd2l0aCBteQ0KPj4+IHNjaGVkdWxlciB3b3JrLg0KPj4+IMKgDQo+
PiDCoA0KPj4gwqBXZWxsIEknbSBoYXBweSB3aXRoIHdoYXRldmVyIHNvbHV0aW9uIGFzIGxvbmcg
YXMgaXQgd29ya3MsIGJ1dCBhcw0KPj4gZmFyIGFzIEkgY2FuIHNlZSB0aGUgYXBwcm9hY2ggd2l0
aCB0aGUgY2FsbGJhY2sgc2ltcGx5IGRvZXNuJ3QuDQo+PiDCoA0KPj4gwqBZb3UganVzdCBjYW4n
dCBkcm9wIHRoZSBmZW5jZSByZWZlcmVuY2UgZm9yIHRoZSBsaXN0IGZyb20gdGhlDQo+PiBjYWxs
YmFjay4NCj4+IMKgDQo+PiDCoA0KPj4+IMKgDQo+Pj4gU28gaWYgeW91IGhhdmUgYW5vdGhlciBp
ZGVhLCBmZWVsIGZyZWUgdG8gc2hhcmUgaXQuIEJ1dCBJJ2QgbGlrZSB0bw0KPj4+IGtub3cgaG93
IHdlIGNhbiBnbyBvbiBoZXJlLg0KPj4+IMKgDQo+PiDCoA0KPj4gwqBXZWxsIHRoZSBmZW5jZSBj
b2RlIGFjdHVhbGx5IHdvcmtzLCBkb2Vzbid0IGl0PyBUaGUgcHJvYmxlbSBpcw0KPj4gcmF0aGVy
IHRoYXQgc2V0dGluZyB0aGUgZXJyb3IgdGhyb3dzIGEgd2FybmluZyBiZWNhdXNlIGl0IGRvZXNu
J3QNCj4+IGV4cGVjdCBzaWduYWxlZCBmZW5jZXMgb24gdGhlIHBlbmRpbmcgbGlzdC4NCj4+IMKg
DQo+PiDCoE1heWJlIHdlIHNob3VsZCBmaXggdGhhdCBpbnN0ZWFkLg0KPiBUaGUgZmVuY2UgY29k
ZSB3b3JrcyBhcyB0aGUgYXV0aG9yIGludGVuZGVkLCBidXQgSSB3b3VsZCBiZSBoYXBweSBpZiBp
dA0KPiB3ZXJlIG1vcmUgZXhwbGljaXRseSBkb2N1bWVudGVkLg0KPg0KPiBSZWdhcmRpbmcgdGhl
IFdBUk5fT046IEl0IG9jY3VycyBpbiBkbWFfZmVuY2Vfc2V0X2Vycm9yKCkgYmVjYXVzZSB0aGVy
ZQ0KPiBpcyBhbiBhdHRlbXB0IHRvIHNldCBhbiBlcnJvciBjb2RlIG9uIGEgc2lnbmFsZWQgZmVu
Y2UuIEkgZG9uJ3QgdGhpbmsNCj4gdGhhdCBzaG91bGQgYmUgImZpeGVkIiwgaXQgd29ya3MgYXMg
aW50ZW5kZWQ6IFlvdSBtdXN0IG5vdCBzZXQgYW4gZXJyb3INCj4gY29kZSBvZiBhIGZlbmNlIHRo
YXQgd2FzIGFscmVhZHkgc2lnbmFsZWQuDQo+DQo+IFRoZSByZWFzb24gc2VlbXMgdG8gYmUgdGhh
dCBvbmNlIGEgZmVuY2UgaXMgc2lnbmFsZWQsIGEgdGhpcmQgcGFydHkNCj4gbWlnaHQgZXZhbHVh
dGUgdGhlIGVycm9yIGNvZGUuDQoNClllYWgsIG1vcmUgb3IgbGVzcyBjb3JyZWN0LiBUaGUgaWRl
YSBpcyB5b3UgY2FuJ3QgZGVjbGFyZSBhbiBvcGVyYXRpb24gYXMgaGF2aW5nIGFuIGVycm9yIGFm
dGVyIHRoZSBvcGVyYXRpb24gaGFzIGFscmVhZHkgY29tcGxldGVkLg0KDQpCZWNhdXNlIGV2ZXJ5
b25lIHdpbGwganVzdCB3YWl0IGZvciB0aGUgY29tcGxldGlvbiBhbmQgbm9ib2R5IGNoZWNrcyB0
aGUgc3RhdHVzIGFnYWluIGFmdGVyIHRoYXQuDQoNCj4NCj4gQnV0IEkgdGhpbmsgdGhpcyB3YXNu
J3Qgd2F0IHlvdSBtZWFudCB3aXRoICJmaXgiLg0KDQpUaGUgaWRlYSB3YXMgdG8gYXZvaWQgY2Fs
bGluZyBkbWFfZmVuY2Vfc2V0X2Vycm9yKCkgb24gYWxyZWFkeSBzaWduYWxlZCBmZW5jZXMuIFNv
bWV0aGluZyBsaWtlIHRoaXM6DQoNCkBAIC05MCw3ICs5MCw3IEBAIG5vdXZlYXVfZmVuY2VfY29u
dGV4dF9raWxsKHN0cnVjdCBub3V2ZWF1X2ZlbmNlX2NoYW4gKmZjdHgsIGludCBlcnJvcikNCsKg
wqDCoMKgwqDCoMKgIHdoaWxlICghbGlzdF9lbXB0eSgmZmN0eC0+cGVuZGluZykpIHsNCsKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBmZW5jZSA9IGxpc3RfZW50cnkoZmN0eC0+cGVuZGlu
Zy5uZXh0LCB0eXBlb2YoKmZlbmNlKSwgaGVhZCk7DQrCoA0KLcKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqAgaWYgKGVycm9yKQ0KK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgaWYgKGVy
cm9yICYgIWRtYV9mZW5jZV9pc19zaWduYWxlZF9sb2NrZWQoJmZlbmNlLT5iYXNlKSkNCsKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgZG1hX2ZlbmNlX3NldF9l
cnJvcigmZmVuY2UtPmJhc2UsIGVycm9yKTsNCsKgDQrCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqAgaWYgKG5vdXZlYXVfZmVuY2Vfc2lnbmFsKGZlbmNlKSkNCg0KVGhhdCB3b3VsZCBhbHNv
IGltcHJvdmUgdGhlIGhhbmRsaW5nIHF1aXRlIGEgYml0IHNpbmNlIHdlIG5vdyBkb24ndCBzZXQg
ZXJyb3JzIG9uIGZlbmNlcyB3aGljaCBhcmUgYWxyZWFkeSBjb21wbGV0ZWQgZXZlbiBpZiB3ZSBo
YXZlbid0IHJlYWxpemVkIHRoYXQgdGhleSBhcmUgYWxyZWFkeSBjb21wbGV0ZWQgeWV0Lg0KDQo+
IEluIGFueSBjYXNlLCB0aGVyZSBtdXN0IG5vdCBiZSBzaWduYWxlZCBmZW5jZXMgaW4gbm91dmVh
dSdzIHBlbmRpbmctDQo+IGxpc3QuIFRoZXkgbXVzdCBiZSByZW1vdmVkIGltbWVkaWF0ZWx5IG9u
Y2UgdGhleSBzaWduYWwsIGFuZCB0aGlzIG11c3QNCj4gbm90IHJhY2UuDQoNCldoeSBhY3R1YWxs
eT8gQXMgZmFyIGFzIEkgY2FuIHNlZSB0aGUgcGVuZGluZyBsaXN0IGlzIG5vdCBmb3IgdGhlIHVu
c2lnbmFsZWQgZmVuY2VzLCBidXQgcmF0aGVyIHRoZSBwZW5kaW5nIGludGVycnVwdCBwcm9jZXNz
aW5nLg0KDQpTbyBoYXZpbmcgc2lnbmFsZWQgZmVuY2VzIG9uIHRoZSBwZW5kaW5nIGxpc3QgaXMg
cGVyZmVjdGx5IHBvc3NpYmxlLg0KDQpSZWdhcmRzLA0KQ2hyaXN0aWFuLg0KDQo+DQo+PiDCoA0K
Pj4gwqANCj4+PiDCoA0KPj4+IEknbSBydW5uaW5nIG91dCBvZiBpZGVhcy4gV2hhdCBJJ20gd29u
ZGVyaW5nIGlmIHdlIGNvdWxkbid0IGp1c3QNCj4+PiByZW1vdmUNCj4+PiBwZXJmb3JtYW5jZSBo
YWNreSBmYXN0cGF0aCBmdW5jdGlvbnMgc3VjaCBhcw0KPj4+IG5vdXZlYXVfZmVuY2VfaXNfc2ln
bmFsZWQoKSBjb21wbGV0ZWx5LiBJdCBzZWVtcyByZWR1bmRhbnQgdG8gbWUuDQo+Pj4gwqANCj4+
IMKgDQo+PiDCoFRoYXQgd291bGQgd29yayBmb3IgbWUgYXMgd2VsbC4NCj4gSSdsbCB0ZXN0IHRo
aXMgYXBwcm9hY2guIFNlZW1zIGEgYml0IGxpa2UgdGhlIG51Y2xlYXIgYXBwcm9hY2gsIGJ1dCBp
Zg0KPiBpdCB3b3JrcyB3ZSdkIGF0IGxlYXN0IGNsZWFuIHVwIGEgbG90IG9mIHRoaXMgbWVzcy4N
Cj4NCj4NCj4gUC4NCj4NCj4NCj4+IMKgDQo+PiDCoA0KPj4+IMKgDQo+Pj4NCj4+PiBPciB3ZSBt
aWdodCBhZGQgbG9ja2luZyB0byBpdCwgYnV0IElESyB3aGF0IHdhcyBhY2hpZXZlZCB3aXRoIFJD
VQ0KPj4+IGhlcmUuDQo+Pj4gSW4gYW55IGNhc2UgaXQncyBkZWZpbml0ZWx5IGJhZCB0aGF0IE5v
dXZlYXUgaGFzIHNvIG1hbnkgcmVkdW5kYW50DQo+Pj4gYW5kDQo+Pj4gaGFsZi1yZWR1bmRhbnQg
bWVjaGFuaXNtcy4NCj4+PiDCoA0KPj4gwqANCj4+IMKgWWVhaCwgYWdyZWUgbWVzc2luZyB3aXRo
IHRoZSBsb2NrcyBldmVuIG1vcmUgd29uJ3QgaGVscCB1cyBoZXJlLg0KPj4gwqANCj4+IMKgUmVn
YXJkcywNCj4+IMKgQ2hyaXN0aWFuLg0KPj4gwqANCj4+IMKgDQo+Pj4gwqANCj4+Pg0KPj4+DQo+
Pj4gUC4NCj4+Pg0KPj4+IMKgDQo+Pj4+IMKgDQo+Pj4+DQo+Pj4+IFAuDQo+Pj4+DQo+Pj4+IMKg
DQo+Pj4+PiDCoA0KPj4+Pj4gUmVnYXJkcywNCj4+Pj4+IENocmlzdGlhbi4NCj4+Pj4+DQo+Pj4+
PiDCoA0KPj4+Pj4+IMKgDQo+Pj4+Pj4gUC4NCj4+Pj4+Pg0KPj4+Pj4+DQo+Pj4+Pj4NCj4+Pj4+
PiDCoA0KPj4+Pj4+PiDCoA0KPj4+Pj4+PiBSZWdhcmRzLA0KPj4+Pj4+PiBDaHJpc3RpYW4uDQo+
Pj4+Pj4+DQo+Pj4+Pj4+IMKgDQo+Pj4+Pj4+PiDCoA0KPj4+Pj4+Pj4gUmVwbGFjZSB0aGUgY2Fs
bCB0byBkbWFfZmVuY2VfaXNfc2lnbmFsZWQoKSB3aXRoDQo+Pj4+Pj4+PiBub3V2ZWF1X2ZlbmNl
X2Jhc2VfaXNfc2lnbmFsZWQoKS4NCj4+Pj4+Pj4+DQo+Pj4+Pj4+PiBDYzogPHN0YWJsZUB2Z2Vy
Lmtlcm5lbC5vcmc+ICMgNC4xMCssIHByZWNpc2UgY29tbWl0IG5vdA0KPj4+Pj4+Pj4gdG8NCj4+
Pj4+Pj4+IGJlDQo+Pj4+Pj4+PiBkZXRlcm1pbmVkDQo+Pj4+Pj4+PiBTaWduZWQtb2ZmLWJ5OiBQ
aGlsaXBwIFN0YW5uZXIgPHBoYXN0YUBrZXJuZWwub3JnPg0KPj4+Pj4+Pj4gLS0tDQo+Pj4+Pj4+
PiDCoGRyaXZlcnMvZ3B1L2RybS9ub3V2ZWF1L25vdXZlYXVfZmVuY2UuYyB8IDIgKy0NCj4+Pj4+
Pj4+IMKgMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspLCAxIGRlbGV0aW9uKC0pDQo+Pj4+
Pj4+Pg0KPj4+Pj4+Pj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9ub3V2ZWF1L25vdXZl
YXVfZmVuY2UuYw0KPj4+Pj4+Pj4gYi9kcml2ZXJzL2dwdS9kcm0vbm91dmVhdS9ub3V2ZWF1X2Zl
bmNlLmMNCj4+Pj4+Pj4+IGluZGV4IDdjYzg0NDcyY2VjZS4uMzM1MzU5ODdkOGVkIDEwMDY0NA0K
Pj4+Pj4+Pj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL25vdXZlYXUvbm91dmVhdV9mZW5jZS5jDQo+
Pj4+Pj4+PiArKysgYi9kcml2ZXJzL2dwdS9kcm0vbm91dmVhdS9ub3V2ZWF1X2ZlbmNlLmMNCj4+
Pj4+Pj4+IEBAIC0yNzQsNyArMjc0LDcgQEAgbm91dmVhdV9mZW5jZV9kb25lKHN0cnVjdA0KPj4+
Pj4+Pj4gbm91dmVhdV9mZW5jZQ0KPj4+Pj4+Pj4gKmZlbmNlKQ0KPj4+Pj4+Pj4gwqAJCQludmlm
X2V2ZW50X2Jsb2NrKCZmY3R4LT5ldmVudCk7DQo+Pj4+Pj4+PiDCoAkJc3Bpbl91bmxvY2tfaXJx
cmVzdG9yZSgmZmN0eC0+bG9jaywNCj4+Pj4+Pj4+IGZsYWdzKTsNCj4+Pj4+Pj4+IMKgCX0NCj4+
Pj4+Pj4+IC0JcmV0dXJuIGRtYV9mZW5jZV9pc19zaWduYWxlZCgmZmVuY2UtPmJhc2UpOw0KPj4+
Pj4+Pj4gKwlyZXR1cm4gdGVzdF9iaXQoRE1BX0ZFTkNFX0ZMQUdfU0lHTkFMRURfQklULA0KPj4+
Pj4+Pj4gJmZlbmNlLQ0KPj4+Pj4+Pj4gwqANCj4+Pj4+Pj4+PiDCoA0KPj4+Pj4+Pj4+IGJhc2Uu
ZmxhZ3MpOw0KPj4+Pj4+Pj4+IMKgDQo+Pj4+Pj4+PiDCoA0KPj4+Pj4+Pj4gwqB9DQo+Pj4+Pj4+
PiDCoA0KPj4+Pj4+Pj4gwqBzdGF0aWMgbG9uZw0KPj4+Pj4+Pj4gwqANCj4+Pj4+Pj4gwqANCj4+
Pj4+PiDCoA0KPj4+Pj4gwqANCj4+Pj4gwqDCoA0KPj4+IMKgwqANCj4+IMKgDQo+PiDCoA0KDQpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0t
c2lnIG1haWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5z
dWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFy
by5vcmcK
